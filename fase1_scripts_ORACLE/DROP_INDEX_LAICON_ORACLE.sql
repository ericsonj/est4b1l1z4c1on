
/* TABLE: additional_attribute*/

/* TABLE: additional_data*/

/* TABLE: air_waybill*/

/* TABLE: backup_capitalization_data*/

/* TABLE: bom*/
/*  KEY bom_provider (bom_provider),*/
DROP INDEX IDX_BOM_PROVIDER;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_F;
/*  KEY name (name),*/
DROP INDEX IDX_NAME;
/*  KEY state (state),*/
DROP INDEX IDX_STATE;
/*  KEY locked (locked),*/
DROP INDEX IDX_LOCKED;
/*  KEY bom_idx (id),*/
DROP INDEX IDX_BOM_IDX;
/*  KEY bom_update_user_idx (update_user),*/
DROP INDEX IDX_BOM_UPDATE_USER_IDX;
/*  KEY bom_creation_user_idx (creation_user),*/
DROP INDEX IDX_BOM_CREATION_USER_IDX;
/*  CONSTRAINT bom_ibfk_1 FOREIGN KEY (bom_provider) REFERENCES bom_provider (id) ON DELETE NO ACTION ON UPDATE NO ACTION,*/
ALTER TABLE bom DROP CONSTRAINT FK_bom_ib1;
/*  CONSTRAINT bom_ibfk_2 FOREIGN KEY (model) REFERENCES element_model (id) ON DELETE NO ACTION ON UPDATE NO ACTION*/
ALTER TABLE bom DROP CONSTRAINT FK_bom_ib2;

/* TABLE: bom_detail*/
/*  KEY element_model (element_model),*/
DROP INDEX IDX_ELEMENT_MODEL_A;
/*  KEY infrastructure_model (infrastructure_model),*/
DROP INDEX IDX_INFRASTRUCTURE_MODEL_A;
/*  KEY bom (bom),*/
DROP INDEX IDX_BOM;
/*  KEY is_infrastructure_element (is_infrastructure_element),*/
DROP INDEX IDX_IS_INFRA_ELEM;
/*  KEY bom_detail_line_sap_idx (line_sap),*/
DROP INDEX IDX_BOM_DETAIL_LINE_SAP_IDX;
/*  KEY bom_detail_export_sap_idx (export_sap)*/
DROP INDEX IDX_BOM_DTL_EXPORT_SAP;

/* TABLE: bom_provider*/
/*  KEY name (name)*/
DROP INDEX IDX_NAME_A;

/* TABLE: bsc*/

/* TABLE: bts_technology_type*/

/* TABLE: capit_by_ws_detail*/
/*  KEY capitalize_by_webservice_detail_register_fk (capitalize_by_webservice_register),*/
DROP INDEX IDX_CAPIT_BY_WS_DTL_REG;
/*  KEY capitalize_by_webservice_detail_element_fk (element)*/
DROP INDEX IDX_CAPIT_BY_WS_DTL_ELEM;

/* TABLE: capit_by_ws_regstr*/
/*  KEY capitalize_by_webservice_register_siscap_login_idx (siscap_login),*/
DROP INDEX IDX_CAPIT_BY_WS_REG_SCP_LOGIN;
/*  KEY capitalize_by_webservice_register_capitalization_report_idx (siscap_capitalization_report)*/
DROP INDEX IDX_CAPIT_BY_WS_REG_CAPTZ_RPT;

/* TABLE: capitalize_by_workbook_detail*/
/*  KEY capitalize_by_workbook_detail_capitalize_by_workbook_register_fk (capitalize_by_workbook_register),*/
DROP INDEX IDX_CAPIT_BY_WB_DTL_CPT_WB_RG;
/*  KEY capitalize_by_workbook_detail_element_fk (element)*/
DROP INDEX IDX_CAPIT_BY_WB_DTL_ELEM;

/* TABLE: capit_by_workbook_register*/
/*  KEY capitalize_by_workbook_register_users_fk (user_login)*/
DROP INDEX IDX_CAPIT_BY_WB_REG_USERS;

/* TABLE: car*/

/* TABLE: car_line*/

/* TABLE: connection_link*/

/* TABLE: connection_link_provider*/

/* TABLE: crossing_elements_process*/
/*  KEY crossing_login (crossing_login),*/
DROP INDEX IDX_CROSSING_LOGIN;
/*  KEY approve_login (approve_login),*/
DROP INDEX IDX_APPROVE_LOGIN;
/*  KEY reject_login (reject_login),*/
DROP INDEX IDX_REJECT_LOGIN;
/*  KEY crossing_type (crossing_type),*/
DROP INDEX IDX_CROSSING_TYPE;
/*  KEY crossing_date (crossing_date),*/
DROP INDEX IDX_CROSSING_DATE;
/*  KEY crossing_state (crossing_state),*/
DROP INDEX IDX_CROSSING_STATE;
/*  KEY approve_date (approve_date),*/
DROP INDEX IDX_APPROVE_DATE;
/*  KEY reject_date (reject_date)*/
DROP INDEX IDX_REJECT_DATE;

/* TABLE: cross_elem_process_detail*/
/*  KEY crossing_elements_process (crossing_elements_process),*/
DROP INDEX IDX_CROSSING_ELEMS_PCS;
/*  KEY element_missing (element_missing),*/
DROP INDEX IDX_ELEMENT_MISSING;
/*  KEY element_model_missing (element_model_missing),*/
DROP INDEX IDX_ELEMENT_MODEL_MISSING;
/*  KEY location_missing (location_missing),*/
DROP INDEX IDX_LOCATION_MISSING;
/*  KEY element_type_asset_missing (element_type_asset_missing),*/
DROP INDEX IDX_ELEM_TYPE_ASSET_MISS;
/*  KEY element_category_asset_missing (element_category_asset_missing),*/
DROP INDEX IDX_ELEM_CATEGORY_ASSET_MISS;
/*  KEY element_new (element_new),*/
DROP INDEX IDX_ELEMENT_NEW;
/*  KEY element_model_new (element_model_new),*/
DROP INDEX IDX_ELEMENT_MODEL_NEW;
/*  KEY location_new (location_new),*/
DROP INDEX IDX_LOCATION_NEW;
/*  KEY element_type_asset_new (element_type_asset_new),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_NEW;
/*  KEY element_category_asset_new (element_category_asset_new),*/
DROP INDEX IDX_ELEM_CATEGORY_ASSET_NEW;
/*  KEY serial_missing (serial_missing),*/
DROP INDEX IDX_SERIAL_MISSING;
/*  KEY millicom_code_missing (millicom_code_missing),*/
DROP INDEX IDX_MILLICOM_CODE_MISSING;
/*  KEY is_asset_missing (is_asset_missing),*/
DROP INDEX IDX_IS_ASSET_MISSING;
/*  KEY serial_new (serial_new),*/
DROP INDEX IDX_SERIAL_NEW;
/*  KEY millicom_code_new (millicom_code_new),*/
DROP INDEX IDX_MILLICOM_CODE_NEW;
/*  KEY is_asset_new (is_asset_new),*/
DROP INDEX IDX_IS_ASSET_NEW;
/*  KEY crossing_element_state (crossing_element_state)*/
DROP INDEX IDX_CROSSING_ELEMENT_STATE;

/* TABLE: currency*/

/* TABLE: desktop_inventory*/
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_H;
/*  KEY processed_user (processed_user),*/
DROP INDEX IDX_PROCESSED_USER;
/*  KEY login (login),*/
DROP INDEX IDX_LOGIN_C;
/*  KEY rescheduled_by_user (rescheduled_by_user),*/
DROP INDEX IDX_RESCHEDULED_BY_USER;
/*  KEY desktop_inventory_state_idx (state),*/
DROP INDEX IDX_DKTP_INV_STATE;
/*  KEY desktop_inventory_reschedule_idx (reschedule),*/
DROP INDEX IDX_DKTP_INV_RESCHEDULE;
/*  KEY desktop_inventory_desktop_inventory_grouping_fk (desktop_inventory_grouping),*/
DROP INDEX IDX_DKTP_INV_DKTP_INV_GROUP;
/*  KEY has_partial_inventory (has_partial_inventory)*/
DROP INDEX IDX_HAS_PARTIAL_INVENTORY;

/* TABLE: dktp_invtory_admin_warehouse*/

/* TABLE: dktp_invtory_auto_resolv_miss*/
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY;
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
DROP INDEX IDX_DKTP_INV_PROC_RSLT_DTL_X;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT;
/*  KEY login (login)*/
DROP INDEX IDX_LOGIN_B;

/* TABLE: desktop_inventory_element*/
/*  KEY model (model),*/
DROP INDEX IDX_MODEL;
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_A;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_A;
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_A;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET;
/*  KEY desktop_inventory_element_serial_idx (serial),*/
DROP INDEX IDX_DKTP_INV_ELEM_SERIAL;
/*  KEY desktop_inventory_element_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_DKTP_INV_ELEM_MCOM_CD;
/*  KEY desktop_inventory_element_is_asset_idx (is_asset),*/
DROP INDEX IDX_DKTP_INV_ELEM__ASSET;
/*  KEY desktop_inventory_element_old_millicom_code_idx (old_millicom_code),*/
DROP INDEX IDX_DKTP_INV_ELEM_OLD_MCOM_CD;
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
DROP INDEX IDX_DKTP_INV_PARCIAL_INV;

/* TABLE: dktp_invtory_elem_result*/
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_B;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_A;
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_B;
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
DROP INDEX IDX_DKTP_INV_ELEM_E;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_B;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_C;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_A;
/*  KEY desktop_inventory_element_result_serial_idx (serial),*/
DROP INDEX IDX_DKTP_INV_ELEM_RESULT_SR;
/*  KEY desktop_inventory_element_result_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_DKTP_INV_ELEM_RSLT_MCM_CD;
/*  KEY desktop_inventory_element_result_is_asset_idx (is_asset),*/
DROP INDEX IDX_DKTP_INV_ELEM_RESULT_ASST;
/*  KEY desktop_inventory_element_result_state_idx (state),*/
DROP INDEX IDX_DKTP_INV_ELEM_RESULT_STAT;
/*  KEY internal_location_id (internal_location_id),*/
DROP INDEX IDX_INTERNAL_LOCATION_ID;
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
DROP INDEX IDX_DKTP_INV_PARCIAL_INV_A;

/* TABLE: dktp_invtory_excluded_field*/
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,field_code),*/
ALTER TABLE dktp_invtory_excluded_field DROP CONSTRAINT DKTP_INV_GROUP_FIELD;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED;

ALTER TABLE element_model
DROP CONSTRAINT plu;

