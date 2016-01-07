/*26-May-2015*/

/* TABLE: additional_attribute*/

/* TABLE: additional_data*/

/* TABLE: air_waybill*/

/* TABLE: backup_capitalization_data*/

/* TABLE: bom*/
/*  KEY bom_provider (bom_provider),*/
CREATE INDEX IDX_BOM_PROVIDER ON bom(bom_provider);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_F ON bom(element_model);
/*  KEY name (name),*/
CREATE INDEX IDX_NAME ON bom(name);
/*  KEY state (state),*/
CREATE INDEX IDX_STATE ON bom(state);
/*  KEY locked (locked),*/
CREATE INDEX IDX_LOCKED ON bom(locked);
/*  KEY bom_idx (id),
/*CREATE INDEX IDX_BOM_IDX ON bom(id);*/
/*  KEY bom_update_user_idx (update_user),*/
CREATE INDEX IDX_BOM_UPDATE_USER_IDX ON bom(update_user);
/*  KEY bom_creation_user_idx (creation_user),*/
CREATE INDEX IDX_BOM_CREATION_USER_IDX ON bom(creation_user);
/*  CONSTRAINT bom_ibfk_1 FOREIGN KEY (bom_provider) REFERENCES bom_provider (id) ON DELETE NO ACTION ON UPDATE NO ACTION,*/
/*ALTER TABLE bom
ADD CONSTRAINT FK_bom_ib1
FOREIGN KEY (bom_provider)
REFERENCES bom_provider(id);*/
/*  CONSTRAINT bom_ibfk_2 FOREIGN KEY (model) REFERENCES element_model (id) ON DELETE NO ACTION ON UPDATE NO ACTION*/
/*ALTER TABLE bom
ADD CONSTRAINT FK_bom_ib2
FOREIGN KEY (model)
REFERENCES element_model(id);*/

/* TABLE: bom_detail*/
/*  KEY element_model (element_model),*/
CREATE INDEX IDX_ELEMENT_MODEL_A ON bom_detail(element_model);
/*  KEY infrastructure_model (infrastructure_model),*/
CREATE INDEX IDX_INFRASTRUCTURE_MODEL_A ON bom_detail(infrastructure_model);
/*  KEY bom (bom),*/
CREATE INDEX IDX_BOM ON bom_detail(bom);
/*  KEY is_infrastructure_element (is_infrastructure_element),*/
CREATE INDEX IDX_IS_INFRA_ELEM ON bom_detail(is_infrastructure_element);
/*  KEY bom_detail_line_sap_idx (line_sap),*/
CREATE INDEX IDX_BOM_DETAIL_LINE_SAP_IDX ON bom_detail(line_sap);
/*  KEY bom_detail_export_sap_idx (export_sap)*/
CREATE INDEX IDX_BOM_DTL_EXPORT_SAP ON bom_detail(export_sap);

/* TABLE: bom_provider*/
/*  KEY name (name)*/
CREATE INDEX IDX_NAME_A ON bom_provider(name);

/* TABLE: bsc*/

/* TABLE: bts_technology_type*/

/* TABLE: capit_by_ws_detail*/
/*  KEY capitalize_by_webservice_detail_register_fk (capitalize_by_webservice_register),*/
CREATE INDEX IDX_CAPIT_BY_WS_DTL_REG ON capit_by_ws_detail(capit_by_ws_regstr);
/*  KEY capitalize_by_webservice_detail_element_fk (element)*/
CREATE INDEX IDX_CAPIT_BY_WS_DTL_ELEM ON capit_by_ws_detail(element);

/* TABLE: capit_by_ws_regstr*/
/*  KEY capitalize_by_webservice_register_siscap_login_idx (siscap_login),*/
CREATE INDEX IDX_CAPIT_BY_WS_REG_SCP_LOGIN ON capit_by_ws_regstr(siscap_login);
/*  KEY capitalize_by_webservice_register_capitalization_report_idx (siscap_capitalization_report)*/
CREATE INDEX IDX_CAPIT_BY_WS_REG_CAPTZ_RPT ON capit_by_ws_regstr(siscap_capitalization_report);

/* TABLE: capit_by_workbook_detail*/
/*  KEY capitalize_by_workbook_detail_capitalize_by_workbook_register_fk (capitalize_by_workbook_register),*/
CREATE INDEX IDX_CAPIT_BY_WB_DTL_CPT_WB_RG ON capit_by_workbook_detail(capit_by_workbook_register);
/*  KEY capitalize_by_workbook_detail_element_fk (element)*/
CREATE INDEX IDX_CAPIT_BY_WB_DTL_ELEM ON capit_by_workbook_detail(element);

/* TABLE: capit_by_workbook_register*/
/*  KEY capitalize_by_workbook_register_users_fk (user_login)*/
CREATE INDEX IDX_CAPIT_BY_WB_REG_USERS ON capit_by_workbook_register(user_login);

/* TABLE: car*/

/* TABLE: car_line*/

/* TABLE: connection_link*/

/* TABLE: connection_link_provider*/

/* TABLE: crossing_elements_process*/
/*  KEY crossing_login (crossing_login),*/
CREATE INDEX IDX_CROSSING_LOGIN ON crossing_elements_process(crossing_login);
/*  KEY approve_login (approve_login),*/
CREATE INDEX IDX_APPROVE_LOGIN ON crossing_elements_process(approve_login);
/*  KEY reject_login (reject_login),*/
CREATE INDEX IDX_REJECT_LOGIN ON crossing_elements_process(reject_login);
/*  KEY crossing_type (crossing_type),*/
CREATE INDEX IDX_CROSSING_TYPE ON crossing_elements_process(crossing_type);
/*  KEY crossing_date (crossing_date),*/
CREATE INDEX IDX_CROSSING_DATE ON crossing_elements_process(crossing_date);
/*  KEY crossing_state (crossing_state),*/
CREATE INDEX IDX_CROSSING_STATE ON crossing_elements_process(crossing_state);
/*  KEY approve_date (approve_date),*/
CREATE INDEX IDX_APPROVE_DATE ON crossing_elements_process(approve_date);
/*  KEY reject_date (reject_date)*/
CREATE INDEX IDX_REJECT_DATE ON crossing_elements_process(reject_date);

/* TABLE: cross_elem_process_detail*/
/*  KEY crossing_elements_process (crossing_elements_process),*/
CREATE INDEX IDX_CROSSING_ELEMS_PCS ON cross_elem_process_detail(crossing_elements_process);
/*  KEY element_missing (element_missing),*/
CREATE INDEX IDX_ELEMENT_MISSING ON cross_elem_process_detail(element_missing);
/*  KEY element_model_missing (element_model_missing),*/
CREATE INDEX IDX_ELEMENT_MODEL_MISSING ON cross_elem_process_detail(element_model_missing);
/*  KEY location_missing (location_missing),*/
CREATE INDEX IDX_LOCATION_MISSING ON cross_elem_process_detail(location_missing);
/*  KEY element_type_asset_missing (element_type_asset_missing),*/
CREATE INDEX IDX_ELEM_TYPE_ASSET_MISS ON cross_elem_process_detail(element_type_asset_missing);
/*  KEY element_category_asset_missing (element_category_asset_missing),*/
CREATE INDEX IDX_ELEM_CATEGORY_ASSET_MISS ON cross_elem_process_detail(element_category_asset_missing);
/*  KEY element_new (element_new),*/
CREATE INDEX IDX_ELEMENT_NEW ON cross_elem_process_detail(element_new);
/*  KEY element_model_new (element_model_new),*/
CREATE INDEX IDX_ELEMENT_MODEL_NEW ON cross_elem_process_detail(element_model_new);
/*  KEY location_new (location_new),*/
CREATE INDEX IDX_LOCATION_NEW ON cross_elem_process_detail(location_new);
/*  KEY element_type_asset_new (element_type_asset_new),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_NEW ON cross_elem_process_detail(element_type_asset_new);
/*  KEY element_category_asset_new (element_category_asset_new),*/
CREATE INDEX IDX_ELEM_CATEGORY_ASSET_NEW ON cross_elem_process_detail(element_category_asset_new);
/*  KEY serial_missing (serial_missing),*/
CREATE INDEX IDX_SERIAL_MISSING ON cross_elem_process_detail(serial_missing);
/*  KEY millicom_code_missing (millicom_code_missing),*/
CREATE INDEX IDX_MILLICOM_CODE_MISSING ON cross_elem_process_detail(millicom_code_missing);
/*  KEY is_asset_missing (is_asset_missing),*/
CREATE INDEX IDX_IS_ASSET_MISSING ON cross_elem_process_detail(is_asset_missing);
/*  KEY serial_new (serial_new),*/
CREATE INDEX IDX_SERIAL_NEW ON cross_elem_process_detail(serial_new);
/*  KEY millicom_code_new (millicom_code_new),*/
CREATE INDEX IDX_MILLICOM_CODE_NEW ON cross_elem_process_detail(millicom_code_new);
/*  KEY is_asset_new (is_asset_new),*/
CREATE INDEX IDX_IS_ASSET_NEW ON cross_elem_process_detail(is_asset_new);
/*  KEY crossing_element_state (crossing_element_state)*/
CREATE INDEX IDX_CROSSING_ELEMENT_STATE ON cross_elem_process_detail(crossing_element_state);

/* TABLE: currency*/

/* TABLE: desktop_inventory*/
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_H ON desktop_inventory(location);
/*  KEY processed_user (processed_user),*/
CREATE INDEX IDX_PROCESSED_USER ON desktop_inventory(processed_user);
/*  KEY login (login),*/
CREATE INDEX IDX_LOGIN_C ON desktop_inventory(login);
/*  KEY rescheduled_by_user (rescheduled_by_user),*/
CREATE INDEX IDX_RESCHEDULED_BY_USER ON desktop_inventory(rescheduled_by_user);
/*  KEY desktop_inventory_state_idx (state),*/
CREATE INDEX IDX_DKTP_INV_STATE ON desktop_inventory(state);
/*  KEY desktop_inventory_reschedule_idx (reschedule),*/
CREATE INDEX IDX_DKTP_INV_RESCHEDULE ON desktop_inventory(reschedule);
/*  KEY desktop_inventory_desktop_inventory_grouping_fk (desktop_inventory_grouping),*/
CREATE INDEX IDX_DKTP_INV_DKTP_INV_GROUP ON desktop_inventory(desktop_inventory_grouping);
/*  KEY has_partial_inventory (has_partial_inventory)*/
CREATE INDEX IDX_HAS_PARTIAL_INVENTORY ON desktop_inventory(has_partial_inventory);

/* TABLE: dktp_invtory_admin_warehouse*/

/* TABLE: dktp_invtory_auto_resolv_miss*/
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY ON dktp_invtory_auto_resolv_miss(desktop_inventory);
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
CREATE INDEX IDX_DKTP_INV_PROC_RSLT_DTL_K ON dktp_invtory_auto_resolv_miss(dktp_inv_proc_rslt_dtl);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT ON dktp_invtory_auto_resolv_miss(element);
/*  KEY login (login)*/
CREATE INDEX IDX_LOGIN_B ON dktp_invtory_auto_resolv_miss(login);

/* TABLE: dktp_inv_elem*/
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL ON dktp_inv_elem(element_model);
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_A ON dktp_inv_elem(location);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_A ON dktp_inv_elem(element);
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_A ON dktp_inv_elem(desktop_inventory);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET ON dktp_inv_elem(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET ON dktp_inv_elem(element_category_asset);
/*  KEY desktop_inventory_element_serial_idx (serial),*/
CREATE INDEX IDX_DKTP_INV_ELEM_SERIAL ON dktp_inv_elem(serial);
/*  KEY desktop_inventory_element_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_DKTP_INV_ELEM_MCOM_CD ON dktp_inv_elem(millicom_code);
/*  KEY desktop_inventory_element_is_asset_idx (is_asset),*/
CREATE INDEX IDX_DKTP_INV_ELEM__ASSET ON dktp_inv_elem(is_asset);
/*  KEY desktop_inventory_element_old_millicom_code_idx (old_millicom_code),*/
CREATE INDEX IDX_DKTP_INV_ELEM_OLD_MCOM_CD ON dktp_inv_elem(old_millicom_code);
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
CREATE INDEX IDX_DKTP_INV_PARCIAL_INV ON dktp_inv_elem(dktp_inv_parcial_inventory);

/* TABLE: dktp_invtory_elem_result*/
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_B ON dktp_invtory_elem_result(location);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_A ON dktp_invtory_elem_result(model);
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_B ON dktp_invtory_elem_result(desktop_inventory);
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
CREATE INDEX IDX_DKTP_INV_ELEM_E ON dktp_invtory_elem_result(dktp_inv_elem);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_B ON dktp_invtory_elem_result(element);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_C ON dktp_invtory_elem_result(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_A ON dktp_invtory_elem_result(element_category_asset);
/*  KEY desktop_inventory_element_result_serial_idx (serial),*/
CREATE INDEX IDX_DKTP_INV_ELEM_RESULT_SR ON dktp_invtory_elem_result(serial);
/*  KEY desktop_inventory_element_result_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_DKTP_INV_ELEM_RSLT_MCM_CD ON dktp_invtory_elem_result(millicom_code);
/*  KEY desktop_inventory_element_result_is_asset_idx (is_asset),*/
CREATE INDEX IDX_DKTP_INV_ELEM_RESULT_ASST ON dktp_invtory_elem_result(is_asset);
/*  KEY desktop_inventory_element_result_state_idx (state),*/
CREATE INDEX IDX_DKTP_INV_ELEM_RESULT_STAT ON dktp_invtory_elem_result(state);
/*  KEY internal_location_id (internal_location_id),*/
CREATE INDEX IDX_INTERNAL_LOCATION_ID ON dktp_invtory_elem_result(internal_location);
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
CREATE INDEX IDX_DKTP_INV_PARCIAL_INV_A ON dktp_invtory_elem_result(dktp_inv_parcial_inventory);

/* TABLE: dktp_invtory_excluded_field*/
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,field_code),*/
ALTER TABLE dktp_invtory_excluded_field
ADD CONSTRAINT DKTP_INV_GROUP_FIELD UNIQUE (desktop_inventory_grouping,field_code);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED ON dktp_invtory_excluded_field(enabled);

/* TABLE: dktp_invtory_excluded_model*/
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,element_model),*/
ALTER TABLE dktp_invtory_excluded_model
ADD CONSTRAINT DKTP_INV_GROUP_MODEL UNIQUE (desktop_inventory_grouping,element_model);
/*  KEY element_model (element_model),*/
CREATE INDEX IDX_ELEMENT_MODEL ON dktp_invtory_excluded_model(element_model);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_A ON dktp_invtory_excluded_model(enabled);

