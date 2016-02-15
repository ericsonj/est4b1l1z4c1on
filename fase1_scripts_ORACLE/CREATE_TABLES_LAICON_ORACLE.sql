/*30-Dic-2015 14:12*/

CREATE TABLE additional_attribute (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_type number(11,0),
  data_type varchar2(50),
  default_value varchar2(100),
  name varchar2(100),
  required number(11,0),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1*/;

CREATE TABLE additional_data (
  model varchar2(50),
  additional_attribute number(11,0),
  value varchar2(100),
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=3917 DEFAULT CHARSET=latin1*/;

CREATE TABLE air_waybill (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  num varchar2(50),
  inventory_date date,
  pieces_quantity number(11,0),
  freightage number(15,3) DEFAULT '0',
  insurance number(15,3) DEFAULT '0',
  expenditure number(15,3) DEFAULT '0',
  currency varchar2(10),
  trm number(15,3),
  nationalization varchar2(1) DEFAULT 'N',
  in_inventory varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=2955 DEFAULT CHARSET=latin1*/;

CREATE TABLE bom (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(80) NOT NULL,
  description varchar2(500),
  model varchar2(50) NOT NULL,
  bom_provider number(11,0) NOT NULL,
  creation_date TIMESTAMP NOT NULL,
  creation_user varchar2(50) NOT NULL,
  update_date TIMESTAMP NOT NULL,
  update_user varchar2(50) NOT NULL,
  state number(11,0) NOT NULL,
  locked varchar2(1) NOT NULL,
  comments varchar2(500),
  id_sap varchar2(20),
  PRIMARY KEY (id)
/*  KEY bom_provider (bom_provider),*/
/*  KEY model (model),*/
/*  KEY name (name),*/
/*  KEY state (state),*/
/*  KEY locked (locked),*/
/*  KEY bom_idx (id),*/
/*  KEY bom_update_user_idx (update_user),*/
/*  KEY bom_creation_user_idx (creation_user),*/
/*  CONSTRAINT bom_ibfk_1 FOREIGN KEY (bom_provider) REFERENCES bom_provider (id) ON DELETE NO ACTION ON UPDATE NO ACTION,*/
/*  CONSTRAINT bom_ibfk_2 FOREIGN KEY (model) REFERENCES element_model (id) ON DELETE NO ACTION ON UPDATE NO ACTION*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE bom_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  bom number(11,0) NOT NULL,
  element_model varchar2(50),
  infrastructure_model varchar2(50),
  is_infrastructure_element varchar2(1) NOT NULL,
  defined_quantity number(15,3) DEFAULT '0',
  unitary_cost_rate number(15,3) DEFAULT '0',
  total_cost_rate number(15,3) DEFAULT '0',
  unitary_nationalization_rate number(15,3) DEFAULT '0',
  total_nationalization_rate number(15,3) DEFAULT '0',
  unitary_installation_rate number(15,3) DEFAULT '0',
  total_installation_rate number(15,3) DEFAULT '0',
  unitary_intangible_rate number(15,3) DEFAULT '0',
  total_intangible_rate number(15,3) DEFAULT '0',
  line_sap varchar2(8),
  export_sap varchar2(2),
  PRIMARY KEY (id)
/*  KEY element_model (element_model),*/
/*  KEY infrastructure_model (infrastructure_model),*/
/*  KEY bom (bom),*/
/*  KEY is_infrastructure_element (is_infrastructure_element),*/
/*  KEY bom_detail_line_sap_idx (line_sap),*/
/*  KEY bom_detail_export_sap_idx (export_sap)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE bom_provider (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(500),
  PRIMARY KEY (id)
/*  KEY name (name)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE bts_technology_type (
  id varchar2(50) NOT NULL,
  type varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE capit_by_ws_detail (
  capit_by_ws_regstr number(11,0) NOT NULL,
  element number(11,0) NOT NULL
/*  KEY capitalize_by_webservice_detail_register_fk (capitalize_by_webservice_register),*/
/*  KEY capitalize_by_webservice_detail_element_fk (element)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE capit_by_ws_regstr (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  siscap_login varchar2(50) NOT NULL,
  process_date TIMESTAMP NOT NULL,
  siscap_capitalization_report number(11,0) NOT NULL,
  number_of_valid_registries number(11,0) NOT NULL,
  PRIMARY KEY (id)
/*  KEY capitalize_by_webservice_register_siscap_login_idx (siscap_login),*/
/*  KEY capitalize_by_webservice_register_capitalization_report_idx (siscap_capitalization_report)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1*/;

CREATE TABLE capit_by_workbook_detail (
  capit_by_workbook_register number(11,0) NOT NULL,
  element number(11,0) NOT NULL
/*  KEY capit_by_workbook_detail_capitalize_by_workbook_register_fk (capitalize_by_workbook_register),*/
/*  KEY capit_by_workbook_detail_element_fk (element)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE capit_by_workbook_register (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  user_login varchar2(50) NOT NULL,
  process_date TIMESTAMP NOT NULL,
  file_name varchar2(255) NOT NULL,
  file_md5sum varchar2(50) NOT NULL,
  number_of_valid_registries number(11,0) NOT NULL,
  PRIMARY KEY (id)
/*  KEY capitalize_by_workbook_register_users_fk (user_login)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1*/;

CREATE TABLE car (
  code varchar2(20) NOT NULL,
  description varchar2(255),
  value number(15,3),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CAR'*/;

CREATE TABLE car_line (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  car_code varchar2(20) NOT NULL,
  description varchar2(255) NOT NULL,
  quantity number(11,0),
  value number(15,3) NOT NULL,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CAR LINE'*/;


CREATE TABLE crossing_elements_process (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  crossing_type varchar2(20) NOT NULL,
  crossing_date TIMESTAMP NOT NULL,
  crossing_login varchar2(50) NOT NULL,
  crossing_state varchar2(20) NOT NULL,
  crossing_commentaries varchar2(500),
  approve_login varchar2(50),
  approve_date TIMESTAMP,
  reject_login varchar2(50),
  reject_date TIMESTAMP,
  PRIMARY KEY (id)
/*  KEY crossing_login (crossing_login),*/
/*  KEY approve_login (approve_login),*/
/*  KEY reject_login (reject_login),*/
/*  KEY crossing_type (crossing_type),*/
/*  KEY crossing_date (crossing_date),*/
/*  KEY crossing_state (crossing_state),*/
/*  KEY approve_date (approve_date),*/
/*  KEY reject_date (reject_date)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1*/;

CREATE TABLE cross_elem_process_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  crossing_elements_process number(11,0) NOT NULL,
  element_missing number(11,0),
  element_model_missing varchar2(50),
  location_missing varchar2(50),
  serial_missing varchar2(100),
  millicom_code_missing varchar2(150),
  element_type_asset_missing number(11,0),
  element_category_asset_missing number(11,0),
  is_asset_missing varchar2(1) DEFAULT 'N',
  asset_cop_value_missing number(15,3),
  asset_usd_value_missing number(15,3),
  asset_trm_missing number(15,3),
  national_cop_value_missing number(15,3),
  national_usd_value_missing number(15,3),
  nationalization_trm_missing number(15,3),
  date_capitalization_missing date,
  element_new number(11,0),
  element_model_new varchar2(50),
  location_new varchar2(50),
  serial_new varchar2(100),
  millicom_code_new varchar2(150),
  element_type_asset_new number(11,0),
  element_category_asset_new number(11,0),
  is_asset_new varchar2(1) DEFAULT 'N',
  asset_cop_value_new number(15,3),
  asset_usd_value_new number(15,3),
  asset_trm_new number(15,3),
  nationalization_cop_value_new number(15,3),
  nationalization_usd_value_new number(15,3),
  nationalization_trm_new number(15,3),
  date_capitalization_new date,
  crossing_element_state varchar2(20) NOT NULL,
  crossing_process_comment varchar2(255),
  quantity number(15,3),
  approval_comments varchar2(250),
  PRIMARY KEY (id)
/*  KEY crossing_elements_process (crossing_elements_process),*/
/*  KEY element_missing (element_missing),*/
/*  KEY element_model_missing (element_model_missing),*/
/*  KEY location_missing (location_missing),*/
/*  KEY element_type_asset_missing (element_type_asset_missing),*/
/*  KEY element_category_asset_missing (element_category_asset_missing),*/
/*  KEY element_new (element_new),*/
/*  KEY element_model_new (element_model_new),*/
/*  KEY location_new (location_new),*/
/*  KEY element_type_asset_new (element_type_asset_new),*/
/*  KEY element_category_asset_new (element_category_asset_new),*/
/*  KEY serial_missing (serial_missing),*/
/*  KEY millicom_code_missing (millicom_code_missing),*/
/*  KEY is_asset_missing (is_asset_missing),*/
/*  KEY serial_new (serial_new),*/
/*  KEY millicom_code_new (millicom_code_new),*/
/*  KEY is_asset_new (is_asset_new),*/
/*  KEY crossing_element_state (crossing_element_state)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=4425 DEFAULT CHARSET=latin1*/;

CREATE TABLE currency (
  code varchar2(10) DEFAULT '',
  description varchar2(100),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CURRENCY'*/;

CREATE TABLE desktop_inventory (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  date_download TIMESTAMP,
  location varchar2(50),
  login varchar2(50),
  date_upload TIMESTAMP,
  state number(11,0),
  processed_user varchar2(50),
  processed_date TIMESTAMP,
  reschedule varchar2(1) DEFAULT 'n',
  rescheduled_by_user varchar2(50),
  rescheduled_registry_date TIMESTAMP,
  desktop_inventory_grouping number(11,0),
  has_partial_inventory varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY location (location),*/
/*  KEY processed_user (processed_user),*/
/*  KEY login (login),*/
/*  KEY rescheduled_by_user (rescheduled_by_user),*/
/*  KEY desktop_inventory_state_idx (state),*/
/*  KEY desktop_inventory_reschedule_idx (reschedule),*/
/*  KEY desktop_inventory_desktop_inventory_grouping_fk (desktop_inventory_grouping),*/
/*  KEY has_partial_inventory (has_partial_inventory)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=21832 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_invtory_admin_warehouse (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  warehouse_code varchar2(50) NOT NULL,
  last_update_user varchar2(50),
  last_update_date TIMESTAMP,
  comments varchar2(500),
  enabled varchar2(1) DEFAULT 'Y',
  inventory_nfa varchar(1) DEFAULT 'Y',
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_invtory_auto_resolv_miss (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  desktop_inventory number(11,0) NOT NULL,
  dktp_inv_proc_rslt_dtl number(11,0) NOT NULL,
  element number(11,0) NOT NULL,
  login varchar2(50) NOT NULL,
  resolve_datetime TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
/*  KEY element (element),*/
/*  KEY login (login)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_elem (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  model varchar2(50) NOT NULL,
  location varchar2(50) NOT NULL,
  internal_location_id number(11,0),
  element number(11,0) NOT NULL,
  desktop_inventory number(11,0) NOT NULL,
  serial varchar2(100),
  quantity number(15,3),
  millicom_code varchar2(150),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  old_millicom_code varchar2(150),
  dktp_inv_parcial_inventory number(11,0),
  PRIMARY KEY (id)
/*  KEY model (model),*/
/*  KEY location (location),*/
/*  KEY element (element),*/
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY desktop_inventory_element_serial_idx (serial),*/
/*  KEY desktop_inventory_element_millicom_code_idx (millicom_code),*/
/*  KEY desktop_inventory_element_is_asset_idx (is_asset),*/
/*  KEY desktop_inventory_element_old_millicom_code_idx (old_millicom_code),*/
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2685761 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_invtory_elem_result (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  dktp_inv_elem number(11,0),
  element number(11,0),
  location varchar2(50),
  model varchar2(50) NOT NULL,
  desktop_inventory number(11,0),
  serial varchar2(100),
  quantity number(15,3),
  millicom_code varchar2(150),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  comments varchar2(4000),
  state number(11,0),
  login varchar2(50),
  internal_location_id number(11,0) DEFAULT '0',
  dktp_inv_parcial_inventory number(11,0),
  PRIMARY KEY (id)
/*  KEY location (location),*/
/*  KEY model (model),*/
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY dktp_inv_elem (desktop_inventory_element),*/
/*  KEY element (element),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY desktop_inventory_element_result_serial_idx (serial),*/
/*  KEY desktop_inventory_element_result_millicom_code_idx (millicom_code),*/
/*  KEY desktop_inventory_element_result_is_asset_idx (is_asset),*/
/*  KEY desktop_inventory_element_result_state_idx (state),*/
/*  KEY internal_location_id (internal_location_id),*/
/*  KEY dktp_inv_parcial_inventory (dktp_inv_parcial_inventory)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2813378 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_invtory_excluded_field (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  desktop_inventory_grouping number(11,0),
  field_code varchar2(50) NOT NULL,
  field_name varchar2(50) NOT NULL,
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,field_code),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_invtory_excluded_model (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  desktop_inventory_grouping number(11,0) NOT NULL,
  element_model varchar2(50) NOT NULL,
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  UNIQUE KEY desktop_inventory_grouping (desktop_inventory_grouping,element_model),*/
/*  KEY element_model (element_model),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1*/;

CREATE TABLE desktop_inventory_grouping (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  grouping_name varchar2(50) NOT NULL,
  description varchar2(255),
  is_active varchar2(1) NOT NULL,
  is_default varchar2(1) DEFAULT 'N',
  restrict_inv_screen_field varchar2(1) DEFAULT 'N',
  solve_miss_only_field_service varchar2(1) DEFAULT 'N',
  validate_upload_terminal_files varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY is_active (is_active),*/
/*  KEY is_default (is_default),*/
/*  KEY desktop_inventory_grouping_restrict_inventory_screen_fields_idx (restrict_inventory_screen_fields),*/
/*  KEY desktop_inventory_grouping_solve_missing_only_field_service_idx (solve_missing_only_field_service),*/
/*  KEY validate_upload_terminal_files (validate_upload_terminal_files)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_parcial_inventory (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  desktop_inventory number(11,0),
  dktp_invtory_admin_warehouse number(11,0),
  internal_location number(11,0),
  partial_download_user varchar2(50),
  partial_download_date TIMESTAMP,
  partial_upload_user varchar2(50),
  partial_upload_date TIMESTAMP,
  PRIMARY KEY (id)
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY dktp_invtory_admin_warehouse (desktop_inventory_admin_warehouse),*/
/*  KEY internal_location (internal_location),*/
/*  KEY partial_download_user (partial_download_user),*/
/*  KEY partial_download_date (partial_download_date),*/
/*  KEY partial_upload_user (partial_upload_user),*/
/*  KEY partial_upload_date (partial_upload_date)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=9251 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  desktop_inventory number(11,0) NOT NULL,
  dktp_inv_elem number(11,0),
  dktp_invtory_elem_result number(11,0),
  process_result_state varchar2(50) NOT NULL,
  process_result_type varchar2(50) NOT NULL,
  detail varchar2(500),
  complete_description varchar2(500),
  commentaries clob,
  dktp_inv_parcial_inventory number(11,0),
  PRIMARY KEY (id)
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY dktp_inv_elem (desktop_inventory_element),*/
/*  KEY dktp_invtory_elem_result (desktop_inventory_element_result),*/
/*  KEY process_result_state (process_result_state),*/
/*  KEY process_result_type (process_result_type),*/
/*  KEY di_process_result_detail_partial_inventory_idx (dktp_inv_parcial_inventory)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2871856 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_dif_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  dktp_inv_elem number(11,0),
  element number(11,0) NOT NULL,
  location varchar2(50),
  model varchar2(50) NOT NULL,
  desktop_inventory number(11,0) NOT NULL,
  serial varchar2(100),
  quantity number(15,3),
  millicom_code varchar2(150),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  comments varchar2(4000),
  dktp_inv_proc_rslt_dtl number(11,0) NOT NULL,
  check_field_service_login varchar2(50),
  check_field_service_date TIMESTAMP,
  chk_invtory_responsible_login varchar2(50),
  chk_invtory_responsible_date TIMESTAMP,
  internal_location_id number(11,0) DEFAULT '0',
  miss_elem_creat_for_part_diff number(11,0),
  PRIMARY KEY (id)
/*  KEY dktp_inv_elem (desktop_inventory_element),*/
/*  KEY element (element),*/
/*  KEY location (location),*/
/*  KEY model (model),*/
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
/*  KEY check_field_service_login (check_field_service_login),*/
/*  KEY chk_invtory_responsible_login (check_inventory_responsible_login),*/
/*  KEY process_result_diff_detail_serial_idx (serial),*/
/*  KEY process_result_diff_detail_millicom_code_idx (millicom_code),*/
/*  KEY process_result_diff_detail_is_asset_idx (is_asset),*/
/*  KEY internal_location_id (internal_location_id),*/
/*  KEY di_process_diff_detail_missing_element_created_idx (missing_element_created_for_partial_diff)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=181623 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_miss_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  dktp_inv_elem number(11,0) NOT NULL,
  element number(11,0) NOT NULL,
  location varchar2(50) NOT NULL,
  model varchar2(50) NOT NULL,
  desktop_inventory number(11,0) NOT NULL,
  serial varchar2(100),
  quantity number(15,3),
  millicom_code varchar2(150),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  comments varchar2(4000),
  dktp_inv_proc_rslt_dtl number(11,0),
  solve_pending_unsuscribe_elem varchar2(1) DEFAULT 'N',
  field_service_check_login varchar2(50),
  field_service_check_date TIMESTAMP,
  responsible_check_login varchar2(50),
  responsible_check_date TIMESTAMP,
  internal_location_id number(11,0) DEFAULT '0',
  PRIMARY KEY (id)
/*  KEY dktp_inv_elem (desktop_inventory_element),*/
/*  KEY element (element),*/
/*  KEY location (location),*/
/*  KEY model (model),*/
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
/*  KEY field_service_check_login (field_service_check_login),*/
/*  KEY responsible_check_login (responsible_check_login),*/
/*  KEY process_result_missing_detail_serial_idx (serial),*/
/*  KEY process_result_missing_detail_millicom_code_idx (millicom_code),*/
/*  KEY process_result_missing_detail_is_asset_idx (is_asset),*/
/*  KEY process_result_missing_detail_solve_pending_unsuscribe_idx (solve_pending_unsuscribe_element),*/
/*  KEY internal_location_id (internal_location_id)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=120298 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_nw_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  dktp_inv_elem number(11,0),
  element number(11,0),
  location varchar2(50) NOT NULL,
  model varchar2(50) NOT NULL,
  desktop_inventory number(11,0) NOT NULL,
  serial varchar2(100),
  quantity number(15,3),
  millicom_code varchar2(150),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  comments varchar2(4000),
  dktp_inv_proc_rslt_dtl number(11,0),
  check_login varchar2(50),
  check_date TIMESTAMP,
  match_missing_login varchar2(50),
  match_missing_date TIMESTAMP,
  only_solve_check_login varchar2(50),
  only_solve_check_date TIMESTAMP,
  proc_result_detail_miss_match number(11,0),
  new_elem_assig_asset_cop_val number(15,3),
  new_element_created_id number(11,0),
  internal_location_id number(11,0) DEFAULT '0',
  PRIMARY KEY (id)
/*  KEY dktp_inv_elem (desktop_inventory_element),*/
/*  KEY element (element),*/
/*  KEY location (location),*/
/*  KEY model (model),*/
/*  KEY desktop_inventory (desktop_inventory),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
/*  KEY check_login (check_login),*/
/*  KEY match_missing_login (match_missing_login),*/
/*  KEY proc_result_detail_miss_match (process_result_detail_missing_match),*/
/*  KEY process_result_new_detail_serial_idx (serial),*/
/*  KEY process_result_new_detail_millicom_code_idx (millicom_code),*/
/*  KEY process_result_new_detail_is_asset_idx (is_asset),*/
/*  KEY process_result_new_detail_only_solve_check_login_fk (only_solve_check_login),*/
/*  KEY process_result_new_detail_new_element_created_id (new_element_created_id),*/
/*  KEY internal_location_id (internal_location_id)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=48199 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_state (
  code varchar2(50) NOT NULL,
  description varchar2(250) NOT NULL,
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_proc_rslt_type (
  code varchar2(50) NOT NULL,
  description varchar2(250) NOT NULL,
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_surplus_OT (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  dktp_inv_proc_rslt_dtl number(11,0),
  element_transfer_order number(11,0),
  element_transfer_order_detail number(11,0),
  PRIMARY KEY (id)
/*  KEY dktp_inv_proc_rslt_dtl (desktop_inventory_process_result_detail),*/
/*  KEY element_transfer_order (element_transfer_order),*/
/*  KEY element_transfer_order_detail (element_transfer_order_detail)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=12200 DEFAULT CHARSET=latin1*/;

CREATE TABLE dktp_inv_terminal_model (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_model varchar2(50) NOT NULL,
  enabled varchar2(1) NOT NULL,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1*/;

CREATE TABLE document_type (
  id varchar2(10) NOT NULL,
  type varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  tigo_inventory_code varchar2(50),
  model varchar2(60),
  contract varchar2(50),
  location varchar2(50),
  serial varchar2(100),
  original_serial varchar2(100),
  purchase_price number(15,3),
  warranty_duration number(11,0),
  creation_date TIMESTAMP,
  update_date TIMESTAMP,
  element_state number(11,0),
  quantity number(15,3),
  location_asigned varchar2(50),
  awb number(11,0),
  containing_element number(11,0),
  commentaries varchar2(1000),
  is_spare_part varchar2(5),
  deleted varchar2(1),
  in_movement varchar2(1) DEFAULT 'N',
  quantity_reserved number(15,3),
  control_code varchar2(100),
  inventory varchar2(1) DEFAULT 'N',
  tax number(15,3) DEFAULT '0',
  trm_value number(15,3) DEFAULT '0',
  invoice number(11,0),
  insurance_value number(15,3) DEFAULT '0',
  millicom_code varchar2(150),
  internal_location_id number(11,0),
  source_element number(11,0) DEFAULT '0',
  installation_site_1 varchar2(100),
  installation_site_2 varchar2(100),
  comment_installation_site varchar2(255),
  login_update_installation_site varchar2(50),
  init_unit_val_by_invoice_usd number(15,3) DEFAULT '0',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  asset_cop_value number(15,3),
  asset_usd_value number(15,3),
  asset_trm number(15,3),
  nationalization_cop_value number(15,3),
  nationalization_usd_value number(15,3),
  nationalization_trm number(15,3),
  purchase_order_number varchar2(50),
  wip_temp_fix_asset_number varchar2(50),
  fixed_asset_number varchar2(50),
  fixed_asset_subnumber varchar2(10),
  purchase_order_line varchar2(5),
  warehouse_entry_number varchar2(50),
  car_number varchar2(50),
  is_asset varchar2(1) DEFAULT 'N',
  date_capitalization date,
  nationalization_subnumber varchar2(50),
  old_millicom_code varchar2(150),
  last_inventory_date TIMESTAMP,
  last_inventory_id number(11,0),
  locked varchar2(1),
  piece_box_stowage varchar2(65),
  reenabled varchar2(1),
  element_classification number(11,0),
  import_declaration varchar2(50),
  id_sap varchar2(20),
  subnumber_sap varchar2(20),
  software_cop number(15,3),
  software_usd number(15,3),
  services_cop number(15,3),
  services_usd number(15,3),
  project varchar2(255),
  date_discharged TIMESTAMP,
  PRIMARY KEY (id)
/*  KEY element_deleted_idx (deleted),*/
/*  KEY element_containing_element_idx (containing_element),*/
/*  KEY element_awb_idx (awb),*/
/*  KEY element_tigo_inventory_code_idx (tigo_inventory_code),*/
/*  KEY element_serial_idx (serial),*/
/*  KEY element_location_idx (location),*/
/*  KEY element_model_idx (model),*/
/*  KEY element_internal_location_id_idx (internal_location_id),*/
/*  KEY element_source_element_idx (source_element),*/
/*  KEY element_installation_site_1_idx (installation_site_1),*/
/*  KEY element_installation_site_2_idx (installation_site_2),*/
/*  KEY element_login_update_installation_site_idx (login_update_installation_site),*/
/*  KEY element_in_movement_idx (in_movement),*/
/*  KEY element_type_asset_element_fk (element_type_asset),*/
/*  KEY element_category_asset_element_fk (element_category_asset),*/
/*  KEY element_purchase_order_number_idx (purchase_order_number),*/
/*  KEY element_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
/*  KEY element_fixed_asset_number_idx (fixed_asset_number),*/
/*  KEY element_wip_temporal_fixed_asset_number_idx (wip_temporal_fixed_asset_number),*/
/*  KEY element_purchase_order_line_idx (purchase_order_line),*/
/*  KEY element_warehouse_entry_number_idx (warehouse_entry_number),*/
/*  KEY element_car_number_idx (car_number),*/
/*  KEY element_is_asset_idx (is_asset),*/
/*  KEY element_fixed_asset_subnumber_idx (fixed_asset_subnumber),*/
/*  KEY element_old_millicom_code_idx (old_millicom_code),*/
/*  KEY element_millicom_code_idx (millicom_code),*/
/*  KEY element_quantity_idx (quantity),*/
/*  KEY element_element_state_idx (element_state),*/
/*  KEY element_date_capitalization_idx (date_capitalization),*/
/*  KEY element_last_inventory_date_idx (last_inventory_date),*/
/*  KEY element_last_inventory_id_fk (last_inventory_id),*/
/*  KEY element_locked_idx (locked),*/
/*  KEY element_piece_box_stowage_idx (piece_box_stowage),*/
/*  KEY element_reenabled_idx (reenabled),*/
/*  KEY element_element_classification_idx (element_classification),*/
/*  KEY import_declaration (import_declaration),*/
/*  KEY element_id_sap_idx (id_sap)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;


CREATE TABLE element_category (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(150),
  description varchar2(150),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_category_asset (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(100) NOT NULL,
  investment_item varchar2(10),
  mic_code_prefix varchar2(10),
  PRIMARY KEY (id)
/*  KEY investment_item_element_category_asset_fk (investment_item),*/
/*  KEY mic_code_prefix_element_category_asset_fk (mic_code_prefix)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COMMENT='CategorĂÂ­a de Activos Fijos para Elementos'*/;

CREATE TABLE element_classification (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  description varchar2(100) NOT NULL,
  PRIMARY KEY (id)
/*  UNIQUE KEY description (description)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_history (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element number(11,0),
  history_date date,
  history_time TIMESTAMP,
  action varchar2(50),
  location varchar2(50),
  user_login varchar2(50),
  quantity number(15,3),
  direction varchar2(50),
  movement_report number(11,0),
  detailed_type varchar2(50),
  support_code varchar2(100),
  support_table varchar2(100),
  split_source_element number(11,0),
  element_model varchar2(150),
  element_serial varchar2(150),
  element_purchase_price number(15,3),
  element_state number(11,0),
  element_containing_element number(11,0),
  element_internal_location number(11,0),
  element_awb number(11,0),
  element_invoice number(11,0),
  element_insurance_value number(15,3),
  element_millicom_code varchar2(150),
  element_in_movement varchar2(10),
  intermediate_location varchar2(50),
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  element_asset_cop_value number(15,3),
  element_asset_usd_value number(15,3),
  element_asset_trm number(15,3),
  elem_ntionalization_cop_value number(15,3),
  elem_ntionalization_usd_value number(15,3),
  element_nationalization_trm number(15,3),
  element_purchase_order_number varchar2(50),
  elem_wip_temp_fix_asset_num varchar2(50),
  element_fixed_asset_number varchar2(50),
  element_fixed_asset_subnumber varchar2(10),
  element_purchase_order_line varchar2(5),
  element_warehouse_entry_number varchar2(50),
  element_car_number varchar2(50),
  element_is_asset varchar2(10),
  element_date_capitalization date,
  elem_ntionalization_subnumber varchar2(50),
  element_locked varchar2(10),
  element_piece_box_stowage varchar2(65),
  element_reenabled varchar2(10),
  element_classification number(11,0),
  ip varchar2(50),
  host varchar2(255),
  project varchar2(255),
  element_id_sap varchar2(20),
  element_subnumber_sap varchar2(20),
  element_software_cop number(15,3),
  element_software_usd number(15,3),
  element_services_usd number(15,3),
  element_services_cop number(15,3),
  element_import_declaration varchar2(50),
  PRIMARY KEY (id)
/*  KEY element_history_detailed_type_idx (detailed_type),*/
/*  KEY element_history_support_code_idx (support_code),*/
/*  KEY element_history_support_table_idx (support_table),*/
/*  KEY element_history_split_source_element_idx (split_source_element),*/
/*  KEY element_history_element_model_idx (element_model),*/
/*  KEY element_history_element_serial_idx (element_serial),*/
/*  KEY element_history_element_purchase_price_idx (element_purchase_price),*/
/*  KEY element_history_element_state_idx (element_state),*/
/*  KEY element_history_element_containing_element_idx (element_containing_element),*/
/*  KEY element_history_element_internal_location_idx (element_internal_location),*/
/*  KEY element_history_element_awb_idx (element_awb),*/
/*  KEY element_history_element_invoice_idx (element_invoice),*/
/*  KEY element_history_element_insurance_value_idx (element_insurance_value),*/
/*  KEY element_history_element_millicom_code_idx (element_millicom_code),*/
/*  KEY element_history_intermediate_location_idx (intermediate_location),*/
/*  KEY element_history_type_asset_idx (element_type_asset),*/
/*  KEY element_history_category_asset_idx (element_category_asset),*/
/*  KEY element_history_asset_cop_value_idx (element_asset_cop_value),*/
/*  KEY element_history_asset_usd_value_idx (element_asset_usd_value),*/
/*  KEY element_history_asset_trm_idx (element_asset_trm),*/
/*  KEY element_history_nationalization_cop_value_idx (element_nationalization_cop_value),*/
/*  KEY element_history_nationalization_usd_value_idx (element_nationalization_usd_value),*/
/*  KEY element_history_nationalization_trm_idx (element_nationalization_trm),*/
/*  KEY element_history_purchase_order_number_idx (element_purchase_order_number),*/
/*  KEY element_history_wip_temporal_fixed_asset_number_idx (element_wip_temporal_fixed_asset_number),*/
/*  KEY element_history_fixed_asset_number_idx (element_fixed_asset_number),*/
/*  KEY element_history_fixed_asset_subnumber_idx (element_fixed_asset_subnumber),*/
/*  KEY element_history_purchase_order_line_idx (element_purchase_order_line),*/
/*  KEY element_history_warehouse_entry_number_idx (element_warehouse_entry_number),*/
/*  KEY element_history_car_number_idx (element_car_number),*/
/*  KEY element_history_is_asset_idx (element_is_asset),*/
/*  KEY element_history_date_capitalization_idx (element_date_capitalization),*/
/*  KEY element_history_nationalization_subnumber_idx (element_nationalization_subnumber),*/
/*  KEY element_history_element_locked_idx (element_locked),*/
/*  KEY element_history_element_in_movement_idx (element_in_movement),*/
/*  KEY element_history_element_idx (element),*/
/*  KEY element_history_history_date_idx (history_date),*/
/*  KEY element_history_history_time_idx (history_time),*/
/*  KEY element_history_action_idx (action),*/
/*  KEY element_history_location_idx (location),*/
/*  KEY element_history_direction_idx (direction),*/
/*  KEY element_history_movement_report_idx (movement_report),*/
/*  KEY element_history_piece_box_stowage_idx (element_piece_box_stowage),*/
/*  KEY element_history_element_reenabled_idx (element_reenabled),*/
/*  KEY element_history_classification_idx (element_classification)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE element_inventory (
  element number(11,0),
  inventory_date TIMESTAMP,
  inventory number(11,0)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element_model (
  id varchar2(50) NOT NULL,
  description varchar2(255),
  maker varchar2(50),
  reference varchar2(60),
  sub_reference varchar2(60),
  element_type number(11,0),
  value_type varchar2(20),
  remote_inventory_code varchar2(100),
  is_asset varchar2(1) DEFAULT 'N',
  measurement_unit number(11,0),
  plu varchar2(20),
  image_path varchar2(255),
  default_element_type_asset number(11,0),
  model_cop_value number(15,3) DEFAULT '0',
  model_cop_value_file varchar2(500),
  id_sap varchar2(50),
  model_sap varchar2(5),
  net_weight varchar2(13),
  length varchar2(5),
  width varchar2(5),
  height varchar2(20),
  PRIMARY KEY (id)
/*  KEY element_model_description_idx (description),*/
/*  KEY element_model_value_type_idx (value_type),*/
/*  KEY element_type_asset_element_model_fk (default_element_type_asset),*/
/*  KEY element_model_idx (id),*/
/*  KEY element_model_id_sap_idx (id_sap),*/
/*  KEY element_model_model_sap_idx (model_sap)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_mdl_x_remote_inv_ref (
  element_model varchar2(50) NOT NULL,
  remote_inventory_reference varchar2(255) NOT NULL,
  remote_inventory_provider number(11,0) DEFAULT '0',
  PRIMARY KEY (element_model,remote_inventory_reference,remote_inventory_provider)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_movement_order_comment (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  order_id number(11,0),
  user_login varchar2(50),
  comment_date date,
  comment_time TIMESTAMP,
  text clob,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=91076 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_order_problem_case (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  report_login varchar2(50),
  report_datetime TIMESTAMP,
  order_type varchar2(50),
  order_id number(11,0),
  case_type varchar2(50),
  solve_login varchar2(50),
  solve_datetime TIMESTAMP,
  report_comment varchar2(1000),
  solve_comment varchar2(4000),
  answer varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=852 DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_order_prblm_case_abs_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  case_id number(11,0),
  detail_id number(11,0),
  element number(11,0),
  quantity number(15,3),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=6069 DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_order_prblm_case_att_fle (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_order_problem_case number(11,0) NOT NULL,
  attach_file varchar2(250) NOT NULL,
  md5checksum varchar2(50) NOT NULL,
  uploaded_by varchar2(50),
  upload_date TIMESTAMP,
  PRIMARY KEY (id)
/*  KEY element_order_problem_case (element_order_problem_case),*/
/*  KEY element_order_problem_case_attach_file_uploaded_by_fk (uploaded_by)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_order_prblm_case_exs_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  case_id number(11,0),
  element_id number(11,0),
  quantity number(15,3),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element_movement_order (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  request_date TIMESTAMP,
  login varchar2(50),
  petitioner varchar2(150),
  state varchar2(50),
  reviewed varchar2(50),
  review_date TIMESTAMP,
  truck_type number(11,0),
  truck_license varchar2(10),
  carry_proposed_time TIMESTAMP,
  carry_start_time TIMESTAMP,
  arrival_estimated_time TIMESTAMP,
  auth_transport varchar2(50),
  auth_trans_time TIMESTAMP,
  location varchar2(50),
  truck_space_used varchar2(10),
  in_transit TIMESTAMP,
  direction varchar2(50),
  petitioner_email varchar2(150),
  arrived_state varchar2(2),
  arrived_time TIMESTAMP,
  created_state_user varchar2(50),
  authorized_state_user varchar2(50),
  in_transit_state_user varchar2(50),
  canceled_state_user varchar2(50),
  review_state_user varchar2(50),
  end_state_user varchar2(50),
  order_priority_type number(11,0),
  requires_transportation varchar2(1),
  order_execution_responsible number(11,0),
  document_send varchar2(100),
  document_receive varchar2(100),
  PRIMARY KEY (id)
/*  KEY element_request_location_idx (location),*/
/*  KEY element_request_created_state_user_idx (created_state_user),*/
/*  KEY element_request_authorized_state_user_idx (authorized_state_user),*/
/*  KEY element_request_in_transit_state_user_idx (in_transit_state_user),*/
/*  KEY element_request_canceled_state_user_idx (canceled_state_user),*/
/*  KEY element_request_review_state_user_idx (review_state_user),*/
/*  KEY element_request_end_state_user_idx (end_state_user),*/
/*  KEY element_request_state_idx (state),*/
/*  KEY element_request_request_date_idx (request_date),*/
/*  KEY element_request_login_idx (login),*/
/*  KEY element_request_reviewed_idx (reviewed),*/
/*  KEY element_request_auth_transport_idx (auth_transport),*/
/*  KEY element_request_direction_idx (direction),*/
/*  KEY element_request_order_priority_type_idx (order_priority_type),*/
/*  KEY element_request_requires_transportation_idx (requires_transportation),*/
/*  KEY element_request_order_execution_responsible_idx (order_execution_responsible),*/
/*  KEY document_send_indx (document_send),*/
/*  KEY document_receive_indx (document_receive),*/
/*  KEY petitioner_indx (petitioner)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE element_movement_order_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element number(11,0),
  quantity number(15,3),
  request number(11,0),
  commen varchar2(255),
  truck_license varchar2(10),
  confirmed varchar2(1) DEFAULT 'N',
  arrived varchar2(10) DEFAULT 'N',
  arrive_time TIMESTAMP,
  location_assigned_new varchar2(50),
  PRIMARY KEY (id)
/*  KEY element_requested_request_idx (request),*/
/*  KEY element_requested_element_idx (element),*/
/*  KEY element_requested_arrived_idx (arrived)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_request_person_in_charge (
  request number(11,0) NOT NULL,
  id_number varchar2(150),
  name varchar2(150),
  company varchar2(150),
  PRIMARY KEY (request)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_mov_order_request_transp(
  request number(11,0),
  license varchar2(10),
  driver_name varchar2(255),
  driver_phone varchar2(20),
  transporter number(11,0),
  company varchar2(150)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element_screenshot_comparison (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  created_by varchar2(50) NOT NULL,
  comparison_date TIMESTAMP NOT NULL,
  screenshot_origin number(11,0) NOT NULL,
  screenshot_destination number(11,0) NOT NULL,
  state varchar2(50) NOT NULL,
  error_stacktrace clob,
  PRIMARY KEY (id)
/*  KEY element_screenshot_comparison_created_by_idx (created_by),*/
/*  KEY element_screenshot_comparison_screenshot_origin_idx (screenshot_origin),*/
/*  KEY element_screenshot_comparison_screenshot_destination_idx (screenshot_destination)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_screenhot_compa_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_screenshot_comparison number(11,0),
  elem_screenhot_compa_dif_ty number(11,0),
  element number(11,0),
  field varchar2(100) NOT NULL,
  left_value varchar2(100),
  right_value varchar2(100),
  PRIMARY KEY (id)
/*  KEY comparison_detail_comparison_fk (element_screenshot_comparison),*/
/*  KEY comparison_detail_difference_type_fk (element_screenshot_comparison_difference_type),*/
/*  KEY comparison_detail_element_fk (element)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_screenhot_compa_dif_ty (
  id number(11,0) NOT NULL,
  description varchar2(50) NOT NULL,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_screenshot_data (
  element_screenshot_registry number(11,0) NOT NULL,
  id number(11,0),
  tigo_inventory_code varchar2(50),
  model varchar2(50),
  contract varchar2(50),
  location varchar2(50),
  serial varchar2(100),
  purchase_price number(15,3),
  warranty_duration number(11,0),
  creation_date TIMESTAMP,
  update_date TIMESTAMP,
  element_state number(11,0),
  quantity number(15,3),
  location_asigned varchar2(50),
  awb number(11,0),
  containing_element number(11,0),
  commentaries varchar2(500),
  is_spare_part varchar2(5),
  deleted varchar2(1) DEFAULT 'N',
  in_movement varchar2(1) DEFAULT 'N',
  quantity_reserved number(15,3),
  control_code varchar2(100),
  inventory varchar2(1),
  tax number(15,3),
  trm_value number(15,3),
  invoice number(11,0),
  insurance_value number(15,3),
  millicom_code varchar2(150),
  internal_location_id number(11,0),
  source_element number(11,0),
  installation_site_1 varchar2(100),
  installation_site_2 varchar2(100),
  comment_installation_site varchar2(255),
  login_update_installation_site varchar2(50),
  init_unit_val_by_invoice_usd number(15,3),
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  asset_cop_value number(15,3),
  asset_usd_value number(15,3),
  asset_trm number(15,3),
  nationalization_cop_value number(15,3),
  nationalization_usd_value number(15,3),
  nationalization_trm number(15,3),
  purchase_order_number varchar2(50),
  wip_temp_fix_asset_number varchar2(50),
  fixed_asset_number varchar2(50),
  fixed_asset_subnumber varchar2(10),
  purchase_order_line varchar2(5),
  warehouse_entry_number varchar2(50),
  car_number varchar2(50),
  is_asset varchar2(1) DEFAULT 'N',
  date_capitalization date,
  nationalization_subnumber varchar2(50),
  old_millicom_code varchar2(150),
  last_inventory_id number(11,0),
  last_inventory_date TIMESTAMP,
  locked varchar2(1) DEFAULT 'N',
  piece_box_stowage varchar2(65),
  element_classification number(11,0)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;
/*  KEY screenshot_data_element_screenshot_registry_idx (element_screenshot_registry),*/
/*  KEY element_screenshot_data_location_idx (location)*/



CREATE TABLE element_screenshot_registry (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  registry_date TIMESTAMP NOT NULL,
  created_by varchar2(50) NOT NULL,
  PRIMARY KEY (id)
/*  KEY element_screenshot_registry_created_by_idx (created_by)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1*/;


CREATE TABLE element_state (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  state varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_structure (
  property varchar2(255) NOT NULL,
  description varchar2(255) NOT NULL,
  PRIMARY KEY (property)
/*  UNIQUE KEY property (property,description)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element_transfer_order (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  creation_date TIMESTAMP,
  creator_login varchar2(50),
  petitioner_name varchar2(150),
  pertitioner_email varchar2(150),
  origin_location varchar2(50),
  direction_location varchar2(50),
  authorize_region number(11,0),
  authorize_login varchar2(50),
  authorize_date TIMESTAMP,
  sender_login varchar2(50),
  sender_date TIMESTAMP,
  addressee_login varchar2(50),
  arrival_state varchar2(2),
  arrival_date TIMESTAMP,
  state varchar2(50),
  cancel_login varchar2(50),
  cancel_date TIMESTAMP,
  prepared_state_user varchar2(50),
  order_priority_type number(11,0),
  requires_transportation varchar2(1),
  order_execution_responsible number(11,0),
  prepared_date TIMESTAMP,
  document_send varchar2(100),
  document_receive varchar2(100),
  PRIMARY KEY (id)
/*  KEY element_transfer_order_state_idx (state),*/
/*  KEY element_transfer_order_prepared_state_user_fk (prepared_state_user),*/
/*  KEY element_transfer_order_creation_date_idx (creation_date),*/
/*  KEY element_transfer_order_creator_login_idx (creator_login),*/
/*  KEY element_transfer_order_origin_location_idx (origin_location),*/
/*  KEY element_transfer_order_direction_location_idx (direction_location),*/
/*  KEY element_transfer_order_authorize_login_idx (authorize_login),*/
/*  KEY element_transfer_order_sender_login_idx (sender_login),*/
/*  KEY element_transfer_order_addressee_login_idx (addressee_login),*/
/*  KEY element_transfer_order_cancel_login_idx (cancel_login),*/
/*  KEY element_transfer_order_authorize_region_fk (authorize_region),*/
/*  KEY element_transfer_order_order_priority_type_idx (order_priority_type),*/
/*  KEY element_transfer_order_requires_transportation_idx (requires_transportation),*/
/*  KEY element_transfer_order_order_execution_responsible_idx (order_execution_responsible),*/
/*  KEY document_send_indx (document_send),*/
/*  KEY document_receive_indx (document_receive)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_transfer_order_comment (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_transfer_order number(11,0),
  user_login varchar2(50),
  comment_date date,
  comment_time TIMESTAMP,
  text clob,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=102062 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_transfer_order_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_transfer_order number(11,0),
  element number(11,0),
  quantity number(15,3),
  commen varchar2(255),
  truck_license varchar2(10),
  confirmed varchar2(1) DEFAULT 'N',
  arrived varchar2(1) DEFAULT 'N',
  arrival_date TIMESTAMP,
  send_date TIMESTAMP,
  sended varchar2(1) DEFAULT 'N',
  location_assigned_new varchar2(50),
  PRIMARY KEY (id)
/*  KEY element_transfer_order_detail_element_transfer_order_idx (element_transfer_order),*/
/*  KEY element_transfer_order_detail_arrived_idx (arrived),*/
/*  KEY element_transfer_order_detail_element_idx (element)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_OT_person_in_charge (
  element_transfer_order number(11,0),
  document_number varchar2(150),
  name varchar2(150),
  company varchar2(150)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE elem_OT_transport (
  element_transfer_order number(11,0),
  license varchar2(10),
  driver_name varchar2(255),
  driver_phone varchar2(20),
  transporter number(11,0),
  company varchar2(150)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE element_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  id_category number(11,0),
  description varchar2(150),
  mnemonic varchar2(5),
  PRIMARY KEY (id)
/*  UNIQUE KEY mnemonic (mnemonic)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1*/;

CREATE TABLE element_type_asset (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(100) NOT NULL,
  default_element_category_asset number(10,0),
  investment_item varchar2(10),
  PRIMARY KEY (id)
/*  KEY element_category_asset_element_type_asset_fk (default_element_category_asset),*/
/*  KEY investment_item_element_type_asset_fk (investment_item)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=899 DEFAULT CHARSET=latin1 COMMENT='Tipos de Activos Fijos para Elementos'*/;

CREATE TABLE external_location (
  code varchar2(50) NOT NULL,
  name varchar2(100),
  region number(11,0),
  address varchar2(60),
  external_location_type number(11,0),
  user_in_charge varchar2(50),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  PRIMARY KEY (code)
/*  KEY external_location_deleted_idx (deleted),*/
/*  KEY external_location_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE external_location_type (
  id number(11,0) NOT NULL,
  type varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE external_warehouse (
  code varchar2(50) NOT NULL,
  name varchar2(100),
  region number(11,0),
  address varchar2(100),
  user_in_charge varchar2(50),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  PRIMARY KEY (code)
/*  KEY external_warehouse_deleted_idx (deleted),*/
/*  KEY external_warehouse_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_element_field (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  field_name varchar2(60),
  field_description varchar2(500),
  PRIMARY KEY (id)
/*  KEY field_name (field_name)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  fault_report_responsible number(11,0),
  fault_report_state number(11,0),
  creation_date TIMESTAMP,
  creation_user varchar2(50),
  cancel_date TIMESTAMP,
  cancel_user varchar2(50),
  cancel_comment varchar2(500),
  warehouse_approve_date TIMESTAMP,
  warehouse_approve_user varchar2(50),
  warehouse_reject_date TIMESTAMP,
  warehouse_reject_user varchar2(50),
  warehouse_reject_comment varchar2(500),
  responsible_approve_date TIMESTAMP,
  responsible_approve_user varchar2(50),
  responsible_reject_date TIMESTAMP,
  responsible_reject_user varchar2(50),
  responsible_reject_comment varchar2(600),
  responsible_service_number varchar2(50),
  /*arrived_to_regional_wh varchar2(50),*/
  PRIMARY KEY (id)
/*  KEY fault_report_responsible (fault_report_responsible),*/
/*  KEY fault_report_state (fault_report_state),*/
/*  KEY creation_user (creation_user),*/
/*  KEY cancel_user (cancel_user),*/
/*  KEY warehouse_approve_user (warehouse_approve_user),*/
/*  KEY warehouse_reject_user (warehouse_reject_user),*/
/*  KEY responsible_approve_user (responsible_approve_user),*/
/*  KEY responsible_reject_user (responsible_reject_user),*/
/*  KEY responsible_service_number (responsible_service_number)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=9494 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  fault_report number(11,0),
  fault_report_struct number(11,0),
  element number(11,0),
  fault_id_number varchar2(50),
  region number(11,0),
  field_1 varchar2(100),
  field_2 varchar2(100),
  field_3 varchar2(100),
  field_4 varchar2(100),
  field_5 varchar2(100),
  field_6 varchar2(100),
  field_7 varchar2(100),
  field_8 varchar2(100),
  field_9 varchar2(100),
  field_10 varchar2(100),
  field_11 varchar2(100),
  field_12 varchar2(100),
  field_13 varchar2(100),
  field_14 varchar2(100),
  field_15 varchar2(100),
  field_16 varchar2(100),
  field_17 varchar2(100),
  field_18 varchar2(100),
  field_19 varchar2(100),
  field_20 varchar2(100),
  field_21 varchar2(100),
  field_22 varchar2(100),
  field_23 varchar2(100),
  field_24 varchar2(100),
  field_25 varchar2(100),
  field_26 varchar2(100),
  field_27 varchar2(100),
  field_28 varchar2(100),
  field_29 varchar2(100),
  field_30 varchar2(100),
  field_31 varchar2(100),
  field_32 varchar2(100),
  field_33 varchar2(100),
  field_34 varchar2(100),
  field_35 varchar2(100),
  field_36 varchar2(100),
  field_37 varchar2(100),
  field_38 varchar2(100),
  field_39 varchar2(100),
  field_40 varchar2(100),
  field_41 varchar2(100),
  field_42 varchar2(100),
  field_43 varchar2(100),
  field_44 varchar2(100),
  field_45 varchar2(100),
  field_46 varchar2(100),
  field_47 varchar2(100),
  field_48 varchar2(100),
  field_49 varchar2(100),
  field_50 varchar2(100),
  textarea_1 clob,
  textarea_2 clob,
  textarea_3 clob,
  textarea_4 clob,
  textarea_5 clob,
  textarea_6 clob,
  PRIMARY KEY (id)
/*  KEY fault_report (fault_report),*/
/*  KEY fault_report_struct (fault_report_struct),*/
/*  KEY fault_id_number (fault_id_number),*/
/*  KEY field_1 (field_1),*/
/*  KEY field_2 (field_2),*/
/*  KEY field_3 (field_3),*/
/*  KEY field_4 (field_4),*/
/*  KEY field_5 (field_5),*/
/*  KEY field_6 (field_6),*/
/*  KEY field_7 (field_7),*/
/*  KEY field_8 (field_8),*/
/*  KEY field_9 (field_9),*/
/*  KEY field_10 (field_10),*/
/*  KEY field_11 (field_11),*/
/*  KEY field_12 (field_12),*/
/*  KEY field_13 (field_13),*/
/*  KEY field_14 (field_14),*/
/*  KEY field_15 (field_15),*/
/*  KEY field_16 (field_16),*/
/*  KEY field_17 (field_17),*/
/*  KEY field_18 (field_18),*/
/*  KEY field_19 (field_19),*/
/*  KEY field_20 (field_20),*/
/*  KEY field_21 (field_21),*/
/*  KEY field_22 (field_22),*/
/*  KEY field_23 (field_23),*/
/*  KEY field_24 (field_24),*/
/*  KEY field_25 (field_25),*/
/*  KEY field_26 (field_26),*/
/*  KEY field_27 (field_27),*/
/*  KEY field_28 (field_28),*/
/*  KEY field_29 (field_29),*/
/*  KEY field_30 (field_30),*/
/*  KEY field_31 (field_31),*/
/*  KEY field_32 (field_32),*/
/*  KEY field_33 (field_33),*/
/*  KEY field_34 (field_34),*/
/*  KEY field_35 (field_35),*/
/*  KEY field_36 (field_36),*/
/*  KEY field_37 (field_37),*/
/*  KEY field_38 (field_38),*/
/*  KEY field_39 (field_39),*/
/*  KEY field_40 (field_40),*/
/*  KEY field_41 (field_41),*/
/*  KEY field_42 (field_42),*/
/*  KEY field_43 (field_43),*/
/*  KEY field_44 (field_44),*/
/*  KEY field_45 (field_45),*/
/*  KEY field_46 (field_46),*/
/*  KEY field_47 (field_47),*/
/*  KEY field_48 (field_48),*/
/*  KEY field_49 (field_49),*/
/*  KEY field_50 (field_50)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=9494 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_detail_multiple (
  fault_report_struct_detail number(11,0),
  code varchar2(60),
  value varchar2(60),
  wildcard varchar2(60)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_provider (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  description varchar2(500),
  address varchar2(255),
  phone varchar2(50),
  email varchar2(255),
  enabled varchar2(1) DEFAULT 'N',
  fault_report_provider_type number(11,0),
  PRIMARY KEY (id)
/*  KEY fault_report_provider_type (fault_report_provider_type),*/
/*  KEY name (name),*/
/*  KEY phone (phone),*/
/*  KEY email (email),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_provider_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  description varchar2(500),
  PRIMARY KEY (id)
/*  KEY name (name)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_responsible (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  fault_report_provider number(11,0),
  login varchar2(50),
  alt_address varchar2(255),
  alt_phone varchar2(50),
  alt_email varchar2(100),
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY fault_report_provider (fault_report_provider),*/
/*  KEY login (login),*/
/*  KEY alt_address (alt_address),*/
/*  KEY alt_phone (alt_phone),*/
/*  KEY alt_email (alt_email),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_state (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(60),
  description varchar2(500),
  PRIMARY KEY (id)
/*  KEY name (name)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_struct (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  description varchar2(500),
  fault_report_provider number(11,0),
  template varchar2(500),
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY fault_report_provider (fault_report_provider),*/
/*  KEY name (name),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE fault_report_struct_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  fault_report_struct number(11,0),
  field_name varchar2(60),
  field_label varchar2(70),
  parameter_name varchar2(60),
  parameter_type varchar2(50),
  mandatory varchar2(1) DEFAULT 'N',
  max_length number(11,0),
  fault_element_field number(11,0),
  by_order number(11,0),
  PRIMARY KEY (id)
/*  KEY fault_report_struct (fault_report_struct),*/
/*  KEY fault_element_field (fault_element_field),*/
/*  KEY field_name (field_name),*/
/*  KEY field_label (field_label),*/
/*  KEY parameter_name (parameter_name),*/
/*  KEY parameter_type (parameter_type),*/
/*  KEY mandatory (mandatory)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1*/;

CREATE TABLE fifo_exception (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(255) NOT NULL,
  description varchar2(500),
  PRIMARY KEY (id)
/*  UNIQUE KEY name (name)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1*/;

CREATE TABLE fifo_exception_registry (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  order_type varchar2(50) NOT NULL,
  order_number number(11,0) NOT NULL,
  element number(11,0) NOT NULL,
  fifo_exception number(11,0) NOT NULL,
  login varchar2(50) NOT NULL,
  registry_date TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
/*  KEY fifo_exception_registry_order_type (order_type),*/
/*  KEY fifo_exception_registry_order_number (order_number),*/
/*  KEY fifo_exception_registry_element (element),*/
/*  KEY fifo_exception_registry_fifo_exception (fifo_exception),*/
/*  KEY fifo_exception_registry_login (login)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=864384 DEFAULT CHARSET=latin1*/;

CREATE TABLE forgotten_password (
  login varchar2(50),
  email varchar2(100),
  forgotten_date date,
  token varchar2(255)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  unit_description_id number(11,0),
  unit_report number(11,0),
  warehouse_code varchar2(50),
  unit_description_name varchar2(255),
  unit_description_description varchar2(255),
  unit_description_comments varchar2(255),
  unit_description_keyword varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=552 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_description (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(255) NOT NULL,
  description varchar2(255),
  comments varchar2(255),
  keyword varchar2(50) NOT NULL,
  PRIMARY KEY (id)
/*  UNIQUE KEY functional_unit_unique_index (keyword)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_descrip_line (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  functional_unit_id number(11,0),
  element_model_1 varchar2(50),
  element_model_2 varchar2(50),
  element_model_3 varchar2(50),
  element_model_4 varchar2(50),
  element_model_5 varchar2(50),
  quantity number(15,3),
  comments varchar2(255),
  PRIMARY KEY (id)
/*  KEY functional_unit_description_line_unit_id_idx (unit_id),*/
/*  KEY functional_unit_description_line_model_1_id_idx (model_1_id),*/
/*  KEY functional_unit_description_line_model_2_id_idx (model_2_id),*/
/*  KEY functional_unit_description_line_model_3_id_idx (model_3_id),*/
/*  KEY functional_unit_description_line_model_4_id_idx (model_4_id),*/
/*  KEY functional_unit_description_line_model_5_id_idx (model_5_id)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2738 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  functional_unit number(11,0),
  functional_unit_descrip_line number(11,0),
  element number(11,0),
  quantity number(15,3),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=4770 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_remaining (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  report number(11,0),
  element number(11,0),
  quantity number(15,3),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=291385 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_report (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  report_date TIMESTAMP,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1*/;

CREATE TABLE functional_unit_x_invoice (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  invoice number(11,0),
  functional_unit_description number(11,0),
  quantity number(15,3),
  purchase_order_number varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1*/;

CREATE TABLE geographic_location (
  code varchar2(50) NOT NULL,
  name varchar2(100),
  address varchar2(250),
  responsible_user varchar2(50),
  region number(11,0) NOT NULL,
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  PRIMARY KEY (code)
/*  KEY geographic_location_users_fk (responsible_user),*/
/*  KEY geographic_location_region_fk (region),*/
/*  KEY geographic_location_name_idx (name),*/
/*  KEY geographic_location_deleted_idx (deleted),*/
/*  KEY geographic_location_deleted_by_user_idx (deleted_by_user)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE history_action (
  id varchar2(50) NOT NULL,
  action varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE incoterm (
  code varchar2(5) DEFAULT '',
  description varchar2(255),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE infrastructure_element (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  location varchar2(50) DEFAULT '',
  creation_date TIMESTAMP NOT NULL,
  update_date TIMESTAMP NOT NULL,
  create_user varchar2(50) DEFAULT '',
  update_user varchar2(50) DEFAULT '',
  quantity number(15,3) NOT NULL,
  invoice number(11,0),
  millicom_code varchar2(100),
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  asset_cop_value number(15,3),
  asset_usd_value number(15,3),
  asset_trm number(15,3),
  nationalization_cop_value number(15,3),
  nationalization_usd_value number(15,3),
  nationalization_trm number(15,3),
  purchase_order_number varchar2(50),
  temporal_fixed_asset_number varchar2(50),
  fixed_asset_number varchar2(50),
  infrastructure_model varchar2(50) NOT NULL,
  date_capitalization date,
  deleted varchar2(1) DEFAULT 'N',
  id_element varchar2(50),
  PRIMARY KEY (id)
/*  KEY invoice_infrastructure_element_fk (invoice),*/
/*  KEY users_infrastructure_element_fk (create_user),*/
/*  KEY users_update_infrastructure_element_fk (update_user),*/
/*  KEY location_infrastructure_element_fk (location),*/
/*  KEY element_type_asset_infrastructure_element_fk (element_type_asset),*/
/*  KEY infrastructure_model_infrastructure_element_fk (infrastructure_model),*/
/*  KEY infrastructure_element_purchase_order_number_idx (purchase_order_number),*/
/*  KEY infrastructure_element_temporal_fixed_asset_number_idx (temporal_fixed_asset_number),*/
/*  KEY infrastructure_element_fixed_asset_number_idx (fixed_asset_number),*/
/*  KEY infrastructure_element_deleted_idx (deleted)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=10042287 DEFAULT CHARSET=latin1*/;

CREATE TABLE infrastructure_element_his (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  infrastructure_element number(11,0),
  history_date date,
  history_time TIMESTAMP,
  action varchar2(50),
  user_login varchar2(50),
  detailed_type varchar2(50),
  support_code varchar2(100),
  support_table varchar2(100),
  location varchar2(50),
  quantity number(15,3),
  invoice number(11,0),
  millicom_code varchar2(100),
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  asset_cop_value number(15,3),
  asset_usd_value number(15,3),
  asset_trm number(15,3),
  nationalization_cop_value number(15,3),
  nationalization_usd_value number(15,3),
  nationalization_trm number(15,3),
  purchase_order_number varchar2(50),
  temporal_fixed_asset_number varchar2(50),
  fixed_asset_number varchar2(50),
  infrastructure_model varchar2(50),
  date_capitalization date,
  PRIMARY KEY (id)
/*  KEY infrastructure_element (infrastructure_element),*/
/*  KEY history_date (history_date),*/
/*  KEY history_time (history_time),*/
/*  KEY action (action),*/
/*  KEY detailed_type (detailed_type),*/
/*  KEY support_code (support_code),*/
/*  KEY support_table (support_table),*/
/*  KEY location (location),*/
/*  KEY invoice (invoice),*/
/*  KEY millicom_code (millicom_code),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY purchase_order_number (purchase_order_number),*/
/*  KEY temporal_fixed_asset_number (temporal_fixed_asset_number),*/
/*  KEY fixed_asset_number (fixed_asset_number),*/
/*  KEY infrastructure_model (infrastructure_model),*/
/*  KEY date_capitalization (date_capitalization)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=4587 DEFAULT CHARSET=latin1*/;

CREATE TABLE infrastructure_model (
  code varchar2(50) NOT NULL,
  name varchar2(150) NOT NULL,
  maker varchar2(100),
  plu varchar2(100),
  is_asset varchar2(1) DEFAULT 'Y',
  default_element_type_asset number(11,0),
  PRIMARY KEY (code)
/*  KEY element_type_asset_infrastructure_model_fk (default_element_type_asset),*/
/*  KEY infrastructure_model_is_asset_idx (is_asset),*/
/*  KEY infrastructure_model_codex (code)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE internal_location (
  id number(11,0) NOT NULL  /*AUTO_INCREMENT*/,
  tigo_code varchar2(150) NOT NULL,
  description varchar2(500),
  location varchar2(50) NOT NULL,
  PRIMARY KEY (id)
/*  UNIQUE KEY internal_location_tigo_code_uidx (tigo_code,location),*/
/*  KEY internal_location_location_idx (location)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=12547 DEFAULT CHARSET=latin1 COMMENT='Ubicacion Interna de una Ubicacion General del Sistema'*/;

COMMENT ON COLUMN internal_location.id IS 'Identificador LAICON de la Ubicacion Interna';
COMMENT ON COLUMN internal_location.tigo_code IS 'Codigo TIGO de la Ubicacion Interna';
COMMENT ON COLUMN internal_location.description IS 'Descripcion';
COMMENT ON COLUMN internal_location.location IS 'Codigo de la Ubicacion General';

CREATE TABLE inventory (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  location varchar2(50),
  person_in_charge varchar2(100),
  state varchar2(50),
  result varchar2(30),
  total varchar2(30),
  finish_date TIMESTAMP,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_alarm (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element_model varchar2(50) NOT NULL,
  type_alarm varchar2(20) NOT NULL,
  warehouse varchar2(50),
  regional number(11,0),
  quantity_min number(15,3),
  quantity_max number(15,3),
  quantity_suggested number(15,3),
  PRIMARY KEY (id)
/*  KEY inventory_alarm_element_model_idx (element_model)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_alarm_users (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_alarm number(11,0) NOT NULL,
  user_login varchar2(50) NOT NULL,
  PRIMARY KEY (id)
/*  KEY inventory_alarm_users_inventory_alarm_idx (inventory_alarm),*/
/*  KEY inventory_alarm_users_user_login_idx (user_login)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_by_models (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  id_inventory_elements number(11,0),
  id_model varchar2(50),
  PRIMARY KEY (id)
/*  KEY inventory_by_models_id_inventory_elements_idx (id_inventory_elements),*/
/*  KEY inventory_by_models_id_model_idx (id_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_elements (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_date_ini TIMESTAMP,
  warehouse varchar2(150),
  user_create varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=6665 DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_elements_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  id_inventory_elements number(11,0),
  id_inventory_process number(11,0),
  internal_location varchar2(150),
  id_element number(11,0),
  quantity number(15,3),
  commentaries varchar2(150),
  new_serial varchar2(50),
  new_plu varchar2(50),
  type varchar2(50),
  date_upload TIMESTAMP,
  save_element varchar2(1) DEFAULT 'N',
  user_report varchar2(100),
  PRIMARY KEY (id)
/*  KEY inventory_elements_detail_id_inventory_elements_idx (id_inventory_elements)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=184012 DEFAULT CHARSET=latin1*/;

CREATE TABLE invtory_elem_download_report (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  id_inventory_elements number(11,0),
  id_element number(11,0),
  millicom_code varchar2(150),
  quantity number(15,3),
  creation_date varchar2(100),
  element_model_reference varchar2(200),
  element_model_plu varchar2(100),
  element_model_description varchar2(255),
  value_type varchar2(30),
  serial varchar2(150),
  air_waybill_number varchar2(70),
  invoice_number varchar2(60),
  internal_location_tigo_code varchar2(170),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=2741289 DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_elements_process (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements number(11,0),
  date_upload TIMESTAMP,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=4436 DEFAULT CHARSET=latin1*/;

CREATE TABLE invtory_proc_elem_difference (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  id_element number(11,0),
  element_millicom_code varchar2(150),
  element_tigo_code varchar2(50),
  element_model varchar2(200),
  element_model_plu varchar2(50),
  element_serial varchar2(100),
  element_quantity number(15,3) DEFAULT '0',
  element_status varchar2(50),
  element_location varchar2(50),
  element_internal_location number(11,0) DEFAULT '0',
  element_in_movement varchar2(1) DEFAULT 'N',
  element_quantity_reserved number(15,3) DEFAULT '0',
  element_invoice_number varchar2(50),
  element_awb number(11,0),
  element_supplier_name varchar2(100),
  difference number(15,3) DEFAULT '0',
  element_awb_number varchar2(150),
  element_internal_location_name varchar2(150),
  PRIMARY KEY (id)
/*  KEY i_p_e_d_inventory_elements_process_idx (inventory_elements_process),*/
/*  KEY inventory_process_elements_difference_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=4994 DEFAULT CHARSET=latin1*/;

CREATE TABLE invtory_proc_elem_n_processed (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  id_element number(11,0),
  element_millicom_code varchar2(150),
  element_tigo_code varchar2(50),
  element_model varchar2(200),
  element_model_plu varchar2(50),
  element_serial varchar2(100),
  element_quantity number(15,3) DEFAULT '0',
  element_status varchar2(50),
  element_location varchar2(50),
  element_internal_location number(11,0) DEFAULT '0',
  element_in_movement varchar2(5) DEFAULT 'N',
  element_quantity_reserved number(15,3) DEFAULT '0',
  element_invoice_number varchar2(50),
  element_awb number(11,0),
  element_supplier_name varchar2(100),
  element_awb_number varchar2(150),
  element_internal_location_name varchar2(150),
  PRIMARY KEY (id)
/*  KEY i_p_e_no_processed_inventory_elements_process_idx (inventory_elements_process),*/
/*  KEY inventory_process_elements_no_processed_id_element_idx (id_element),*/
/*  KEY inventory_process_elements_no_processed_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=1821762 DEFAULT CHARSET=latin1*/;

CREATE TABLE inventory_process_elements_ok (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  id_element number(11,0),
  element_millicom_code varchar2(150),
  element_tigo_code varchar2(50),
  element_model varchar2(200),
  element_model_plu varchar2(50),
  element_serial varchar2(100),
  element_quantity number(15,3) DEFAULT '0',
  element_status varchar2(50),
  element_location varchar2(50),
  element_internal_location number(11,0) DEFAULT '0',
  element_in_movement varchar2(1) DEFAULT 'N',
  element_quantity_reserved number(15,3) DEFAULT '0',
  element_invoice_number varchar2(50),
  element_awb number(11,0),
  element_supplier_name varchar2(100),
  element_awb_number varchar2(150),
  element_internal_location_name varchar2(150),
  PRIMARY KEY (id)
/*  KEY inventory_process_elements_ok_inventory_elements_process_idx (inventory_elements_process),*/
/*  KEY inventory_process_elements_ok_id_element_idx (id_element),*/
/*  KEY inventory_process_elements_ok_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=4303306 DEFAULT CHARSET=latin1*/;

CREATE TABLE invtory_unknown_int_locations (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  id_int_location number(11,0),
  int_location_tigo_code varchar2(150),
  int_location_location varchar2(50),
  int_location_description varchar2(500),
  PRIMARY KEY (id)
/*  KEY inventory_unknown_int_locations_inventory_elements_process_idx (inventory_elements_process)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE investment_item (
  code varchar2(10) NOT NULL,
  name varchar2(150) NOT NULL,
  sector varchar2(5),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE invoice (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  supplier number(11,0),
  num varchar2(50),
  invoice_date date,
  value number(15,3),
  freightage number(15,3) DEFAULT '0',
  insurance number(15,3) DEFAULT '0',
  expenditure number(15,3) DEFAULT '0',
  currency varchar2(10),
  trm number(15,3),
  incoterm varchar2(5),
  detail_type varchar2(10),
  in_inventory varchar2(1) DEFAULT 'N',
  value_cop number(15,3),
  last_costing_national_subnum varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=6269 DEFAULT CHARSET=latin1*/;

CREATE TABLE invoice_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  invoice number(11,0),
  element_model varchar2(50),
  unit_value number(15,3),
  invoice_percent number(15,3),
  PRIMARY KEY (id)
/*  KEY invoice_detail_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5250 DEFAULT CHARSET=latin1*/;

CREATE TABLE invoice_detail_type (
  code varchar2(10) DEFAULT '',
  description varchar2(255),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE invoice_template (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(150),
  detail_type varchar2(10),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1*/;

CREATE TABLE invoice_template_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  invoice_template number(11,0),
  element_model varchar2(50),
  unit_value number(15,3),
  invoice_percent number(15,3),
  PRIMARY KEY (id)
/*  KEY invoice_template_detail_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=latin1*/;

CREATE TABLE laicon_configuration (
  conf_property varchar2(150) NOT NULL,
  conf_value varchar2(255),
  PRIMARY KEY (conf_property)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE laicon_inventory_register (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  codeId number(11,0),
  quantity number(15,3) DEFAULT '0',
  PRIMARY KEY (id)
/*  KEY laicon_inventory_register_inventory_elements_process_idx (inventory_elements_process)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2326 DEFAULT CHARSET=latin1*/;

CREATE TABLE laicon_invtory_reg_unknown (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  inventory_elements_process number(11,0),
  id_laicon_inventory_register number(11,0),
  id_element number(11,0),
  element_millicom_code varchar2(150),
  element_tigo_code varchar2(50),
  element_model varchar2(200),
  element_model_plu varchar2(50),
  element_serial varchar2(100),
  element_quantity number(15,3) DEFAULT '0',
  element_status varchar2(50),
  element_location varchar2(50),
  element_internal_location_id number(11,0) DEFAULT '0',
  element_in_movement varchar2(1) DEFAULT 'N',
  element_quantity_reserved number(15,3) DEFAULT '0',
  element_invoice_number varchar2(50),
  element_awb number(11,0),
  element_supplier_name varchar2(100),
  internal_location_code varchar2(150),
  element_awb_number varchar2(150),
  element_internal_location_name varchar2(150),
  PRIMARY KEY (id)
/*  KEY laicon_inventory_register_unknown_inventory_elements_process_idx (inventory_elements_process),*/
/*  KEY laicon_inventory_register_unknown_id_element_idx (id_element),*/
/*  KEY laicon_inventory_register_unknown_element_model_idx (element_model)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=35852 DEFAULT CHARSET=latin1*/;

CREATE TABLE location (
  code varchar2(50),
  name varchar2(100),
  address varchar2(150),
  location_type varchar2(50),
  user_in_charge varchar2(50),
  region number(11,0),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  is_visible varchar2(1) DEFAULT 'Y',
  PRIMARY KEY (code)
/*  KEY location_deleted_idx (deleted),*/
/*  KEY location_geographic_location_fk (geographic_location),*/
/*  KEY location_is_visible_idx (is_visible)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE location_type (
  id varchar2(50) NOT NULL,
  type varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE log (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  user_login varchar2(150),
  ip varchar2(50),
  module varchar2(100),
  submodule varchar2(150),
  message varchar2(500),
  detail clob,
  log_date date,
  severity number(11,0),
  log_type varchar2(10),
  log_time TIMESTAMP,
  PRIMARY KEY (id)
/*  KEY idx_logDate (log_date)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE measurement_unit (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(100),
  abbr varchar2(10),
  abbr_sap varchar2(10),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1*/;

CREATE TABLE mic_batch (
  id number(10,0) NOT NULL /*AUTO_INCREMENT*/,
  mic_code_prefix varchar2(10),
  quantity number(10,0) NOT NULL,
  user_creator varchar2(50) NOT NULL,
  creation_date TIMESTAMP NOT NULL,
  user_last_updater varchar2(50) NOT NULL,
  last_update_date TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
/*  KEY users_mic_batch_fk (user_creator),*/
/*  KEY users_mic_batch_updater_fk (user_last_updater),*/
/*  KEY mic_code_prefix_mic_batch_fk (mic_code_prefix)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=7651 DEFAULT CHARSET=latin1*/;

CREATE TABLE mic_batch_responsible (
  login varchar2(50) NOT NULL,
  mic_batch number(10,0) NOT NULL,
  assigned_by_user varchar2(50) NOT NULL,
  assignment_date TIMESTAMP NOT NULL,
  enabled varchar2(1) DEFAULT 'Y',
  disabled_by_user varchar2(50),
  disabled_date TIMESTAMP,
  PRIMARY KEY (login,mic_batch)
/*  KEY users_mic_batch_responsible_assign_fk (assigned_by_user),*/
/*  KEY users_mic_batch_responsible_disabled_fk (disabled_by_user),*/
/*  KEY mic_batch_mic_batch_responsible_fk (mic_batch)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE mic_code (
  code varchar2(50) NOT NULL,
  mic_batch number(10,0),
  assigned_element number(11,0),
  enabled varchar2(1) DEFAULT 'Y',
  assigned_by_user varchar2(50),
  assignment_date TIMESTAMP,
  assignment_type varchar2(100),
  PRIMARY KEY (code)
/*  KEY element_mic_code_fk (assigned_element),*/
/*  KEY users_mic_code_fk (assigned_by_user),*/
/*  KEY mic_batch_mic_code_fk (mic_batch),*/
/*  KEY mic_code_enabled_idx (enabled)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE mic_code_prefix (
  mic_prefix varchar2(10) NOT NULL,
  mic_name varchar2(50) NOT NULL,
  description varchar2(50),
  next_free_code number(10,0) NOT NULL,
  PRIMARY KEY (mic_prefix)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE model_value_change (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  plu varchar2(50) NOT NULL,
  old_model_cop_value number(15,3) NOT NULL,
  new_model_cop_value number(15,3) NOT NULL,
  update_date TIMESTAMP NOT NULL,
  update_user varchar2(50) NOT NULL,
  updated varchar2(1) NOT NULL,
  PRIMARY KEY (id)
/*  KEY update_date (update_date),*/
/*  KEY updated (updated)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE model_x_category_asset (
  element_model varchar2(50) NOT NULL,
  element_category_asset number(10,0) NOT NULL,
  PRIMARY KEY (element_model,element_category_asset)
/*  KEY element_category_asset_model_x_category_asset_fk (element_category_asset),*/
/*  KEY model_x_category_asset_element_model_idx (element_model)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE model_x_type_asset (
  element_model varchar2(50) NOT NULL,
  element_type_asset number(10,0) NOT NULL,
  PRIMARY KEY (element_model,element_type_asset)
/*  KEY element_type_asset_model_x_type_asset_fk (element_type_asset),*/
/*  KEY model_x_type_asset_element_model_idx (element_model)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE movement_quota (
  warehouse varchar2(50) NOT NULL,
  element_model varchar2(50) NOT NULL,
  region number(11,0) NOT NULL,
  quantity_limit number(15,3) NOT NULL,
  quantity_available number(15,3) NOT NULL
/*  KEY movement_quota_warehouse_idx (warehouse),*/
/*  KEY movement_quota_element_model_idx (element_model),*/
/*  KEY movement_quota_region_idx (region)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE movement_report (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  report_date date,
  report_time TIMESTAMP,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1*/;


CREATE TABLE nationalization (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  operation_document varchar2(10),
  description varchar2(200),
  invoice number(11,0),
  invoice_value number(15,3),
  credit_note varchar2(50),
  credit_note_value number(15,3),
  awb number(11,0),
  nationalization_date date,
  city varchar2(50),
  eta date,
  arrival_date date,
  nationalization_place varchar2(50),
  notes varchar2(200),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1*/;

CREATE TABLE nationalization_place (
  code varchar2(50) NOT NULL,
  name varchar2(100),
  region number(11,0),
  address varchar2(100),
  user_in_charge varchar2(50),
  boss_name varchar2(255),
  boss_email varchar2(255),
  boss_phone varchar2(255),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  PRIMARY KEY (code)
/*  KEY nationalization_place_deleted_idx (deleted),*/
/*  KEY nationalization_place_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE no_attended_spare_part (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  no_attended_spare_state number(11,0) NOT NULL,
  damaged_element_id number(11,0) NOT NULL,
  damaged_element_model varchar2(50) NOT NULL,
  spare_part_warehouse number(11,0),
  region number(11,0),
  no_attended_date TIMESTAMP,
  no_attended_user varchar2(50),
  element_order_type varchar2(20),
  element_order_number number(11,0),
  PRIMARY KEY (id)
/*  KEY no_attended_spare_state (no_attended_spare_state),*/
/*  KEY damaged_element_id (damaged_element_id),*/
/*  KEY damaged_element_model (damaged_element_model),*/
/*  KEY region (region),*/
/*  KEY no_attended_user (no_attended_user),*/
/*  KEY no_attended_date (no_attended_date),*/
/*  KEY element_order_type (element_order_type),*/
/*  KEY element_order_number (element_order_number)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE no_attended_spare_state (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
/*  KEY name (name)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE operation_document (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  num varchar2(100),
  air_waybill number(11,0),
  city varchar2(100),
  tariff number(15,3),
  tax number(15,3),
  state varchar2(100),
  currency varchar2(10),
  trm number(15,3),
  created_by_login varchar2(50),
  created_date TIMESTAMP,
  pre_inspection_by_login varchar2(50),
  pre_inspection_report_date date,
  pre_inspection_date TIMESTAMP,
  capital_request_by_login varchar2(50),
  capital_request_approved varchar2(1) DEFAULT 'N',
  capital_request_date TIMESTAMP,
  operation_approved_by_login varchar2(50),
  operation_approved varchar2(1) DEFAULT 'N',
  operation_approved_date TIMESTAMP,
  tax_payment_by_login varchar2(50),
  tax_payment_report_date date,
  tax_payment_date TIMESTAMP,
  nationalization_by_login varchar2(50),
  nationalization_report_date date,
  nationalization_date TIMESTAMP,
  canceled_by_login varchar2(50),
  canceled_date TIMESTAMP,
  canceled_last_state varchar2(100),
  customs_brokerage number(15,3) DEFAULT '0',
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=1796 DEFAULT CHARSET=latin1*/;

CREATE TABLE operation_document_comment (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  operation_document number(11,0),
  user_login varchar2(50),
  comment_date date,
  comment_time TIMESTAMP,
  text varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=latin1*/;

CREATE TABLE operation_document_x_invoice (
  operation_document number(11,0),
  invoice number(11,0)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;
/*  KEY operation_document_x_invoice_invoice (invoice),*/
/*  KEY operation_document_x_invoice_operation_document (operation_document)*/

CREATE TABLE order_execution_responsible (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
/*  KEY order_execution_responsible_name_idnx (name)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE order_priority_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  user_edit varchar2(50),
  date_edit timestamp DEFAULT SYSDATE NOT NULL, /*OJO: DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP*/
  deleted varchar2(10) DEFAULT 'N',
  last_action varchar2(7),
  PRIMARY KEY (id)
/*  KEY order_priority_type_name_idnx (name)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;



CREATE TABLE piece_box_stowage (
  code varchar2(65) NOT NULL,
  invoice number(11,0),
  pbs_type varchar2(20) NOT NULL,
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE plant_center (
  code varchar2(10) DEFAULT '',
  name varchar2(255),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='SAP PLANT CENTER'*/;

CREATE TABLE privilege (
  id varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE profile (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(100),
  keyword varchar2(50),
  editable NUMBER(1, 0),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1*/;

CREATE TABLE profile_privilege (
  profile number(11,0),
  privilege varchar2(50)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;
/*  KEY profile_privilege_profile_privilege_idx (profile,privilege)*/

CREATE TABLE profile_x_element_structure (
  profile number(11,0) NOT NULL,
  element_structure varchar2(255) NOT NULL
/*  UNIQUE KEY profile (profile,element_structure),*/
/*  KEY profile_x_element_structure_profile (profile),*/
/*  KEY profile_x_element_structure_element_structure (element_structure)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE purchase_order (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  sap_code varchar2(50) NOT NULL,
  vendor number(11,0),
  purchase_orderdate date NOT NULL,
  car_line number(11,0),
  currency varchar2(10),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE_ORDER'*/;

CREATE TABLE purchase_order_line (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  purchase_order number(11,0),
  line varchar2(10) NOT NULL,
  value number(15,3) NOT NULL,
  description varchar2(255) NOT NULL,
  tax_type varchar2(10),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE ORDER LINE'*/;

CREATE TABLE purchase_order_request (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  complaint_type varchar2(10),
  position_type varchar2(10),
  short_text varchar2(255),
  quantity number(15,3),
  unit varchar2(10),
  delivery_date TIMESTAMP,
  plant_center varchar2(10),
  purchase_group varchar2(10),
  petitioner varchar2(100),
  currency number(11,0),
  request_amount number(15,3),
  asset varchar2(100),
  subnumber varchar2(100),
  order_number varchar2(100),
  percent number(15,3),
  sap_requisition_number varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE ORDER REQUEST'*/;

CREATE TABLE q_elements_to_sap (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  data clob,  /*NOTE: Revisar en el codigo de Laicon*/
  PRIMARY KEY (id)
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE quality_inventory (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  date_download TIMESTAMP NOT NULL,
  location varchar2(50) NOT NULL,
  login varchar2(50) NOT NULL,
  date_upload TIMESTAMP,
  state number(11,0),
  processed_user varchar2(50) NOT NULL,
  processed_date TIMESTAMP,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1*/;

CREATE TABLE quality_inventory_element (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  model varchar2(50) NOT NULL,
  location varchar2(50) NOT NULL,
  internal_location_id number(11,0),
  element number(11,0) NOT NULL,
  quality_inventory number(11,0) NOT NULL,
  millicom_code varchar2(100),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=33183 DEFAULT CHARSET=latin1*/;

CREATE TABLE quality_inventory_elem_result (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  quality_inventory_element number(11,0),
  element number(11,0),
  location varchar2(50) NOT NULL,
  model varchar2(50) NOT NULL,
  quality_inventory number(11,0) NOT NULL,
  serial varchar2(100),
  quantity number(15,3),
  is_asset varchar2(1) DEFAULT 'N',
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  comments varchar2(400),
  state number(11,0),
  login varchar2(50),
  millicom_code varchar2(150),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=26048 DEFAULT CHARSET=latin1*/;

CREATE TABLE quality_invtory_elem_rslt_dtl (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  quality_inventory number(11,0) NOT NULL,
  quality_inventory_element number(11,0) NOT NULL,
  quality_inventory_elem_result number(11,0),
  process_result_state varchar2(50) NOT NULL,
  process_result_type varchar2(50) NOT NULL,
  detail varchar2(500),
  complete_description varchar2(500),
  commentaries varchar2(4000),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=28075 DEFAULT CHARSET=latin1*/;

CREATE TABLE reenabled_element (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  element number(11,0),
  tigo_inventory_code varchar2(50),
  model varchar2(50),
  contract varchar2(50),
  location varchar2(50),
  serial varchar2(100),
  purchase_price number(15,3),
  warranty_duration number(11,0),
  creation_date TIMESTAMP,
  update_date TIMESTAMP,
  element_state number(11,0),
  quantity number(15,3),
  location_asigned varchar2(50),
  awb number(11,0),
  containing_element number(11,0),
  commentaries varchar2(300),
  is_spare_part varchar2(5),
  deleted varchar2(1) DEFAULT 'N',
  in_movement varchar2(1) DEFAULT 'N',
  quantity_reserved number(15,3),
  control_code varchar2(100),
  inventory varchar2(1),
  tax number(15,3),
  trm_value number(15,3),
  invoice number(11,0),
  insurance_value number(15,3),
  millicom_code varchar2(150),
  internal_location_id number(11,0),
  source_element number(11,0),
  installation_site_1 varchar2(100),
  installation_site_2 varchar2(100),
  comment_installation_site varchar2(255),
  login_update_installation_site varchar2(50),
  init_unit_val_by_invoice_usd number(15,3),
  element_type_asset number(11,0),
  element_category_asset number(11,0),
  asset_cop_value number(15,3),
  asset_usd_value number(15,3),
  asset_trm number(15,3),
  nationalization_cop_value number(15,3),
  nationalization_usd_value number(15,3),
  nationalization_trm number(15,3),
  purchase_order_number varchar2(50),
  wip_temp_fix_asset_number varchar2(50),
  fixed_asset_number varchar2(50),
  fixed_asset_subnumber varchar2(10),
  purchase_order_line varchar2(5),
  warehouse_entry_number varchar2(50),
  car_number varchar2(50),
  is_asset varchar2(1) DEFAULT 'N',
  date_capitalization date,
  nationalization_subnumber varchar2(50),
  old_millicom_code varchar2(150),
  last_inventory_date TIMESTAMP,
  last_inventory_id number(11,0),
  locked varchar2(1) DEFAULT 'N',
  piece_box_stowage varchar2(65),
  element_classification number(11,0),
  revived_date TIMESTAMP,
  revived_login varchar2(50),
  PRIMARY KEY (id)
/*  KEY element (element),*/
/*  KEY millicom_code (millicom_code),*/
/*  KEY model (model),*/
/*  KEY element_type_asset (element_type_asset),*/
/*  KEY element_category_asset (element_category_asset),*/
/*  KEY revived_date (revived_date),*/
/*  KEY revived_login (revived_login)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=2562 DEFAULT CHARSET=latin1*/;

CREATE TABLE reenabled_location (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  location varchar2(50),
  name varchar2(100),
  location_type varchar2(50),
  user_in_charge varchar2(50),
  region number(11,0),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date TIMESTAMP,
  deleted_type varchar2(5),
  image_data_1 clob,
  image_data_2 clob,
  image_name_1 varchar2(250),
  image_name_2 varchar2(250),
  image_size_1 number(11,0),
  image_size_2 number(11,0),
  revived_date TIMESTAMP,
  revived_login varchar2(50),
  PRIMARY KEY (id)
/*  KEY location (location),*/
/*  KEY revived_date (revived_date),*/
/*  KEY revived_login (revived_login)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1*/;

CREATE TABLE region (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  commercial varchar2(50),
  responsible_user varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_invtory_included_model (
  element_model varchar2(50) NOT NULL,
  enabled varchar2(1) NOT NULL,
  PRIMARY KEY (element_model)
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_invtory_inconsistency (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  creation_date TIMESTAMP,
  update_date TIMESTAMP,
  laicon_location varchar2(50),
  laicon_user_in_charge varchar2(50),
  ri_location varchar2(50),
  ri_user_in_charge varchar2(50),
  element number(11,0),
  millicom_code varchar2(50),
  ri_element_model varchar2(50),
  laicon_element_model varchar2(50),
  ri_serial varchar2(100),
  laicon_serial varchar2(100),
  inconsistency_type number(11,0),
  inconsistency_detail varchar2(500),
  reporting_days number(11,0),
  inconsistency_state varchar2(10),
  validation_type varchar2(20),
  PRIMARY KEY (id)
/*  KEY laicon_location (laicon_location),*/
/*  KEY laicon_user_in_charge (laicon_user_in_charge),*/
/*  KEY ri_location (ri_location),*/
/*  KEY ri_user_in_charge (ri_user_in_charge),*/
/*  KEY element (element),*/
/*  KEY millicom_code (millicom_code),*/
/*  KEY ri_element_model (ri_element_model),*/
/*  KEY laicon_element_model (laicon_element_model),*/
/*  KEY ri_serial (ri_serial),*/
/*  KEY laicon_serial (laicon_serial),*/
/*  KEY inconsistency_type (inconsistency_type),*/
/*  KEY reporting_days (reporting_days),*/
/*  KEY inconsistency_state (inconsistency_state),*/
/*  KEY remote_inventory_inconsistency_validation_type_idx (validation_type)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=1359877 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_invtory_incnsistncy_ty (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  code varchar2(20),
  name varchar2(50),
  description varchar2(500),
  PRIMARY KEY (id)
/*  UNIQUE KEY code (code)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_inventory_location (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  ri_location_code varchar2(50) NOT NULL,
  laicon_location_code varchar2(50) NOT NULL,
  ri_provider number(11,0) NOT NULL,
  PRIMARY KEY (id)
/*  UNIQUE KEY ri_location_code_2 (ri_location_code,laicon_location_code,ri_provider),*/
/*  KEY ri_location_code (ri_location_code),*/
/*  KEY laicon_location_code (laicon_location_code),*/
/*  KEY ri_provider (ri_provider)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=331649 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_inventory_mail_list (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  user_name varchar2(50),
  display_name varchar2(150),
  email varchar2(100),
  enabled varchar2(1) DEFAULT 'N',
  region number(11,0),
  receive_no_region varchar2(1) DEFAULT 'N',
  receive_all_region varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY user_name (user_name),*/
/*  KEY display_name (display_name),*/
/*  KEY email (email),*/
/*  KEY enabled (enabled),*/
/*  KEY region (region),*/
/*  KEY remote_inventory_mail_list_receive_no_region_idx (receive_no_region),*/
/*  KEY remote_inventory_mail_list_receive_all_region_idx (receive_all_region)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_inventory_provider (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  provider_code varchar2(20),
  provider_name varchar2(50),
  provider_description varchar2(255),
  file_path varchar2(255),
  file_name_format varchar2(50),
  file_extension varchar2(10),
  file_version varchar2(20),
  enabled varchar2(1) DEFAULT 'Y',
  location_in_file varchar2(1) DEFAULT 'N',
  location_file_format varchar2(50),
  PRIMARY KEY (id)
/*  UNIQUE KEY provider_code_2 (provider_code),*/
/*  KEY provider_code (provider_code),*/
/*  KEY provider_name (provider_name),*/
/*  KEY enabled (enabled),*/
/*  KEY remote_inventory_provider_location_in_file_idx (location_in_file)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE remote_inventory_temp_element (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  ri_serial varchar2(100),
  ri_location varchar2(50),
  ri_reference varchar2(50),
  ri_creation_date TIMESTAMP,
  ri_update_date TIMESTAMP,
  ri_state varchar2(1),
  ri_provider number(11,0),
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY ri_location (ri_location),*/
/*  KEY ri_provider (ri_provider),*/
/*  KEY ri_serial (ri_serial),*/
/*  KEY ri_reference (ri_reference),*/
/*  KEY ri_creation_date (ri_creation_date),*/
/*  KEY ri_update_date (ri_update_date),*/
/*  KEY ri_state (ri_state),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=63349 DEFAULT CHARSET=latin1*/;

CREATE TABLE reverse_costing_by_ws_detail (
  reverse_costing_by_ws_regist number(11,0) NOT NULL,
  element number(11,0) NOT NULL
/*  KEY reverse_costing_by_webservice_detail_register_fk (reverse_costing_by_webservice_register),*/
/*  KEY reverse_costing_by_webservice_detail_element_fk (element)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE reverse_costing_by_ws_regist (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  siscap_login varchar2(50) NOT NULL,
  process_date TIMESTAMP NOT NULL,
  warehouse_entry_number varchar2(50) NOT NULL,
  purchase_order_number varchar2(50) NOT NULL,
  purchase_order_line varchar2(50) NOT NULL,
  number_of_affected_registries number(11,0) NOT NULL,
  PRIMARY KEY (id)
/*  KEY reverse_costing_webservice_register_siscap_login_idx (siscap_login),*/
/*  KEY reverse_costing_webservice_register_we_number_idx (warehouse_entry_number),*/
/*  KEY reverse_costing_webservice_register_po_number_idx (purchase_order_number),*/
/*  KEY reverse_costing_webservice_register_po_line_idx (purchase_order_line)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_Elemento_PedidoEntrada (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  Sislog_PedidoEntrada number(11,0) NOT NULL,
  CodigoLaicon number(11,0) NOT NULL,
  Modelo varchar2(50) NOT NULL,
  LaiconIdPadre number(11,0),
  Cantidad number(15,3),
  MillicomCode varchar2(150),
  ValorUnitario number(15,3),
  Serial varchar2(50),
  Factura varchar2(50),
  PRIMARY KEY (Id)
/*  KEY Sislog_PedidoEntrada (Sislog_PedidoEntrada),*/
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Modelo (Modelo),*/
/*  KEY FK_Sislog_Elemento_PedidoEntrada_Elemento (CodigoLaicon),*/
/*  KEY FK_Sislog_Elemento_PedidoEntrada_ElementoPadre (LaiconIdPadre)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_Elemento_PedidoSalida (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  Sislog_PedidoSalida number(11,0) NOT NULL,
  CodigoLaicon number(11,0) NOT NULL,
  Modelo varchar2(50) NOT NULL,
  Cantidad number(15,3) NOT NULL,
  PRIMARY KEY (Id)
/*  KEY Sislog_PedidoSalida (Sislog_PedidoSalida),*/
/*  KEY FK_Sislog_Elemento_PedidoSalida_Modelo (Modelo),*/
/*  KEY FK_Sislog_Elemento_PedidoSalida_Elemento (CodigoLaicon)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_Elemento_Transferencia (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  IdTransaccion number(11,0) NOT NULL,
  CodigoLaicon number(11,0) NOT NULL,
  Modelo varchar2(50) NOT NULL,
  LaiconIdPadre number(11,0),
  Cantidad number(15,3) NOT NULL,
  Serial varchar2(100),
  MillicomCode varchar2(150),
  ValorUnitario number(15,3),
  Estado number(11,0) NOT NULL,
  FechaAprobacion TIMESTAMP,
  PRIMARY KEY (Id)
/*  KEY IdTransaccion (IdTransaccion),*/
/*  KEY FK_Sislog_Elemento_Transferencia_Modelo (Modelo),*/
/*  KEY FK_Sislog_Elemento_Transferencia_Elemento (CodigoLaicon),*/
/*  KEY FK_Sislog_Elemento_Transferencia_ElementoPadre (LaiconIdPadre),*/
/*  KEY FK_Sislog_Elemento_Transferencia_Estado (Estado)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_PedidoEntrada (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  IdTransaccion number(11,0) NOT NULL,
  CodigoBodega varchar2(50) NOT NULL,
  Proveedor varchar2(100) NOT NULL,
  Factura varchar2(50),
  UsuarioCreacion varchar2(50) NOT NULL,
  Awb varchar2(50),
  PO varchar2(50) NOT NULL,
  FechaNotificacionSislog TIMESTAMP NOT NULL,
  FechaAprobacion TIMESTAMP,
  PRIMARY KEY (Id)
/*  UNIQUE KEY UQ_Sislog_PedidoEntrada_IdTransaccion (IdTransaccion)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_PedidoSalida (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  CodigoBodega varchar2(50) NOT NULL,
  CodigoDestinatario varchar2(50) NOT NULL,
  OM_OT varchar2(15) NOT NULL,
  RazonSocial varchar2(100),
  Direccion varchar2(150),
  Telefono varchar2(50),
  FechaNotificacionSislog TIMESTAMP NOT NULL,
  FechaAprobacion TIMESTAMP,
  PRIMARY KEY (Id)
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_TransferenciaParcial (
  IdTransaccion number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  CodigoBodega varchar2(50) NOT NULL,
  BodegaOrigen varchar2(50) NOT NULL,
  FechaNotificacionSislog TIMESTAMP,
  OM_OT varchar2(15) NOT NULL,
  PRIMARY KEY (IdTransaccion)
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE Sislog_Warehouse (
  Id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  CodigoBodega varchar2(50) NOT NULL,
  FechaAdicion TIMESTAMP NOT NULL,
  PRIMARY KEY (Id)
/*  UNIQUE KEY UQ_Sislog_Warehouse_CodigoBodega (CodigoBodega)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1*/;

CREATE TABLE site (
  code varchar2(50),
  name varchar2(150),
  region number(11,0),
  x varchar2(50),
  y varchar2(50),
  description varchar2(150),
  address varchar2(255),
  site_type number(11,0),
  security_company varchar2(100),
  commentaries varchar2(255),
  last_revision date,
  last_inspector varchar2(100),
  folio varchar2(100),
  production_date date,
  father_plate_code varchar2(100),
  tower_height varchar2(50),
  tower_contract_type varchar2(50),
  bts_technology_type varchar2(50),
  user_in_charge varchar2(50),
  on_air_date date,
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  spare_part_maintenance_zone number(11,0),
  PRIMARY KEY (code)
/*  KEY site_deleted_idx (deleted),*/
/*  KEY site_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE site_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(100),
  code varchar2(10),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1*/;

CREATE TABLE solve_surplus_alpopular (
  process_result_detail number(11,0),
  desktop_inventory number(11,0),
  element_result number(11,0),
  element number(11,0)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_interchange (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  spare_laicon_id number(11,0) NOT NULL,
  spare_model varchar2(50) NOT NULL,
  spare_serial varchar2(100),
  spare_part_interchange_state number(11,0) NOT NULL,
  departure_date TIMESTAMP,
  departure_user varchar2(50),
  spare_part_warehouse number(11,0),
  direction varchar2(50),
  responsible_user varchar2(50),
  closing_date TIMESTAMP,
  closing_user varchar2(50),
  closing_comment varchar2(500),
  element_order_type varchar2(20),
  element_order_number number(11,0),
  pending_days number(11,0),
  PRIMARY KEY (id)
/*  KEY spare_laicon_id (spare_laicon_id),*/
/*  KEY spare_model (spare_model),*/
/*  KEY spare_part_interchange_state (spare_part_interchange_state),*/
/*  KEY departure_user (departure_user),*/
/*  KEY spare_part_warehouse (spare_part_warehouse),*/
/*  KEY direction (direction),*/
/*  KEY responsible_user (responsible_user),*/
/*  KEY closing_user (closing_user),*/
/*  KEY spare_serial (spare_serial),*/
/*  KEY departure_date (departure_date),*/
/*  KEY closing_date (closing_date),*/
/*  KEY element_order_type (element_order_type),*/
/*  KEY element_order_number (element_order_number),*/
/*  KEY pending_days (pending_days)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_interchange_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  spare_part_interchange number(11,0) NOT NULL,
  damaged_element_id number(11,0) NOT NULL,
  damaged_element_model varchar2(50),
  damaged_element_serial varchar2(100),
  interchange_date TIMESTAMP,
  interchange_user varchar2(50),
  element_order_type varchar2(20),
  element_order_number number(11,0),
  PRIMARY KEY (id)
/*  KEY spare_part_interchange (spare_part_interchange),*/
/*  KEY damaged_element_id (damaged_element_id),*/
/*  KEY dameged_element_model (damaged_element_model),*/
/*  KEY interchange_user (interchange_user),*/
/*  KEY damaged_element_serial (damaged_element_serial),*/
/*  KEY interchange_date (interchange_date),*/
/*  KEY element_order_type (element_order_type),*/
/*  KEY element_order_number (element_order_number)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_interchange_state (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
/*  KEY name (name)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_mail_list (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  login varchar2(50) NOT NULL,
  alt_email varchar2(255),
  spare_part_mail_list_module varchar2(50) NOT NULL,
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
/*  KEY spare_part_mail_list_module (spare_part_mail_list_module),*/
/*  KEY enabled (enabled)*/
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_mail_list_module (
  code varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (code)
) /*ENGINE=InnoDB DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_maintenance_zone (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  code varchar2(50) NOT NULL,
  name varchar2(255) NOT NULL,
  spare_part_warehouse number(11,0) NOT NULL,
  enabled varchar2(1) DEFAULT 'N',
  region number(11,0),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_om_director (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  login varchar2(50),
  region number(11,0),
  PRIMARY KEY (id)
/*  UNIQUE KEY region (region)*/
) /*ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_warehouse (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  location varchar2(50),
  warehouse_type number(11,0),
  enabled varchar2(1) DEFAULT 'N',
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1*/;

CREATE TABLE spare_part_warehouse_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(500),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE stealed_element_location (
  code varchar2(50) NOT NULL,
  name varchar2(100),
  region number(11,0),
  address varchar2(50),
  user_in_charge varchar2(50),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  PRIMARY KEY (code)
/*  KEY stealed_element_location_deleted_idx (deleted),*/
/*  KEY stealed_element_location_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE supplier (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  document_type varchar2(10),
  document_number varchar2(50),
  name varchar2(100),
  address varchar2(150),
  country varchar2(50),
  contact_name varchar2(100),
  contact_phone varchar2(20),
  contact_email varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1*/;

CREATE TABLE synchronization (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  sync_date date,
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1*/;

CREATE TABLE synchronization_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  synchronization_id number(11,0),
  element number(11,0),
  sync_action varchar2(50),
  location_to varchar2(50),
  location_from varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=77263 DEFAULT CHARSET=latin1*/;

CREATE TABLE tax_type (
  code varchar2(10) DEFAULT '',
  description varchar2(100),
  PRIMARY KEY (code)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TYPE OF TAXES'*/;

CREATE TABLE ticket_template (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  text_xml clob,
  template_type varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1*/;

CREATE TABLE tower_contract_type (
  id varchar2(50) NOT NULL,
  type varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE transporter (
  id_number varchar2(50) NOT NULL,
  name varchar2(100),
  contact_name varchar2(50),
  phone varchar2(50),
  PRIMARY KEY (id_number)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE truck (
  license_plate varchar2(10) NOT NULL,
  driver_name varchar2(50),
  driver_phone varchar2(20),
  transporter varchar2(50),
  truck_type number(11,0),
  PRIMARY KEY (license_plate)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE truck_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1*/;

CREATE TABLE user_profile (
  login varchar2(50),
  profile number(11,0)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;
/*  KEY user_profile_login_profile_idx (login,profile)*/

CREATE TABLE users (
  login varchar2(50) NOT NULL,
  password varchar2(255),
  name varchar2(150),
  email varchar2(100),
  login_mobile varchar2(50),
  password_mobile varchar2(255),
  phone varchar2(50),
  identification varchar2(50),
  mobile_phone varchar2(50),
  authenticate_sap varchar2(1) DEFAULT 'N',
  login_sap varchar2(50),
  active varchar2(1) DEFAULT 'Y',
  blocked varchar2(1) DEFAULT 'N',
  set_new_password varchar2(1) DEFAULT 'Y',
  failed_attempts_seq_counter number(11,0) DEFAULT '0',
  PRIMARY KEY (login)
/*  UNIQUE KEY login_mobile (login_mobile),*/
/*  KEY login_sap_idx (login_sap)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE value_data (
  element_model_description varchar2(255),
  invoice_number varchar2(100),
  invoice_amount number(15,3),
  element_value number(15,3),
  element_serial varchar2(100),
  awb_number varchar2(100),
  tax_value number(15,3),
  trm number(15,3),
  quantity number(15,3)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE vendor (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  sap_code varchar2(50) NOT NULL,
  nit varchar2(20) NOT NULL,
  name varchar2(70) NOT NULL,
  city varchar2(100),
  region varchar2(100),
  street varchar2(100),
  country varchar2(100),
  telephone varchar2(100),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='VENDOR'*/;

CREATE TABLE warehouse (
  code varchar2(50) NOT NULL,
  region number(11,0),
  name varchar2(100),
  address varchar2(255),
  phone varchar2(50),
  user_in_charge varchar2(50),
  electric_power_company varchar2(50),
  phone_company varchar2(50),
  description varchar2(100),
  boss_name varchar2(255),
  boss_email varchar2(255),
  boss_phone varchar2(255),
  deleted varchar2(1) DEFAULT 'N',
  deleted_by_user varchar2(50),
  deleted_date timestamp ,
  geographic_location varchar2(50),
  PRIMARY KEY (code)
/*  KEY warehouse_deleted_idx (deleted),*/
/*  KEY warehouse_geographic_location_fk (geographic_location)*/
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE warehouse_entry (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  we_request number(11,0),
  sap_code varchar2(50) NOT NULL,
  purchase_order_line number(11,0),
  invoice varchar2(50),
  account_date TIMESTAMP,
  description varchar2(255),
  location varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY'*/;

CREATE TABLE warehouse_entry_detail (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  warehouse_entry number(11,0) NOT NULL,
  ext_line number(11,0) NOT NULL,
  line_no number(11,0) NOT NULL,
  short_text varchar2(50),
  quantity number(15,3),
  gr_price number(15,3),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY DETAIL'*/;

CREATE TABLE warehouse_keeper (
  id varchar2(50) NOT NULL,
  name varchar2(100),
  phone varchar2(50),
  login varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1*/;

CREATE TABLE warehouse_request (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  we_type number(11,0) NOT NULL,
  location varchar2(50) NOT NULL,
  request_date TIMESTAMP NOT NULL,
  status varchar2(50) NOT NULL,
  solve_date TIMESTAMP,
  last_access_date TIMESTAMP,
  last_result varchar2(50),
  notes varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE REQUEST'*/;

CREATE TABLE we_request_category (
  id varchar2(50) NOT NULL,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY CATEGORY'*/;

CREATE TABLE we_request_type (
  id number(11,0) NOT NULL /*AUTO_INCREMENT*/,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  category varchar2(50),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY REQUEST TYPE'*/;

CREATE TABLE we_status (
  id varchar2(50) NOT NULL,
  name varchar2(50) NOT NULL,
  description varchar2(255),
  PRIMARY KEY (id)
) /*ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY STATUS'*/;

CREATE TABLE user_password_history(
    id number(11,0) NOT NULL,
    login varchar(50),
    password varchar(255),
    register_date timestamp,
    PRIMARY KEY (ID)
);

CREATE TABLE import_declaration (
  id number(11) NOT NULL,
  code varchar(50) DEFAULT NULL,
  creation_date TIMESTAMP DEFAULT NULL,
  creation_user varchar(50) DEFAULT NULL,
  attach_files clob,
  PRIMARY KEY (id)
);
    
    
CREATE TABLE import_declaration_element (
  id NUMBER(11) NOT NULL,
  import_declaration NUMBER(11) NOT NULL,
  element NUMBER(11) NOT NULL,
  assign_date TIMESTAMP DEFAULT NULL,
  assign_user varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
);