/* TABLE: dktp_invtory_excluded_model*/
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,element_model),*/
ALTER TABLE dktp_invtory_excluded_model DROP CONSTRAINT DKTP_INV_GROUP_MODEL;
/*  KEY element_model (element_model),*/
DROP INDEX IDX_ELEMENT_MODEL;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_A;

/* TABLE: desktop_inventory_grouping*/
/*  KEY is_active (is_active),*/
DROP INDEX IDX_IS_ACTIVE;
/*  KEY is_default (is_default),*/
DROP INDEX IDX_IS_DEFAULT;
/*  KEY desktop_inventory_grouping_restrict_inventory_screen_fields_idx (restrict_inventory_screen_fields),*/
DROP INDEX IDX_DKTP_INV_GROUP_REST_FL;
/*  KEY desktop_inventory_grouping_solve_missing_only_field_service_idx (solve_missing_only_field_service),*/
DROP INDEX IDX_DKTP_INV_GROUP_MISS;
/*  KEY validate_upload_terminal_files (validate_upload_terminal_files)*/
DROP INDEX IDX_VALIDATE_UPLOAD_TERM_FILE;

/* TABLE: dktp_inv_parcial_inventory*/
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_C;
/*  KEY dktp_invtory_admin_warehouse (desktop_inventory_admin_warehouse),*/
DROP INDEX IDX_DKTP_INVTORY_ADMIN_WH;
/*  KEY internal_location (internal_location),*/
DROP INDEX IDX_INTERNAL_LOCATION;
/*  KEY partial_download_user (partial_download_user),*/
DROP INDEX IDX_PARTIAL_DOWNLOAD_USER;
/*  KEY partial_download_date (partial_download_date),*/
DROP INDEX IDX_PARTIAL_DOWNLOAD_DATE;
/*  KEY partial_upload_user (partial_upload_user),*/
DROP INDEX IDX_PARTIAL_UPLOAD_USER;
/*  KEY partial_upload_date (partial_upload_date)*/
DROP INDEX IDX_PARTIAL_UPLOAD_DATE;

/* TABLE: dktp_inv_proc_rslt_dtl*/
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_D;
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
DROP INDEX IDX_DKTP_INV_ELEM_A;
/*  KEY dktp_invtory_elem_result (desktop_inventory_element_result),*/
DROP INDEX IDX_DKTP_INVTORY_ELEM_RESULT;
/*  KEY process_result_state (process_result_state),*/
DROP INDEX IDX_PROCESS_RESULT_STATE;
/*  KEY process_result_type (process_result_type),*/
DROP INDEX IDX_PROCESS_RESULT_TYPE;
/*  KEY di_process_result_detail_partial_inventory_idx (dktp_inv_parcial_inventory)*/
DROP INDEX IDX_DI_PCS_RSLT_DTL_PRTL_INV;

/* TABLE: dktp_inv_proc_rslt_dif_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
DROP INDEX IDX_DKTP_INV_ELEM_B;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_C;
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_C;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_B;
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_E;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_D;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_B;
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
DROP INDEX IDX_DKTP_INV_PROC_RSLT_DTL;
/*  KEY check_field_service_login (check_field_service_login),*/
DROP INDEX IDX_CHECK_FIELD_SERVICE_LOGIN;
/*  KEY chk_invtory_responsible_login (check_inventory_responsible_login),*/
DROP INDEX IDX_CHK_INVTRY_RESPONS_LOGIN;
/*  KEY process_result_diff_detail_serial_idx (serial),*/
DROP INDEX IDX_PCS_RSLT_DIFF_DTL_SERIAL;
/*  KEY process_result_diff_detail_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_PCS_RSLT_DIFF_DTL_MCOM_CD;
/*  KEY process_result_diff_detail_is_asset_idx (is_asset),*/
DROP INDEX IDX_PCS_RSLT_DIFF_DTL__ASSET;
/*  KEY internal_location_id (internal_location_id),*/
DROP INDEX IDX_INTERNAL_LOCATION_ID_A;
/*  KEY di_process_diff_detail_missing_element_created_idx (missing_element_created_for_partial_diff)*/
DROP INDEX IDX_DI_PCS_DIFF_DTL_MISS_ELEM;

/* TABLE: dktp_inv_proc_rslt_miss_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
DROP INDEX IDX_DKTP_INV_ELEM_C;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_D;
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_D;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_C;
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_F;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_A;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_C;
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
DROP INDEX IDX_DKTP_INV_PROC_RSLT_DTL;
/*  KEY field_service_check_login (field_service_check_login),*/
DROP INDEX IDX_FIELD_SERVICE_CHECK_LOGIN;
/*  KEY responsible_check_login (responsible_check_login),*/
DROP INDEX IDX_RESPONSIBLE_CHECK_LOGIN;
/*  KEY process_result_missing_detail_serial_idx (serial),*/
DROP INDEX IDX_PCS_RSLT_MISS_DTL_SERIAL;
/*  KEY process_result_missing_detail_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_PCS_RSLT_MISS_DTL_MCOM_CD;
/*  KEY process_result_missing_detail_is_asset_idx (is_asset),*/
DROP INDEX IDX_PCS_RSLT_MISS_DTL__ASSET;
/*  KEY process_result_missing_detail_solve_pending_unsuscribe_idx (solve_pending_unsuscribe_element),*/
DROP INDEX IDX_PCS_RSLT_MISS_DTL_SOLVE;
/*  KEY internal_location_id (internal_location_id)*/
DROP INDEX IDX_INTERNAL_LOCATION_ID_B;

/* TABLE: dktp_inv_proc_rslt_nw_dtl*/
/*  KEY desktop_inventory_element (desktop_inventory_element),*/
DROP INDEX IDX_DKTP_INV_ELEM_D;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_E;
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_E;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_D;
/*  KEY desktop_inventory (desktop_inventory),*/
DROP INDEX IDX_DESKTOP_INVENTORY_G;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_G;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_D;
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
DROP INDEX IDX_DKTP_INV_PROC_RSLT_DTL_A;
/*  KEY check_login (check_login),*/
DROP INDEX IDX_CHECK_LOGIN;
/*  KEY match_missing_login (match_missing_login),*/
DROP INDEX IDX_MATCH_MISSING_LOGIN;
/*  KEY proc_result_detail_miss_match (process_result_detail_missing_match),*/
DROP INDEX IDX_PROC_RSLT_DTL_MISS_MATCH;
/*  KEY process_result_new_detail_serial_idx (serial),*/
DROP INDEX IDX_PCS_RSLT_NEW_DTL_SERIAL;
/*  KEY process_result_new_detail_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_PCS_RSLT_NEW_DTL_MCOM_CD;
/*  KEY process_result_new_detail_is_asset_idx (is_asset),*/
DROP INDEX IDX_PCS_RSLT_NEW_DTL__ASSET;
/*  KEY process_result_new_detail_only_solve_check_login_fk (only_solve_check_login),*/
DROP INDEX IDX_PCS_RSLT_NEW_DTL_SOLVE_CK;
/*  KEY process_result_new_detail_new_element_created_id (new_element_created_id),*/
DROP INDEX IDX_PCS_RSLT_NEW_DTL_NEW_ELEM;
/*  KEY internal_location_id (internal_location_id)*/
DROP INDEX IDX_INTERNAL_LOCATION_ID_C;

/* TABLE: dktp_inv_proc_rslt_state*/

/* TABLE: dktp_inv_proc_rslt_type*/

/* TABLE: dktp_inv_surplus_OT*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
DROP INDEX IDX_DKTP_INV_PROC_RSLT_DTL_B;
/*  KEY element_transfer_order (element_transfer_order),*/
DROP INDEX IDX_ELEMENT_TRANSFER_ORDER;
/*  KEY element_transfer_order_detail (element_transfer_order_detail)*/
DROP INDEX IDX_ELEM_TRF_ORD_DTL;

/* TABLE: dktp_inv_terminal_model*/

/* TABLE: document_type*/

/* TABLE: element*/
/*  KEY element_deleted_idx (deleted),*/
DROP INDEX IDX_ELEMENT_DELETED_IDX;
/*  KEY element_containing_element_idx (containing_element),*/
DROP INDEX IDX_ELEM_CONTAINING_ELEM;
/*  KEY element_awb_idx (awb),*/
DROP INDEX IDX_ELEMENT_AWB_IDX;
/*  KEY element_tigo_inventory_code_idx (tigo_inventory_code),*/
DROP INDEX IDX_ELEM_TIGO_INV_CD;
/*  KEY element_serial_idx (serial),*/
DROP INDEX IDX_ELEMENT_SERIAL_IDX;
/*  KEY element_location_idx (location),*/
DROP INDEX IDX_ELEMENT_LOCATION_IDX;
/*  KEY element_model_idx (model),*/
DROP INDEX IDX_ELEMENT_MODEL_IDX;
/*  KEY element_internal_location_id_idx (internal_location_id),*/
DROP INDEX IDX_ELEM_INTERNAL_LOCATION_ID;
/*  KEY element_source_element_idx (source_element),*/
DROP INDEX IDX_ELEM_SOURCE_ELEM;
/*  KEY element_installation_site_1_idx (installation_site_1),*/
DROP INDEX IDX_ELEM_INSTALLATION_SITE_1;
/*  KEY element_installation_site_2_idx (installation_site_2),*/
DROP INDEX IDX_ELEM_INSTALLATION_SITE_2;
/*  KEY element_login_update_installation_site_idx (login_update_installation_site),*/
DROP INDEX IDX_ELEM_LOGIN_UPDATE_INSTALL;
/*  KEY element_in_movement_idx (in_movement),*/
DROP INDEX IDX_ELEMENT_IN_MOVEMENT_IDX;
/*  KEY element_type_asset_element_fk (element_type_asset),*/
DROP INDEX IDX_ELEM_TYPE_ASSET_ELEM;
/*  KEY element_category_asset_element_fk (element_category_asset),*/
DROP INDEX IDX_ELEM_CATEGORY_ASSET_ELEM_A;
/*  KEY element_purchase_order_number_idx (purchase_order_number),*/
DROP INDEX IDX_ELEM_PURCHASE_ORD_NUM;
/*  KEY element_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
DROP INDEX IDX_ELEM_TMP_FIX_ASSET_NUM;
/*  KEY element_fixed_asset_number_idx (fixed_asset_number),*/
DROP INDEX IDX_ELEM_FIX_ASSET_NUM;
/*  KEY element_wip_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
DROP INDEX IDX_ELEM_WIP_TMP_FIX_ASSET;
/*  KEY element_purchase_order_line_idx (purchase_order_line),*/
DROP INDEX IDX_ELEM_PURCHASE_ORD_LINE;
/*  KEY element_warehouse_entry_number_idx (warehouse_entry_number),*/
DROP INDEX IDX_ELEM_WH_ENTRY_NUM;
/*  KEY element_car_number_idx (car_number),*/
DROP INDEX IDX_ELEMENT_CAR_NUMBER_IDX;
/*  KEY element_is_asset_idx (is_asset),*/
DROP INDEX IDX_ELEMENT_IS_ASSET_IDX;
/*  KEY element_fixed_asset_subnumber_idx (fixed_asset_subnumber),*/
DROP INDEX IDX_ELEM_FIX_ASSET_SUBNUM;
/*  KEY element_old_millicom_code_idx (old_millicom_code),*/
DROP INDEX IDX_ELEM_OLD_MCOM_CD;
/*  KEY element_millicom_code_idx (millicom_code),*/
DROP INDEX IDX_ELEM_MCOM_CD;
/*  KEY element_quantity_idx (quantity),*/
DROP INDEX IDX_ELEMENT_QUANTITY_IDX;
/*  KEY element_element_state_idx (element_state),*/
DROP INDEX IDX_ELEM_ELEM_STATE;
/*  KEY element_date_capitalization_idx (date_capitalization),*/
DROP INDEX IDX_ELEM_DATE_CAPITALZ;
/*  KEY element_last_inventory_date_idx (last_inventory_date),*/
DROP INDEX IDX_ELEM_LAST_INV_DATE;
/*  KEY element_last_inventory_id_fk (last_inventory_id),*/
DROP INDEX IDX_ELEM_LAST_INV_ID;
/*  KEY element_locked_idx (locked),*/
DROP INDEX IDX_ELEMENT_LOCKED_IDX;
/*  KEY element_piece_box_stowage_idx (piece_box_stowage),*/
DROP INDEX IDX_ELEM_PIECE_BOX_STOWAGE;
/*  KEY element_reenabled_idx (reenabled),*/
DROP INDEX IDX_ELEMENT_REENABLED_IDX;
/*  KEY element_element_classification_idx (element_classification),*/
DROP INDEX IDX_ELEM_ELEM_CLASSIFICATION;
/*  KEY import_declaration (import_declaration),*/
DROP INDEX IDX_IMPORT_DECLARATION;
/*  KEY element_id_sap_idx (id_sap)*/
DROP INDEX IDX_ELEMENT_ID_SAP_IDX;