/* TABLE: desktop_inventory_grouping*/
/*  KEY is_active (is_active),*/
CREATE INDEX IDX_IS_ACTIVE ON desktop_inventory_grouping(is_active);
/*  KEY is_default (is_default),*/
CREATE INDEX IDX_IS_DEFAULT ON desktop_inventory_grouping(is_default);
/*  KEY desktop_inventory_grouping_restrict_inventory_screen_fields_idx (restrict_inventory_screen_fields),*/
CREATE INDEX IDX_DKTP_INV_GROUP_REST_FL ON desktop_inventory_grouping(restrict_inv_screen_field);
/*  KEY desktop_inventory_grouping_solve_missing_only_field_service_idx (solve_missing_only_field_service),*/
CREATE INDEX IDX_DKTP_INV_GROUP_MISS ON desktop_inventory_grouping(solve_miss_only_field_service); /**/
/*  KEY validate_upload_terminal_files (validate_upload_terminal_files)*/
CREATE INDEX IDX_VALIDATE_UPLOAD_TERM_FILE ON desktop_inventory_grouping(validate_upload_terminal_files);

/* TABLE: dktp_inv_parcial_inventory*/
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_C ON dktp_inv_parcial_inventory(desktop_inventory);
/*  KEY dktp_invtory_admin_warehouse (desktop_inventory_admin_warehouse),*/
CREATE INDEX IDX_DKTP_INVTORY_ADMIN_WH ON dktp_inv_parcial_inventory(dktp_invtory_admin_warehouse);
/*  KEY internal_location (internal_location),*/
CREATE INDEX IDX_INTERNAL_LOCATION ON dktp_inv_parcial_inventory(internal_location);
/*  KEY partial_download_user (partial_download_user),*/
CREATE INDEX IDX_PARTIAL_DOWNLOAD_USER ON dktp_inv_parcial_inventory(partial_download_user);
/*  KEY partial_download_date (partial_download_date),*/
CREATE INDEX IDX_PARTIAL_DOWNLOAD_DATE ON dktp_inv_parcial_inventory(partial_download_date);
/*  KEY partial_upload_user (partial_upload_user),*/
CREATE INDEX IDX_PARTIAL_UPLOAD_USER ON dktp_inv_parcial_inventory(partial_upload_user);
/*  KEY partial_upload_date (partial_upload_date)*/
CREATE INDEX IDX_PARTIAL_UPLOAD_DATE ON dktp_inv_parcial_inventory(partial_upload_date);

/* TABLE: dktp_inv_proc_rslt_dtl*/
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_D ON dktp_inv_proc_rslt_dtl(desktop_inventory);
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
CREATE INDEX IDX_DKTP_INV_ELEM_A ON dktp_inv_proc_rslt_dtl(dktp_inv_elem);
/*  KEY dktp_invtory_elem_result (desktop_inventory_element_result),*/
CREATE INDEX IDX_DKTP_INVTORY_ELEM_RESULT ON dktp_inv_proc_rslt_dtl(dktp_invtory_elem_result);
/*  KEY process_result_state (process_result_state),*/
CREATE INDEX IDX_PROCESS_RESULT_STATE ON dktp_inv_proc_rslt_dtl(process_result_state);
/*  KEY process_result_type (process_result_type),*/
CREATE INDEX IDX_PROCESS_RESULT_TYPE ON dktp_inv_proc_rslt_dtl(process_result_type);
/*  KEY di_process_result_detail_partial_inventory_idx (dktp_inv_parcial_inventory)*/
CREATE INDEX IDX_DI_PCS_RSLT_DTL_PRTL_INV ON dktp_inv_proc_rslt_dtl(dktp_inv_parcial_inventory);

/* TABLE: dktp_inv_proc_rslt_dif_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
CREATE INDEX IDX_DKTP_INV_ELEM_B ON dktp_inv_proc_rslt_dif_dtl(dktp_inv_elem);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_C ON dktp_inv_proc_rslt_dif_dtl(element);
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_C ON dktp_inv_proc_rslt_dif_dtl(location);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_B ON dktp_inv_proc_rslt_dif_dtl(element_model);
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_E ON dktp_inv_proc_rslt_dif_dtl(desktop_inventory);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_D ON dktp_inv_proc_rslt_dif_dtl(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_B ON dktp_inv_proc_rslt_dif_dtl(element_category_asset);
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
CREATE INDEX IDX_DKTP_INV_PROC_RSLT_DTL ON dktp_inv_proc_rslt_dif_dtl(dktp_inv_proc_rslt_dtl);
/*  KEY check_field_service_login (check_field_service_login),*/
CREATE INDEX IDX_CHECK_FIELD_SERVICE_LOGIN ON dktp_inv_proc_rslt_dif_dtl(check_field_service_login);
/*  KEY chk_invtory_responsible_login (check_inventory_responsible_login),*/
CREATE INDEX IDX_CHK_INVTRY_RESPONS_LOGIN ON dktp_inv_proc_rslt_dif_dtl(chk_invtory_responsible_login);
/*  KEY process_result_diff_detail_serial_idx (serial),*/
CREATE INDEX IDX_PCS_RSLT_DIFF_DTL_SERIAL ON dktp_inv_proc_rslt_dif_dtl(serial);
/*  KEY process_result_diff_detail_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_PCS_RSLT_DIFF_DTL_MCOM_CD ON dktp_inv_proc_rslt_dif_dtl(millicom_code);
/*  KEY process_result_diff_detail_is_asset_idx (is_asset),*/
CREATE INDEX IDX_PCS_RSLT_DIFF_DTL__ASSET ON dktp_inv_proc_rslt_dif_dtl(is_asset);
/*  KEY internal_location_id (internal_location_id),*/
CREATE INDEX IDX_INTERNAL_LOCATION_ID_A ON dktp_inv_proc_rslt_dif_dtl(internal_location);
/*  KEY di_process_diff_detail_missing_element_created_idx (missing_element_created_for_partial_diff)*/
CREATE INDEX IDX_DI_PCS_DIFF_DTL_MISS_ELEM ON dktp_inv_proc_rslt_dif_dtl(miss_elem_creat_for_part_diff);

/* TABLE: dktp_inv_proc_rslt_miss_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
CREATE INDEX IDX_DKTP_INV_ELEM_C ON dktp_inv_proc_rslt_miss_dtl(DKTP_INV_ELEM);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_D ON dktp_inv_proc_rslt_miss_dtl(element);
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_D ON dktp_inv_proc_rslt_miss_dtl(location);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_C ON dktp_inv_proc_rslt_miss_dtl(element_model);
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_F ON dktp_inv_proc_rslt_miss_dtl(desktop_inventory);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_A ON dktp_inv_proc_rslt_miss_dtl(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_C ON dktp_inv_proc_rslt_miss_dtl(element_category_asset);
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
CREATE INDEX IDX_DKTP_INV_PROC_RSLT_DTL_X ON dktp_inv_proc_rslt_miss_dtl(dktp_inv_proc_rslt_dtl);
/*  KEY field_service_check_login (field_service_check_login),*/
CREATE INDEX IDX_FIELD_SERVICE_CHECK_LOGIN ON dktp_inv_proc_rslt_miss_dtl(field_service_check_login);
/*  KEY responsible_check_login (responsible_check_login),*/
CREATE INDEX IDX_RESPONSIBLE_CHECK_LOGIN ON dktp_inv_proc_rslt_miss_dtl(responsible_check_login);
/*  KEY process_result_missing_detail_serial_idx (serial),*/
CREATE INDEX IDX_PCS_RSLT_MISS_DTL_SERIAL ON dktp_inv_proc_rslt_miss_dtl(serial);
/*  KEY process_result_missing_detail_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_PCS_RSLT_MISS_DTL_MCOM_CD ON dktp_inv_proc_rslt_miss_dtl(millicom_code);
/*  KEY process_result_missing_detail_is_asset_idx (is_asset),*/
CREATE INDEX IDX_PCS_RSLT_MISS_DTL__ASSET ON dktp_inv_proc_rslt_miss_dtl(is_asset);
/*  KEY process_result_missing_detail_solve_pending_unsuscribe_idx (solve_pending_unsuscribe_element),*/
CREATE INDEX IDX_PCS_RSLT_MISS_DTL_SOLVE ON dktp_inv_proc_rslt_miss_dtl(solve_pending_unsuscribe_elem);
/*  KEY internal_location_id (internal_location_id)*/
CREATE INDEX IDX_INTERNAL_LOCATION_ID_B ON dktp_inv_proc_rslt_miss_dtl(internal_location);

