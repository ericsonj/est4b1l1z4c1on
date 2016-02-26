CREATE 
    OR REPLACE
    
VIEW element_in_current_order AS    
(SELECT 
        element_movement_order_detail.id  AS detail_id,
        element_movement_order_detail.element  AS element,
        element_movement_order_detail.quantity  as quantity,
        'MOVEMENT'as order_type,
        element_movement_order_detail.request as order_number,
        element_movement_order.state  as order_state,
        element_movement_order_detail.arrived  as detail_arrived
    FROM
        (element_movement_order_detail
        LEFT JOIN element_movement_order ON ((element_movement_order.id = element_movement_order_detail.request)))
    WHERE
        (element_movement_order.state IN ('ELEMENTS_IN_TRANSIT' , 'REQUEST_AUTHORIZED', 'REQUEST_CREATED','WHOUSE_REVIEW')) AND ((element_movement_order_detail.arrived IS NULL) OR (element_movement_order_detail.arrived = 'N') OR (TRIM(element_movement_order_detail.arrived)='')))
        
UNION  (
SELECT 
        element_transfer_order_detail.id AS detail_id,
        element_transfer_order_detail.element AS element,
        element_transfer_order_detail.quantity AS quantity,
        'TRANSFERENCE' AS order_type,
        element_transfer_order_detail.element_transfer_order AS order_number,
        element_transfer_order.state AS order_state,
        element_transfer_order_detail.arrived AS detail_arrived
    FROM
        (element_transfer_order_detail LEFT JOIN element_transfer_order ON ((element_transfer_order.id = element_transfer_order_detail.element_transfer_order)))
    WHERE
        ((element_transfer_order.state IN ('SENDED' ,'PREPARED','AUTHORIZED','CREATED')) AND (element_transfer_order_detail.arrived IS NULL) OR (element_transfer_order_detail.arrived = 'N') OR (TRIM(element_transfer_order_detail.arrived) = '')));
    

CREATE 
    OR REPLACE
VIEW ViewTotalElements AS
    SELECT 
        ec.description AS CATEGORY,
        et.description AS TYPE,
        em.description AS MODEL,
        em.reference AS reference,
        em.plu AS plu,
        e.serial AS serial,
        e.location AS location,
        e.quantity AS quantity,
        e.in_movement AS in_movement,
        l.user_in_charge AS LaiconUserInCharge
    FROM
        (((((element e
        LEFT JOIN invoice i ON ((i.id = e.invoice)))
        JOIN element_model em ON ((em.id = e.model)))
        JOIN element_type et ON ((et.id = em.element_type)))
        JOIN element_category ec ON ((ec.id = et.id_category)))
        JOIN location l ON ((l.code = e.location)))
    WHERE
        ((e.quantity > 0)
            AND (e.deleted = 'N')
            AND (NOT ((e.location LIKE '%_NO_ID%'))));