/* TABLE: element_BKP_20111201*/

/* TABLE: element_category*/

/* TABLE: element_category_asset*/
/*  KEY investment_item_element_category_asset_fk (investment_item),*/
DROP INDEX IDX_INVESTMENT_ITEM_ELEM_CAT;
/*  KEY mic_code_prefix_element_category_asset_fk (mic_code_prefix)*/
DROP INDEX IDX_MIC_CD_PREFIX_ELEM_CAT;

/* TABLE: element_classification*/
/*  UNIQUE KEY description (description)*/
ALTER TABLE element_classification DROP CONSTRAINT DESCRIPTION;

/* TABLE: element_history*/
/*  KEY element_history_detailed_type_idx (detailed_type),*/
DROP INDEX IDX_ELEM_HY_DTLED_TYPE;
/*  KEY element_history_support_code_idx (support_code),*/
DROP INDEX IDX_ELEM_HY_SUPPORT_CD;
/*  KEY element_history_support_table_idx (support_table),*/
DROP INDEX IDX_ELEM_HY_SUPPORT_TABLE;
/*  KEY element_history_split_source_element_idx (split_source_element),*/
DROP INDEX IDX_ELEM_HY_SPLIT_SOURCE_ELEM;
/*  KEY element_history_element_model_idx (element_model),*/
DROP INDEX IDX_ELEM_HY_ELEM_MOD;
/*  KEY element_history_element_serial_idx (element_serial),*/
DROP INDEX IDX_ELEM_HY_ELEM_SERIAL;
/*  KEY element_history_element_purchase_price_idx (element_purchase_price),*/
DROP INDEX IDX_ELEM_HY_ELEM_PURCHSE_PRIC;
/*  KEY element_history_element_state_idx (element_state),*/
DROP INDEX IDX_ELEM_HY_ELEM_STATE;
/*  KEY element_history_element_containing_element_idx (element_containing_element),*/
DROP INDEX IDX_ELEM_HY_ELEM_CONT;
/*  KEY element_history_element_internal_location_idx (element_internal_location),*/
DROP INDEX IDX_ELEM_HY_ELEM_INTERNAL;
/*  KEY element_history_element_awb_idx (element_awb),*/
DROP INDEX IDX_ELEM_HY_ELEM_AWB;
/*  KEY element_history_element_invoice_idx (element_invoice),*/
DROP INDEX IDX_ELEM_HY_ELEM_INVOICE;
/*  KEY element_history_element_insurance_value_idx (element_insurance_value),*/
DROP INDEX IDX_ELEM_HY_ELEM_INSURANCE_V;
/*  KEY element_history_element_millicom_code_idx (element_millicom_code),*/
DROP INDEX IDX_ELEM_HY_ELEM_MCOM_CD;
/*  KEY element_history_intermediate_location_idx (intermediate_location),*/
DROP INDEX IDX_ELEM_HY_INTERMEDIATE_LOCT;
/*  KEY element_history_type_asset_idx (element_type_asset),*/
DROP INDEX IDX_ELEM_HY_TYPE_ASSET;
/*  KEY element_history_category_asset_idx (element_category_asset),*/
DROP INDEX IDX_ELEM_HY_CATEGORY_ASSET;
/*  KEY element_history_asset_cop_value_idx (element_asset_cop_value),*/
DROP INDEX IDX_ELEM_HY_ASSET_COP_VAL;
/*  KEY element_history_asset_usd_value_idx (element_asset_usd_value),*/
DROP INDEX IDX_ELEM_HY_ASSET_USD_VAL;
/*  KEY element_history_asset_trm_idx (element_asset_trm),*/
DROP INDEX IDX_ELEM_HY_ASSET_TRM;
/*  KEY element_history_nationalization_cop_value_idx (element_nationalization_cop_value),*/
DROP INDEX IDX_ELEM_HY_NATIONAL_COP_VAL;
/*  KEY element_history_nationalization_usd_value_idx (element_nationalization_usd_value),*/
DROP INDEX IDX_ELEM_HY_NATIONAL_USD_VAL;
/*  KEY element_history_nationalization_trm_idx (element_nationalization_trm),*/
DROP INDEX IDX_ELEM_HY_NATIONAL_TRM;
/*  KEY element_history_purchase_order_number_idx (element_purchase_order_number),*/
DROP INDEX IDX_ELEM_HY_PURCHASE_ORD_NUM;
/*  KEY element_history_wip_temporal_fixed_asset_number_idx (element_wip_temporal_fixed_asset_number),*/
DROP INDEX IDX_ELEM_HY_WIP_TMP_FIX_ASSET;
/*  KEY element_history_fixed_asset_number_idx (element_fixed_asset_number),*/
DROP INDEX IDX_ELEM_HY_FIX_ASSET_NUM;
/*  KEY element_history_fixed_asset_subnumber_idx (element_fixed_asset_subnumber),*/
DROP INDEX IDX_ELEM_HY_FIX_ASSET_SUBNUM;
/*  KEY element_history_purchase_order_line_idx (element_purchase_order_line),*/
DROP INDEX IDX_ELEM_HY_PURCHASE_ORD_LINE;
/*  KEY element_history_warehouse_entry_number_idx (element_warehouse_entry_number),*/
DROP INDEX IDX_ELEM_HY_WH_ENTRY_NUM;
/*  KEY element_history_car_number_idx (element_car_number),*/
DROP INDEX IDX_ELEM_HY_CAR_NUM;
/*  KEY element_history_is_asset_idx (element_is_asset),*/
DROP INDEX IDX_ELEM_HY__ASSET;
/*  KEY element_history_date_capitalization_idx (element_date_capitalization),*/
DROP INDEX IDX_ELEM_HY_DATE_CAPITALZ;
/*  KEY element_history_nationalization_subnumber_idx (element_nationalization_subnumber),*/
DROP INDEX IDX_ELEM_HY_NATIONAL_SUBNUM;
/*  KEY element_history_element_locked_idx (element_locked),*/
DROP INDEX IDX_ELEM_HY_ELEM_LOCKED;
/*  KEY element_history_element_in_movement_idx (element_in_movement),*/
DROP INDEX IDX_ELEM_HY_ELEM_IN_MOVEMENT;
/*  KEY element_history_element_idx (element),*/
DROP INDEX IDX_ELEM_HY_ELEM;
/*  KEY element_history_history_date_idx (history_date),*/
DROP INDEX IDX_ELEM_HY_HY_DATE;
/*  KEY element_history_history_time_idx (history_time),*/
DROP INDEX IDX_ELEM_HY_HY_TIME;
/*  KEY element_history_action_idx (action),*/
DROP INDEX IDX_ELEM_HY_ACTION;
/*  KEY element_history_location_idx (location),*/
DROP INDEX IDX_ELEM_HY_LOCATION;
/*  KEY element_history_direction_idx (direction),*/
DROP INDEX IDX_ELEM_HY_DIRECTION;
/*  KEY element_history_movement_report_idx (movement_report),*/
DROP INDEX IDX_ELEM_HY_MOVEMENT_REPORT;
/*  KEY element_history_piece_box_stowage_idx (element_piece_box_stowage),*/
DROP INDEX IDX_ELEM_HY_PIECE_BOX_STOWAGE;
/*  KEY element_history_element_reenabled_idx (element_reenabled),*/
DROP INDEX IDX_ELEM_HY_ELEM_REENABLED;
/*  KEY element_history_classification_idx (element_classification)*/
DROP INDEX IDX_ELEM_HY_CLASSIFICATION;

/* TABLE: element_inventory*/

/* TABLE: element_model*/
/*  KEY element_model_description_idx (description),*/
DROP INDEX IDX_ELEM_MOD_DESCRIPT;
/*  KEY element_model_value_type_idx (value_type),*/
DROP INDEX IDX_ELEM_MOD_VAL_TYPE;
/*  KEY element_type_asset_element_model_fk (default_element_type_asset),*/
DROP INDEX IDX_ELEM_TYPE_ASSET_ELEM_MOD;
/*  KEY element_model_idx (id),*/
DROP INDEX IDX_ELEMENT_MODEL_IDX_A;
/*  KEY element_model_id_sap_idx (id_sap),*/
DROP INDEX IDX_ELEMENT_MODEL_ID_SAP_IDX;
/*  KEY element_model_model_sap_idx (model_sap)*/
DROP INDEX IDX_ELEM_MOD_MOD_SAP;