/* TABLE: dktp_inv_proc_rslt_nw_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
CREATE INDEX IDX_DKTP_INV_ELEM_D ON dktp_inv_proc_rslt_nw_dtl(DKTP_INV_ELEM);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_E ON dktp_inv_proc_rslt_nw_dtl(element);
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_E ON dktp_inv_proc_rslt_nw_dtl(location);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_D ON dktp_inv_proc_rslt_nw_dtl(element_model);
/*  KEY desktop_inventory (desktop_inventory),*/
CREATE INDEX IDX_DESKTOP_INVENTORY_G ON dktp_inv_proc_rslt_nw_dtl(desktop_inventory);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_G ON dktp_inv_proc_rslt_nw_dtl(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_D ON dktp_inv_proc_rslt_nw_dtl(element_category_asset);
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
CREATE INDEX IDX_DKTP_INV_PROC_RSLT_DTL_A ON dktp_inv_proc_rslt_nw_dtl(dktp_inv_proc_rslt_dtl);
/*  KEY check_login (check_login),*/
CREATE INDEX IDX_CHECK_LOGIN ON dktp_inv_proc_rslt_nw_dtl(check_login);
/*  KEY match_missing_login (match_missing_login),*/
CREATE INDEX IDX_MATCH_MISSING_LOGIN ON dktp_inv_proc_rslt_nw_dtl(match_missing_login);
/*  KEY proc_result_detail_miss_match (process_result_detail_missing_match),*/
CREATE INDEX IDX_PROC_RSLT_DTL_MISS_MATCH ON dktp_inv_proc_rslt_nw_dtl(proc_result_detail_miss_match);
/*  KEY process_result_new_detail_serial_idx (serial),*/
CREATE INDEX IDX_PCS_RSLT_NEW_DTL_SERIAL ON dktp_inv_proc_rslt_nw_dtl(serial);
/*  KEY process_result_new_detail_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_PCS_RSLT_NEW_DTL_MCOM_CD ON dktp_inv_proc_rslt_nw_dtl(millicom_code);
/*  KEY process_result_new_detail_is_asset_idx (is_asset),*/
CREATE INDEX IDX_PCS_RSLT_NEW_DTL__ASSET ON dktp_inv_proc_rslt_nw_dtl(is_asset);
/*  KEY process_result_new_detail_only_solve_check_login_fk (only_solve_check_login),*/
CREATE INDEX IDX_PCS_RSLT_NEW_DTL_SOLVE_CK ON dktp_inv_proc_rslt_nw_dtl(only_solve_check_login);
/*  KEY process_result_new_detail_new_element_created_id (new_element_created_id),*/
CREATE INDEX IDX_PCS_RSLT_NEW_DTL_NEW_ELEM ON dktp_inv_proc_rslt_nw_dtl(new_element_created_id);
/*  KEY internal_location_id (internal_location_id)*/
CREATE INDEX IDX_INTERNAL_LOCATION_ID_C ON dktp_inv_proc_rslt_nw_dtl(internal_location);

/* TABLE: dktp_inv_proc_rslt_state*/

/* TABLE: dktp_inv_proc_rslt_type*/

/* TABLE: dktp_inv_surplus_OT*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
CREATE INDEX IDX_DKTP_INV_PROC_RSLT_DTL_B ON dktp_inv_surplus_OT(dktp_inv_proc_rslt_dtl);
/*  KEY element_transfer_order (element_transfer_order),*/
CREATE INDEX IDX_ELEMENT_TRANSFER_ORDER ON dktp_inv_surplus_OT(element_transfer_order);
/*  KEY element_transfer_order_detail (element_transfer_order_detail)*/
CREATE INDEX IDX_ELEM_TRF_ORD_DTL ON dktp_inv_surplus_OT(element_transfer_order_detail);

/* TABLE: dktp_inv_terminal_model*/

/* TABLE: document_type*/

/* TABLE: element*/
/*  KEY element_deleted_idx (deleted),*/
CREATE INDEX IDX_ELEMENT_DELETED_IDX ON element(deleted);
/*  KEY element_containing_element_idx (containing_element),*/
CREATE INDEX IDX_ELEM_CONTAINING_ELEM ON element(containing_element);
/*  KEY element_awb_idx (awb),*/
CREATE INDEX IDX_ELEMENT_AWB_IDX ON element(air_waybill);
/*  KEY element_tigo_inventory_code_idx (tigo_inventory_code),*/
CREATE INDEX IDX_ELEM_TIGO_INV_CD ON element(tigo_inventory_code);
/*  KEY element_serial_idx (serial),*/
CREATE INDEX IDX_ELEMENT_SERIAL_IDX ON element(serial);
/*  KEY element_location_idx (location),*/
CREATE INDEX IDX_ELEMENT_LOCATION_IDX ON element(location);
/*  KEY element_model_idx (model),*/
CREATE INDEX IDX_ELEMENT_MODEL_IDX ON element(element_model);
/*  KEY element_internal_location_id_idx (internal_location_id),*/
CREATE INDEX IDX_ELEM_INTERNAL_LOCATION_ID ON element(internal_location);
/*  KEY element_source_element_idx (source_element),*/
CREATE INDEX IDX_ELEM_SOURCE_ELEM ON element(source_element);
/*  KEY element_installation_site_1_idx (installation_site_1),*/
CREATE INDEX IDX_ELEM_INSTALLATION_SITE_1 ON element(installation_site_1);
/*  KEY element_installation_site_2_idx (installation_site_2),*/
CREATE INDEX IDX_ELEM_INSTALLATION_SITE_2 ON element(installation_site_2);
/*  KEY element_login_update_installation_site_idx (login_update_installation_site),*/
CREATE INDEX IDX_ELEM_LOGIN_UPDATE_INSTALL ON element(login_update_installation_site);
/*  KEY element_in_movement_idx (in_movement),*/
CREATE INDEX IDX_ELEMENT_IN_MOVEMENT_IDX ON element(in_movement);
/*  KEY element_type_asset_element_fk (element_type_asset),*/
CREATE INDEX IDX_ELEM_TYPE_ASSET_ELEM ON element(element_type_asset);
/*  KEY element_category_asset_element_fk (element_category_asset),*/
CREATE INDEX IDX_ELEM_CATEGORY_ASSET_ELEM_A ON element(element_category_asset);
/*  KEY element_purchase_order_number_idx (purchase_order_number),*/
CREATE INDEX IDX_ELEM_PURCHASE_ORD_NUM ON element(purchase_order_number);
/*  KEY element_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
CREATE INDEX IDX_ELEM_TMP_FIX_ASSET_NUM ON element(wip_temp_fix_asset_number);
/*  KEY element_fixed_asset_number_idx (fixed_asset_number),*/
CREATE INDEX IDX_ELEM_FIX_ASSET_NUM ON element(fixed_asset_number);
/*  KEY element_wip_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
/*CREATE INDEX IDX_ELEM_WIP_TMP_FIX_ASSET ON element(wip_temp_fix_asset_number);*/
/*  KEY element_purchase_order_line_idx (purchase_order_line),*/
CREATE INDEX IDX_ELEM_PURCHASE_ORD_LINE ON element(purchase_order_line);
/*  KEY element_warehouse_entry_number_idx (warehouse_entry_number),*/
CREATE INDEX IDX_ELEM_WH_ENTRY_NUM ON element(warehouse_entry_number);
/*  KEY element_car_number_idx (car_number),*/
CREATE INDEX IDX_ELEMENT_CAR_NUMBER_IDX ON element(car_number);
/*  KEY element_is_asset_idx (is_asset),*/
CREATE INDEX IDX_ELEMENT_IS_ASSET_IDX ON element(is_asset);
/*  KEY element_fixed_asset_subnumber_idx (fixed_asset_subnumber),*/
CREATE INDEX IDX_ELEM_FIX_ASSET_SUBNUM ON element(fixed_asset_subnumber);
/*  KEY element_old_millicom_code_idx (old_millicom_code),*/
CREATE INDEX IDX_ELEM_OLD_MCOM_CD ON element(old_millicom_code);
/*  KEY element_millicom_code_idx (millicom_code),*/
CREATE INDEX IDX_ELEM_MCOM_CD ON element(millicom_code);
/*  KEY element_quantity_idx (quantity),*/
CREATE INDEX IDX_ELEMENT_QUANTITY_IDX ON element(quantity);
/*  KEY element_element_state_idx (element_state),*/
CREATE INDEX IDX_ELEM_ELEM_STATE ON element(element_state);
/*  KEY element_date_capitalization_idx (date_capitalization),*/
CREATE INDEX IDX_ELEM_DATE_CAPITALZ ON element(date_capitalization);
/*  KEY element_last_inventory_date_idx (last_inventory_date),*/
CREATE INDEX IDX_ELEM_LAST_INV_DATE ON element(last_inventory_date);
/*  KEY element_last_inventory_id_fk (last_inventory_id),*/
CREATE INDEX IDX_ELEM_LAST_INV_ID ON element(last_inventory_id);
/*  KEY element_locked_idx (locked),*/
CREATE INDEX IDX_ELEMENT_LOCKED_IDX ON element(locked);
/*  KEY element_piece_box_stowage_idx (piece_box_stowage),*/
CREATE INDEX IDX_ELEM_PIECE_BOX_STOWAGE ON element(piece_box_stowage);
/*  KEY element_reenabled_idx (reenabled),*/
CREATE INDEX IDX_ELEMENT_REENABLED_IDX ON element(reenabled);
/*  KEY element_element_classification_idx (element_classification),*/
CREATE INDEX IDX_ELEM_ELEM_CLASSIFICATION ON element(element_classification);
/*  KEY import_declaration (import_declaration),*/
CREATE INDEX IDX_IMPORT_DECLARATION ON element(import_declaration);
/*  KEY element_id_sap_idx (id_sap)*/
CREATE INDEX IDX_ELEMENT_ID_SAP_IDX ON element(id_sap);

/* TABLE: element_BKP_20111201*/

/* TABLE: element_category*/

/* TABLE: element_category_asset*/
/*  KEY investment_item_element_category_asset_fk (investment_item),*/
CREATE INDEX IDX_INVESTMENT_ITEM_ELEM_CAT ON element_category_asset(investment_item);
/*  KEY mic_code_prefix_element_category_asset_fk (mic_code_prefix)*/
CREATE INDEX IDX_MIC_CD_PREFIX_ELEM_CAT ON element_category_asset(mic_code_prefix);

/* TABLE: element_classification*/
/*  UNIQUE KEY description (description)*/
ALTER TABLE element_classification
ADD CONSTRAINT DESCRIPTION UNIQUE (description);

/* TABLE: element_history*/
/*  KEY element_history_detailed_type_idx (detailed_type),*/
CREATE INDEX IDX_ELEM_HY_DTLED_TYPE ON element_history(detailed_type);
/*  KEY element_history_support_code_idx (support_code),*/
CREATE INDEX IDX_ELEM_HY_SUPPORT_CD ON element_history(support_code);
/*  KEY element_history_support_table_idx (support_table),*/
CREATE INDEX IDX_ELEM_HY_SUPPORT_TABLE ON element_history(support_table);
/*  KEY element_history_split_source_element_idx (split_source_element),*/
CREATE INDEX IDX_ELEM_HY_SPLIT_SOURCE_ELEM ON element_history(split_source_element);
/*  KEY element_history_element_model_idx (element_model),*/
CREATE INDEX IDX_ELEM_HY_ELEM_MOD ON element_history(element_model);
/*  KEY element_history_element_serial_idx (element_serial),*/
CREATE INDEX IDX_ELEM_HY_ELEM_SERIAL ON element_history(element_serial);
/*  KEY element_history_element_purchase_price_idx (element_purchase_price),*/
CREATE INDEX IDX_ELEM_HY_ELEM_PURCHSE_PRIC ON element_history(element_purchase_price);
/*  KEY element_history_element_state_idx (element_state),*/
CREATE INDEX IDX_ELEM_HY_ELEM_STATE ON element_history(element_state);
/*  KEY element_history_element_containing_element_idx (element_containing_element),*/
CREATE INDEX IDX_ELEM_HY_ELEM_CONT ON element_history(element_containing_element);
/*  KEY element_history_element_internal_location_idx (element_internal_location),*/
CREATE INDEX IDX_ELEM_HY_ELEM_INTERNAL ON element_history(element_internal_location);
/*  KEY element_history_element_awb_idx (element_awb),*/
CREATE INDEX IDX_ELEM_HY_ELEM_AWB ON element_history(element_awb);
/*  KEY element_history_element_invoice_idx (element_invoice),*/
CREATE INDEX IDX_ELEM_HY_ELEM_INVOICE ON element_history(element_invoice);
/*  KEY element_history_element_insurance_value_idx (element_insurance_value),*/
CREATE INDEX IDX_ELEM_HY_ELEM_INSURANCE_V ON element_history(element_insurance_value);
/*  KEY element_history_element_millicom_code_idx (element_millicom_code),*/
CREATE INDEX IDX_ELEM_HY_ELEM_MCOM_CD ON element_history(element_millicom_code);
/*  KEY element_history_intermediate_location_idx (intermediate_location),*/
CREATE INDEX IDX_ELEM_HY_INTERMEDIATE_LOCT ON element_history(intermediate_location);
/*  KEY element_history_type_asset_idx (element_type_asset),*/
CREATE INDEX IDX_ELEM_HY_TYPE_ASSET ON element_history(element_type_asset);
/*  KEY element_history_category_asset_idx (element_category_asset),*/
CREATE INDEX IDX_ELEM_HY_CATEGORY_ASSET ON element_history(element_category_asset);
/*  KEY element_history_asset_cop_value_idx (element_asset_cop_value),*/
CREATE INDEX IDX_ELEM_HY_ASSET_COP_VAL ON element_history(element_asset_cop_value);
/*  KEY element_history_asset_usd_value_idx (element_asset_usd_value),*/
CREATE INDEX IDX_ELEM_HY_ASSET_USD_VAL ON element_history(element_asset_usd_value);
/*  KEY element_history_asset_trm_idx (element_asset_trm),*/
CREATE INDEX IDX_ELEM_HY_ASSET_TRM ON element_history(element_asset_trm);
/*  KEY element_history_nationalization_cop_value_idx (element_nationalization_cop_value),*/
CREATE INDEX IDX_ELEM_HY_NATIONAL_COP_VAL ON element_history(elem_ntionalization_cop_value);
/*  KEY element_history_nationalization_usd_value_idx (element_nationalization_usd_value),*/
CREATE INDEX IDX_ELEM_HY_NATIONAL_USD_VAL ON element_history(elem_ntionalization_usd_value);
/*  KEY element_history_nationalization_trm_idx (element_nationalization_trm),*/
CREATE INDEX IDX_ELEM_HY_NATIONAL_TRM ON element_history(element_nationalization_trm);
/*  KEY element_history_purchase_order_number_idx (element_purchase_order_number),*/
CREATE INDEX IDX_ELEM_HY_PURCHASE_ORD_NUM ON element_history(element_purchase_order_number);
/*  KEY element_history_wip_temporal_fixed_asset_number_idx (element_wip_temporal_fixed_asset_number),*/
CREATE INDEX IDX_ELEM_HY_WIP_TMP_FIX_ASSET ON element_history(elem_wip_temp_fix_asset_num);
/*  KEY element_history_fixed_asset_number_idx (element_fixed_asset_number),*/
CREATE INDEX IDX_ELEM_HY_FIX_ASSET_NUM ON element_history(element_fixed_asset_number);
/*  KEY element_history_fixed_asset_subnumber_idx (element_fixed_asset_subnumber),*/
CREATE INDEX IDX_ELEM_HY_FIX_ASSET_SUBNUM ON element_history(element_fixed_asset_subnumber);
/*  KEY element_history_purchase_order_line_idx (element_purchase_order_line),*/
CREATE INDEX IDX_ELEM_HY_PURCHASE_ORD_LINE ON element_history(element_purchase_order_line);
/*  KEY element_history_warehouse_entry_number_idx (element_warehouse_entry_number),*/
CREATE INDEX IDX_ELEM_HY_WH_ENTRY_NUM ON element_history(element_warehouse_entry_number);
/*  KEY element_history_car_number_idx (element_car_number),*/
CREATE INDEX IDX_ELEM_HY_CAR_NUM ON element_history(element_car_number);
/*  KEY element_history_is_asset_idx (element_is_asset),*/
CREATE INDEX IDX_ELEM_HY__ASSET ON element_history(element_is_asset);
/*  KEY element_history_date_capitalization_idx (element_date_capitalization),*/
CREATE INDEX IDX_ELEM_HY_DATE_CAPITALZ ON element_history(element_date_capitalization);
/*  KEY element_history_nationalization_subnumber_idx (element_nationalization_subnumber),*/
CREATE INDEX IDX_ELEM_HY_NATIONAL_SUBNUM ON element_history(elem_ntionalization_subnumber);
/*  KEY element_history_element_locked_idx (element_locked),*/
CREATE INDEX IDX_ELEM_HY_ELEM_LOCKED ON element_history(element_locked);
/*  KEY element_history_element_in_movement_idx (element_in_movement),*/
CREATE INDEX IDX_ELEM_HY_ELEM_IN_MOVEMENT ON element_history(element_in_movement);
/*  KEY element_history_element_idx (element),*/
CREATE INDEX IDX_ELEM_HY_ELEM ON element_history(element);
/*  KEY element_history_history_date_idx (history_date),*/
CREATE INDEX IDX_ELEM_HY_HY_DATE ON element_history(history_date);
/*  KEY element_history_history_time_idx (history_time),*/
CREATE INDEX IDX_ELEM_HY_HY_TIME ON element_history(history_time);
/*  KEY element_history_action_idx (action),*/
CREATE INDEX IDX_ELEM_HY_ACTION ON element_history(action);
/*  KEY element_history_location_idx (location),*/
CREATE INDEX IDX_ELEM_HY_LOCATION ON element_history(location);
/*  KEY element_history_direction_idx (direction),*/
CREATE INDEX IDX_ELEM_HY_DIRECTION ON element_history(direction);
/*  KEY element_history_movement_report_idx (movement_report),*/
CREATE INDEX IDX_ELEM_HY_MOVEMENT_REPORT ON element_history(movement_report);
/*  KEY element_history_piece_box_stowage_idx (element_piece_box_stowage),*/
CREATE INDEX IDX_ELEM_HY_PIECE_BOX_STOWAGE ON element_history(element_piece_box_stowage);
/*  KEY element_history_element_reenabled_idx (element_reenabled),*/
CREATE INDEX IDX_ELEM_HY_ELEM_REENABLED ON element_history(element_reenabled);
/*  KEY element_history_classification_idx (element_classification)*/
CREATE INDEX IDX_ELEM_HY_CLASSIFICATION ON element_history(element_classification);

/* TABLE: element_inventory*/

/* TABLE: element_model*/
/*  KEY element_model_description_idx (description),*/
CREATE INDEX IDX_ELEM_MOD_DESCRIPT ON element_model(description);
/*  KEY element_model_value_type_idx (value_type),*/
CREATE INDEX IDX_ELEM_MOD_VAL_TYPE ON element_model(value_type);
/*  KEY element_type_asset_element_model_fk (default_element_type_asset),*/
CREATE INDEX IDX_ELEM_TYPE_ASSET_ELEM_MOD ON element_model(default_element_type_asset);
/*  KEY element_model_idx (id),*/
/*CREATE INDEX IDX_ELEMENT_MODEL_IDX_A ON element_model(id);*/
/*  KEY element_model_id_sap_idx (id_sap),*/
CREATE INDEX IDX_ELEMENT_MODEL_ID_SAP_IDX ON element_model(id_sap);
/*  KEY element_model_model_sap_idx (model_sap)*/
CREATE INDEX IDX_ELEM_MOD_MOD_SAP ON element_model(model_sap);

ALTER TABLE element_model
ADD CONSTRAINT plu UNIQUE (plu);

/* TABLE: elem_mdl_x_remote_inv_ref*/

/* TABLE: elem_movement_order_comment*/

/* TABLE: element_order_problem_case*/

/* TABLE: elem_order_prblm_case_abs_dtl*/

/* TABLE: elem_order_prblm_case_att_fle*/
/*  KEY element_order_problem_case (element_order_problem_case),*/
CREATE INDEX IDX_ELEM_ORD_PROBLEM_CASE ON elem_order_prblm_case_att_fle(element_order_problem_case);
/*  KEY element_order_problem_case_attach_file_uploaded_by_fk (uploaded_by)*/
CREATE INDEX IDX_ELEM_ORD_PBM_CASE_ATT_FL ON elem_order_prblm_case_att_fle(uploaded_by);

/* TABLE: elem_order_prblm_case_exs_dtl*/

/* TABLE: element_request*/
/*  KEY element_request_location_idx (location),*/
CREATE INDEX IDX_ELEM_RQST_LOCATION ON element_movement_order(location);
/*  KEY element_request_created_state_user_idx (created_state_user),*/
CREATE INDEX IDX_ELEM_RQST_CREAT_STAT_USR ON element_movement_order(created_state_user);
/*  KEY element_request_authorized_state_user_idx (authorized_state_user),*/
CREATE INDEX IDX_ELEM_RQST_ATHRIZ_STAT_USR ON element_movement_order(authorized_state_user);
/*  KEY element_request_in_transit_state_user_idx (in_transit_state_user),*/
CREATE INDEX IDX_ELEM_RQST_TRANSI_STAT_USR ON element_movement_order(in_transit_state_user);
/*  KEY element_request_canceled_state_user_idx (canceled_state_user),*/
CREATE INDEX IDX_ELEM_RQST_CANCEL_STAT_USR ON element_movement_order(canceled_state_user);
/*  KEY element_request_review_state_user_idx (review_state_user),*/
CREATE INDEX IDX_ELEM_RQST_REVIEW_STAT_USR ON element_movement_order(review_state_user);
/*  KEY element_request_end_state_user_idx (end_state_user),*/
CREATE INDEX IDX_ELEM_RQST_END_STATE_USR ON element_movement_order(end_state_user);
/*  KEY element_request_state_idx (state),*/
CREATE INDEX IDX_ELEM_RQST_STATE ON element_movement_order(state);
/*  KEY element_request_request_date_idx (request_date),*/
CREATE INDEX IDX_ELEM_RQST_RQST_DATE ON element_movement_order(request_date);
/*  KEY element_request_login_idx (login),*/
CREATE INDEX IDX_ELEM_RQST_LOGIN ON element_movement_order(login);
/*  KEY element_request_reviewed_idx (reviewed),*/
CREATE INDEX IDX_ELEM_RQST_REVIEWED ON element_movement_order(reviewed);
/*  KEY element_request_auth_transport_idx (auth_transport),*/
CREATE INDEX IDX_ELEM_RQST_AUTH_TRANSPORT ON element_movement_order(auth_transport);
/*  KEY element_request_direction_idx (direction),*/
CREATE INDEX IDX_ELEM_RQST_DIRECTION ON element_movement_order(direction);
/*  KEY element_request_order_priority_type_idx (order_priority_type),*/
CREATE INDEX IDX_ELEM_RQST_ORD_PRRITY_TYPE ON element_movement_order(order_priority_type);
/*  KEY element_request_requires_transportation_idx (requires_transportation),*/
CREATE INDEX IDX_ELEM_RQST_REQUIRES_TRANS ON element_movement_order(requires_transportation);
/*  KEY element_request_order_execution_responsible_idx (order_execution_responsible),*/
CREATE INDEX IDX_ELEM_RQST_ORD_EXE_RESPONS ON element_movement_order(order_execution_responsible);
/*  KEY document_send_indx (document_send),*/
CREATE INDEX IDX_DOCUMENT_SEND_INDX ON element_movement_order(document_send);
/*  KEY document_receive_indx (document_receive),*/
CREATE INDEX IDX_DOCUMENT_RECEIVE_INDX_B ON element_movement_order(document_receive);
/*  KEY petitioner_indx (petitioner)*/
CREATE INDEX IDX_PETITIONER_INDX ON element_movement_order(petitioner);

/* TABLE: element_movement_order_detail*/
/*  KEY element_requested_request_idx (request),*/
CREATE INDEX IDX_ELEM_RQSTED_RQST ON element_movement_order_detail(request);
/*  KEY element_requested_element_idx (element),*/
CREATE INDEX IDX_ELEM_RQSTED_ELEM ON element_movement_order_detail(element);
/*  KEY element_requested_arrived_idx (arrived)*/
CREATE INDEX IDX_ELEM_RQSTED_ARRIVED ON element_movement_order_detail(arrived);

/* TABLE: elem_request_person_in_charge*/

/* TABLE: element_request_transport*/

/* TABLE: element_screenshot_comparison*/
/*  KEY element_screenshot_comparison_created_by_idx (created_by),*/
CREATE INDEX IDX_ELEM_SCRNSHOT_COMPR_CREAT ON element_screenshot_comparison(created_by);
/*  KEY element_screenshot_comparison_screenshot_origin_idx (screenshot_origin),*/
CREATE INDEX IDX_ELEM_SCRNSHOT_COMPR_ORG ON element_screenshot_comparison(screenshot_origin);
/*  KEY element_screenshot_comparison_screenshot_destination_idx (screenshot_destination)*/
CREATE INDEX IDX_ELEM_SCRNSHOT_COMPR_DEST ON element_screenshot_comparison(screenshot_destination);

/* TABLE: elem_screenhot_compa_detail*/
/*  KEY comparison_detail_comparison_fk (element_screenshot_comparison),*/
CREATE INDEX IDX_COMPR_DTL_COMPR ON elem_screenhot_compa_detail(element_screenshot_comparison);
/*  KEY comparison_detail_difference_type_fk (element_screenshot_comparison_difference_type),*/
CREATE INDEX IDX_COMPR_DTL_DIFFERENCE_TYPE ON elem_screenhot_compa_detail(elem_screenhot_compa_dif_ty);
/*  KEY comparison_detail_element_fk (element)*/
CREATE INDEX IDX_COMPR_DTL_ELEM ON elem_screenhot_compa_detail(element);

/* TABLE: elem_screenhot_compa_dif_ty*/

/* TABLE: elem_screenshot_data*/
/*  KEY screenshot_data_element_screenshot_registry_idx (element_screenshot_registry),*/
CREATE INDEX IDX_SCRNSHT_DATA_ELEM_SCRNSHT ON elem_screenshot_data(element_screenshot_registry);
/*  KEY elem_screenshot_data_location_idx (location)*/
CREATE INDEX IDX_ELEM_SCREENSHOT_DATA_LOCT ON elem_screenshot_data(location);

/* TABLE: element_screenshot_registry*/
/*  KEY element_screenshot_registry_created_by_idx (created_by)*/
CREATE INDEX IDX_ELEM_SCREENSHOT_REG_CREAT ON element_screenshot_registry(created_by);

/* TABLE: element_snapshot*/

/* TABLE: element_state*/

/* TABLE: element_structure*/
/*  UNIQUE KEY property (property,description)*/
ALTER TABLE element_structure
ADD CONSTRAINT PROPERTY UNIQUE (property,description);

/* TABLE: element_transfer_order*/
/*  KEY element_transfer_order_state_idx (state),*/
CREATE INDEX IDX_ELEM_TRF_ORD_STATE ON element_transfer_order(state);
/*  KEY element_transfer_order_prepared_state_user_fk (prepared_state_user),*/
CREATE INDEX IDX_ELEM_TRF_ORD_PRP_STAT_USR ON element_transfer_order(prepared_state_user);
/*  KEY element_transfer_order_creation_date_idx (creation_date),*/
CREATE INDEX IDX_ELEM_TRF_ORD_CREATION_DT ON element_transfer_order(creation_date);
/*  KEY element_transfer_order_creator_login_idx (creator_login),*/
CREATE INDEX IDX_ELEM_TRF_ORD_CREATOR_LOG ON element_transfer_order(creator_login);
/*  KEY element_transfer_order_origin_location_idx (origin_location),*/
CREATE INDEX IDX_ELEM_TRF_ORD_ORIGIN_LOCT ON element_transfer_order(origin_location);
/*  KEY element_transfer_order_direction_location_idx (direction_location),*/
CREATE INDEX IDX_ELEM_TRF_ORD_DIREC_LOCT ON element_transfer_order(direction_location);
/*  KEY element_transfer_order_authorize_login_idx (authorize_login),*/
CREATE INDEX IDX_ELEM_TRF_ORD_AUTHRZE_LOG ON element_transfer_order(authorize_login);
/*  KEY element_transfer_order_sender_login_idx (sender_login),*/
CREATE INDEX IDX_ELEM_TRF_ORD_SENDER_LOGIN ON element_transfer_order(sender_login);
/*  KEY element_transfer_order_addressee_login_idx (addressee_login),*/
CREATE INDEX IDX_ELEM_TRF_ORD_ADDRESE_LOG ON element_transfer_order(addressee_login);
/*  KEY element_transfer_order_cancel_login_idx (cancel_login),*/
CREATE INDEX IDX_ELEM_TRF_ORD_CANCEL_LOGIN ON element_transfer_order(cancel_login);
/*  KEY element_transfer_order_authorize_region_fk (authorize_region),*/
CREATE INDEX IDX_ELEM_TRF_ORD_AUTHORIZE_RG ON element_transfer_order(authorize_region);
/*  KEY element_transfer_order_order_priority_type_idx (order_priority_type),*/
CREATE INDEX IDX_ELEM_TRF_ORD_ORD_PRRTY_TY ON element_transfer_order(order_priority_type);
/*  KEY element_transfer_order_requires_transportation_idx (requires_transportation),*/
CREATE INDEX IDX_ELEM_TRF_ORD_REQRS_TRNSP ON element_transfer_order(requires_transportation);
/*  KEY element_transfer_order_order_execution_responsible_idx (order_execution_responsible),*/
CREATE INDEX IDX_ELEM_TRF_ORD_ORD_EXE ON element_transfer_order(order_execution_responsible);
/*  KEY document_send_indx (document_send),*/
CREATE INDEX IDX_DOCUMENT_SEND_INDX_A ON element_transfer_order(document_send);
/*  KEY document_receive_indx (document_receive)*/
CREATE INDEX IDX_DOCUMENT_RECEIVE_INDX ON element_transfer_order(document_receive);

/* TABLE: elem_transfer_order_comment*/

/* TABLE: element_transfer_order_detail*/
/*  KEY element_transfer_order_detail_element_transfer_order_idx (element_transfer_order),*/
CREATE INDEX IDX_ELEM_TRF_ORD_DTL_TRAS_ODR ON element_transfer_order_detail(element_transfer_order);
/*  KEY element_transfer_order_detail_arrived_idx (arrived),*/
CREATE INDEX IDX_ELEM_TRF_ORD_DTL_ARRIVED ON element_transfer_order_detail(arrived);
/*  KEY element_transfer_order_detail_element_idx (element)*/
CREATE INDEX IDX_ELEM_TRF_ORD_DTL_ELEM ON element_transfer_order_detail(element);

/* TABLE: elem_OT_person_in_charge*/

/* TABLE: elem_OT_transport*/

/* TABLE: element_type*/
/*  UNIQUE KEY mnemonic (mnemonic)*/
ALTER TABLE element_type
ADD CONSTRAINT MNEMONIC UNIQUE (mnemonic);

/* TABLE: element_type_asset*/
/*  KEY element_category_asset_element_type_asset_fk (default_element_category_asset),*/
CREATE INDEX IDX_ELEM_CATEGORY_ASSET_ELEM ON element_type_asset(default_element_category_asset);
/*  KEY investment_item_element_type_asset_fk (investment_item)*/
CREATE INDEX IDX_INVESTMENT_ITEM_ELEM_TYPE ON element_type_asset(investment_item);

/* TABLE: external_location*/
/*  KEY external_location_deleted_idx (deleted),*/
CREATE INDEX IDX_EXT_LOCATION_DEL ON external_location(deleted);
/*  KEY external_location_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_EXT_LOCATION_GEO_LOCATION ON external_location(geographic_location);

/* TABLE: external_location_type*/

/* TABLE: external_warehouse*/
/*  KEY external_warehouse_deleted_idx (deleted),*/
CREATE INDEX IDX_EXT_WH_DEL ON external_warehouse(deleted);
/*  KEY external_warehouse_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_EXT_WH_GEO_LOCATION ON external_warehouse(geographic_location);

/* TABLE: fault_element_field*/
/*  KEY field_name (field_name)*/
CREATE INDEX IDX_FIELD_NAME ON fault_element_field(field_name);

/* TABLE: fault_report*/
/*  KEY fault_report_responsible (fault_report_responsible),*/
CREATE INDEX IDX_FAULT_REPORT_RESPONSIBLE ON fault_report(fault_report_responsible);
/*  KEY fault_report_state (fault_report_state),*/
CREATE INDEX IDX_FAULT_REPORT_STATE ON fault_report(fault_report_state);
/*  KEY creation_user (creation_user),*/
CREATE INDEX IDX_CREATION_USER ON fault_report(creation_user);
/*  KEY cancel_user (cancel_user),*/
CREATE INDEX IDX_CANCEL_USER ON fault_report(cancel_user);
/*  KEY warehouse_approve_user (warehouse_approve_user),*/
CREATE INDEX IDX_WAREHOUSE_APPROVE_USER ON fault_report(warehouse_approve_user);
/*  KEY warehouse_reject_user (warehouse_reject_user),*/
CREATE INDEX IDX_WAREHOUSE_REJECT_USER ON fault_report(warehouse_reject_user);
/*  KEY responsible_approve_user (responsible_approve_user),*/
CREATE INDEX IDX_RESPONSIBLE_APPROVE_USER ON fault_report(responsible_approve_user);
/*  KEY responsible_reject_user (responsible_reject_user),*/
CREATE INDEX IDX_RESPONSIBLE_REJECT_USER ON fault_report(responsible_reject_user);
/*  KEY responsible_service_number (responsible_service_number)*/
CREATE INDEX IDX_RESPONSIBLE_SERVICE_NUM ON fault_report(responsible_service_number);

/* TABLE: fault_report_detail*/
/*  KEY fault_report (fault_report),*/
CREATE INDEX IDX_FAULT_REPORT ON fault_report_detail(fault_report);
/*  KEY fault_report_struct (fault_report_struct),*/
CREATE INDEX IDX_FAULT_REPORT_STRUCT_A ON fault_report_detail(fault_report_struct);
/*  KEY fault_id_number (fault_id_number),*/
CREATE INDEX IDX_FAULT_ID_NUMBER ON fault_report_detail(fault_id_number);
/*  KEY field_1 (field_1),*/
CREATE INDEX IDX_FIELD_1 ON fault_report_detail(field_1);
/*  KEY field_2 (field_2),*/
CREATE INDEX IDX_FIELD_2 ON fault_report_detail(field_2);
/*  KEY field_3 (field_3),*/
CREATE INDEX IDX_FIELD_3 ON fault_report_detail(field_3);
/*  KEY field_4 (field_4),*/
CREATE INDEX IDX_FIELD_4 ON fault_report_detail(field_4);
/*  KEY field_5 (field_5),*/
CREATE INDEX IDX_FIELD_5 ON fault_report_detail(field_5);
/*  KEY field_6 (field_6),*/
CREATE INDEX IDX_FIELD_6 ON fault_report_detail(field_6);
/*  KEY field_7 (field_7),*/
CREATE INDEX IDX_FIELD_7 ON fault_report_detail(field_7);
/*  KEY field_8 (field_8),*/
CREATE INDEX IDX_FIELD_8 ON fault_report_detail(field_8);
/*  KEY field_9 (field_9),*/
CREATE INDEX IDX_FIELD_9 ON fault_report_detail(field_9);
/*  KEY field_10 (field_10),*/
CREATE INDEX IDX_FIELD_10 ON fault_report_detail(field_10);
/*  KEY field_11 (field_11),*/
CREATE INDEX IDX_FIELD_11 ON fault_report_detail(field_11);
/*  KEY field_12 (field_12),*/
CREATE INDEX IDX_FIELD_12 ON fault_report_detail(field_12);
/*  KEY field_13 (field_13),*/
CREATE INDEX IDX_FIELD_13 ON fault_report_detail(field_13);
/*  KEY field_14 (field_14),*/
CREATE INDEX IDX_FIELD_14 ON fault_report_detail(field_14);
/*  KEY field_15 (field_15),*/
CREATE INDEX IDX_FIELD_15 ON fault_report_detail(field_15);
/*  KEY field_16 (field_16),*/
CREATE INDEX IDX_FIELD_16 ON fault_report_detail(field_16);
/*  KEY field_17 (field_17),*/
CREATE INDEX IDX_FIELD_17 ON fault_report_detail(field_17);
/*  KEY field_18 (field_18),*/
CREATE INDEX IDX_FIELD_18 ON fault_report_detail(field_18);
/*  KEY field_19 (field_19),*/
CREATE INDEX IDX_FIELD_19 ON fault_report_detail(field_19);
/*  KEY field_20 (field_20),*/
CREATE INDEX IDX_FIELD_20 ON fault_report_detail(field_20);
/*  KEY field_21 (field_21),*/
CREATE INDEX IDX_FIELD_21 ON fault_report_detail(field_21);
/*  KEY field_22 (field_22),*/
CREATE INDEX IDX_FIELD_22 ON fault_report_detail(field_22);
/*  KEY field_23 (field_23),*/
CREATE INDEX IDX_FIELD_23 ON fault_report_detail(field_23);
/*  KEY field_24 (field_24),*/
CREATE INDEX IDX_FIELD_24 ON fault_report_detail(field_24);
/*  KEY field_25 (field_25),*/
CREATE INDEX IDX_FIELD_25 ON fault_report_detail(field_25);
/*  KEY field_26 (field_26),*/
CREATE INDEX IDX_FIELD_26 ON fault_report_detail(field_26);
/*  KEY field_27 (field_27),*/
CREATE INDEX IDX_FIELD_27 ON fault_report_detail(field_27);
/*  KEY field_28 (field_28),*/
CREATE INDEX IDX_FIELD_28 ON fault_report_detail(field_28);
/*  KEY field_29 (field_29),*/
CREATE INDEX IDX_FIELD_29 ON fault_report_detail(field_29);
/*  KEY field_30 (field_30),*/
CREATE INDEX IDX_FIELD_30 ON fault_report_detail(field_30);
/*  KEY field_31 (field_31),*/
CREATE INDEX IDX_FIELD_31 ON fault_report_detail(field_31);
/*  KEY field_32 (field_32),*/
CREATE INDEX IDX_FIELD_32 ON fault_report_detail(field_32);
/*  KEY field_33 (field_33),*/
CREATE INDEX IDX_FIELD_33 ON fault_report_detail(field_33);
/*  KEY field_34 (field_34),*/
CREATE INDEX IDX_FIELD_34 ON fault_report_detail(field_34);
/*  KEY field_35 (field_35),*/
CREATE INDEX IDX_FIELD_35 ON fault_report_detail(field_35);
/*  KEY field_36 (field_36),*/
CREATE INDEX IDX_FIELD_36 ON fault_report_detail(field_36);
/*  KEY field_37 (field_37),*/
CREATE INDEX IDX_FIELD_37 ON fault_report_detail(field_37);
/*  KEY field_38 (field_38),*/
CREATE INDEX IDX_FIELD_38 ON fault_report_detail(field_38);
/*  KEY field_39 (field_39),*/
CREATE INDEX IDX_FIELD_39 ON fault_report_detail(field_39);
/*  KEY field_40 (field_40),*/
CREATE INDEX IDX_FIELD_40 ON fault_report_detail(field_40);
/*  KEY field_41 (field_41),*/
CREATE INDEX IDX_FIELD_41 ON fault_report_detail(field_41);
/*  KEY field_42 (field_42),*/
CREATE INDEX IDX_FIELD_42 ON fault_report_detail(field_42);
/*  KEY field_43 (field_43),*/
CREATE INDEX IDX_FIELD_43 ON fault_report_detail(field_43);
/*  KEY field_44 (field_44),*/
CREATE INDEX IDX_FIELD_44 ON fault_report_detail(field_44);
/*  KEY field_45 (field_45),*/
CREATE INDEX IDX_FIELD_45 ON fault_report_detail(field_45);
/*  KEY field_46 (field_46),*/
CREATE INDEX IDX_FIELD_46 ON fault_report_detail(field_46);
/*  KEY field_47 (field_47),*/
CREATE INDEX IDX_FIELD_47 ON fault_report_detail(field_47);
/*  KEY field_48 (field_48),*/
CREATE INDEX IDX_FIELD_48 ON fault_report_detail(field_48);
/*  KEY field_49 (field_49),*/
CREATE INDEX IDX_FIELD_49 ON fault_report_detail(field_49);
/*  KEY field_50 (field_50)*/
CREATE INDEX IDX_FIELD_50 ON fault_report_detail(field_50);

/* TABLE: fault_report_detail_multiple*/
/*  KEY fault_report_struct_detail (fault_report_struct_detail)*/
CREATE INDEX IDX_FAULT_REPORT_STRUCT_DTL ON fault_report_detail_multiple(fault_report_struct_detail);

/* TABLE: fault_report_provider*/
/*  KEY fault_report_provider_type (fault_report_provider_type),*/
CREATE INDEX IDX_FAULT_REPORT_PRVIDER_TP ON fault_report_provider(fault_report_provider_type);
/*  KEY name (name),*/
CREATE INDEX IDX_NAME_B ON fault_report_provider(name);
/*  KEY phone (phone),*/
CREATE INDEX IDX_PHONE ON fault_report_provider(phone);
/*  KEY email (email),*/
CREATE INDEX IDX_EMAIL_A ON fault_report_provider(email);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_B ON fault_report_provider(enabled);

/* TABLE: fault_report_provider_type*/
/*  KEY name (name)*/
CREATE INDEX IDX_NAME_C ON fault_report_provider_type(name);

/* TABLE: fault_report_responsible*/
/*  KEY fault_report_provider (fault_report_provider),*/
CREATE INDEX IDX_FAULT_REPORT_PROVIDER ON fault_report_responsible(fault_report_provider);
/*  KEY login (login),*/
CREATE INDEX IDX_LOGIN_A ON fault_report_responsible(login);
/*  KEY alt_address (alt_address),*/
CREATE INDEX IDX_ALT_ADDRESS ON fault_report_responsible(alt_address);
/*  KEY alt_phone (alt_phone),*/
CREATE INDEX IDX_ALT_PHONE ON fault_report_responsible(alt_phone);
/*  KEY alt_email (alt_email),*/
CREATE INDEX IDX_ALT_EMAIL ON fault_report_responsible(alt_email);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_C ON fault_report_responsible(enabled);

/* TABLE: fault_report_state*/
/*  KEY name (name)*/
CREATE INDEX IDX_NAME_D ON fault_report_state(name);

/* TABLE: fault_report_struct*/
/*  KEY fault_report_provider (fault_report_provider),*/
CREATE INDEX IDX_FAULT_REPORT_PROVIDER_A ON fault_report_struct(fault_report_provider);
/*  KEY name (name),*/
CREATE INDEX IDX_NAME_E ON fault_report_struct(name);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_D ON fault_report_struct(enabled);

/* TABLE: fault_report_struct_detail*/
/*  KEY fault_report_struct (fault_report_struct),*/
CREATE INDEX IDX_FAULT_REPORT_STRUCT ON fault_report_struct_detail(fault_report_struct);
/*  KEY fault_element_field (fault_element_field),*/
CREATE INDEX IDX_FAULT_ELEMENT_FIELD ON fault_report_struct_detail(fault_element_field);
/*  KEY field_name (field_name),*/
CREATE INDEX IDX_FIELD_NAME_A ON fault_report_struct_detail(field_name);
/*  KEY field_label (field_label),*/
CREATE INDEX IDX_FIELD_LABEL ON fault_report_struct_detail(field_label);
/*  KEY parameter_name (parameter_name),*/
CREATE INDEX IDX_PARAMETER_NAME ON fault_report_struct_detail(parameter_name);
/*  KEY parameter_type (parameter_type),*/
CREATE INDEX IDX_PARAMETER_TYPE ON fault_report_struct_detail(parameter_type);
/*  KEY mandatory (mandatory)*/
CREATE INDEX IDX_MANDATORY ON fault_report_struct_detail(mandatory);

/* TABLE: fifo_exception*/
/*  UNIQUE KEY name (name)*/
ALTER TABLE fifo_exception
ADD CONSTRAINT NAME UNIQUE (name);

/* TABLE: fifo_exception_registry*/
/*  KEY fifo_exception_registry_order_type (order_type),*/
CREATE INDEX IDX_FIFO_EXC_REG_ORD_TYPE ON fifo_exception_registry(order_type);
/*  KEY fifo_exception_registry_order_number (order_number),*/
CREATE INDEX IDX_FIFO_EXC_REG_ORD_NUM ON fifo_exception_registry(order_number);
/*  KEY fifo_exception_registry_element (element),*/
CREATE INDEX IDX_FIFO_EXC_REG_ELEM ON fifo_exception_registry(element);
/*  KEY fifo_exception_registry_fifo_exception (fifo_exception),*/
CREATE INDEX IDX_FIFO_EXC_REG_FIFO_EXC ON fifo_exception_registry(fifo_exception);
/*  KEY fifo_exception_registry_login (login)*/
CREATE INDEX IDX_FIFO_EXC_REG_LOGIN ON fifo_exception_registry(login);

/* TABLE: forgotten_password*/

/* TABLE: functional_unit*/

/* TABLE: functional_unit_description*/
/*  UNIQUE KEY functional_unit_unique_index (keyword)*/
ALTER TABLE functional_unit_description
ADD CONSTRAINT FUNCT_UNIT_UNIQUE_INDEX UNIQUE (keyword);

/* TABLE: functional_unit_descrip_line*/
/*  KEY functional_unit_description_line_unit_id_idx (unit_id),*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_UNIT_ID ON functional_unit_descrip_line(functional_unit);
/*  KEY functional_unit_description_line_model_1_id_idx (model_1_id),*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_MOD_1_ID ON functional_unit_descrip_line(element_model_1);
/*  KEY functional_unit_description_line_model_2_id_idx (model_2_id),*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_MOD_2_ID ON functional_unit_descrip_line(element_model_2);
/*  KEY functional_unit_description_line_model_3_id_idx (model_3_id),*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_MOD_3_ID ON functional_unit_descrip_line(element_model_3);
/*  KEY functional_unit_description_line_model_4_id_idx (model_4_id),*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_MOD_4_ID ON functional_unit_descrip_line(element_model_4);
/*  KEY functional_unit_description_line_model_5_id_idx (model_5_id)*/
CREATE INDEX IDX_FUNCT_UNIT_DES_L_MOD_5_ID ON functional_unit_descrip_line(element_model_5);

/* TABLE: functional_unit_detail*/

/* TABLE: functional_unit_remaining*/

/* TABLE: functional_unit_report*/

/* TABLE: functional_unit_x_invoice*/

/* TABLE: geographic_location*/
/*  KEY geographic_location_users_fk (responsible_user),*/
CREATE INDEX IDX_GEO_LOCATION_USERS ON geographic_location(responsible_user);
/*  KEY geographic_location_region_fk (region),*/
CREATE INDEX IDX_GEO_LOCATION_REGION ON geographic_location(region);
/*  KEY geographic_location_name_idx (name),*/
CREATE INDEX IDX_GEO_LOCATION_NAME ON geographic_location(name);
/*  KEY geographic_location_deleted_idx (deleted),*/
CREATE INDEX IDX_GEO_LOCATION_DEL ON geographic_location(deleted);
/*  KEY geographic_location_deleted_by_user_idx (deleted_by_user)*/
CREATE INDEX IDX_GEO_LOCATION_DEL_BY_USER ON geographic_location(deleted_by_user);

/* TABLE: history_action*/

/* TABLE: incoterm*/

/* TABLE: infrastructure_element*/
/*  KEY invoice_infrastructure_element_fk (invoice),*/
CREATE INDEX IDX_INVOICE_INFRA_ELEM ON infrastructure_element(invoice);
/*  KEY users_infrastructure_element_fk (create_user),*/
CREATE INDEX IDX_USERS_INFRA_ELEM ON infrastructure_element(create_user);
/*  KEY users_update_infrastructure_element_fk (update_user),*/
CREATE INDEX IDX_USERS_UPDATE_INFRA_ELEM ON infrastructure_element(update_user);
/*  KEY location_infrastructure_element_fk (location),*/
CREATE INDEX IDX_LOCATION_INFRA_ELEM ON infrastructure_element(location);
/*  KEY element_type_asset_infrastructure_element_fk (element_type_asset),*/
CREATE INDEX IDX_ELEM_TYPE_ASST_INFRA_ELEM ON infrastructure_element(element_type_asset);
/*  KEY infrastructure_model_infrastructure_element_fk (infrastructure_model),*/
CREATE INDEX IDX_INFRA_MOD_INFRA_ELEM ON infrastructure_element(infrastructure_model);
/*  KEY infrastructure_element_purchase_order_number_idx (purchase_order_number),*/
CREATE INDEX IDX_INFRA_ELEM_PURCHASE_ORD ON infrastructure_element(purchase_order_number);
/*  KEY infrastructure_element_temporal_fixed_asset_number_idx (temporal_fixed_asset_number),*/
CREATE INDEX IDX_INFRA_ELEM_TMP_FIX_ASSET ON infrastructure_element(temporal_fixed_asset_number);
/*  KEY infrastructure_element_fixed_asset_number_idx (fixed_asset_number),*/
CREATE INDEX IDX_INFRA_ELEM_FIX_ASSET_NUM ON infrastructure_element(fixed_asset_number);
/*  KEY infrastructure_element_deleted_idx (deleted)*/
CREATE INDEX IDX_INFRA_ELEM_DEL ON infrastructure_element(deleted);

/* TABLE: infrastructure_element_his*/
/*  KEY infrastructure_element (infrastructure_element),*/
CREATE INDEX IDX_INFRASTRUCTURE_ELEMENT ON infrastructure_element_his(infrastructure_element);
/*  KEY history_date (history_date),*/
CREATE INDEX IDX_HISTORY_DATE ON infrastructure_element_his(history_date);
/*  KEY history_time (history_time),*/
CREATE INDEX IDX_HISTORY_TIME ON infrastructure_element_his(history_time);
/*  KEY action (action),*/
CREATE INDEX IDX_ACTION ON infrastructure_element_his(action);
/*  KEY detailed_type (detailed_type),*/
CREATE INDEX IDX_DETAILED_TYPE ON infrastructure_element_his(detailed_type);
/*  KEY support_code (support_code),*/
CREATE INDEX IDX_SUPPORT_CODE ON infrastructure_element_his(support_code);
/*  KEY support_table (support_table),*/
CREATE INDEX IDX_SUPPORT_TABLE ON infrastructure_element_his(support_table);
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_F ON infrastructure_element_his(location);
/*  KEY invoice (invoice),*/
CREATE INDEX IDX_INVOICE ON infrastructure_element_his(invoice);
/*  KEY millicom_code (millicom_code),*/
CREATE INDEX IDX_MILLICOM_CODE ON infrastructure_element_his(millicom_code);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_E ON infrastructure_element_his(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_E ON infrastructure_element_his(element_category_asset);
/*  KEY purchase_order_number (purchase_order_number),*/
CREATE INDEX IDX_PURCHASE_ORDER_NUMBER ON infrastructure_element_his(purchase_order_number);
/*  KEY temporal_fixed_asset_number (temporal_fixed_asset_number),*/
CREATE INDEX IDX_TMP_FIX_ASSET_NUM ON infrastructure_element_his(temporal_fixed_asset_number);
/*  KEY fixed_asset_number (fixed_asset_number),*/
CREATE INDEX IDX_FIXED_ASSET_NUMBER ON infrastructure_element_his(fixed_asset_number);
/*  KEY infrastructure_model (infrastructure_model),*/
CREATE INDEX IDX_INFRASTRUCTURE_MODEL ON infrastructure_element_his(infrastructure_model);
/*  KEY date_capitalization (date_capitalization)*/
CREATE INDEX IDX_DATE_CAPITALIZATION ON infrastructure_element_his(date_capitalization);

/* TABLE: infrastructure_model*/
/*  KEY element_type_asset_infrastructure_model_fk (default_element_type_asset),*/
CREATE INDEX IDX_ELEM_TYPE_ASSET_INFRA_MOD ON infrastructure_model(default_element_type_asset);
/*  KEY infrastructure_model_is_asset_idx (is_asset),*/
CREATE INDEX IDX_INFRA_MOD__ASSET ON infrastructure_model(is_asset);
/*  KEY infrastructure_model_codex (code)*/
/*CREATE INDEX IDX_INFRA_MOD_CDX ON infrastructure_model(code);*/

/* TABLE: internal_location*/
/*  UNIQUE KEY internal_location_tigo_code_uidx (tigo_code,location),*/
ALTER TABLE internal_location
ADD CONSTRAINT INTERNAL_LOCATION_TIGO UNIQUE (tigo_code,location);
/*  KEY internal_location_location_idx (location)*/
CREATE INDEX IDX_INTERNAL_LOCATION_LOCT ON internal_location(location);

/* TABLE: inventory*/

/* TABLE: inventory_alarm*/
/*  KEY inventory_alarm_element_model_idx (element_model)*/
CREATE INDEX IDX_INV_ALARM_ELEM_MOD ON inventory_alarm(element_model);

/* TABLE: inventory_alarm_users*/
/*  KEY inventory_alarm_users_inventory_alarm_idx (inventory_alarm),*/
CREATE INDEX IDX_INV_ALARM_USERS_INV_ALARM ON inventory_alarm_users(inventory_alarm);
/*  KEY inventory_alarm_users_user_login_idx (user_login)*/
CREATE INDEX IDX_INV_ALARM_USERS_USER_LOG ON inventory_alarm_users(user_login);

/* TABLE: inventory_by_models*/
/*  KEY inventory_by_models_id_inventory_elements_idx (id_inventory_elements),*/
CREATE INDEX IDX_INV_BY_MODS_ID_INV_ELEMS ON inventory_by_models(inventory_elements);
/*  KEY inventory_by_models_id_model_idx (id_model)*/
CREATE INDEX IDX_INV_BY_MODS_ID_MOD ON inventory_by_models(id_model);

/* TABLE: inventory_elements*/

/* TABLE: inventory_elements_detail*/
/*  KEY inventory_elements_detail_id_inventory_elements_idx (id_inventory_elements)*/
CREATE INDEX IDX_INV_ELEMS_DTL_ID_INV_ELEM ON inventory_elements_detail(inventory_elements);

/* TABLE: invtory_elem_download_report*/

/* TABLE: inventory_elements_process*/

/* TABLE: invtory_proc_elem_difference*/
/*  KEY i_p_e_d_inventory_elements_process_idx (inventory_elements_process),*/
CREATE INDEX IDX_I_P_E_D_INV_ELEMS_PCS ON invtory_proc_elem_difference(inventory_elements_process);
/*  KEY inventory_process_elements_difference_element_model_idx (element_model)*/
CREATE INDEX IDX_INV_PCS_ELEMS_DIFFERENCE ON invtory_proc_elem_difference(element_model);

/* TABLE: invtory_proc_elem_n_processed*/
/*  KEY i_p_e_no_processed_inventory_elements_process_idx (inventory_elements_process),*/
CREATE INDEX IDX_I_P_E_NO_PCSED_INV_ELEMS ON invtory_proc_elem_n_processed(inventory_elements_process);
/*  KEY inventory_process_elements_no_processed_id_element_idx (id_element),*/
CREATE INDEX IDX_INV_PCS_ELEMS_NO_PCSED_I ON invtory_proc_elem_n_processed(element);
/*  KEY inventory_process_elements_no_processed_element_model_idx (element_model)*/
CREATE INDEX IDX_INV_PCS_ELEMS_NO_PCSED_E ON invtory_proc_elem_n_processed(element_model);

/* TABLE: inventory_process_elements_ok*/
/*  KEY inventory_process_elements_ok_inventory_elements_process_idx (inventory_elements_process),*/
CREATE INDEX IDX_INV_PCS_ELEMS_OK_INV ON inventory_process_elements_ok(inventory_elements_process);
/*  KEY inventory_process_elements_ok_id_element_idx (id_element),*/
CREATE INDEX IDX_INV_PCS_ELEMS_OK_ID_ELEM ON inventory_process_elements_ok(element);
/*  KEY inventory_process_elements_ok_element_model_idx (element_model)*/
CREATE INDEX IDX_INV_PCS_ELEMS_OK_ELEM_MOD ON inventory_process_elements_ok(element_model);

/* TABLE: invtory_unknown_int_locations*/	
/*  KEY inventory_unknown_int_locations_inventory_elements_process_idx (inventory_elements_process)*/
CREATE INDEX IDX_INV_UKNOW_INT_LOCATIONS ON invtory_unknown_int_locations(inventory_elements_process);

/* TABLE: investment_item*/

/* TABLE: invoice*/

/* TABLE: invoice_detail*/
/*  KEY invoice_detail_element_model_idx (element_model)*/
CREATE INDEX IDX_INVCE_DTL_ELEM_MOD ON invoice_detail(element_model);

/* TABLE: invoice_detail_type*/

/* TABLE: invoice_template*/

/* TABLE: invoice_template_detail*/
/*  KEY invoice_template_detail_element_model_idx (element_model)*/
CREATE INDEX IDX_INVCE_TEMPL_DTL_ELEM_MD ON invoice_template_detail(element_model);

/* TABLE: laicon_configuration*/

/* TABLE: laicon_inventory_register*/
/*  KEY laicon_inventory_register_inventory_elements_process_idx (inventory_elements_process)*/
CREATE INDEX IDX_LAI_INV_REG_INV_ELEMS_PCS ON laicon_inventory_register(inventory_elements_process);

/* TABLE: laicon_invtory_reg_unknown*/
/*  KEY laicon_inventory_register_unknown_inventory_elements_process_idx (inventory_elements_process),*/
CREATE INDEX IDX_LAI_INV_REG_UKNOW_INV ON laicon_invtory_reg_unknown(inventory_elements_process);
/*  KEY laicon_inventory_register_unknown_id_element_idx (id_element),*/
CREATE INDEX IDX_LAI_INV_REG_UKNOW_ID_ELEM ON laicon_invtory_reg_unknown(element);
/*  KEY laicon_inventory_register_unknown_element_model_idx (element_model)*/
CREATE INDEX IDX_LAI_INV_REG_UKNOW_ELEM_MD ON laicon_invtory_reg_unknown(element_model);

/* TABLE: location*/
/*  KEY location_deleted_idx (deleted),*/
CREATE INDEX IDX_LOCATION_DELETED_IDX ON location(deleted);
/*  KEY location_geographic_location_fk (geographic_location),*/
CREATE INDEX IDX_LOCATION_GEO_LOCATION ON location(geographic_location);
/*  KEY location_is_visible_idx (is_visible)*/
CREATE INDEX IDX_LOCATION_IS_VISIBLE_IDX ON location(is_visible);

/* TABLE: location_type*/

/* TABLE: log*/
/*  KEY idx_logDate (log_date)*/
CREATE INDEX IDX_IDX_LOGDATE ON log(log_date);

/* TABLE: measurement_unit*/

/* TABLE: mic_batch*/
/*  KEY users_mic_batch_fk (user_creator),*/
CREATE INDEX IDX_USERS_MIC_BATCH_FK ON mic_batch(user_creator);
/*  KEY users_mic_batch_updater_fk (user_last_updater),*/
CREATE INDEX IDX_USERS_MIC_BATCH_UPDATER ON mic_batch(user_last_updater);
/*  KEY mic_code_prefix_mic_batch_fk (mic_code_prefix)*/
CREATE INDEX IDX_MIC_CD_PREFIX_MIC_BATCH ON mic_batch(mic_code_prefix);

/* TABLE: mic_batch_responsible*/
/*  KEY users_mic_batch_responsible_assign_fk (assigned_by_user),*/
CREATE INDEX IDX_USRS_MIC_BATCH_RSPONS ON mic_batch_responsible(assigned_by_user);
/*  KEY users_mic_batch_responsible_disabled_fk (disabled_by_user),*/
CREATE INDEX IDX_USRS_MIC_BATCH_RSPONSIBLE ON mic_batch_responsible(disabled_by_user);
/*  KEY mic_batch_mic_batch_responsible_fk (mic_batch)*/
CREATE INDEX IDX_MIC_BATCH_RESPONSIBLE ON mic_batch_responsible(mic_batch);

/* TABLE: mic_code*/
/*  KEY element_mic_code_fk (assigned_element),*/
CREATE INDEX IDX_ELEMENT_MIC_CODE_FK ON mic_code(assigned_element);
/*  KEY users_mic_code_fk (assigned_by_user),*/
CREATE INDEX IDX_USERS_MIC_CODE_FK ON mic_code(assigned_by_user);
/*  KEY mic_batch_mic_code_fk (mic_batch),*/
CREATE INDEX IDX_MIC_BATCH_MIC_CODE_FK ON mic_code(mic_batch);
/*  KEY mic_code_enabled_idx (enabled)*/
CREATE INDEX IDX_MIC_CODE_ENABLED_IDX ON mic_code(enabled);

/* TABLE: mic_code_prefix*/

/* TABLE: model_value_change*/
/*  KEY update_date (update_date),*/
CREATE INDEX IDX_UPDATE_DATE ON model_value_change(update_date);
/*  KEY updated (updated)*/
CREATE INDEX IDX_UPDATED ON model_value_change(updated);

/* TABLE: model_x_category_asset*/
/*  KEY element_category_asset_model_x_category_asset_fk (element_category_asset),*/
CREATE INDEX IDX_ELEM_CATEGORY_ASSET_MOD_X ON model_x_category_asset(element_category_asset);
/*  KEY model_x_category_asset_element_model_idx (element_model)*/
CREATE INDEX IDX_MOD_X_CATEGORY_ASSET_ELEM ON model_x_category_asset(element_model);

/* TABLE: model_x_type_asset*/
/*  KEY element_type_asset_model_x_type_asset_fk (element_type_asset),*/
CREATE INDEX IDX_ELEM_TYPE_ASSET_MOD_X ON model_x_type_asset(element_type_asset);
/*  KEY model_x_type_asset_element_model_idx (element_model)*/
CREATE INDEX IDX_MOD_X_TYPE_ASSET_ELEM_MOD ON model_x_type_asset(element_model);

/* TABLE: movement_quota*/
/*  KEY movement_quota_warehouse_idx (warehouse),*/
CREATE INDEX IDX_MOVEMENT_QUOTA_WH ON movement_quota(warehouse);
/*  KEY movement_quota_element_model_idx (element_model),*/
CREATE INDEX IDX_MOVEMENT_QUOTA_ELEM_MOD ON movement_quota(element_model);
/*  KEY movement_quota_region_idx (region)*/
CREATE INDEX IDX_MOVEMENT_QUOTA_REGION ON movement_quota(region);

/* TABLE: movement_report*/

/* TABLE: msc*/

/* TABLE: nationalization*/

/* TABLE: nationalization_place*/
/*  KEY nationalization_place_deleted_idx (deleted),*/
CREATE INDEX IDX_NATIONAL_PLACE_DEL ON nationalization_place(deleted);
/*  KEY nationalization_place_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_NATIONAL_PLACE_GEO_LOCT ON nationalization_place(geographic_location);

/* TABLE: no_attended_spare_part*/
/*  KEY no_attended_spare_state (no_attended_spare_state),*/
CREATE INDEX IDX_NO_ATTENDED_SPARE_STATE ON no_attended_spare_part(no_attended_spare_state);
/*  KEY damaged_element_id (damaged_element_id),*/
CREATE INDEX IDX_DAMAGED_ELEMENT_ID ON no_attended_spare_part(damaged_element_id);
/*  KEY damaged_element_model (damaged_element_model),*/
CREATE INDEX IDX_DAMAGED_ELEMENT_MODEL ON no_attended_spare_part(damaged_element_model);
/*  KEY region (region),*/
CREATE INDEX IDX_REGION ON no_attended_spare_part(region);
/*  KEY no_attended_user (no_attended_user),*/
CREATE INDEX IDX_NO_ATTENDED_USER ON no_attended_spare_part(no_attended_user);
/*  KEY no_attended_date (no_attended_date),*/
CREATE INDEX IDX_NO_ATTENDED_DATE ON no_attended_spare_part(no_attended_date);
/*  KEY element_order_type (element_order_type),*/
CREATE INDEX IDX_ELEMENT_ORDER_TYPE ON no_attended_spare_part(element_order_type);
/*  KEY element_order_number (element_order_number)*/
CREATE INDEX IDX_ELEMENT_ORDER_NUMBER ON no_attended_spare_part(element_order_number);

/* TABLE: no_attended_spare_state*/
/*  KEY name (name)*/
CREATE INDEX IDX_NAME_F ON no_attended_spare_state(name);

/* TABLE: operation_document*/

/* TABLE: operation_document_comment*/

/* TABLE: operation_document_x_invoice*/
/*  KEY operation_document_x_invoice_invoice (invoice),*/
CREATE INDEX IDX_OPERATION_DOCUMENT_INVCE ON operation_document_x_invoice(invoice);
/*  KEY operation_document_x_invoice_operation_document (operation_document)*/
CREATE INDEX IDX_OPERATION_DOCUMENT_X ON operation_document_x_invoice(operation_document);

/* TABLE: order_execution_responsible*/
/*  KEY order_execution_responsible_name_idnx (name)*/
CREATE INDEX IDX_ORD_EXECUTION_RESPONSIBLE ON order_execution_responsible(name);

/* TABLE: order_priority_type*/
/*  KEY order_priority_type_name_idnx (name)*/
CREATE INDEX IDX_ORD_PRIORITY_TYPE_NAME ON order_priority_type(name);

/* TABLE: owner_object*/

/* TABLE: piece_box_stowage*/

/* TABLE: plant_center*/

/* TABLE: privilege*/

/* TABLE: profile*/

/* TABLE: profile_privilege*/
/*  KEY profile_privilege_profile_privilege_idx (profile,privilege)*/
CREATE INDEX IDX_PFILE_PRIVILEGE_PFILE ON profile_privilege(profile,privilege);

/* TABLE: profile_x_element_structure*/
/*  UNIQUE KEY profile (profile,element_structure),*/
ALTER TABLE profile_x_element_structure
ADD CONSTRAINT PROFILE UNIQUE (profile,element_structure);
/*  KEY profile_x_element_structure_profile (profile),*/
CREATE INDEX IDX_PFILE_X_ELEM_STRUC_PFILE ON profile_x_element_structure(profile);
/*  KEY profile_x_element_structure_element_structure (element_structure)*/
CREATE INDEX IDX_PFILE_X_ELEM_STRUC ON profile_x_element_structure(element_structure);

/* TABLE: purchase_order*/

/* TABLE: purchase_order_line*/

/* TABLE: q_elements_to_sap*/

/* TABLE: quality_inventory*/

/* TABLE: quality_inventory_element*/

/* TABLE: quality_inventory_elem_result*/

/* TABLE: quality_invtory_elem_rslt_dtl*/

/* TABLE: reenabled_element*/
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_F ON reenabled_element(element);
/*  KEY millicom_code (millicom_code),*/
CREATE INDEX IDX_MILLICOM_CD ON reenabled_element(millicom_code);
/*  KEY model (model),*/
CREATE INDEX IDX_MODEL_E ON reenabled_element(element_model);
/*  KEY element_type_asset (element_type_asset),*/
CREATE INDEX IDX_ELEMENT_TYPE_ASSET_H ON reenabled_element(element_type_asset);
/*  KEY element_category_asset (element_category_asset),*/
CREATE INDEX IDX_ELEMENT_CATEGORY_ASSET_F ON reenabled_element(element_category_asset);
/*  KEY revived_date (revived_date),*/
CREATE INDEX IDX_REVIVED_DATE ON reenabled_element(revived_date);
/*  KEY revived_login (revived_login)*/
CREATE INDEX IDX_REVIVED_LOGIN ON reenabled_element(revived_login);

/* TABLE: reenabled_location*/
/*  KEY location (location),*/
CREATE INDEX IDX_LOCATION_G ON reenabled_location(location);
/*  KEY revived_date (revived_date),*/
CREATE INDEX IDX_REVIVED_DATE_A ON reenabled_location(revived_date);
/*  KEY revived_login (revived_login)*/
CREATE INDEX IDX_REVIVED_LOGIN_A ON reenabled_location(revived_login);

/* TABLE: region*/

/* TABLE: remote_invtory_included_model*/
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_E ON remote_invtory_included_model(enabled);

/* TABLE: remote_invtory_inconsistency*/
/*  KEY laicon_location (laicon_location),*/
CREATE INDEX IDX_LAICON_LOCATION ON remote_invtory_inconsistency(laicon_location);
/*  KEY laicon_user_in_charge (laicon_user_in_charge),*/
CREATE INDEX IDX_LAICON_USER_IN_CHARGE ON remote_invtory_inconsistency(laicon_user_in_charge);
/*  KEY ri_location (ri_location),*/
CREATE INDEX IDX_RI_LOCATION_A ON remote_invtory_inconsistency(ri_location);
/*  KEY ri_user_in_charge (ri_user_in_charge),*/
CREATE INDEX IDX_RI_USER_IN_CHARGE ON remote_invtory_inconsistency(ri_user_in_charge);
/*  KEY element (element),*/
CREATE INDEX IDX_ELEMENT_G ON remote_invtory_inconsistency(element);
/*  KEY millicom_code (millicom_code),*/
CREATE INDEX IDX_MILLICOM_CODE_A ON remote_invtory_inconsistency(millicom_code);
/*  KEY ri_element_model (ri_element_model),*/
CREATE INDEX IDX_RI_ELEMENT_MODEL ON remote_invtory_inconsistency(ri_element_model);
/*  KEY laicon_element_model (laicon_element_model),*/
CREATE INDEX IDX_LAICON_ELEMENT_MODEL ON remote_invtory_inconsistency(laicon_element_model);
/*  KEY ri_serial (ri_serial),*/
CREATE INDEX IDX_RI_SERIAL_A ON remote_invtory_inconsistency(ri_serial);
/*  KEY laicon_serial (laicon_serial),*/
CREATE INDEX IDX_LAICON_SERIAL ON remote_invtory_inconsistency(laicon_serial);
/*  KEY inconsistency_type (inconsistency_type),*/
CREATE INDEX IDX_INCONSISTENCY_TYPE ON remote_invtory_inconsistency(inconsistency_type);
/*  KEY reporting_days (reporting_days),*/
CREATE INDEX IDX_REPORTING_DAYS ON remote_invtory_inconsistency(reporting_days);
/*  KEY inconsistency_state (inconsistency_state),*/
CREATE INDEX IDX_INCONSISTENCY_STATE ON remote_invtory_inconsistency(inconsistency_state);
/*  KEY remote_inventory_inconsistency_validation_type_idx (validation_type)*/
CREATE INDEX IDX_REMOTE_INV_INCONST_VALID ON remote_invtory_inconsistency(validation_type);

/* TABLE: remote_invtory_incnsistncy_ty*/
/*  UNIQUE KEY code (code)*/
ALTER TABLE remote_invtory_incnsistncy_ty
ADD CONSTRAINT CODE UNIQUE (code);

/* TABLE: remote_inventory_location*/
/*  UNIQUE KEY ri_location_code_2 (ri_location_code,laicon_location_code,ri_provider),*/
ALTER TABLE remote_inventory_location
ADD CONSTRAINT RI_LOCATION_CODE_2 UNIQUE (ri_location_code,laicon_location_code,ri_provider);
/*  KEY ri_location_code (ri_location_code),*/
CREATE INDEX IDX_RI_LOCATION_CODE ON remote_inventory_location(ri_location_code);
/*  KEY laicon_location_code (laicon_location_code),*/
CREATE INDEX IDX_LAICON_LOCATION_CODE ON remote_inventory_location(laicon_location_code);
/*  KEY ri_provider (ri_provider)*/
CREATE INDEX IDX_RI_PROVIDER ON remote_inventory_location(ri_provider);

/* TABLE: remote_inventory_mail_list*/
/*  KEY user_name (user_name),*/
CREATE INDEX IDX_USER_NAME ON remote_inventory_mail_list(user_name);
/*  KEY display_name (display_name),*/
CREATE INDEX IDX_DISPLAY_NAME ON remote_inventory_mail_list(display_name);
/*  KEY email (email),*/
CREATE INDEX IDX_EMAIL ON remote_inventory_mail_list(email);
/*  KEY enabled (enabled),*/
CREATE INDEX IDX_ENABLED_F ON remote_inventory_mail_list(enabled);
/*  KEY region (region),*/
CREATE INDEX IDX_REGION_A ON remote_inventory_mail_list(region);
/*  KEY remote_inventory_mail_list_receive_no_region_idx (receive_no_region),*/
CREATE INDEX IDX_RMTE_INV_MAIL_RECVE_NO_R ON remote_inventory_mail_list(receive_no_region);
/*  KEY remote_inventory_mail_list_receive_all_region_idx (receive_all_region)*/
CREATE INDEX IDX_RMTE_INV_MAIL_RECVE_ALL_R ON remote_inventory_mail_list(receive_all_region);

/* TABLE: remote_inventory_provider*/
/*  UNIQUE KEY provider_code_2 (provider_code),*/
ALTER TABLE remote_inventory_provider
ADD CONSTRAINT PROVIDER_CODE_2 UNIQUE (provider_code);
/*  KEY provider_code (provider_code),*/
/*CREATE INDEX IDX_PROVIDER_CODE ON remote_inventory_provider(provider_code);*/
/*  KEY provider_name (provider_name),*/
CREATE INDEX IDX_PROVIDER_NAME ON remote_inventory_provider(provider_name);
/*  KEY enabled (enabled),*/
CREATE INDEX IDX_ENABLED_G ON remote_inventory_provider(enabled);
/*  KEY remote_inventory_provider_location_in_file_idx (location_in_file)*/
CREATE INDEX IDX_REMOTE_INV_PROVIDER_LOCT ON remote_inventory_provider(location_in_file);

/* TABLE: remote_inventory_temp_element*/
/*  KEY ri_location (ri_location),*/
CREATE INDEX IDX_RI_LOCATION ON remote_inventory_temp_element(ri_location);
/*  KEY ri_provider (ri_provider),*/
CREATE INDEX IDX_RI_PROVIDER_A ON remote_inventory_temp_element(ri_provider);
/*  KEY ri_serial (ri_serial),*/
CREATE INDEX IDX_RI_SERIAL ON remote_inventory_temp_element(ri_serial);
/*  KEY ri_reference (ri_reference),*/
CREATE INDEX IDX_RI_REFERENCE ON remote_inventory_temp_element(ri_reference);
/*  KEY ri_creation_date (ri_creation_date),*/
CREATE INDEX IDX_RI_CREATION_DATE ON remote_inventory_temp_element(ri_creation_date);
/*  KEY ri_update_date (ri_update_date),*/
CREATE INDEX IDX_RI_UPDATE_DATE ON remote_inventory_temp_element(ri_update_date);
/*  KEY ri_state (ri_state),*/
CREATE INDEX IDX_RI_STATE ON remote_inventory_temp_element(ri_state);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_H ON remote_inventory_temp_element(enabled);

/* TABLE: reverse_costing_by_ws_detail*/
/*  KEY reverse_costing_by_webservice_detail_register_fk (reverse_costing_by_webservice_register),*/
CREATE INDEX IDX_REV_COST_BY_WS_DTL_REG ON reverse_costing_by_ws_detail(reverse_costing_by_ws_regist);
/*  KEY reverse_costing_by_webservice_detail_element_fk (element)*/
CREATE INDEX IDX_REV_COST_BY_WS_DTL_ELEM ON reverse_costing_by_ws_detail(element);

/* TABLE: reverse_costing_by_ws_regist*/
/*  KEY reverse_costing_webservice_register_siscap_login_idx (siscap_login),*/
CREATE INDEX IDX_REV_COST_WS_REG_SCP_LOGIN ON reverse_costing_by_ws_regist(siscap_login);
/*  KEY reverse_costing_webservice_register_we_number_idx (warehouse_entry_number),*/
CREATE INDEX IDX_REV_COST_WS_REG_WE_NUM ON reverse_costing_by_ws_regist(warehouse_entry_number);
/*  KEY reverse_costing_webservice_register_po_number_idx (purchase_order_number),*/
CREATE INDEX IDX_REV_COST_WS_REG_PO_NUM ON reverse_costing_by_ws_regist(purchase_order_number);
/*  KEY reverse_costing_webservice_register_po_line_idx (purchase_order_line)*/
CREATE INDEX IDX_REV_COST_WS_REG_PO_LINE ON reverse_costing_by_ws_regist(purchase_order_line);

/* TABLE: Sislog_Elemento_PedidoEntrada*/
/*  KEY Sislog_PedidoEntrada (Sislog_PedidoEntrada),*/
CREATE INDEX IDX_SISLOG_PEDIDOENTRADA ON Sislog_Elemento_PedidoEntrada(Sislog_PedidoEntrada);
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Modelo (Modelo),*/
CREATE INDEX IDX_FK_SLOG_ELEM_PD_IN_MOD ON Sislog_Elemento_PedidoEntrada(Modelo);
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Elemento (CodigoLaicon),*/
CREATE INDEX IDX_FK_SLOG_ELEM_PD_IN_ELEM ON Sislog_Elemento_PedidoEntrada(CodigoLaicon);
/*  KEY FK_Sislog_Elemento_PedidoEntrada_ElementoPadre (LaiconIdPadre)*/
CREATE INDEX IDX_SLOG_ELEM_PD_IN_ELEMP ON Sislog_Elemento_PedidoEntrada(LaiconIdPadre);

/* TABLE: Sislog_Elemento_PedidoSalida*/
/*  KEY Sislog_PedidoSalida (Sislog_PedidoSalida),*/
CREATE INDEX IDX_SISLOG_PEDIDOSALIDA ON Sislog_Elemento_PedidoSalida(Sislog_PedidoSalida);
/*  KEY FK_Sislog_Elemento_PedidoSalida_Modelo (Modelo),*/
CREATE INDEX IDX_FK_SLOG_ELEM_PD_OUT_MOD ON Sislog_Elemento_PedidoSalida(Modelo);
/*  KEY FK_Sislog_Elemento_PedidoSalida_Elemento (CodigoLaicon)*/
CREATE INDEX IDX_FK_SLOG_ELEM_PD_OUT_ELEM ON Sislog_Elemento_PedidoSalida(CodigoLaicon);

/* TABLE: Sislog_Elemento_Transferencia*/
/*  KEY IdTransaccion (IdTransaccion),*/
CREATE INDEX IDX_IDTRANSACCION ON Sislog_Elemento_Transferencia(IdTransaccion);
/*  KEY FK_Sislog_Elemento_Transferencia_Modelo (Modelo),*/
CREATE INDEX IDX_FK_SLOG_ELEM_TRANSF_MOD ON Sislog_Elemento_Transferencia(Modelo);
/*  KEY FK_Sislog_Elemento_Transferencia_Elemento (CodigoLaicon),*/
CREATE INDEX IDX_FK_SLOG_ELEM_TRANSF_ELEM ON Sislog_Elemento_Transferencia(CodigoLaicon);
/*  KEY FK_Sislog_Elemento_Transferencia_ElementoPadre (LaiconIdPadre),*/
CREATE INDEX IDX_SLOG_ELEM_TRANSF_ELEMP ON Sislog_Elemento_Transferencia(LaiconIdPadre);
/*  KEY FK_Sislog_Elemento_Transferencia_Estado (Estado)*/
CREATE INDEX IDX_FK_SLOG_ELEM_TRANSF_STAT ON Sislog_Elemento_Transferencia(Estado);

/* TABLE: Sislog_PedidoEntrada*/
/*  UNIQUE KEY UQ_Sislog_PedidoEntrada_IdTransaccion (IdTransaccion)*/
ALTER TABLE Sislog_PedidoEntrada
ADD CONSTRAINT UQ_SLOG_PD_IN_IDTRANS UNIQUE (IdTransaccion);

/* TABLE: Sislog_PedidoSalida*/

/* TABLE: Sislog_TransferenciaParcial*/

/* TABLE: Sislog_Warehouse*/
/*  UNIQUE KEY UQ_Sislog_Warehouse_CodigoBodega (CodigoBodega)*/
ALTER TABLE Sislog_Warehouse
ADD CONSTRAINT UQ_SLOG_WH_CODIGOBODEGA UNIQUE (CodigoBodega);

/* TABLE: site*/
/*  KEY site_deleted_idx (deleted),*/
CREATE INDEX IDX_SITE_DELETED_IDX ON site(deleted);
/*  KEY site_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_SITE_GEO_LOCATION ON site(geographic_location);

/* TABLE: site_type*/

/* TABLE: solve_surplus_alpopular*/

/* TABLE: spare_part_interchange*/
/*  KEY spare_laicon_id (spare_laicon_id),*/
CREATE INDEX IDX_SPARE_LAICON_ID ON spare_part_interchange(spare_laicon_id);
/*  KEY spare_model (spare_model),*/
CREATE INDEX IDX_SPARE_MODEL ON spare_part_interchange(spare_model);
/*  KEY spare_part_interchange_state (spare_part_interchange_state),*/
CREATE INDEX IDX_SPARE_PART_INTERCH_STAT ON spare_part_interchange(spare_part_interchange_state);
/*  KEY departure_user (departure_user),*/
CREATE INDEX IDX_DEPARTURE_USER ON spare_part_interchange(departure_user);
/*  KEY spare_part_warehouse (spare_part_warehouse),*/
CREATE INDEX IDX_SPARE_PART_WAREHOUSE ON spare_part_interchange(spare_part_warehouse);
/*  KEY direction (direction),*/
CREATE INDEX IDX_DIRECTION ON spare_part_interchange(direction);
/*  KEY responsible_user (responsible_user),*/
CREATE INDEX IDX_RESPONSIBLE_USER ON spare_part_interchange(responsible_user);
/*  KEY closing_user (closing_user),*/
CREATE INDEX IDX_CLOSING_USER ON spare_part_interchange(closing_user);
/*  KEY spare_serial (spare_serial),*/
CREATE INDEX IDX_SPARE_SERIAL ON spare_part_interchange(spare_serial);
/*  KEY departure_date (departure_date),*/
CREATE INDEX IDX_DEPARTURE_DATE ON spare_part_interchange(departure_date);
/*  KEY closing_date (closing_date),*/
CREATE INDEX IDX_CLOSING_DATE ON spare_part_interchange(closing_date);
/*  KEY element_order_type (element_order_type),*/
CREATE INDEX IDX_ELEMENT_ORDER_TY ON spare_part_interchange(element_order_type);
/*  KEY element_order_number (element_order_number),*/
CREATE INDEX IDX_ELEMENT_ORDER_NUM ON spare_part_interchange(element_order_number);
/*  KEY pending_days (pending_days)*/
CREATE INDEX IDX_PENDING_DAYS ON spare_part_interchange(pending_days);

/* TABLE: spare_part_interchange_detail*/
/*  KEY spare_part_interchange (spare_part_interchange),*/
CREATE INDEX IDX_SPARE_PART_INTERCHANGE ON spare_part_interchange_detail(spare_part_interchange);
/*  KEY damaged_element_id (damaged_element_id),*/
CREATE INDEX IDX_DAMAGED_ELEMENT_ID_A ON spare_part_interchange_detail(damaged_element_id);
/*  KEY dameged_element_model (damaged_element_model),*/
CREATE INDEX IDX_DAMEGED_ELEMENT_MODEL ON spare_part_interchange_detail(damaged_element_model);
/*  KEY interchange_user (interchange_user),*/
CREATE INDEX IDX_INTERCHANGE_USER ON spare_part_interchange_detail(interchange_user);
/*  KEY damaged_element_serial (damaged_element_serial),*/
CREATE INDEX IDX_DAMAGED_ELEMENT_SERIAL ON spare_part_interchange_detail(damaged_element_serial);
/*  KEY interchange_date (interchange_date),*/
CREATE INDEX IDX_INTERCHANGE_DATE ON spare_part_interchange_detail(interchange_date);
/*  KEY element_order_type (element_order_type),*/
CREATE INDEX IDX_ELEMENT_ORDER_TP ON spare_part_interchange_detail(element_order_type);
/*  KEY element_order_number (element_order_number)*/
CREATE INDEX IDX_ELEMENT_ORDER_NUM_A ON spare_part_interchange_detail(element_order_number);

/* TABLE: spare_part_interchange_state*/
/*  KEY name (name)*/
CREATE INDEX IDX_NAME_G ON spare_part_interchange_state(name);

/* TABLE: spare_part_mail_list*/
/*  KEY spare_part_mail_list_module (spare_part_mail_list_module),*/
CREATE INDEX IDX_SPARE_PART_MAIL_LIST_MODU ON spare_part_mail_list(spare_part_mail_list_module);
/*  KEY enabled (enabled)*/
CREATE INDEX IDX_ENABLED_J ON spare_part_mail_list(enabled);

/* TABLE: spare_part_mail_list_module*/

/* TABLE: spare_part_maintenance_zone*/

/* TABLE: spare_part_om_director*/
/*  UNIQUE KEY region (region)*/
ALTER TABLE spare_part_om_director
ADD CONSTRAINT REGION UNIQUE (region);

/* TABLE: spare_part_warehouse*/

/* TABLE: spare_part_warehouse_type*/

/* TABLE: stealed_element_location*/
/*  KEY stealed_element_location_deleted_idx (deleted),*/
CREATE INDEX IDX_STEALED_ELEM_LOCATION_DEL ON stealed_element_location(deleted);
/*  KEY stealed_element_location_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_STED_ELEM_LOCT_GEO_LOCT ON stealed_element_location(geographic_location);

/* TABLE: supplier*/

/* TABLE: synchronization*/

/* TABLE: synchronization_detail*/

/* TABLE: tax_type*/

/* TABLE: ticket_template*/

/* TABLE: tigoea_owner_object*/

/* TABLE: tigoea_privilege*/

/* TABLE: tigoea_profile*/

/* TABLE: tigoea_profile_privilege*/

/* TABLE: tigoea_user_profile*/

/* TABLE: tigoea_users*/

/* TABLE: tower_contract_type*/

/* TABLE: transporter*/

/* TABLE: truck*/

/* TABLE: truck_type*/

/* TABLE: user_profile*/
/*  KEY user_profile_login_profile_idx (login,profile)*/
CREATE INDEX IDX_USER_PFILE_LOGIN_PFILE ON user_profile(login,profile);

/* TABLE: users*/
/*  UNIQUE KEY login_mobile (login_mobile),*/
ALTER TABLE users
ADD CONSTRAINT LOGIN_MOBILE UNIQUE (login_mobile);
/*  KEY login_sap_idx (login_sap)*/
CREATE INDEX IDX_LOGIN_SAP_IDX ON users(login_sap);

/* TABLE: value_data*/

/* TABLE: vendor*/

/* TABLE: warehouse*/
/*  KEY warehouse_deleted_idx (deleted),*/
CREATE INDEX IDX_WAREHOUSE_DELETED_IDX ON warehouse(deleted);
/*  KEY warehouse_geographic_location_fk (geographic_location)*/
CREATE INDEX IDX_WH_GEO_LOCATION ON warehouse(geographic_location);

/* TABLE: warehouse_entry*/

/* TABLE: warehouse_entry_detail*/

/* TABLE: warehouse_keeper*/

/* TABLE: warehouse_request*/

/* TABLE: we_request_category*/

/* TABLE: we_request_type*/

/* TABLE: we_status*/

/* TABLE: xelement_price*/
