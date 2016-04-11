/*17-Julio-2015 14:08*/

/* TABLE: additional_attribute*/
/*ALTER TABLE additional_attribute
ADD CONSTRAINT FK_additional_attribute_2
FOREIGN KEY (element_type) REFERENCES element_type( ID ) NOT DEFERRABLE ;*/


/* TABLE: additional_data*/
ALTER TABLE additional_data
ADD CONSTRAINT FK_additional_data_addit9
FOREIGN KEY (additional_attribute) REFERENCES additional_attribute( ID ) NOT DEFERRABLE ;

/* TABLE: air_waybill*/
ALTER TABLE air_waybill
ADD CONSTRAINT FK_air_waybill_currency20
FOREIGN KEY (currency) REFERENCES currency( code ) NOT DEFERRABLE ;

/*ALTER TABLE air_waybill
ADD CONSTRAINT FK_air_waybill_nationali22
FOREIGN KEY (nationalization) REFERENCES nationalization( ID ) NOT DEFERRABLE ;*/

/* TABLE: bom*/
ALTER TABLE bom
ADD CONSTRAINT FK_bom_bom_provider29
FOREIGN KEY (bom_provider) REFERENCES bom_provider( ID ) NOT DEFERRABLE ;

ALTER TABLE bom
ADD CONSTRAINT FK_bom_element_model
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE bom
ADD CONSTRAINT FK_bom_element_users
FOREIGN KEY (creation_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE bom
ADD CONSTRAINT FK_bom_element_userU
FOREIGN KEY (update_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: bom_detail*/
ALTER TABLE bom_detail
ADD CONSTRAINT FK_bom_detail_bom40
FOREIGN KEY (bom) REFERENCES bom( ID ) NOT DEFERRABLE ;

ALTER TABLE bom_detail
ADD CONSTRAINT FK_bom_detail_element_mo41
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE bom_detail
ADD CONSTRAINT FK_bom_detail_infrastruc42
FOREIGN KEY (infrastructure_model) REFERENCES infrastructure_model( code ) NOT DEFERRABLE ;


/* TABLE: bom_provider*/

/* TABLE: bts_technology_type*/

/* TABLE: capit_by_ws_detail*/
ALTER TABLE capit_by_ws_detail
ADD CONSTRAINT FK_capit_by_ws_detail_ca63
FOREIGN KEY (capit_by_ws_regstr) REFERENCES capit_by_ws_regstr( ID ) NOT DEFERRABLE ;

ALTER TABLE capit_by_ws_detail
ADD CONSTRAINT FK_capit_by_ws_detail_el64
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;


/* TABLE: capit_by_ws_regstr*/

/* TABLE: capit_by_workbook_detail*/
ALTER TABLE capit_by_workbook_detail
ADD CONSTRAINT FK_capit_by_workbook_det71
FOREIGN KEY (capit_by_workbook_register) REFERENCES capit_by_workbook_register( ID ) NOT DEFERRABLE ;

ALTER TABLE capit_by_workbook_detail
ADD CONSTRAINT FK_capit_by_workbook_det72
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;


/* TABLE: capit_by_workbook_register*/
ALTER TABLE capit_by_workbook_register
ADD CONSTRAINT FK_capit_by_wb_register102
FOREIGN KEY (user_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: car*/

/* TABLE: car_line*/
ALTER TABLE car_line
ADD CONSTRAINT FK_car_line_car_102
FOREIGN KEY (car_code) REFERENCES car( code ) NOT DEFERRABLE ;

/* TABLE: crossing_elements_process*/
ALTER TABLE crossing_elements_process
ADD CONSTRAINT FK_cross_elem_process_102
FOREIGN KEY (crossing_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE crossing_elements_process
ADD CONSTRAINT FK_cross_elem_process_102a
FOREIGN KEY (approve_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE crossing_elements_process
ADD CONSTRAINT FK_cross_elem_process_102b
FOREIGN KEY (reject_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: cross_elem_process_detail*/
ALTER TABLE cross_elem_process_detail
ADD CONSTRAINT FK_cross_elem_process_de102
FOREIGN KEY (crossing_elements_process) REFERENCES crossing_elements_process( ID ) NOT DEFERRABLE ;

/* TABLE: currency*/

/* TABLE: desktop_inventory*/
ALTER TABLE desktop_inventory
ADD CONSTRAINT FK_desktop_inventory_loc143
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE desktop_inventory
ADD CONSTRAINT FK_desktop_inventory_des152
FOREIGN KEY (desktop_inventory_grouping) REFERENCES desktop_inventory_grouping( ID ) NOT DEFERRABLE ;

ALTER TABLE desktop_inventory
ADD CONSTRAINT FK_desktop_inventory_de152l
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE desktop_inventory
ADD CONSTRAINT FK_desktop_inventory_de152p
FOREIGN KEY (processed_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE desktop_inventory
ADD CONSTRAINT FK_desktop_inventory_de152r
FOREIGN KEY (rescheduled_by_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: dktp_invtory_admin_warehouse*/
ALTER TABLE dktp_invtory_admin_warehouse
ADD CONSTRAINT FK_dktp_invtory_admin_163
FOREIGN KEY (warehouse_code) REFERENCES warehouse( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_admin_warehouse
ADD CONSTRAINT FK_dktp_invtory_admin_163a
FOREIGN KEY (last_update_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: dktp_invtory_auto_resolv_miss*/
ALTER TABLE dktp_invtory_auto_resolv_miss
ADD CONSTRAINT FK_dktp_invtory_auto_res163
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_auto_resolv_miss
ADD CONSTRAINT FK_dktp_invtory_auto_res164
FOREIGN KEY (dktp_inv_proc_rslt_dtl) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_auto_resolv_miss
ADD CONSTRAINT FK_dktp_invtory_auto_res165
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_auto_resolv_miss
ADD CONSTRAINT FK_dktp_invtory_auto_re165u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: dktp_inv_elem*/
ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_element170
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_locatio171
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_interna172
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_element173
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_desktop174
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_element179
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_element180
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_elem
ADD CONSTRAINT FK_dktp_inv_elem_dktp_in182
FOREIGN KEY (dktp_inv_parcial_inventory) REFERENCES dktp_inv_parcial_inventory( ID ) NOT DEFERRABLE ;


/* TABLE: dktp_invtory_elem_result*/
ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res185
FOREIGN KEY (dktp_inv_elem) REFERENCES dktp_inv_elem( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res186
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res187
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res189
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res194
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res195
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res199
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_res200
FOREIGN KEY (dktp_inv_parcial_inventory) REFERENCES dktp_inv_parcial_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_re200m
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_elem_result
ADD CONSTRAINT FK_dktp_invtory_elem_r200l
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: dktp_invtory_excluded_field*/
ALTER TABLE dktp_invtory_excluded_field
ADD CONSTRAINT FK_dktp_invtory_excluded203
FOREIGN KEY (desktop_inventory_grouping) REFERENCES desktop_inventory_grouping( ID ) NOT DEFERRABLE ;

/*ALTER TABLE dktp_invtory_excluded_field
ADD CONSTRAINT FK_dktp_invtory_exclude203a
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;*/

/* TABLE: dktp_invtory_excluded_model*/
ALTER TABLE dktp_invtory_excluded_model
ADD CONSTRAINT FK_dktp_invtory_excluded209
FOREIGN KEY (desktop_inventory_grouping) REFERENCES desktop_inventory_grouping( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_invtory_excluded_model
ADD CONSTRAINT FK_dktp_invtory_excluded210
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: desktop_inventory_grouping*/

/* TABLE: dktp_inv_parcial_inventory*/
ALTER TABLE dktp_inv_parcial_inventory
ADD CONSTRAINT FK_dktp_inv_parcial_inve223
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_parcial_inventory
ADD CONSTRAINT FK_dktp_inv_parcial_inve224
FOREIGN KEY (dktp_invtory_admin_warehouse) REFERENCES dktp_invtory_admin_warehouse( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_parcial_inventory
ADD CONSTRAINT FK_dktp_inv_parcial_inve225
FOREIGN KEY (internal_location) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_parcial_inventory
ADD CONSTRAINT FK_dktp_inv_parcial_inv225d
FOREIGN KEY (partial_download_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_parcial_inventory
ADD CONSTRAINT FK_dktp_inv_parcial_inv225u
FOREIGN KEY (partial_upload_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: dktp_inv_proc_rslt_dtl*/
ALTER TABLE dktp_inv_proc_rslt_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_dt232
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_dt233
FOREIGN KEY (dktp_inv_elem) REFERENCES dktp_inv_elem( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_dt234
FOREIGN KEY (dktp_invtory_elem_result) REFERENCES dktp_invtory_elem_result( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_dt240
FOREIGN KEY (dktp_inv_parcial_inventory) REFERENCES dktp_inv_parcial_inventory( ID ) NOT DEFERRABLE ;



/* TABLE: dktp_inv_proc_rslt_dif_dtl*/
ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di243
FOREIGN KEY (dktp_inv_elem) REFERENCES dktp_inv_elem( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di244
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di245
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di246
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di247
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di252
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di253
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di255
FOREIGN KEY (dktp_inv_proc_rslt_dtl) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_dif_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_di260
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;


/* TABLE: dktp_inv_proc_rslt_miss_dtl*/
ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi264
FOREIGN KEY (dktp_inv_elem) REFERENCES dktp_inv_elem( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi265
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi266
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi267
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi268
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi273
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi274
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi276
FOREIGN KEY (dktp_inv_proc_rslt_dtl) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_miss_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_mi282
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;


/* TABLE: dktp_inv_proc_rslt_nw_dtl*/
ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw285
FOREIGN KEY (dktp_inv_elem) REFERENCES dktp_inv_elem( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw286
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw287
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw288
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw289
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw294
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw295
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw297
FOREIGN KEY (dktp_inv_proc_rslt_dtl) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_proc_rslt_nw_dtl
ADD CONSTRAINT FK_dktp_inv_proc_rslt_nw307
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;


/* TABLE: dktp_inv_proc_rslt_state*/

/* TABLE: dktp_inv_proc_rslt_type*/

/* TABLE: dktp_inv_surplus_OT*/
ALTER TABLE dktp_inv_surplus_OT
ADD CONSTRAINT FK_dktp_inv_surplus_OT_d316
FOREIGN KEY (dktp_inv_proc_rslt_dtl) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_surplus_OT
ADD CONSTRAINT FK_dktp_inv_surplus_OT_e317
FOREIGN KEY (element_transfer_order) REFERENCES element_transfer_order( ID ) NOT DEFERRABLE ;

ALTER TABLE dktp_inv_surplus_OT
ADD CONSTRAINT FK_dktp_inv_surplus_OT_e318
FOREIGN KEY (element_transfer_order_detail) REFERENCES element_transfer_order_detail( ID ) NOT DEFERRABLE ;


/* TABLE: dktp_inv_terminal_model*/
ALTER TABLE dktp_inv_terminal_model
ADD CONSTRAINT FK_dktp_inv_terminal_mod321
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: document_type*/

/* TABLE: element*/
ALTER TABLE element
ADD CONSTRAINT FK_element_element_model329
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_location331
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_locatio331a
FOREIGN KEY (location_asigned) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_state337
FOREIGN KEY (element_state) REFERENCES element_state( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_air_waybill340
FOREIGN KEY (awb) REFERENCES air_waybill( ID ) NOT DEFERRABLE ;

/*ALTER TABLE element
ADD CONSTRAINT FK_element_inventory348
FOREIGN KEY (inventory) REFERENCES inventory( ID ) NOT DEFERRABLE ;*/

ALTER TABLE element
ADD CONSTRAINT FK_element_invoice351
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_internal_loca354
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_type_361
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_cate362c
FOREIGN KEY (containing_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_cate62s
FOREIGN KEY (source_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_cate62l
FOREIGN KEY (login_update_installation_site) REFERENCES users( login ) NOT DEFERRABLE ;

/*ALTER TABLE element
ADD CONSTRAINT FK_element_purchase_orde373
FOREIGN KEY (purchase_order_line) REFERENCES purchase_order_line( ID ) NOT DEFERRABLE ;*/

ALTER TABLE element
ADD CONSTRAINT FK_element_piece_box_sto383
FOREIGN KEY (piece_box_stowage) REFERENCES piece_box_stowage( code ) NOT DEFERRABLE ;

ALTER TABLE element
ADD CONSTRAINT FK_element_element_class385
FOREIGN KEY (element_classification) REFERENCES element_classification( ID ) NOT DEFERRABLE ;

/* TABLE: element_category*/

/* TABLE: element_category_asset*/
ALTER TABLE element_category_asset
ADD CONSTRAINT FK_element_category_asse401
FOREIGN KEY (investment_item) REFERENCES investment_item( code ) NOT DEFERRABLE ;

ALTER TABLE element_category_asset
ADD CONSTRAINT FK_element_category_asse402
FOREIGN KEY (mic_code_prefix) REFERENCES mic_code_prefix( mic_prefix ) NOT DEFERRABLE ;


/* TABLE: element_classification*/

/* TABLE: element_history*/
/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme408
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_locat412
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_movem416
FOREIGN KEY (movement_report) REFERENCES movement_report( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme421
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme424
FOREIGN KEY (element_state) REFERENCES element_state( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme433
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme434
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE element_history
ADD CONSTRAINT FK_element_history_eleme454
FOREIGN KEY (element_classification) REFERENCES element_classification( ID ) NOT DEFERRABLE ;*/

/* TABLE: element_inventory*/
ALTER TABLE element_inventory
ADD CONSTRAINT FK_element_inventory_ele465
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE element_inventory
ADD CONSTRAINT FK_element_inventory_inv467
FOREIGN KEY (inventory) REFERENCES inventory( ID ) NOT DEFERRABLE ;


/* TABLE: element_model*/
ALTER TABLE element_model
ADD CONSTRAINT FK_element_model_element473
FOREIGN KEY (element_type) REFERENCES 	( ID ) NOT DEFERRABLE ;

ALTER TABLE element_model
ADD CONSTRAINT FK_element_model_measure477
FOREIGN KEY (measurement_unit) REFERENCES measurement_unit( ID ) NOT DEFERRABLE ;

ALTER TABLE element_model
ADD CONSTRAINT FK_element_model_measur477a
FOREIGN KEY (default_element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

/* TABLE: elem_mdl_x_remote_inv_ref*/
ALTER TABLE elem_mdl_x_remote_inv_ref
ADD CONSTRAINT FK_elem_mdl_x_remote_inv490
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_mdl_x_remote_inv_ref
ADD CONSTRAINT FK_elem_mdl_x_remote_inv492
FOREIGN KEY (remote_inventory_provider) REFERENCES remote_inventory_provider( ID ) NOT DEFERRABLE ;

/* TABLE: elem_movement_order_comment*/
ALTER TABLE elem_movement_order_comment
ADD CONSTRAINT FK_elem_movem_order_c514
FOREIGN KEY (order_id) REFERENCES element_movement_order( ID ) NOT DEFERRABLE ;


/* TABLE: element_order_problem_case*/
ALTER TABLE element_order_problem_case
ADD CONSTRAINT FK_elem_order_prblm_c514
FOREIGN KEY (solve_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_order_problem_case
ADD CONSTRAINT FK_elem_order_prblm_c514a
FOREIGN KEY (report_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: elem_order_prblm_case_abs_dtl*/
ALTER TABLE elem_order_prblm_case_abs_dtl
ADD CONSTRAINT FK_elem_order_prblm_case514
FOREIGN KEY (case_id) REFERENCES element_order_problem_case( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_order_prblm_case_abs_dtl
ADD CONSTRAINT FK_elem_order_prblm_case516
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

/* TABLE: elem_order_prblm_case_att_fle*/
ALTER TABLE elem_order_prblm_case_att_fle
ADD CONSTRAINT FK_elem_order_prblm_case520
FOREIGN KEY (element_order_problem_case) REFERENCES element_order_problem_case( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_order_prblm_case_att_fle
ADD CONSTRAINT FK_elem_order_prblm_cas520u
FOREIGN KEY (uploaded_by) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: elem_order_prblm_case_exs_dtl*/
ALTER TABLE elem_order_prblm_case_exs_dtl
ADD CONSTRAINT FK_elem_order_prblm_case527
FOREIGN KEY (case_id) REFERENCES element_order_problem_case( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_order_prblm_case_exs_dtl
ADD CONSTRAINT FK_elem_order_prblm_case528
FOREIGN KEY (element_id) REFERENCES element( ID ) NOT DEFERRABLE ;

/* TABLE:  element_movement_order*/
ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_truck538
FOREIGN KEY (truck_type) REFERENCES truck_type( ID ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_locat545
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_loca545d
FOREIGN KEY (direction) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_order558
FOREIGN KEY (order_priority_type) REFERENCES order_priority_type( ID ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_order560
FOREIGN KEY (order_execution_responsible) REFERENCES order_execution_responsible( ID ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560r
FOREIGN KEY (reviewed) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560c
FOREIGN KEY (created_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560a
FOREIGN KEY (authorized_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560i
FOREIGN KEY (in_transit_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560s
FOREIGN KEY (canceled_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560v
FOREIGN KEY (review_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order
ADD CONSTRAINT FK_element_request_orde560e
FOREIGN KEY (end_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: element_movement_order_detail*/
ALTER TABLE element_movement_order_detail
ADD CONSTRAINT FK_element_movement_orde565
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE element_movement_order_detail
ADD CONSTRAINT FK_element_movement_ord565r
FOREIGN KEY (request) REFERENCES element_movement_order( ID ) NOT DEFERRABLE ;



/* TABLE: elem_request_person_in_charge*/
ALTER TABLE elem_request_person_in_charge
ADD CONSTRAINT FK_elem_request_p594
FOREIGN KEY (request) REFERENCES element_movement_order( ID ) NOT DEFERRABLE ;

/* TABLE: elem_mov_order_request_transp*/
ALTER TABLE elem_mov_order_request_transp
ADD CONSTRAINT FK_element_request_trans583
FOREIGN KEY (request) REFERENCES element_movement_order( ID ) NOT DEFERRABLE ;


/* TABLE: element_screenshot_comparison*/
/*ALTER TABLE element_screenshot_comparison
ADD CONSTRAINT FK_elem_screenhot_c_594
FOREIGN KEY (created_by) REFERENCES users( login ) NOT DEFERRABLE ;*/

ALTER TABLE element_screenshot_comparison
ADD CONSTRAINT FK_elem_screenhot_c_594a
FOREIGN KEY (screenshot_origin) REFERENCES element_screenshot_registry( ID ) NOT DEFERRABLE ;

ALTER TABLE element_screenshot_comparison
ADD CONSTRAINT FK_elem_screenhot_c_594b
FOREIGN KEY (screenshot_destination) REFERENCES element_screenshot_registry( ID ) NOT DEFERRABLE ;


/* TABLE: elem_screenhot_compa_detail*/
ALTER TABLE elem_screenhot_compa_detail
ADD CONSTRAINT FK_elem_screenhot_compa_594
FOREIGN KEY (element_screenshot_comparison) REFERENCES element_screenshot_comparison( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_screenhot_compa_detail
ADD CONSTRAINT FK_elem_screenhot_compa_595
FOREIGN KEY (elem_screenhot_compa_dif_ty) REFERENCES elem_screenhot_compa_dif_ty( ID ) NOT DEFERRABLE ;

/*ALTER TABLE elem_screenhot_compa_detail
ADD CONSTRAINT FK_elem_screenhot_compa_596
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;*/

/* TABLE: elem_screenhot_compa_dif_ty*/

/* TABLE: elem_screenshot_data*/
ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_604
FOREIGN KEY (element_screenshot_registry) REFERENCES element_screenshot_registry( ID ) NOT DEFERRABLE ;

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_607
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_609
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_615
FOREIGN KEY (element_state) REFERENCES element_state( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_618
FOREIGN KEY (awb) REFERENCES air_waybill( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_626
FOREIGN KEY (inventory) REFERENCES inventory( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_629
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_632
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_639
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_640
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_651
FOREIGN KEY (purchase_order_line) REFERENCES purchase_order_line( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_661
FOREIGN KEY (piece_box_stowage) REFERENCES piece_box_stowage( code ) NOT DEFERRABLE ;*/

/*ALTER TABLE elem_screenshot_data
ADD CONSTRAINT FK_elem_screenshot_data_662
FOREIGN KEY (element_classification) REFERENCES element_classification( ID ) NOT DEFERRABLE ;*/


/* TABLE: element_screenshot_registry*/

/* TABLE: element_state*/

/* TABLE: element_structure*/

/* TABLE: element_transfer_order*/
ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_orde691
FOREIGN KEY (order_priority_type) REFERENCES order_priority_type( ID ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_orde693
FOREIGN KEY (order_execution_responsible) REFERENCES order_execution_responsible( ID ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693a
FOREIGN KEY (creator_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693b
FOREIGN KEY (origin_location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693c
FOREIGN KEY (direction_location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693u
FOREIGN KEY (authorize_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693r
FOREIGN KEY (authorize_region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693g
FOREIGN KEY (sender_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693t
FOREIGN KEY (addressee_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693x
FOREIGN KEY (cancel_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order
ADD CONSTRAINT FK_element_transfer_ord693p
FOREIGN KEY (prepared_state_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: elem_transfer_order_comment*/
ALTER TABLE elem_transfer_order_comment
ADD CONSTRAINT FK_elem_transfer_order_c699e
FOREIGN KEY (element_transfer_order) REFERENCES element_transfer_order( ID ) NOT DEFERRABLE ;

ALTER TABLE elem_transfer_order_comment
ADD CONSTRAINT FK_elem_transfer_order_c699u
FOREIGN KEY (user_login) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: element_transfer_order_detail*/
ALTER TABLE element_transfer_order_detail
ADD CONSTRAINT FK_element_transfer_orde706
FOREIGN KEY (element_transfer_order) REFERENCES element_transfer_order( ID ) NOT DEFERRABLE ;

ALTER TABLE element_transfer_order_detail
ADD CONSTRAINT FK_element_transfer_orde707
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;



/* TABLE: elem_OT_person_in_charge*/
ALTER TABLE elem_OT_person_in_charge
ADD CONSTRAINT FK_elem_OT_person_in_cha718
FOREIGN KEY (element_transfer_order) REFERENCES element_transfer_order( ID ) NOT DEFERRABLE ;


/* TABLE: elem_OT_transport*/
ALTER TABLE elem_OT_transport
ADD CONSTRAINT FK_elem_OT_transport_ele722
FOREIGN KEY (element_transfer_order) REFERENCES element_transfer_order( ID ) NOT DEFERRABLE ;

/*ALTER TABLE elem_OT_transport
ADD CONSTRAINT FK_elem_OT_transport_tra726
FOREIGN KEY (transporter) REFERENCES transporter( id_number ) NOT DEFERRABLE ;*/


/* TABLE: element_type*/
ALTER TABLE element_type
ADD CONSTRAINT FK_element_type_element_c736
FOREIGN KEY (id_category) REFERENCES element_category( id ) NOT DEFERRABLE ;

/* TABLE: element_type_asset*/
ALTER TABLE element_type_asset
ADD CONSTRAINT FK_element_type_asset_in736
FOREIGN KEY (investment_item) REFERENCES investment_item( code ) NOT DEFERRABLE ;

ALTER TABLE element_type_asset
ADD CONSTRAINT FK_element_type_asset_i736a
FOREIGN KEY (default_element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;


/* TABLE: external_location*/
ALTER TABLE external_location
ADD CONSTRAINT FK_external_location_reg740
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE external_location
ADD CONSTRAINT FK_external_location_ext742
FOREIGN KEY (external_location_type) REFERENCES external_location_type( ID ) NOT DEFERRABLE ;

ALTER TABLE external_location
ADD CONSTRAINT FK_external_location_geo747
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE external_location
ADD CONSTRAINT FK_external_location_ge747u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE external_location
ADD CONSTRAINT FK_external_location_ge747d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: external_location_type*/

/* TABLE: external_warehouse*/
ALTER TABLE external_warehouse
ADD CONSTRAINT FK_external_warehouse_re754
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE external_warehouse
ADD CONSTRAINT FK_external_warehouse_ge760
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE external_warehouse
ADD CONSTRAINT FK_external_warehouse_g760u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE external_warehouse
ADD CONSTRAINT FK_external_warehouse_g760d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: fault_element_field*/

/* TABLE: fault_report*/
ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_re767
FOREIGN KEY (fault_report_responsible) REFERENCES fault_report_responsible( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_re768
FOREIGN KEY (fault_report_state) REFERENCES fault_report_state( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768u
FOREIGN KEY (creation_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768c
FOREIGN KEY (cancel_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768w
FOREIGN KEY (warehouse_approve_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768r
FOREIGN KEY (warehouse_reject_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768a
FOREIGN KEY (responsible_approve_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE fault_report
ADD CONSTRAINT FK_fault_report_fault_r768j
FOREIGN KEY (responsible_reject_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: fault_report_detail*/
ALTER TABLE fault_report_detail
ADD CONSTRAINT FK_fault_report_detail_f788
FOREIGN KEY (fault_report) REFERENCES fault_report( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report_detail
ADD CONSTRAINT FK_fault_report_detail_f789
FOREIGN KEY (fault_report_struct) REFERENCES fault_report_struct( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report_detail
ADD CONSTRAINT FK_fault_report_detail_e790
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report_detail
ADD CONSTRAINT FK_fault_report_detail_r792
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;



/* TABLE: fault_report_detail_multiple*/
ALTER TABLE fault_report_detail_multiple
ADD CONSTRAINT FK_fault_report_detail_m850
FOREIGN KEY (fault_report_struct_detail) REFERENCES fault_report_struct_detail( ID ) NOT DEFERRABLE ;


/* TABLE: fault_report_provider*/
ALTER TABLE fault_report_provider
ADD CONSTRAINT FK_fault_report_provider861
FOREIGN KEY (fault_report_provider_type) REFERENCES fault_report_provider_type( ID ) NOT DEFERRABLE ;


/* TABLE: fault_report_provider_type*/

/* TABLE: fault_report_responsible*/
ALTER TABLE fault_report_responsible
ADD CONSTRAINT FK_fault_report_responsi868
FOREIGN KEY (fault_report_provider) REFERENCES fault_report_provider( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report_responsible
ADD CONSTRAINT FK_fault_report_respons868u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: fault_report_state*/

/* TABLE: fault_report_struct*/
ALTER TABLE fault_report_struct
ADD CONSTRAINT FK_fault_report_struct_f882
FOREIGN KEY (fault_report_provider) REFERENCES fault_report_provider( ID ) NOT DEFERRABLE ;

/* TABLE: fault_report_struct_detail*/
ALTER TABLE fault_report_struct_detail
ADD CONSTRAINT FK_fault_report_struct_d887
FOREIGN KEY (fault_report_struct) REFERENCES fault_report_struct( ID ) NOT DEFERRABLE ;

ALTER TABLE fault_report_struct_detail
ADD CONSTRAINT FK_fault_report_struct_d894
FOREIGN KEY (fault_element_field) REFERENCES fault_element_field( ID ) NOT DEFERRABLE ;


/* TABLE: fifo_exception*/

/* TABLE: fifo_exception_registry*/
ALTER TABLE fifo_exception_registry
ADD CONSTRAINT FK_fifo_exception_regist904
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE fifo_exception_registry
ADD CONSTRAINT FK_fifo_exception_regist905
FOREIGN KEY (fifo_exception) REFERENCES fifo_exception( ID ) NOT DEFERRABLE ;

ALTER TABLE fifo_exception_registry
ADD CONSTRAINT FK_fifo_exception_regis905l
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: forgotten_password*/
ALTER TABLE forgotten_password
ADD CONSTRAINT FK_forgotten_passt914
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: functional_unit*/
ALTER TABLE functional_unit
ADD CONSTRAINT FK_functional_unit_funct914
FOREIGN KEY (unit_description_id) REFERENCES functional_unit_description( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit
ADD CONSTRAINT FK_functional_unit_funct915
FOREIGN KEY (unit_report) REFERENCES functional_unit_report( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit
ADD CONSTRAINT FK_functional_unit_wareh916
FOREIGN KEY (warehouse_code) REFERENCES warehouse( code ) NOT DEFERRABLE ;

/* TABLE: functional_unit_description*/

/* TABLE: functional_unit_descrip_line*/
ALTER TABLE functional_unit_descrip_line
ADD CONSTRAINT FK_functional_unit_descr929
FOREIGN KEY (functional_unit_id) REFERENCES functional_unit( ID ) NOT DEFERRABLE ;

/* TABLE: functional_unit_detail*/
ALTER TABLE functional_unit_detail
ADD CONSTRAINT FK_functional_unit_detai939
FOREIGN KEY (functional_unit) REFERENCES functional_unit( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit_detail
ADD CONSTRAINT FK_functional_unit_detai940
FOREIGN KEY (functional_unit_descrip_line) REFERENCES functional_unit_descrip_line( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit_detail
ADD CONSTRAINT FK_functional_unit_detai941
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

/* TABLE: functional_unit_remaining*/
ALTER TABLE functional_unit_remaining
ADD CONSTRAINT FK_functional_unit_remai945
FOREIGN KEY (report) REFERENCES functional_unit_report( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit_remaining
ADD CONSTRAINT FK_functional_unit_remai946
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;


/* TABLE: functional_unit_report*/

/* TABLE: functional_unit_x_invoice*/
ALTER TABLE functional_unit_x_invoice
ADD CONSTRAINT FK_functional_unit_x_inv953
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;

ALTER TABLE functional_unit_x_invoice
ADD CONSTRAINT FK_functional_unit_x_inv954
FOREIGN KEY (functional_unit_description) REFERENCES functional_unit_description( ID ) NOT DEFERRABLE ;

/* TABLE: geographic_location*/
ALTER TABLE geographic_location
ADD CONSTRAINT FK_geographic_location_r962
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE geographic_location
ADD CONSTRAINT FK_geographic_location_962a
FOREIGN KEY (responsible_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE geographic_location
ADD CONSTRAINT FK_geographic_location_962b
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: history_action*/

/* TABLE: incoterm*/

/* TABLE: infrastructure_element*/
ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen974
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

/*ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen980
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;*/

ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen982
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen983
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen993
FOREIGN KEY (infrastructure_model) REFERENCES infrastructure_model( code ) NOT DEFERRABLE ;

ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_user993
FOREIGN KEY (update_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_use993c
FOREIGN KEY (create_user) REFERENCES users( login ) NOT DEFERRABLE ;

/*ALTER TABLE infrastructure_element
ADD CONSTRAINT FK_infrastructure_elemen996
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;*/

/* TABLE: infrastructure_element_his*/
/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen999
FOREIGN KEY (infrastructure_element) REFERENCES infrastructure_element( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen1007
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;*/

/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen1009
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen1011
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen1012
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;*/

/*ALTER TABLE infrastructure_element_his
ADD CONSTRAINT FK_infrastructure_elemen1022
FOREIGN KEY (infrastructure_model) REFERENCES infrastructure_model( code ) NOT DEFERRABLE ;*/


/* TABLE: infrastructure_model*/
ALTER TABLE infrastructure_model
ADD CONSTRAINT FK_infrastructure_model_1035
FOREIGN KEY (default_element_type_asset) REFERENCES element_type_asset( id ) NOT DEFERRABLE ;



/* TABLE: internal_location*/
ALTER TABLE internal_location
ADD CONSTRAINT FK_internal_location_loc1035
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;


/* TABLE: inventory*/
ALTER TABLE inventory
ADD CONSTRAINT FK_inventory_location1038
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

/*ALTER TABLE inventory
ADD CONSTRAINT FK_inventory_locatio1038u
FOREIGN KEY (person_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;*/

/* TABLE: inventory_alarm*/
ALTER TABLE inventory_alarm
ADD CONSTRAINT FK_inventory_alarm_eleme1046
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_alarm
ADD CONSTRAINT FK_inventory_alarm_wareh1048
FOREIGN KEY (warehouse) REFERENCES warehouse( code ) NOT DEFERRABLE ;

ALTER TABLE inventory_alarm
ADD CONSTRAINT FK_inventory_alarm_ware1048r
FOREIGN KEY (regional) REFERENCES region( ID ) NOT DEFERRABLE ;

/* TABLE: inventory_alarm_users*/
ALTER TABLE inventory_alarm_users
ADD CONSTRAINT FK_inventory_alarm_user1055i
FOREIGN KEY (inventory_alarm) REFERENCES inventory_alarm( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_alarm_users
ADD CONSTRAINT FK_inventory_alarm_user1055u
FOREIGN KEY (user_login) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: inventory_by_models*/
ALTER TABLE inventory_by_models
ADD CONSTRAINT FK_inventory_by_models_1059i
FOREIGN KEY (id_inventory_elements) REFERENCES inventory_elements( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_by_models
ADD CONSTRAINT FK_inventory_by_models_1059m
FOREIGN KEY (id_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

/* TABLE: inventory_elements*/
ALTER TABLE inventory_elements
ADD CONSTRAINT FK_inventory_elements_wa1064
FOREIGN KEY (warehouse) REFERENCES warehouse( code ) NOT DEFERRABLE ;

ALTER TABLE inventory_elements
ADD CONSTRAINT FK_inventory_elements_w1064u
FOREIGN KEY (user_create) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: inventory_elements_detail*/
ALTER TABLE inventory_elements_detail
ADD CONSTRAINT FK_inventory_elements_de1068
FOREIGN KEY (id_inventory_elements) REFERENCES inventory_elements( ID ) NOT DEFERRABLE ;

/*ALTER TABLE inventory_elements_detail
ADD CONSTRAINT FK_inventory_elements_de1070
FOREIGN KEY (internal_location) REFERENCES internal_location( ID ) NOT DEFERRABLE ;*/

ALTER TABLE inventory_elements_detail
ADD CONSTRAINT FK_inventory_elements_de1071
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_elements_detail
ADD CONSTRAINT FK_inventory_elements_d1071i
FOREIGN KEY (id_inventory_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_elements_detail
ADD CONSTRAINT FK_inventory_elements_d1071u
FOREIGN KEY (user_report) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: invtory_elem_download_report*/
ALTER TABLE invtory_elem_download_report
ADD CONSTRAINT FK_invtory_elem_download1082
FOREIGN KEY (id_inventory_elements) REFERENCES inventory_elements( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_elem_download_report
ADD CONSTRAINT FK_invtory_elem_download1083
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_elem_download_report
ADD CONSTRAINT FK_invtory_elem_downloa1083e
FOREIGN KEY (element_model_plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: inventory_elements_process*/
ALTER TABLE inventory_elements_process
ADD CONSTRAINT FK_inventory_elements_pr1097
FOREIGN KEY (inventory_elements) REFERENCES inventory_elements( ID ) NOT DEFERRABLE ;


/* TABLE: invtory_proc_elem_difference*/
ALTER TABLE invtory_proc_elem_difference
ADD CONSTRAINT FK_invtory_proc_elem_dif1101
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_proc_elem_difference
ADD CONSTRAINT FK_invtory_proc_elem_dif1102
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_proc_elem_difference
ADD CONSTRAINT FK_invtory_proc_elem_dif1105
FOREIGN KEY (element_model_plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: invtory_proc_elem_n_processed*/
ALTER TABLE invtory_proc_elem_n_processed
ADD CONSTRAINT FK_invtory_proc_elem_n_p1122
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_proc_elem_n_processed
ADD CONSTRAINT FK_invtory_proc_elem_n_p1123
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_proc_elem_n_processed
ADD CONSTRAINT FK_invtory_proc_elem_n_p1126
FOREIGN KEY (element_model_plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: inventory_process_elements_ok*/
ALTER TABLE inventory_process_elements_ok
ADD CONSTRAINT FK_inventory_process_ele1142
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_process_elements_ok
ADD CONSTRAINT FK_inventory_process_ele1143
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE inventory_process_elements_ok
ADD CONSTRAINT FK_inventory_process_ele1146
FOREIGN KEY (element_model_plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: invtory_unknown_int_locations*/
ALTER TABLE invtory_unknown_int_locations
ADD CONSTRAINT FK_invtory_unknown_int_l1162
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_unknown_int_locations
ADD CONSTRAINT FK_invtory_unknown_int_1163i
FOREIGN KEY (id_int_location) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE invtory_unknown_int_locations
ADD CONSTRAINT FK_invtory_unknown_int_1163l
FOREIGN KEY (int_location_location) REFERENCES location( code ) NOT DEFERRABLE ;


/* TABLE: investment_item*/

/* TABLE: invoice*/
ALTER TABLE invoice
ADD CONSTRAINT FK_invoice_supplier1173
FOREIGN KEY (supplier) REFERENCES supplier( ID ) NOT DEFERRABLE ;

ALTER TABLE invoice
ADD CONSTRAINT FK_invoice_currency1180
FOREIGN KEY (currency) REFERENCES currency( code ) NOT DEFERRABLE ;

ALTER TABLE invoice
ADD CONSTRAINT FK_invoice_incoterm1182
FOREIGN KEY (incoterm) REFERENCES incoterm( code ) NOT DEFERRABLE ;


/* TABLE: invoice_detail*/
ALTER TABLE invoice_detail
ADD CONSTRAINT FK_invoice_detail_invoic1189
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;

ALTER TABLE invoice_detail
ADD CONSTRAINT FK_invoice_detail_elemen1190
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: invoice_detail_type*/

/* TABLE: invoice_template*/
ALTER TABLE invoice_template
ADD CONSTRAINT FK_invoice_template_1202
FOREIGN KEY (detail_type) REFERENCES invoice_detail_type( code ) NOT DEFERRABLE ;


/* TABLE: invoice_template_detail*/
ALTER TABLE invoice_template_detail
ADD CONSTRAINT FK_invoice_template_deta1202
FOREIGN KEY (invoice_template) REFERENCES invoice_template( ID ) NOT DEFERRABLE ;

ALTER TABLE invoice_template_detail
ADD CONSTRAINT FK_invoice_template_deta1203
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: laicon_configuration*/

/* TABLE: laicon_inventory_register*/
ALTER TABLE laicon_inventory_register
ADD CONSTRAINT FK_laicon_inventory_regi1211
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;


/* TABLE: laicon_invtory_reg_unknown*/
ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_un1216
FOREIGN KEY (inventory_elements_process) REFERENCES inventory_elements_process( ID ) NOT DEFERRABLE ;

ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_un1217
FOREIGN KEY (id_laicon_inventory_register) REFERENCES laicon_inventory_register( ID ) NOT DEFERRABLE ;

ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_un1218
FOREIGN KEY (id_element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_un1221
FOREIGN KEY (element_model_plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_u1221f
FOREIGN KEY (element_location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE laicon_invtory_reg_unknown
ADD CONSTRAINT FK_laicon_invtory_reg_u1221i
FOREIGN KEY (element_internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;



/* TABLE: location*/
ALTER TABLE location
ADD CONSTRAINT FK_location_location_typ1240
FOREIGN KEY (location_type) REFERENCES location_type( ID ) NOT DEFERRABLE ;

ALTER TABLE location
ADD CONSTRAINT FK_location_region1242
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE location
ADD CONSTRAINT FK_location_geographic_l1246
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE location
ADD CONSTRAINT FK_location_geographic_1246u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE location
ADD CONSTRAINT FK_location_geographic_1246d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: location_type*/

/* TABLE: log*/

/* TABLE: measurement_unit*/

/* TABLE: mic_batch*/
ALTER TABLE mic_batch
ADD CONSTRAINT FK_mic_batch_mic_code_pr1270
FOREIGN KEY (mic_code_prefix) REFERENCES mic_code_prefix( mic_prefix ) NOT DEFERRABLE ;

ALTER TABLE mic_batch
ADD CONSTRAINT FK_mic_batch_mic_code_1270u
FOREIGN KEY (user_creator) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE mic_batch
ADD CONSTRAINT FK_mic_batch_mic_code_1270x
FOREIGN KEY (user_last_updater) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: mic_batch_responsible*/
ALTER TABLE mic_batch_responsible
ADD CONSTRAINT FK_mic_batch_responsible1278
FOREIGN KEY (mic_batch) REFERENCES mic_batch( ID ) NOT DEFERRABLE ;

ALTER TABLE mic_batch_responsible
ADD CONSTRAINT FK_mic_batch_responsibl1278u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE mic_batch_responsible
ADD CONSTRAINT FK_mic_batch_responsibl1278a
FOREIGN KEY (assigned_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE mic_batch_responsible
ADD CONSTRAINT FK_mic_batch_responsibl1278d
FOREIGN KEY (disabled_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: mic_code*/
ALTER TABLE mic_code
ADD CONSTRAINT FK_mic_code_mic_batch1286
FOREIGN KEY (mic_batch) REFERENCES mic_batch( ID ) NOT DEFERRABLE ;

ALTER TABLE mic_code
ADD CONSTRAINT FK_mic_code_mic_batc1286u
FOREIGN KEY (assigned_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE mic_code
ADD CONSTRAINT FK_mic_code_mic_batc1286e
FOREIGN KEY (assigned_element) REFERENCES element( ID ) NOT DEFERRABLE ;

/* TABLE: mic_code_prefix*/

/* TABLE: model_value_change*/
ALTER TABLE model_value_change
ADD CONSTRAINT FK_model_value_ch1306
FOREIGN KEY (plu) REFERENCES element_model( ID ) NOT DEFERRABLE ;

/* TABLE: model_x_category_asset*/
ALTER TABLE model_x_category_asset
ADD CONSTRAINT FK_model_x_category_asse1307
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;


/* TABLE: model_x_type_asset*/
ALTER TABLE model_x_type_asset
ADD CONSTRAINT FK_model_x_type_asset_el1310
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

/* TABLE: movement_quota*/
ALTER TABLE movement_quota
ADD CONSTRAINT FK_movement_quota_wareho1312
FOREIGN KEY (warehouse) REFERENCES warehouse( code ) NOT DEFERRABLE ;

ALTER TABLE movement_quota
ADD CONSTRAINT FK_movement_quota_region1314
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

/* TABLE: movement_report*/

/* TABLE: nationalization*/
/*ALTER TABLE nationalization
ADD CONSTRAINT FK_nationalization_opera1322
FOREIGN KEY (operation_document) REFERENCES operation_document( ID ) NOT DEFERRABLE ;*/

ALTER TABLE nationalization
ADD CONSTRAINT FK_nationalization_invoi1324
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;

ALTER TABLE nationalization
ADD CONSTRAINT FK_nationalization_air_w1328
FOREIGN KEY (awb) REFERENCES air_waybill( ID ) NOT DEFERRABLE ;

ALTER TABLE nationalization
ADD CONSTRAINT FK_nationalization_natio1333
FOREIGN KEY (nationalization_place) REFERENCES nationalization_place( code ) NOT DEFERRABLE ;


/* TABLE: nationalization_place*/
ALTER TABLE nationalization_place
ADD CONSTRAINT FK_nationalization_place1338
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE nationalization_place
ADD CONSTRAINT FK_nationalization_place1347
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE nationalization_place
ADD CONSTRAINT FK_nationalization_plac1347u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE nationalization_place
ADD CONSTRAINT FK_nationalization_plac1347d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: no_attended_spare_part*/
ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_par1350
FOREIGN KEY (no_attended_spare_state) REFERENCES no_attended_spare_state( ID ) NOT DEFERRABLE ;

ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_par1353
FOREIGN KEY (spare_part_warehouse) REFERENCES spare_part_warehouse( ID ) NOT DEFERRABLE ;

ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_par1354
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_pa1354d
FOREIGN KEY (damaged_element_id) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_pa1354m
FOREIGN KEY (damaged_element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE no_attended_spare_part
ADD CONSTRAINT FK_no_attended_spare_pa1354n
FOREIGN KEY (no_attended_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: no_attended_spare_state*/

/* TABLE: operation_document*/
ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_ai1366
FOREIGN KEY (air_waybill) REFERENCES air_waybill( ID ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_cu1371
FOREIGN KEY (currency) REFERENCES currency( code ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371u
FOREIGN KEY (created_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371t
FOREIGN KEY (operation_approved_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371q
FOREIGN KEY (capital_request_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371k
FOREIGN KEY (pre_inspection_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371x
FOREIGN KEY (tax_payment_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371n
FOREIGN KEY (nationalization_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE operation_document
ADD CONSTRAINT FK_operation_document_c1371c
FOREIGN KEY (canceled_by_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: operation_document_comment*/
ALTER TABLE operation_document_comment
ADD CONSTRAINT FK_operation_document_co1396
FOREIGN KEY (operation_document) REFERENCES operation_document( ID ) NOT DEFERRABLE ;

ALTER TABLE operation_document_comment
ADD CONSTRAINT FK_operation_document_c1396u
FOREIGN KEY (user_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: operation_document_x_invoice*/
ALTER TABLE operation_document_x_invoice
ADD CONSTRAINT FK_operation_document_x_1402
FOREIGN KEY (operation_document) REFERENCES operation_document( ID ) NOT DEFERRABLE ;

ALTER TABLE operation_document_x_invoice
ADD CONSTRAINT FK_operation_document_x_1403
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;


/* TABLE: order_execution_responsible*/

/* TABLE: order_priority_type*/
ALTER TABLE order_priority_type
ADD CONSTRAINT FK_order_priority_type_1417
FOREIGN KEY (user_edit) REFERENCES users( login ) NOT DEFERRABLE ;



/* TABLE: piece_box_stowage*/
ALTER TABLE piece_box_stowage
ADD CONSTRAINT FK_piece_box_stowage_inv1417
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;


/* TABLE: plant_center*/

/* TABLE: privilege*/

/* TABLE: profile*/

/* TABLE: profile_privilege*/
ALTER TABLE profile_privilege
ADD CONSTRAINT FK_profile_privilege_pro1431
FOREIGN KEY (profile) REFERENCES profile( ID ) NOT DEFERRABLE ;

ALTER TABLE profile_privilege
ADD CONSTRAINT FK_profile_privilege_pri1432
FOREIGN KEY (privilege) REFERENCES privilege( ID ) NOT DEFERRABLE ;


/* TABLE: profile_x_element_structure*/
ALTER TABLE profile_x_element_structure
ADD CONSTRAINT FK_profile_x_element_str1433
FOREIGN KEY (profile) REFERENCES profile( ID ) NOT DEFERRABLE ;

ALTER TABLE profile_x_element_structure
ADD CONSTRAINT FK_profile_x_element_str1434
FOREIGN KEY (element_structure) REFERENCES element_structure( property ) NOT DEFERRABLE ; /*NOTA*/


/* TABLE: purchase_order*/
ALTER TABLE purchase_order
ADD CONSTRAINT FK_purchase_order_vendor1437
FOREIGN KEY (vendor) REFERENCES vendor( ID ) NOT DEFERRABLE ;

ALTER TABLE purchase_order
ADD CONSTRAINT FK_purchase_order_car_li1439
FOREIGN KEY (car_line) REFERENCES car_line( ID ) NOT DEFERRABLE ;

ALTER TABLE purchase_order
ADD CONSTRAINT FK_purchase_order_curren1440
FOREIGN KEY (currency) REFERENCES currency( code ) NOT DEFERRABLE ;


/* TABLE: purchase_order_line*/
ALTER TABLE purchase_order_line
ADD CONSTRAINT FK_purchase_order_line_p1443
FOREIGN KEY (purchase_order) REFERENCES purchase_order( ID ) NOT DEFERRABLE ;

ALTER TABLE purchase_order_line
ADD CONSTRAINT FK_purchase_order_line_t1447
FOREIGN KEY (tax_type) REFERENCES tax_type( code ) NOT DEFERRABLE ;


/* TABLE: purchase_order_request*/
ALTER TABLE purchase_order_request
ADD CONSTRAINT FK_purchase_order_reques1456
FOREIGN KEY (plant_center) REFERENCES plant_center( code ) NOT DEFERRABLE ;

/*ALTER TABLE purchase_order_request
ADD CONSTRAINT FK_purchase_order_reques1459
FOREIGN KEY (currency) REFERENCES currency( code ) NOT DEFERRABLE ;


/* TABLE: q_elements_to_sap*/

/* TABLE: quality_inventory*/
ALTER TABLE quality_inventory
ADD CONSTRAINT FK_quality_inventory_loc1472
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory
ADD CONSTRAINT FK_quality_inventory_lo1472u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory
ADD CONSTRAINT FK_quality_inventory_lo1472p
FOREIGN KEY (processed_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: quality_inventory_element*/
ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1480
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1481
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1482
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1483
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1484
FOREIGN KEY (quality_inventory) REFERENCES quality_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1487
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_element
ADD CONSTRAINT FK_quality_inventory_ele1488
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

/* TABLE: quality_inventory_elem_result*/
ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1491
FOREIGN KEY (quality_inventory_element) REFERENCES quality_inventory_element( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1492
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1493
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1494
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1495
FOREIGN KEY (quality_inventory) REFERENCES quality_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1499
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_ele1500
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_inventory_elem_result
ADD CONSTRAINT FK_quality_inventory_el1500l
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: quality_invtory_elem_rslt_dtl*/
ALTER TABLE quality_invtory_elem_rslt_dtl
ADD CONSTRAINT FK_quality_invtory_elem_1507
FOREIGN KEY (quality_inventory) REFERENCES quality_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_invtory_elem_rslt_dtl
ADD CONSTRAINT FK_quality_invtory_elem_1508
FOREIGN KEY (quality_inventory_element) REFERENCES quality_inventory_element( ID ) NOT DEFERRABLE ;

ALTER TABLE quality_invtory_elem_rslt_dtl
ADD CONSTRAINT FK_quality_invtory_elem_1509
FOREIGN KEY (quality_inventory_elem_result) REFERENCES quality_inventory_elem_result( ID ) NOT DEFERRABLE ;


/* TABLE: reenabled_element*/
ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ele1517
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ele1519
FOREIGN KEY (model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_loc1521
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ele1527
FOREIGN KEY (element_state) REFERENCES element_state( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_air1530
FOREIGN KEY (awb) REFERENCES air_waybill( ID ) NOT DEFERRABLE ;

/*ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_inv1538
FOREIGN KEY (inventory) REFERENCES inventory( ID ) NOT DEFERRABLE ;*/

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_int1544
FOREIGN KEY (internal_location_id) REFERENCES internal_location( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ele1551
FOREIGN KEY (element_type_asset) REFERENCES element_type_asset( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ele1552
FOREIGN KEY (element_category_asset) REFERENCES element_category_asset( ID ) NOT DEFERRABLE ;

/*ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_pur1563
FOREIGN KEY (purchase_order_line) REFERENCES purchase_order_line( ID ) NOT DEFERRABLE ;*/

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_pie1573
FOREIGN KEY (piece_box_stowage) REFERENCES piece_box_stowage( code ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_ree1574
FOREIGN KEY (element_classification) REFERENCES element_classification( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_element
ADD CONSTRAINT FK_reenabled_element_log1574
FOREIGN KEY (revived_login) REFERENCES users( login ) NOT DEFERRABLE ;




/* TABLE: reenabled_location*/
ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_lo1579
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_lo1581
FOREIGN KEY (location_type) REFERENCES location_type( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_re1583
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_r1583u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_r1583d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE reenabled_location
ADD CONSTRAINT FK_reenabled_location_r1583r
FOREIGN KEY (revived_login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: region*/
ALTER TABLE region
ADD CONSTRAINT FK_region_users_1602
FOREIGN KEY (responsible_user) REFERENCES users( login ) NOT DEFERRABLE ;



/* TABLE: remote_invtory_included_model*/
ALTER TABLE remote_invtory_included_model
ADD CONSTRAINT FK_remote_invtory_includ1602
FOREIGN KEY (element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: remote_invtory_inconsistency*/
ALTER TABLE remote_invtory_inconsistency
ADD CONSTRAINT FK_remote_invtory_incons1612
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE remote_invtory_inconsistency
ADD CONSTRAINT FK_remote_invtory_inco161l2a
FOREIGN KEY (laicon_location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE remote_invtory_inconsistency
ADD CONSTRAINT FK_remote_invtory_incon1612u
FOREIGN KEY (laicon_user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE remote_invtory_inconsistency
ADD CONSTRAINT FK_remote_invtory_inco161l2r
FOREIGN KEY (ri_location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE remote_invtory_inconsistency
ADD CONSTRAINT FK_remote_invtory_incon1612i
FOREIGN KEY (ri_user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: remote_invtory_incnsistncy_ty*/

/* TABLE: remote_inventory_location*/
ALTER TABLE remote_inventory_location
ADD CONSTRAINT FK_remote_inventory_l1639
FOREIGN KEY (laicon_location_code) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE remote_inventory_location
ADD CONSTRAINT FK_remote_inventory_1639r
FOREIGN KEY (ri_provider) REFERENCES remote_inventory_provider( ID ) NOT DEFERRABLE ;


/* TABLE: remote_inventory_mail_list*/
ALTER TABLE remote_inventory_mail_list
ADD CONSTRAINT FK_remote_inventory_mail1639
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

/* TABLE: remote_inventory_provider*/

/* TABLE: remote_inventory_temp_element*/

/* TABLE: reverse_costing_by_ws_detail*/
ALTER TABLE reverse_costing_by_ws_detail
ADD CONSTRAINT FK_reverse_costing_by_ws1665
FOREIGN KEY (reverse_costing_by_ws_regist) REFERENCES reverse_costing_by_ws_regist( ID ) NOT DEFERRABLE ;

ALTER TABLE reverse_costing_by_ws_detail
ADD CONSTRAINT FK_reverse_costing_by_ws1666
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;


/* TABLE: reverse_costing_by_ws_regist*/
/*ALTER TABLE reverse_costing_by_ws_regist
ADD CONSTRAINT FK_reverse_costing_by_ws1672
FOREIGN KEY (purchase_order_line) REFERENCES purchase_order_line( ID ) NOT DEFERRABLE ;*/


/* TABLE: Sislog_Elemento_PedidoEntrada*/
ALTER TABLE Sislog_Elemento_PedidoEntrada
ADD CONSTRAINT FK_Sislog_Elemento_Pedid1676
FOREIGN KEY (Sislog_PedidoEntrada) REFERENCES Sislog_PedidoEntrada( ID ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_PedidoEntrada
ADD CONSTRAINT FK_Sislog_Elemento_Pedi1676l
FOREIGN KEY (CodigoLaicon) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_PedidoEntrada
ADD CONSTRAINT FK_Sislog_Elemento_Pedi1676n
FOREIGN KEY (Modelo) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: Sislog_Elemento_PedidoSalida*/
ALTER TABLE Sislog_Elemento_PedidoSalida
ADD CONSTRAINT FK_Sislog_Elemento_Pedid1687
FOREIGN KEY (Sislog_PedidoSalida) REFERENCES Sislog_PedidoSalida( ID ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_PedidoSalida
ADD CONSTRAINT FK_Sislog_Elemento_Pedi1687c
FOREIGN KEY (CodigoLaicon) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_PedidoSalida
ADD CONSTRAINT FK_Sislog_Elemento_Pedi1687m
FOREIGN KEY (Modelo) REFERENCES element_model( ID ) NOT DEFERRABLE ;


/* TABLE: Sislog_Elemento_Transferencia*/
ALTER TABLE Sislog_Elemento_Transferencia
ADD CONSTRAINT FK_sislog_elem_trans1737
FOREIGN KEY (IdTransaccion) REFERENCES Sislog_TransferenciaParcial( IdTransaccion ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_Transferencia
ADD CONSTRAINT FK_sislog_elem_trans1737a
FOREIGN KEY (CodigoLaicon) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE Sislog_Elemento_Transferencia
ADD CONSTRAINT FK_sislog_elem_trans1737b
FOREIGN KEY (Modelo) REFERENCES element_model( ID ) NOT DEFERRABLE ;

/* TABLE: Sislog_PedidoEntrada*/
ALTER TABLE Sislog_PedidoEntrada
ADD CONSTRAINT FK_sislog_pentrada1737
FOREIGN KEY (CodigoBodega) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE Sislog_PedidoEntrada
ADD CONSTRAINT FK_sislog_pentrada1737a
FOREIGN KEY (UsuarioCreacion) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: Sislog_PedidoSalida*/
ALTER TABLE Sislog_PedidoSalida
ADD CONSTRAINT FK_sislog_psalida1737
FOREIGN KEY (CodigoBodega) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE Sislog_PedidoSalida
ADD CONSTRAINT FK_sislog_psalida1737a
FOREIGN KEY (CodigoDestinatario) REFERENCES location( code ) NOT DEFERRABLE ;

/* TABLE: Sislog_TransferenciaParcial*/
ALTER TABLE Sislog_TransferenciaParcial
ADD CONSTRAINT FK_sislog_trans_partial1737
FOREIGN KEY (CodigoBodega) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE Sislog_TransferenciaParcial
ADD CONSTRAINT FK_sislog_trans_partial1737a
FOREIGN KEY (BodegaOrigen) REFERENCES location( code ) NOT DEFERRABLE ;

/* TABLE: Sislog_Warehouse*/
ALTER TABLE Sislog_Warehouse
ADD CONSTRAINT FK_sislog_w_1737
FOREIGN KEY (CodigoBodega) REFERENCES location( code ) NOT DEFERRABLE ;


/* TABLE: site*/
ALTER TABLE site
ADD CONSTRAINT FK_site_region1737
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_site_type1742
FOREIGN KEY (site_type) REFERENCES site_type( ID ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_tower_contract_t1751
FOREIGN KEY (tower_contract_type) REFERENCES tower_contract_type( ID ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_bts_technology_t1752
FOREIGN KEY (bts_technology_type) REFERENCES bts_technology_type( ID ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_geographic_locat1758
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_spare_part_maint1759
FOREIGN KEY (spare_part_maintenance_zone) REFERENCES spare_part_maintenance_zone( ID ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_spare_part_main1759u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE site
ADD CONSTRAINT FK_site_spare_part_main1759d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: site_type*/

/* TABLE: solve_surplus_alpopular*/
ALTER TABLE solve_surplus_alpopular
ADD CONSTRAINT FK_solve_surplus_alpopul1766
FOREIGN KEY (desktop_inventory) REFERENCES desktop_inventory( ID ) NOT DEFERRABLE ;

ALTER TABLE solve_surplus_alpopular
ADD CONSTRAINT FK_solve_surplus_alpopul1768
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE solve_surplus_alpopular
ADD CONSTRAINT FK_solve_surplus_alpopu1768e
FOREIGN KEY (element_result) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE solve_surplus_alpopular
ADD CONSTRAINT FK_solve_surplus_alpopu1768p
FOREIGN KEY (process_result_detail) REFERENCES dktp_inv_proc_rslt_dtl( ID ) NOT DEFERRABLE ;

/* TABLE: spare_part_interchange*/
ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchang1773
FOREIGN KEY (spare_part_interchange_state) REFERENCES spare_part_interchange_state( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchag1776a
FOREIGN KEY (spare_part_warehouse) REFERENCES spare_part_warehouse( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchan1776b
FOREIGN KEY (spare_laicon_id) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchan1776c
FOREIGN KEY (spare_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchan1776d
FOREIGN KEY (departure_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchan1776e
FOREIGN KEY (responsible_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange
ADD CONSTRAINT FK_spare_part_interchan1776f
FOREIGN KEY (closing_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: spare_part_interchange_detail*/
ALTER TABLE spare_part_interchange_detail
ADD CONSTRAINT FK_spare_part_interchang1787
FOREIGN KEY (spare_part_interchange) REFERENCES spare_part_interchange( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange_detail
ADD CONSTRAINT FK_spare_part_interchan1787u
FOREIGN KEY (interchange_user) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange_detail
ADD CONSTRAINT FK_spare_part_interchan1787e
FOREIGN KEY (damaged_element_id) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_interchange_detail
ADD CONSTRAINT FK_spare_part_interchan1787m
FOREIGN KEY (damaged_element_model) REFERENCES element_model( ID ) NOT DEFERRABLE ;

/* TABLE: spare_part_interchange_state*/

/* TABLE: spare_part_mail_list*/
ALTER TABLE spare_part_mail_list
ADD CONSTRAINT FK_spare_part_mail_list_1803
FOREIGN KEY (spare_part_mail_list_module) REFERENCES spare_part_mail_list_module( code ) NOT DEFERRABLE ;

ALTER TABLE spare_part_mail_list
ADD CONSTRAINT FK_spare_part_mail_list1803u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: spare_part_mail_list_module*/

/* TABLE: spare_part_maintenance_zone*/
ALTER TABLE spare_part_maintenance_zone
ADD CONSTRAINT FK_spare_part_maintenanc1812
FOREIGN KEY (spare_part_warehouse) REFERENCES spare_part_warehouse( ID ) NOT DEFERRABLE ;

ALTER TABLE spare_part_maintenance_zone
ADD CONSTRAINT FK_spare_part_maintenanc1814
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;


/* TABLE: spare_part_om_director*/
ALTER TABLE spare_part_om_director
ADD CONSTRAINT FK_spare_part_om_directo1818
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;


/* TABLE: spare_part_warehouse*/
ALTER TABLE spare_part_warehouse
ADD CONSTRAINT FK_spare_part_warehouse_1821
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE spare_part_warehouse
ADD CONSTRAINT FK_spare_part_warehouse1821w
FOREIGN KEY (warehouse_type) REFERENCES spare_part_warehouse_type( ID ) NOT DEFERRABLE ;

/* TABLE: spare_part_warehouse_type*/

/* TABLE: stealed_element_location*/
ALTER TABLE stealed_element_location
ADD CONSTRAINT FK_stealed_element_locat1831
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE stealed_element_location
ADD CONSTRAINT FK_stealed_element_locat1837
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE stealed_element_location
ADD CONSTRAINT FK_stealed_element_loca1837u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE stealed_element_location
ADD CONSTRAINT FK_stealed_element_loca1837d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: supplier*/
ALTER TABLE supplier
ADD CONSTRAINT FK_supplier_document_typ1840
FOREIGN KEY (document_type) REFERENCES document_type( ID ) NOT DEFERRABLE ;


/* TABLE: synchronization*/

/* TABLE: synchronization_detail*/
ALTER TABLE synchronization_detail
ADD CONSTRAINT FK_synchronization_detai1854
FOREIGN KEY (element) REFERENCES element( ID ) NOT DEFERRABLE ;

ALTER TABLE synchronization_detail
ADD CONSTRAINT FK_synchronization_deta1854s
FOREIGN KEY (synchronization_id) REFERENCES synchronization( ID ) NOT DEFERRABLE ;

ALTER TABLE synchronization_detail
ADD CONSTRAINT FK_synchronization_deta1854l
FOREIGN KEY (location_to) REFERENCES location( code ) NOT DEFERRABLE ;

ALTER TABLE synchronization_detail
ADD CONSTRAINT FK_synchronization_deta1854f
FOREIGN KEY (location_from) REFERENCES location( code ) NOT DEFERRABLE ;

/* TABLE: tax_type*/

/* TABLE: ticket_template*/

/* TABLE: tower_contract_type*/

/* TABLE: transporter*/

/* TABLE: truck*/
ALTER TABLE truck
ADD CONSTRAINT FK_truck_transporter1878
FOREIGN KEY (transporter) REFERENCES transporter( id_number ) NOT DEFERRABLE ;

ALTER TABLE truck
ADD CONSTRAINT FK_truck_truck_type1879
FOREIGN KEY (truck_type) REFERENCES truck_type( ID ) NOT DEFERRABLE ;


/* TABLE: truck_type*/

/* TABLE: user_profile*/
ALTER TABLE user_profile
ADD CONSTRAINT FK_user_profile_profile1885
FOREIGN KEY (profile) REFERENCES profile( ID ) NOT DEFERRABLE ;

ALTER TABLE user_profile
ADD CONSTRAINT FK_user_profile_profil1885u
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: users*/

/* TABLE: value_data*/

/* TABLE: vendor*/
/*ALTER TABLE vendor
ADD CONSTRAINT FK_vendor_region1916
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;*/


/* TABLE: warehouse*/
ALTER TABLE warehouse
ADD CONSTRAINT FK_warehouse_region1922
FOREIGN KEY (region) REFERENCES region( ID ) NOT DEFERRABLE ;

ALTER TABLE warehouse
ADD CONSTRAINT FK_warehouse_geographic_1936
FOREIGN KEY (geographic_location) REFERENCES geographic_location( code ) NOT DEFERRABLE ;

ALTER TABLE warehouse
ADD CONSTRAINT FK_warehouse_geographic1936u
FOREIGN KEY (user_in_charge) REFERENCES users( login ) NOT DEFERRABLE ;

ALTER TABLE warehouse
ADD CONSTRAINT FK_warehouse_geographic1936d
FOREIGN KEY (deleted_by_user) REFERENCES users( login ) NOT DEFERRABLE ;


/* TABLE: warehouse_entry*/
ALTER TABLE warehouse_entry
ADD CONSTRAINT FK_warehouse_entry_purch1941
FOREIGN KEY (purchase_order_line) REFERENCES purchase_order_line( ID ) NOT DEFERRABLE ;

/*ALTER TABLE warehouse_entry
ADD CONSTRAINT FK_warehouse_entry_invoi1942
FOREIGN KEY (invoice) REFERENCES invoice( ID ) NOT DEFERRABLE ;*/

ALTER TABLE warehouse_entry
ADD CONSTRAINT FK_warehouse_entry_locat1945
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;


/* TABLE: warehouse_entry_detail*/
ALTER TABLE warehouse_entry_detail
ADD CONSTRAINT FK_warehouse_entry_detai1948
FOREIGN KEY (warehouse_entry) REFERENCES warehouse_entry( ID ) NOT DEFERRABLE ;


/* TABLE: warehouse_keeper*/
ALTER TABLE warehouse_keeper
ADD CONSTRAINT FK_warehouse_keeper_u1962
FOREIGN KEY (login) REFERENCES users( login ) NOT DEFERRABLE ;

/* TABLE: warehouse_request*/
ALTER TABLE warehouse_request
ADD CONSTRAINT FK_warehouse_request_loc1962
FOREIGN KEY (location) REFERENCES location( code ) NOT DEFERRABLE ;


/* TABLE: we_request_category*/

/* TABLE: we_request_type*/
ALTER TABLE we_request_type
ADD CONSTRAINT FK_we_request1962
FOREIGN KEY (category) REFERENCES we_request_category( id ) NOT DEFERRABLE ;


/* TABLE: we_status*/