/* TABLE: elem_mdl_x_remote_inv_ref*/

/* TABLE: elem_movement_order_comment*/

/* TABLE: element_order_problem_case*/

/* TABLE: elem_order_prblm_case_abs_dtl*/

/* TABLE: elem_order_prblm_case_att_fle*/
/*  KEY element_order_problem_case (element_order_problem_case),*/
DROP INDEX IDX_ELEM_ORD_PROBLEM_CASE;
/*  KEY element_order_problem_case_attach_file_uploaded_by_fk (uploaded_by)*/
DROP INDEX IDX_ELEM_ORD_PBM_CASE_ATT_FL;

/* TABLE: elem_order_prblm_case_exs_dtl*/

/* TABLE: element_request*/
/*  KEY element_request_location_idx (location),*/
DROP INDEX IDX_ELEM_RQST_LOCATION;
/*  KEY element_request_created_state_user_idx (created_state_user),*/
DROP INDEX IDX_ELEM_RQST_CREAT_STAT_USR;
/*  KEY element_request_authorized_state_user_idx (authorized_state_user),*/
DROP INDEX IDX_ELEM_RQST_ATHRIZ_STAT_USR;
/*  KEY element_request_in_transit_state_user_idx (in_transit_state_user),*/
DROP INDEX IDX_ELEM_RQST_TRANSI_STAT_USR;
/*  KEY element_request_canceled_state_user_idx (canceled_state_user),*/
DROP INDEX IDX_ELEM_RQST_CANCEL_STAT_USR;
/*  KEY element_request_review_state_user_idx (review_state_user),*/
DROP INDEX IDX_ELEM_RQST_REVIEW_STAT_USR;
/*  KEY element_request_end_state_user_idx (end_state_user),*/
DROP INDEX IDX_ELEM_RQST_END_STATE_USR;
/*  KEY element_request_state_idx (state),*/
DROP INDEX IDX_ELEM_RQST_STATE;
/*  KEY element_request_request_date_idx (request_date),*/
DROP INDEX IDX_ELEM_RQST_RQST_DATE;
/*  KEY element_request_login_idx (login),*/
DROP INDEX IDX_ELEM_RQST_LOGIN;
/*  KEY element_request_reviewed_idx (reviewed),*/
DROP INDEX IDX_ELEM_RQST_REVIEWED;
/*  KEY element_request_auth_transport_idx (auth_transport),*/
DROP INDEX IDX_ELEM_RQST_AUTH_TRANSPORT;
/*  KEY element_request_direction_idx (direction),*/
DROP INDEX IDX_ELEM_RQST_DIRECTION;
/*  KEY element_request_order_priority_type_idx (order_priority_type),*/
DROP INDEX IDX_ELEM_RQST_ORD_PRRITY_TYPE;
/*  KEY element_request_requires_transportation_idx (requires_transportation),*/
DROP INDEX IDX_ELEM_RQST_REQUIRES_TRANS;
/*  KEY element_request_order_execution_responsible_idx (order_execution_responsible),*/
DROP INDEX IDX_ELEM_RQST_ORD_EXE_RESPONS;
/*  KEY document_send_indx (document_send),*/
DROP INDEX IDX_DOCUMENT_SEND_INDX;
/*  KEY document_receive_indx (document_receive),*/
DROP INDEX IDX_DOCUMENT_RECEIVE_INDX_B;
/*  KEY petitioner_indx (petitioner)*/
DROP INDEX IDX_PETITIONER_INDX;

/* TABLE: element_requested*/
/*  KEY element_requested_request_idx (request),*/
DROP INDEX IDX_ELEM_RQSTED_RQST;
/*  KEY element_requested_element_idx (element),*/
DROP INDEX IDX_ELEM_RQSTED_ELEM;
/*  KEY element_requested_arrived_idx (arrived)*/
DROP INDEX IDX_ELEM_RQSTED_ARRIVED;

/* TABLE: elem_request_person_in_charge*/

/* TABLE: element_request_transport*/

/* TABLE: element_screenshot_comparison*/
/*  KEY element_screenshot_comparison_created_by_idx (created_by),*/
DROP INDEX IDX_ELEM_SCRNSHOT_COMPR_CREAT;
/*  KEY element_screenshot_comparison_screenshot_origin_idx (screenshot_origin),*/
DROP INDEX IDX_ELEM_SCRNSHOT_COMPR_ORG;
/*  KEY element_screenshot_comparison_screenshot_destination_idx (screenshot_destination)*/
DROP INDEX IDX_ELEM_SCRNSHOT_COMPR_DEST;

/* TABLE: elem_screenhot_compa_detail*/
/*  KEY comparison_detail_comparison_fk (element_screenshot_comparison),*/
DROP INDEX IDX_COMPR_DTL_COMPR;
/*  KEY comparison_detail_difference_type_fk (element_screenshot_comparison_difference_type),*/
DROP INDEX IDX_COMPR_DTL_DIFFERENCE_TYPE;
/*  KEY comparison_detail_element_fk (element)*/
DROP INDEX IDX_COMPR_DTL_ELEM;

/* TABLE: elem_screenhot_compa_dif_ty*/

/* TABLE: element_screenshot_data*/
/*  KEY screenshot_data_element_screenshot_registry_idx (element_screenshot_registry),*/
DROP INDEX IDX_SCRNSHT_DATA_ELEM_SCRNSHT;
/*  KEY element_screenshot_data_location_idx (location)*/
DROP INDEX IDX_ELEM_SCREENSHOT_DATA_LOCT;

/* TABLE: element_screenshot_registry*/
/*  KEY element_screenshot_registry_created_by_idx (created_by)*/
DROP INDEX IDX_ELEM_SCREENSHOT_REG_CREAT;

/* TABLE: element_snapshot*/

/* TABLE: element_state*/

/* TABLE: element_structure*/
/*  UNIQUE KEY property (property,description)*/
ALTER TABLE element_structure DROP CONSTRAINT PROPERTY;

/* TABLE: element_transfer_order*/
/*  KEY element_transfer_order_state_idx (state),*/
DROP INDEX IDX_ELEM_TRF_ORD_STATE;
/*  KEY element_transfer_order_prepared_state_user_fk (prepared_state_user),*/
DROP INDEX IDX_ELEM_TRF_ORD_PRP_STAT_USR;
/*  KEY element_transfer_order_creation_date_idx (creation_date),*/
DROP INDEX IDX_ELEM_TRF_ORD_CREATION_DT;
/*  KEY element_transfer_order_creator_login_idx (creator_login),*/
DROP INDEX IDX_ELEM_TRF_ORD_CREATOR_LOG;
/*  KEY element_transfer_order_origin_location_idx (origin_location),*/
DROP INDEX IDX_ELEM_TRF_ORD_ORIGIN_LOCT;
/*  KEY element_transfer_order_direction_location_idx (direction_location),*/
DROP INDEX IDX_ELEM_TRF_ORD_DIREC_LOCT;
/*  KEY element_transfer_order_authorize_login_idx (authorize_login),*/
DROP INDEX IDX_ELEM_TRF_ORD_AUTHRZE_LOG;
/*  KEY element_transfer_order_sender_login_idx (sender_login),*/
DROP INDEX IDX_ELEM_TRF_ORD_SENDER_LOGIN;
/*  KEY element_transfer_order_addressee_login_idx (addressee_login),*/
DROP INDEX IDX_ELEM_TRF_ORD_ADDRESE_LOG;
/*  KEY element_transfer_order_cancel_login_idx (cancel_login),*/
DROP INDEX IDX_ELEM_TRF_ORD_CANCEL_LOGIN;
/*  KEY element_transfer_order_authorize_region_fk (authorize_region),*/
DROP INDEX IDX_ELEM_TRF_ORD_AUTHORIZE_RG;
/*  KEY element_transfer_order_order_priority_type_idx (order_priority_type),*/
DROP INDEX IDX_ELEM_TRF_ORD_ORD_PRRTY_TY;
/*  KEY element_transfer_order_requires_transportation_idx (requires_transportation),*/
DROP INDEX IDX_ELEM_TRF_ORD_REQRS_TRNSP;
/*  KEY element_transfer_order_order_execution_responsible_idx (order_execution_responsible),*/
DROP INDEX IDX_ELEM_TRF_ORD_ORD_EXE;
/*  KEY document_send_indx (document_send),*/
DROP INDEX IDX_DOCUMENT_SEND_INDX_A;
/*  KEY document_receive_indx (document_receive)*/
DROP INDEX IDX_DOCUMENT_RECEIVE_INDX;

/* TABLE: elem_transfer_order_comment*/

/* TABLE: element_transfer_order_detail*/
/*  KEY element_transfer_order_detail_element_transfer_order_idx (element_transfer_order),*/
DROP INDEX IDX_ELEM_TRF_ORD_DTL_TRAS_ODR;
/*  KEY element_transfer_order_detail_arrived_idx (arrived),*/
DROP INDEX IDX_ELEM_TRF_ORD_DTL_ARRIVED;
/*  KEY element_transfer_order_detail_element_idx (element)*/
DROP INDEX IDX_ELEM_TRF_ORD_DTL_ELEM;

/* TABLE: elem_OT_person_in_charge*/

/* TABLE: elem_OT_transport*/

/* TABLE: element_type*/
/*  UNIQUE KEY mnemonic (mnemonic)*/
ALTER TABLE element_type DROP CONSTRAINT MNEMONIC;

/* TABLE: element_type_asset*/
/*  KEY element_category_asset_element_type_asset_fk (default_element_category_asset),*/
DROP INDEX IDX_ELEM_CATEGORY_ASSET_ELEM;
/*  KEY investment_item_element_type_asset_fk (investment_item)*/
DROP INDEX IDX_INVESTMENT_ITEM_ELEM_TYPE;

/* TABLE: external_location*/
/*  KEY external_location_deleted_idx (deleted),*/
DROP INDEX IDX_EXT_LOCATION_DEL;
/*  KEY external_location_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_EXT_LOCATION_GEO_LOCATION;

/* TABLE: external_location_type*/

/* TABLE: external_warehouse*/
/*  KEY external_warehouse_deleted_idx (deleted),*/
DROP INDEX IDX_EXT_WH_DEL;
/*  KEY external_warehouse_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_EXT_WH_GEO_LOCATION;

/* TABLE: fault_element_field*/
/*  KEY field_name (field_name)*/
DROP INDEX IDX_FIELD_NAME;

