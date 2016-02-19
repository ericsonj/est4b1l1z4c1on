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
    