/* TABLE: fault_report*/
/*  KEY fault_report_responsible (fault_report_responsible),*/
DROP INDEX IDX_FAULT_REPORT_RESPONSIBLE;
/*  KEY fault_report_state (fault_report_state),*/
DROP INDEX IDX_FAULT_REPORT_STATE;
/*  KEY creation_user (creation_user),*/
DROP INDEX IDX_CREATION_USER;
/*  KEY cancel_user (cancel_user),*/
DROP INDEX IDX_CANCEL_USER;
/*  KEY warehouse_approve_user (warehouse_approve_user),*/
DROP INDEX IDX_WAREHOUSE_APPROVE_USER;
/*  KEY warehouse_reject_user (warehouse_reject_user),*/
DROP INDEX IDX_WAREHOUSE_REJECT_USER;
/*  KEY responsible_approve_user (responsible_approve_user),*/
DROP INDEX IDX_RESPONSIBLE_APPROVE_USER;
/*  KEY responsible_reject_user (responsible_reject_user),*/
DROP INDEX IDX_RESPONSIBLE_REJECT_USER;
/*  KEY responsible_service_number (responsible_service_number)*/
DROP INDEX IDX_RESPONSIBLE_SERVICE_NUM;

/* TABLE: fault_report_detail*/
/*  KEY fault_report (fault_report),*/
DROP INDEX IDX_FAULT_REPORT;
/*  KEY fault_report_struct (fault_report_struct),*/
DROP INDEX IDX_FAULT_REPORT_STRUCT_A;
/*  KEY fault_id_number (fault_id_number),*/
DROP INDEX IDX_FAULT_ID_NUMBER;
/*  KEY field_1 (field_1),*/
DROP INDEX IDX_FIELD_1;
/*  KEY field_2 (field_2),*/
DROP INDEX IDX_FIELD_2;
/*  KEY field_3 (field_3),*/
DROP INDEX IDX_FIELD_3;
/*  KEY field_4 (field_4),*/
DROP INDEX IDX_FIELD_4;
/*  KEY field_5 (field_5),*/
DROP INDEX IDX_FIELD_5;
/*  KEY field_6 (field_6),*/
DROP INDEX IDX_FIELD_6;
/*  KEY field_7 (field_7),*/
DROP INDEX IDX_FIELD_7;
/*  KEY field_8 (field_8),*/
DROP INDEX IDX_FIELD_8;
/*  KEY field_9 (field_9),*/
DROP INDEX IDX_FIELD_9;
/*  KEY field_10 (field_10),*/
DROP INDEX IDX_FIELD_10;
/*  KEY field_11 (field_11),*/
DROP INDEX IDX_FIELD_11;
/*  KEY field_12 (field_12),*/
DROP INDEX IDX_FIELD_12;
/*  KEY field_13 (field_13),*/
DROP INDEX IDX_FIELD_13;
/*  KEY field_14 (field_14),*/
DROP INDEX IDX_FIELD_14;
/*  KEY field_15 (field_15),*/
DROP INDEX IDX_FIELD_15;
/*  KEY field_16 (field_16),*/
DROP INDEX IDX_FIELD_16;
/*  KEY field_17 (field_17),*/
DROP INDEX IDX_FIELD_17;
/*  KEY field_18 (field_18),*/
DROP INDEX IDX_FIELD_18;
/*  KEY field_19 (field_19),*/
DROP INDEX IDX_FIELD_19;
/*  KEY field_20 (field_20),*/
DROP INDEX IDX_FIELD_20;
/*  KEY field_21 (field_21),*/
DROP INDEX IDX_FIELD_21;
/*  KEY field_22 (field_22),*/
DROP INDEX IDX_FIELD_22;
/*  KEY field_23 (field_23),*/
DROP INDEX IDX_FIELD_23;
/*  KEY field_24 (field_24),*/
DROP INDEX IDX_FIELD_24;
/*  KEY field_25 (field_25),*/
DROP INDEX IDX_FIELD_25;
/*  KEY field_26 (field_26),*/
DROP INDEX IDX_FIELD_26;
/*  KEY field_27 (field_27),*/
DROP INDEX IDX_FIELD_27;
/*  KEY field_28 (field_28),*/
DROP INDEX IDX_FIELD_28;
/*  KEY field_29 (field_29),*/
DROP INDEX IDX_FIELD_29;
/*  KEY field_30 (field_30),*/
DROP INDEX IDX_FIELD_30;
/*  KEY field_31 (field_31),*/
DROP INDEX IDX_FIELD_31;
/*  KEY field_32 (field_32),*/
DROP INDEX IDX_FIELD_32;
/*  KEY field_33 (field_33),*/
DROP INDEX IDX_FIELD_33;
/*  KEY field_34 (field_34),*/
DROP INDEX IDX_FIELD_34;
/*  KEY field_35 (field_35),*/
DROP INDEX IDX_FIELD_35;
/*  KEY field_36 (field_36),*/
DROP INDEX IDX_FIELD_36;
/*  KEY field_37 (field_37),*/
DROP INDEX IDX_FIELD_37;
/*  KEY field_38 (field_38),*/
DROP INDEX IDX_FIELD_38;
/*  KEY field_39 (field_39),*/
DROP INDEX IDX_FIELD_39;
/*  KEY field_40 (field_40),*/
DROP INDEX IDX_FIELD_40;
/*  KEY field_41 (field_41),*/
DROP INDEX IDX_FIELD_41;
/*  KEY field_42 (field_42),*/
DROP INDEX IDX_FIELD_42;
/*  KEY field_43 (field_43),*/
DROP INDEX IDX_FIELD_43;
/*  KEY field_44 (field_44),*/
DROP INDEX IDX_FIELD_44;
/*  KEY field_45 (field_45),*/
DROP INDEX IDX_FIELD_45;
/*  KEY field_46 (field_46),*/
DROP INDEX IDX_FIELD_46;
/*  KEY field_47 (field_47),*/
DROP INDEX IDX_FIELD_47;
/*  KEY field_48 (field_48),*/
DROP INDEX IDX_FIELD_48;
/*  KEY field_49 (field_49),*/
DROP INDEX IDX_FIELD_49;
/*  KEY field_50 (field_50)*/
DROP INDEX IDX_FIELD_50;

/* TABLE: fault_report_detail_multiple*/
/*  KEY fault_report_struct_detail (fault_report_struct_detail)*/
DROP INDEX IDX_FAULT_REPORT_STRUCT_DTL;

/* TABLE: fault_report_provider*/
/*  KEY fault_report_provider_type (fault_report_provider_type),*/
DROP INDEX IDX_FAULT_REPORT_PRVIDER_TP;
/*  KEY name (name),*/
DROP INDEX IDX_NAME_B;
/*  KEY phone (phone),*/
DROP INDEX IDX_PHONE;
/*  KEY email (email),*/
DROP INDEX IDX_EMAIL_A;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_B;

/* TABLE: fault_report_provider_type*/
/*  KEY name (name)*/
DROP INDEX IDX_NAME_C;

/* TABLE: fault_report_responsible*/
/*  KEY fault_report_provider (fault_report_provider),*/
DROP INDEX IDX_FAULT_REPORT_PROVIDER;
/*  KEY login (login),*/
DROP INDEX IDX_LOGIN_A;
/*  KEY alt_address (alt_address),*/
DROP INDEX IDX_ALT_ADDRESS;
/*  KEY alt_phone (alt_phone),*/
DROP INDEX IDX_ALT_PHONE;
/*  KEY alt_email (alt_email),*/
DROP INDEX IDX_ALT_EMAIL;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_C;

/* TABLE: fault_report_state*/
/*  KEY name (name)*/
DROP INDEX IDX_NAME_D;

/* TABLE: fault_report_struct*/
/*  KEY fault_report_provider (fault_report_provider),*/
DROP INDEX IDX_FAULT_REPORT_PROVIDER_A;
/*  KEY name (name),*/
DROP INDEX IDX_NAME_E;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_D;

/* TABLE: fault_report_struct_detail*/
/*  KEY fault_report_struct (fault_report_struct),*/
DROP INDEX IDX_FAULT_REPORT_STRUCT;
/*  KEY fault_element_field (fault_element_field),*/
DROP INDEX IDX_FAULT_ELEMENT_FIELD;
/*  KEY field_name (field_name),*/
DROP INDEX IDX_FIELD_NAME_A;
/*  KEY field_label (field_label),*/
DROP INDEX IDX_FIELD_LABEL;
/*  KEY parameter_name (parameter_name),*/
DROP INDEX IDX_PARAMETER_NAME;
/*  KEY parameter_type (parameter_type),*/
DROP INDEX IDX_PARAMETER_TYPE;
/*  KEY mandatory (mandatory)*/
DROP INDEX IDX_MANDATORY;

/* TABLE: fifo_exception*/
/*  UNIQUE KEY name (name)*/
ALTER TABLE fifo_exception DROP CONSTRAINT NAME;

/* TABLE: fifo_exception_registry*/
/*  KEY fifo_exception_registry_order_type (order_type),*/
DROP INDEX IDX_FIFO_EXC_REG_ORD_TYPE;
/*  KEY fifo_exception_registry_order_number (order_number),*/
DROP INDEX IDX_FIFO_EXC_REG_ORD_NUM;
/*  KEY fifo_exception_registry_element (element),*/
DROP INDEX IDX_FIFO_EXC_REG_ELEM;
/*  KEY fifo_exception_registry_fifo_exception (fifo_exception),*/
DROP INDEX IDX_FIFO_EXC_REG_FIFO_EXC;
/*  KEY fifo_exception_registry_login (login)*/
DROP INDEX IDX_FIFO_EXC_REG_LOGIN;

/* TABLE: forgotten_password*/

/* TABLE: functional_unit*/

/* TABLE: functional_unit_description*/
/*  UNIQUE KEY functional_unit_unique_index (keyword)*/
ALTER TABLE functional_unit_description DROP CONSTRAINT FUNCT_UNIT_UNIQUE_INDEX;

/* TABLE: functional_unit_descrip_line*/
/*  KEY functional_unit_description_line_unit_id_idx (unit_id),*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_UNIT_ID;
/*  KEY functional_unit_description_line_model_1_id_idx (model_1_id),*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_MOD_1_ID;
/*  KEY functional_unit_description_line_model_2_id_idx (model_2_id),*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_MOD_2_ID;
/*  KEY functional_unit_description_line_model_3_id_idx (model_3_id),*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_MOD_3_ID;
/*  KEY functional_unit_description_line_model_4_id_idx (model_4_id),*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_MOD_4_ID;
/*  KEY functional_unit_description_line_model_5_id_idx (model_5_id)*/
DROP INDEX IDX_FUNCT_UNIT_DES_L_MOD_5_ID;

/* TABLE: functional_unit_detail*/

/* TABLE: functional_unit_remaining*/

/* TABLE: functional_unit_report*/

/* TABLE: functional_unit_x_invoice*/

/* TABLE: geographic_location*/
/*  KEY geographic_location_users_fk (responsible_user),*/
DROP INDEX IDX_GEO_LOCATION_USERS;
/*  KEY geographic_location_region_fk (region),*/
DROP INDEX IDX_GEO_LOCATION_REGION;
/*  KEY geographic_location_name_idx (name),*/
DROP INDEX IDX_GEO_LOCATION_NAME;
/*  KEY geographic_location_deleted_idx (deleted),*/
DROP INDEX IDX_GEO_LOCATION_DEL;
/*  KEY geographic_location_deleted_by_user_idx (deleted_by_user)*/
DROP INDEX IDX_GEO_LOCATION_DEL_BY_USER;

/* TABLE: history_action*/

/* TABLE: incoterm*/

/* TABLE: infrastructure_element*/
/*  KEY invoice_infrastructure_element_fk (invoice),*/
DROP INDEX IDX_INVOICE_INFRA_ELEM;
/*  KEY users_infrastructure_element_fk (create_user),*/
DROP INDEX IDX_USERS_INFRA_ELEM;
/*  KEY users_update_infrastructure_element_fk (update_user),*/
DROP INDEX IDX_USERS_UPDATE_INFRA_ELEM;
/*  KEY location_infrastructure_element_fk (location),*/
DROP INDEX IDX_LOCATION_INFRA_ELEM;
/*  KEY element_type_asset_infrastructure_element_fk (element_type_asset),*/
DROP INDEX IDX_ELEM_TYPE_ASST_INFRA_ELEM;
/*  KEY infrastructure_model_infrastructure_element_fk (infrastructure_model),*/
DROP INDEX IDX_INFRA_MOD_INFRA_ELEM;
/*  KEY infrastructure_element_purchase_order_number_idx (purchase_order_number),*/
DROP INDEX IDX_INFRA_ELEM_PURCHASE_ORD;
/*  KEY infrastructure_element_temporal_fixed_asset_number_idx (temporal_fixed_asset_number),*/
DROP INDEX IDX_INFRA_ELEM_TMP_FIX_ASSET;
/*  KEY infrastructure_element_fixed_asset_number_idx (fixed_asset_number),*/
DROP INDEX IDX_INFRA_ELEM_FIX_ASSET_NUM;
/*  KEY infrastructure_element_deleted_idx (deleted)*/
DROP INDEX IDX_INFRA_ELEM_DEL;

/* TABLE: infrastructure_element_his*/
/*  KEY infrastructure_element (infrastructure_element),*/
DROP INDEX IDX_INFRASTRUCTURE_ELEMENT;
/*  KEY history_date (history_date),*/
DROP INDEX IDX_HISTORY_DATE;
/*  KEY history_time (history_time),*/
DROP INDEX IDX_HISTORY_TIME;
/*  KEY action (action),*/
DROP INDEX IDX_ACTION;
/*  KEY detailed_type (detailed_type),*/
DROP INDEX IDX_DETAILED_TYPE;
/*  KEY support_code (support_code),*/
DROP INDEX IDX_SUPPORT_CODE;
/*  KEY support_table (support_table),*/
DROP INDEX IDX_SUPPORT_TABLE;
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_F;
/*  KEY invoice (invoice),*/
DROP INDEX IDX_INVOICE;
/*  KEY millicom_code (millicom_code),*/
DROP INDEX IDX_MILLICOM_CODE;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_E;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_E;
/*  KEY purchase_order_number (purchase_order_number),*/
DROP INDEX IDX_PURCHASE_ORDER_NUMBER;
/*  KEY temporal_fixed_asset_number (temporal_fixed_asset_number),*/
DROP INDEX IDX_TMP_FIX_ASSET_NUM;
/*  KEY fixed_asset_number (fixed_asset_number),*/
DROP INDEX IDX_FIXED_ASSET_NUMBER;
/*  KEY infrastructure_model (infrastructure_model),*/
DROP INDEX IDX_INFRASTRUCTURE_MODEL;
/*  KEY date_capitalization (date_capitalization)*/
DROP INDEX IDX_DATE_CAPITALIZATION;

/* TABLE: infrastructure_model*/
/*  KEY element_type_asset_infrastructure_model_fk (default_element_type_asset),*/
DROP INDEX IDX_ELEM_TYPE_ASSET_INFRA_MOD;
/*  KEY infrastructure_model_is_asset_idx (is_asset),*/
DROP INDEX IDX_INFRA_MOD__ASSET;
/*  KEY infrastructure_model_codex (code)*/
DROP INDEX IDX_INFRA_MOD_CDX;

/* TABLE: internal_location*/
/*  UNIQUE KEY internal_location_tigo_code_uidx (tigo_code,location),*/
ALTER TABLE internal_location DROP CONSTRAINT INTERNAL_LOCATION_TIGO;
/*  KEY internal_location_location_idx (location)*/
DROP INDEX IDX_INTERNAL_LOCATION_LOCT;

/* TABLE: inventory*/

/* TABLE: inventory_alarm*/
/*  KEY inventory_alarm_element_model_idx (element_model)*/
DROP INDEX IDX_INV_ALARM_ELEM_MOD;

/* TABLE: inventory_alarm_users*/
/*  KEY inventory_alarm_users_inventory_alarm_idx (inventory_alarm),*/
DROP INDEX IDX_INV_ALARM_USERS_INV_ALARM;
/*  KEY inventory_alarm_users_user_login_idx (user_login)*/
DROP INDEX IDX_INV_ALARM_USERS_USER_LOG;

/* TABLE: inventory_by_models*/
/*  KEY inventory_by_models_id_inventory_elements_idx (id_inventory_elements),*/
DROP INDEX IDX_INV_BY_MODS_ID_INV_ELEMS;
/*  KEY inventory_by_models_id_model_idx (id_model)*/
DROP INDEX IDX_INV_BY_MODS_ID_MOD;

/* TABLE: inventory_elements*/

/* TABLE: inventory_elements_detail*/
/*  KEY inventory_elements_detail_id_inventory_elements_idx (id_inventory_elements)*/
DROP INDEX IDX_INV_ELEMS_DTL_ID_INV_ELEM;

/* TABLE: invtory_elem_download_report*/

/* TABLE: inventory_elements_process*/

/* TABLE: invtory_proc_elem_difference*/
/*  KEY i_p_e_d_inventory_elements_process_idx (inventory_elements_process),*/
DROP INDEX IDX_I_P_E_D_INV_ELEMS_PCS;
/*  KEY inventory_process_elements_difference_element_model_idx (element_model)*/
DROP INDEX IDX_INV_PCS_ELEMS_DIFFERENCE;

/* TABLE: invtory_proc_elem_n_processed*/
/*  KEY i_p_e_no_processed_inventory_elements_process_idx (inventory_elements_process),*/
DROP INDEX IDX_I_P_E_NO_PCSED_INV_ELEMS;
/*  KEY inventory_process_elements_no_processed_id_element_idx (id_element),*/
DROP INDEX IDX_INV_PCS_ELEMS_NO_PCSED_I;
/*  KEY inventory_process_elements_no_processed_element_model_idx (element_model)*/
DROP INDEX IDX_INV_PCS_ELEMS_NO_PCSED_E;

/* TABLE: inventory_process_elements_ok*/
/*  KEY inventory_process_elements_ok_inventory_elements_process_idx (inventory_elements_process),*/
DROP INDEX IDX_INV_PCS_ELEMS_OK_INV;
/*  KEY inventory_process_elements_ok_id_element_idx (id_element),*/
DROP INDEX IDX_INV_PCS_ELEMS_OK_ID_ELEM;
/*  KEY inventory_process_elements_ok_element_model_idx (element_model)*/
DROP INDEX IDX_INV_PCS_ELEMS_OK_ELEM_MOD;

/* TABLE: invtory_unknown_int_locations*/
/*  KEY inventory_unknown_int_locations_inventory_elements_process_idx (inventory_elements_process)*/
DROP INDEX IDX_INV_UKNOW_INT_LOCATIONS;

/* TABLE: investment_item*/

/* TABLE: invoice*/

/* TABLE: invoice_detail*/
/*  KEY invoice_detail_element_model_idx (element_model)*/
DROP INDEX IDX_INVCE_DTL_ELEM_MOD;

/* TABLE: invoice_detail_type*/

/* TABLE: invoice_template*/

/* TABLE: invoice_template_detail*/
/*  KEY invoice_template_detail_element_model_idx (element_model)*/
DROP INDEX IDX_INVCE_TEMPL_DTL_ELEM_MD;

/* TABLE: laicon_configuration*/

/* TABLE: laicon_inventory_register*/
/*  KEY laicon_inventory_register_inventory_elements_process_idx (inventory_elements_process)*/
DROP INDEX IDX_LAI_INV_REG_INV_ELEMS_PCS;

/* TABLE: laicon_invtory_reg_unknown*/
/*  KEY laicon_inventory_register_unknown_inventory_elements_process_idx (inventory_elements_process),*/
DROP INDEX IDX_LAI_INV_REG_UKNOW_INV;
/*  KEY laicon_inventory_register_unknown_id_element_idx (id_element),*/
DROP INDEX IDX_LAI_INV_REG_UKNOW_ID_ELEM;
/*  KEY laicon_inventory_register_unknown_element_model_idx (element_model)*/
DROP INDEX IDX_LAI_INV_REG_UKNOW_ELEM_MD;

/* TABLE: location*/
/*  KEY location_deleted_idx (deleted),*/
DROP INDEX IDX_LOCATION_DELETED_IDX;
/*  KEY location_geographic_location_fk (geographic_location),*/
DROP INDEX IDX_LOCATION_GEO_LOCATION;
/*  KEY location_is_visible_idx (is_visible)*/
DROP INDEX IDX_LOCATION_IS_VISIBLE_IDX;

/* TABLE: location_type*/

/* TABLE: log*/
/*  KEY idx_logDate (log_date)*/
DROP INDEX IDX_IDX_LOGDATE;

/* TABLE: measurement_unit*/

/* TABLE: mic_batch*/
/*  KEY users_mic_batch_fk (user_creator),*/
DROP INDEX IDX_USERS_MIC_BATCH_FK;
/*  KEY users_mic_batch_updater_fk (user_last_updater),*/
DROP INDEX IDX_USERS_MIC_BATCH_UPDATER;
/*  KEY mic_code_prefix_mic_batch_fk (mic_code_prefix)*/
DROP INDEX IDX_MIC_CD_PREFIX_MIC_BATCH;

/* TABLE: mic_batch_responsible*/
/*  KEY users_mic_batch_responsible_assign_fk (assigned_by_user),*/
DROP INDEX IDX_USRS_MIC_BATCH_RSPONS;
/*  KEY users_mic_batch_responsible_disabled_fk (disabled_by_user),*/
DROP INDEX IDX_USRS_MIC_BATCH_RSPONSIBLE;
/*  KEY mic_batch_mic_batch_responsible_fk (mic_batch)*/
DROP INDEX IDX_MIC_BATCH_RESPONSIBLE;

/* TABLE: mic_code*/
/*  KEY element_mic_code_fk (assigned_element),*/
DROP INDEX IDX_ELEMENT_MIC_CODE_FK;
/*  KEY users_mic_code_fk (assigned_by_user),*/
DROP INDEX IDX_USERS_MIC_CODE_FK;
/*  KEY mic_batch_mic_code_fk (mic_batch),*/
DROP INDEX IDX_MIC_BATCH_MIC_CODE_FK;
/*  KEY mic_code_enabled_idx (enabled)*/
DROP INDEX IDX_MIC_CODE_ENABLED_IDX;

/* TABLE: mic_code_prefix*/

/* TABLE: model_value_change*/
/*  KEY update_date (update_date),*/
DROP INDEX IDX_UPDATE_DATE;
/*  KEY updated (updated)*/
DROP INDEX IDX_UPDATED;

/* TABLE: model_x_category_asset*/
/*  KEY element_category_asset_model_x_category_asset_fk (element_category_asset),*/
DROP INDEX IDX_ELEM_CATEGORY_ASSET_MOD_X;
/*  KEY model_x_category_asset_element_model_idx (element_model)*/
DROP INDEX IDX_MOD_X_CATEGORY_ASSET_ELEM;

/* TABLE: model_x_type_asset*/
/*  KEY element_type_asset_model_x_type_asset_fk (element_type_asset),*/
DROP INDEX IDX_ELEM_TYPE_ASSET_MOD_X;
/*  KEY model_x_type_asset_element_model_idx (element_model)*/
DROP INDEX IDX_MOD_X_TYPE_ASSET_ELEM_MOD;

/* TABLE: movement_quota*/
/*  KEY movement_quota_warehouse_idx (warehouse),*/
DROP INDEX IDX_MOVEMENT_QUOTA_WH;
/*  KEY movement_quota_element_model_idx (element_model),*/
DROP INDEX IDX_MOVEMENT_QUOTA_ELEM_MOD;
/*  KEY movement_quota_region_idx (region)*/
DROP INDEX IDX_MOVEMENT_QUOTA_REGION;

/* TABLE: movement_report*/

/* TABLE: msc*/

/* TABLE: nationalization*/

/* TABLE: nationalization_place*/
/*  KEY nationalization_place_deleted_idx (deleted),*/
DROP INDEX IDX_NATIONAL_PLACE_DEL;
/*  KEY nationalization_place_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_NATIONAL_PLACE_GEO_LOCT;

/* TABLE: no_attended_spare_part*/
/*  KEY no_attended_spare_state (no_attended_spare_state),*/
DROP INDEX IDX_NO_ATTENDED_SPARE_STATE;
/*  KEY damaged_element_id (damaged_element_id),*/
DROP INDEX IDX_DAMAGED_ELEMENT_ID;
/*  KEY damaged_element_model (damaged_element_model),*/
DROP INDEX IDX_DAMAGED_ELEMENT_MODEL;
/*  KEY region (region),*/
DROP INDEX IDX_REGION;
/*  KEY no_attended_user (no_attended_user),*/
DROP INDEX IDX_NO_ATTENDED_USER;
/*  KEY no_attended_date (no_attended_date),*/
DROP INDEX IDX_NO_ATTENDED_DATE;
/*  KEY element_order_type (element_order_type),*/
DROP INDEX IDX_ELEMENT_ORDER_TYPE;
/*  KEY element_order_number (element_order_number)*/
DROP INDEX IDX_ELEMENT_ORDER_NUMBER;

/* TABLE: no_attended_spare_state*/
/*  KEY name (name)*/
DROP INDEX IDX_NAME_F;

/* TABLE: operation_document*/

/* TABLE: operation_document_comment*/

/* TABLE: operation_document_x_invoice*/
/*  KEY operation_document_x_invoice_invoice (invoice),*/
DROP INDEX IDX_OPERATION_DOCUMENT_INVCE;
/*  KEY operation_document_x_invoice_operation_document (operation_document)*/
DROP INDEX IDX_OPERATION_DOCUMENT_X;

/* TABLE: order_execution_responsible*/
/*  KEY order_execution_responsible_name_idnx (name)*/
DROP INDEX IDX_ORD_EXECUTION_RESPONSIBLE;

/* TABLE: order_priority_type*/
/*  KEY order_priority_type_name_idnx (name)*/
DROP INDEX IDX_ORD_PRIORITY_TYPE_NAME;

/* TABLE: owner_object*/

/* TABLE: piece_box_stowage*/

/* TABLE: plant_center*/

/* TABLE: privilege*/

/* TABLE: profile*/

/* TABLE: profile_privilege*/
/*  KEY profile_privilege_profile_privilege_idx (profile,privilege)*/
DROP INDEX IDX_PFILE_PRIVILEGE_PFILE;

/* TABLE: profile_x_element_structure*/
/*  UNIQUE KEY profile (profile,element_structure),*/
ALTER TABLE profile_x_element_structure DROP CONSTRAINT PROFILE;
/*  KEY profile_x_element_structure_profile (profile),*/
DROP INDEX IDX_PFILE_X_ELEM_STRUC_PFILE;
/*  KEY profile_x_element_structure_element_structure (element_structure)*/
DROP INDEX IDX_PFILE_X_ELEM_STRUC;

/* TABLE: purchase_order*/

/* TABLE: purchase_order_line*/

/* TABLE: purchase_order_request*/

/* TABLE: q_elements_to_sap*/

/* TABLE: quality_inventory*/

/* TABLE: quality_inventory_element*/

/* TABLE: quality_inventory_elem_result*/

/* TABLE: quality_invtory_elem_rslt_dtl*/

/* TABLE: reenabled_element*/
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_F;
/*  KEY millicom_code (millicom_code),*/
DROP INDEX IDX_MILLICOM_CD;
/*  KEY model (model),*/
DROP INDEX IDX_MODEL_E;
/*  KEY element_type_asset (element_type_asset),*/
DROP INDEX IDX_ELEMENT_TYPE_ASSET_H;
/*  KEY element_category_asset (element_category_asset),*/
DROP INDEX IDX_ELEMENT_CATEGORY_ASSET_F;
/*  KEY revived_date (revived_date),*/
DROP INDEX IDX_REVIVED_DATE;
/*  KEY revived_login (revived_login)*/
DROP INDEX IDX_REVIVED_LOGIN;

/* TABLE: reenabled_location*/
/*  KEY location (location),*/
DROP INDEX IDX_LOCATION_G;
/*  KEY revived_date (revived_date),*/
DROP INDEX IDX_REVIVED_DATE_A;
/*  KEY revived_login (revived_login)*/
DROP INDEX IDX_REVIVED_LOGIN_A;

/* TABLE: region*/

/* TABLE: remote_invtory_included_model*/
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_E;

/* TABLE: remote_invtory_inconsistency*/
/*  KEY laicon_location (laicon_location),*/
DROP INDEX IDX_LAICON_LOCATION;
/*  KEY laicon_user_in_charge (laicon_user_in_charge),*/
DROP INDEX IDX_LAICON_USER_IN_CHARGE;
/*  KEY ri_location (ri_location),*/
DROP INDEX IDX_RI_LOCATION_A;
/*  KEY ri_user_in_charge (ri_user_in_charge),*/
DROP INDEX IDX_RI_USER_IN_CHARGE;
/*  KEY element (element),*/
DROP INDEX IDX_ELEMENT_G;
/*  KEY millicom_code (millicom_code),*/
DROP INDEX IDX_MILLICOM_CODE_A;
/*  KEY ri_element_model (ri_element_model),*/
DROP INDEX IDX_RI_ELEMENT_MODEL;
/*  KEY laicon_element_model (laicon_element_model),*/
DROP INDEX IDX_LAICON_ELEMENT_MODEL;
/*  KEY ri_serial (ri_serial),*/
DROP INDEX IDX_RI_SERIAL_A;
/*  KEY laicon_serial (laicon_serial),*/
DROP INDEX IDX_LAICON_SERIAL;
/*  KEY inconsistency_type (inconsistency_type),*/
DROP INDEX IDX_INCONSISTENCY_TYPE;
/*  KEY reporting_days (reporting_days),*/
DROP INDEX IDX_REPORTING_DAYS;
/*  KEY inconsistency_state (inconsistency_state),*/
DROP INDEX IDX_INCONSISTENCY_STATE;
/*  KEY remote_inventory_inconsistency_validation_type_idx (validation_type)*/
DROP INDEX IDX_REMOTE_INV_INCONST_VALID;

/* TABLE: remote_invtory_incnsistncy_ty*/
/*  UNIQUE KEY code (code)*/
ALTER TABLE remote_invtory_incnsistncy_ty DROP CONSTRAINT CODE;

/* TABLE: remote_inventory_location*/
/*  UNIQUE KEY ri_location_code_2 (ri_location_code,laicon_location_code,ri_provider),*/
ALTER TABLE remote_inventory_location DROP CONSTRAINT RI_LOCATION_CODE_2;
/*  KEY ri_location_code (ri_location_code),*/
DROP INDEX IDX_RI_LOCATION_CODE;
/*  KEY laicon_location_code (laicon_location_code),*/
DROP INDEX IDX_LAICON_LOCATION_CODE;
/*  KEY ri_provider (ri_provider)*/
DROP INDEX IDX_RI_PROVIDER;

/* TABLE: remote_inventory_mail_list*/
/*  KEY user_name (user_name),*/
DROP INDEX IDX_USER_NAME;
/*  KEY display_name (display_name),*/
DROP INDEX IDX_DISPLAY_NAME;
/*  KEY email (email),*/
DROP INDEX IDX_EMAIL;
/*  KEY enabled (enabled),*/
DROP INDEX IDX_ENABLED_F;
/*  KEY region (region),*/
DROP INDEX IDX_REGION_A;
/*  KEY remote_inventory_mail_list_receive_no_region_idx (receive_no_region),*/
DROP INDEX IDX_RMTE_INV_MAIL_RECVE_NO_R;
/*  KEY remote_inventory_mail_list_receive_all_region_idx (receive_all_region)*/
DROP INDEX IDX_RMTE_INV_MAIL_RECVE_ALL_R;

/* TABLE: remote_inventory_provider*/
/*  UNIQUE KEY provider_code_2 (provider_code),*/
ALTER TABLE remote_inventory_provider DROP CONSTRAINT PROVIDER_CODE_2;
/*  KEY provider_code (provider_code),*/
DROP INDEX IDX_PROVIDER_CODE;
/*  KEY provider_name (provider_name),*/
DROP INDEX IDX_PROVIDER_NAME;
/*  KEY enabled (enabled),*/
DROP INDEX IDX_ENABLED_G;
/*  KEY remote_inventory_provider_location_in_file_idx (location_in_file)*/
DROP INDEX IDX_REMOTE_INV_PROVIDER_LOCT;

/* TABLE: remote_inventory_temp_element*/
/*  KEY ri_location (ri_location),*/
DROP INDEX IDX_RI_LOCATION;
/*  KEY ri_provider (ri_provider),*/
DROP INDEX IDX_RI_PROVIDER_A;
/*  KEY ri_serial (ri_serial),*/
DROP INDEX IDX_RI_SERIAL;
/*  KEY ri_reference (ri_reference),*/
DROP INDEX IDX_RI_REFERENCE;
/*  KEY ri_creation_date (ri_creation_date),*/
DROP INDEX IDX_RI_CREATION_DATE;
/*  KEY ri_update_date (ri_update_date),*/
DROP INDEX IDX_RI_UPDATE_DATE;
/*  KEY ri_state (ri_state),*/
DROP INDEX IDX_RI_STATE;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_H;

/* TABLE: reverse_costing_by_ws_detail*/
/*  KEY reverse_costing_by_webservice_detail_register_fk (reverse_costing_by_webservice_register),*/
DROP INDEX IDX_REV_COST_BY_WS_DTL_REG;
/*  KEY reverse_costing_by_webservice_detail_element_fk (element)*/
DROP INDEX IDX_REV_COST_BY_WS_DTL_ELEM;

/* TABLE: reverse_costing_by_ws_regist*/
/*  KEY reverse_costing_webservice_register_siscap_login_idx (siscap_login),*/
DROP INDEX IDX_REV_COST_WS_REG_SCP_LOGIN;
/*  KEY reverse_costing_webservice_register_we_number_idx (warehouse_entry_number),*/
DROP INDEX IDX_REV_COST_WS_REG_WE_NUM;
/*  KEY reverse_costing_webservice_register_po_number_idx (purchase_order_number),*/
DROP INDEX IDX_REV_COST_WS_REG_PO_NUM;
/*  KEY reverse_costing_webservice_register_po_line_idx (purchase_order_line)*/
DROP INDEX IDX_REV_COST_WS_REG_PO_LINE;

/* TABLE: Sislog_Elemento_PedidoEntrada*/
/*  KEY Sislog_PedidoEntrada (Sislog_PedidoEntrada),*/
DROP INDEX IDX_SISLOG_PEDIDOENTRADA;
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Modelo (Modelo),*/
DROP INDEX IDX_FK_SLOG_ELEM_PD_IN_MOD;
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Elemento (CodigoLaicon),*/
DROP INDEX IDX_FK_SLOG_ELEM_PD_IN_ELEM;
/*  KEY FK_Sislog_Elemento_PedidoEntrada_ElementoPadre (LaiconIdPadre)*/
DROP INDEX IDX_SLOG_ELEM_PD_IN_ELEMP;

/* TABLE: Sislog_Elemento_PedidoSalida*/
/*  KEY Sislog_PedidoSalida (Sislog_PedidoSalida),*/
DROP INDEX IDX_SISLOG_PEDIDOSALIDA;
/*  KEY FK_Sislog_Elemento_PedidoSalida_Modelo (Modelo),*/
DROP INDEX IDX_FK_SLOG_ELEM_PD_OUT_MOD;
/*  KEY FK_Sislog_Elemento_PedidoSalida_Elemento (CodigoLaicon)*/
DROP INDEX IDX_FK_SLOG_ELEM_PD_OUT_ELEM;

/* TABLE: Sislog_Elemento_Transferencia*/
/*  KEY IdTransaccion (IdTransaccion),*/
DROP INDEX IDX_IDTRANSACCION;
/*  KEY FK_Sislog_Elemento_Transferencia_Modelo (Modelo),*/
DROP INDEX IDX_FK_SLOG_ELEM_TRANSF_MOD;
/*  KEY FK_Sislog_Elemento_Transferencia_Elemento (CodigoLaicon),*/
DROP INDEX IDX_FK_SLOG_ELEM_TRANSF_ELEM;
/*  KEY FK_Sislog_Elemento_Transferencia_ElementoPadre (LaiconIdPadre),*/
DROP INDEX IDX_SLOG_ELEM_TRANSF_ELEMP;
/*  KEY FK_Sislog_Elemento_Transferencia_Estado (Estado)*/
DROP INDEX IDX_FK_SLOG_ELEM_TRANSF_STAT;

/* TABLE: Sislog_PedidoEntrada*/
/*  UNIQUE KEY UQ_Sislog_PedidoEntrada_IdTransaccion (IdTransaccion)*/
ALTER TABLE Sislog_PedidoEntrada DROP CONSTRAINT UQ_SLOG_PD_IN_IDTRANS;

/* TABLE: Sislog_PedidoSalida*/

/* TABLE: Sislog_TransferenciaParcial*/

/* TABLE: Sislog_Warehouse*/
/*  UNIQUE KEY UQ_Sislog_Warehouse_CodigoBodega (CodigoBodega)*/
ALTER TABLE Sislog_Warehouse DROP CONSTRAINT UQ_SLOG_WH_CODIGOBODEGA;

/* TABLE: site*/
/*  KEY site_deleted_idx (deleted),*/
DROP INDEX IDX_SITE_DELETED_IDX;
/*  KEY site_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_SITE_GEO_LOCATION;

/* TABLE: site_type*/

/* TABLE: solve_surplus_alpopular*/

/* TABLE: spare_part_interchange*/
/*  KEY spare_laicon_id (spare_laicon_id),*/
DROP INDEX IDX_SPARE_LAICON_ID;
/*  KEY spare_model (spare_model),*/
DROP INDEX IDX_SPARE_MODEL;
/*  KEY spare_part_interchange_state (spare_part_interchange_state),*/
DROP INDEX IDX_SPARE_PART_INTERCH_STAT;
/*  KEY departure_user (departure_user),*/
DROP INDEX IDX_DEPARTURE_USER;
/*  KEY spare_part_warehouse (spare_part_warehouse),*/
DROP INDEX IDX_SPARE_PART_WAREHOUSE;
/*  KEY direction (direction),*/
DROP INDEX IDX_DIRECTION;
/*  KEY responsible_user (responsible_user),*/
DROP INDEX IDX_RESPONSIBLE_USER;
/*  KEY closing_user (closing_user),*/
DROP INDEX IDX_CLOSING_USER;
/*  KEY spare_serial (spare_serial),*/
DROP INDEX IDX_SPARE_SERIAL;
/*  KEY departure_date (departure_date),*/
DROP INDEX IDX_DEPARTURE_DATE;
/*  KEY closing_date (closing_date),*/
DROP INDEX IDX_CLOSING_DATE;
/*  KEY element_order_type (element_order_type),*/
DROP INDEX IDX_ELEMENT_ORDER_TY;
/*  KEY element_order_number (element_order_number),*/
DROP INDEX IDX_ELEMENT_ORDER_NUM;
/*  KEY pending_days (pending_days)*/
DROP INDEX IDX_PENDING_DAYS;

/* TABLE: spare_part_interchange_detail*/
/*  KEY spare_part_interchange (spare_part_interchange),*/
DROP INDEX IDX_SPARE_PART_INTERCHANGE;
/*  KEY damaged_element_id (damaged_element_id),*/
DROP INDEX IDX_DAMAGED_ELEMENT_ID_A;
/*  KEY dameged_element_model (damaged_element_model),*/
DROP INDEX IDX_DAMEGED_ELEMENT_MODEL;
/*  KEY interchange_user (interchange_user),*/
DROP INDEX IDX_INTERCHANGE_USER;
/*  KEY damaged_element_serial (damaged_element_serial),*/
DROP INDEX IDX_DAMAGED_ELEMENT_SERIAL;
/*  KEY interchange_date (interchange_date),*/
DROP INDEX IDX_INTERCHANGE_DATE;
/*  KEY element_order_type (element_order_type),*/
DROP INDEX IDX_ELEMENT_ORDER_TP;
/*  KEY element_order_number (element_order_number)*/
DROP INDEX IDX_ELEMENT_ORDER_NUM_A;

/* TABLE: spare_part_interchange_state*/
/*  KEY name (name)*/
DROP INDEX IDX_NAME_G;

/* TABLE: spare_part_mail_list*/
/*  KEY spare_part_mail_list_module (spare_part_mail_list_module),*/
DROP INDEX IDX_SPARE_PART_MAIL_LIST_MODU;
/*  KEY enabled (enabled)*/
DROP INDEX IDX_ENABLED_J;

/* TABLE: spare_part_mail_list_module*/

/* TABLE: spare_part_maintenance_zone*/

/* TABLE: spare_part_om_director*/
/*  UNIQUE KEY region (region)*/
ALTER TABLE spare_part_om_director DROP CONSTRAINT REGION;

/* TABLE: spare_part_warehouse*/

/* TABLE: spare_part_warehouse_type*/

/* TABLE: stealed_element_location*/
/*  KEY stealed_element_location_deleted_idx (deleted),*/
DROP INDEX IDX_STEALED_ELEM_LOCATION_DEL;
/*  KEY stealed_element_location_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_STED_ELEM_LOCT_GEO_LOCT;

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
DROP INDEX IDX_USER_PFILE_LOGIN_PFILE;

/* TABLE: users*/
/*  UNIQUE KEY login_mobile (login_mobile),*/
ALTER TABLE users DROP CONSTRAINT LOGIN_MOBILE;
/*  KEY login_sap_idx (login_sap)*/
DROP INDEX IDX_LOGIN_SAP_IDX;

/* TABLE: value_data*/

/* TABLE: vendor*/

/* TABLE: warehouse*/
/*  KEY warehouse_deleted_idx (deleted),*/
DROP INDEX IDX_WAREHOUSE_DELETED_IDX;
/*  KEY warehouse_geographic_location_fk (geographic_location)*/
DROP INDEX IDX_WH_GEO_LOCATION;

/* TABLE: warehouse_entry*/

/* TABLE: warehouse_entry_detail*/

/* TABLE: warehouse_keeper*/

/* TABLE: warehouse_request*/

/* TABLE: we_request_category*/

/* TABLE: we_request_type*/

/* TABLE: we_status*/

/* TABLE: xelement_price*/
