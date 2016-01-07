CREATE TABLE `additional_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_type` int(11) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL,
  `default_value` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

CREATE TABLE `additional_data` (
  `model` varchar(50) DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3936 DEFAULT CHARSET=latin1;

CREATE TABLE `air_waybill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `pieces_quantity` int(11) DEFAULT NULL,
  `freightage` double DEFAULT '0',
  `insurance` double DEFAULT '0',
  `expenditure` double DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL,
  `trm` double DEFAULT NULL,
  `nationalization` varchar(1) DEFAULT 'N',
  `in_inventory` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3000 DEFAULT CHARSET=latin1;

CREATE TABLE `backup_capitalization_data` (
  `element` int(11) DEFAULT NULL,
  `date_capitalization` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `bom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `description` text,
  `model` varchar(50) NOT NULL,
  `bom_provider` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_user` varchar(50) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_user` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `locked` varchar(1) NOT NULL,
  `comments` text,
  `id_sap` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bom_provider` (`bom_provider`),
  KEY `model` (`model`),
  KEY `name` (`name`),
  KEY `state` (`state`),
  KEY `locked` (`locked`),
  KEY `bom_idx` (`id`),
  KEY `bom_creation_user_idx` (`creation_user`),
  KEY `bom_update_user_idx` (`update_user`),
  CONSTRAINT `FK_bom_bom_provider29` FOREIGN KEY (`bom_provider`) REFERENCES `bom_provider` (`id`),
  CONSTRAINT `bom_ibfk_1` FOREIGN KEY (`bom_provider`) REFERENCES `bom_provider` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bom_ibfk_2` FOREIGN KEY (`model`) REFERENCES `element_model` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bom_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bom` int(11) NOT NULL,
  `element_model` varchar(50) DEFAULT NULL,
  `infrastructure_model` varchar(50) DEFAULT NULL,
  `is_infrastructure_element` varchar(1) NOT NULL,
  `defined_quantity` double DEFAULT '0',
  `unitary_cost_rate` double DEFAULT '0',
  `total_cost_rate` double DEFAULT '0',
  `unitary_nationalization_rate` double DEFAULT '0',
  `total_nationalization_rate` double DEFAULT '0',
  `unitary_installation_rate` double DEFAULT '0',
  `total_installation_rate` double DEFAULT '0',
  `unitary_intangible_rate` double DEFAULT '0',
  `total_intangible_rate` double DEFAULT '0',
  `export_sap` varchar(2) DEFAULT NULL,
  `line_sap` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bom_detail_element_model` (`element_model`),
  KEY `bom_detail_infrastructure_model` (`infrastructure_model`),
  KEY `bom_detail_bom` (`bom`),
  KEY `is_infrastructure_element` (`is_infrastructure_element`),
  KEY `bom_detail_export_sap_idx` (`export_sap`),
  KEY `bom_detail_line_sap_idx` (`line_sap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bom_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `bsc` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `bts_technology_type` (
  `id` varchar(50) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `capitalize_by_webservice_detail` (
  `capitalize_by_webservice_register` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  KEY `capitalize_by_webservice_detail_register_fk` (`capitalize_by_webservice_register`),
  KEY `capitalize_by_webservice_detail_element_fk` (`element`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `capitalize_by_webservice_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siscap_login` varchar(50) NOT NULL,
  `process_date` datetime NOT NULL,
  `siscap_capitalization_report` int(11) NOT NULL,
  `number_of_valid_registries` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capitalize_by_webservice_register_siscap_login_idx` (`siscap_login`),
  KEY `capitalize_by_webservice_register_capitalization_report_idx` (`siscap_capitalization_report`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

CREATE TABLE `capitalize_by_workbook_detail` (
  `capitalize_by_workbook_register` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  KEY `capitalize_by_workbook_detail_capitalize_by_workbook_register_fk` (`capitalize_by_workbook_register`),
  KEY `capitalize_by_workbook_detail_element_fk` (`element`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `capitalize_by_workbook_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) NOT NULL,
  `process_date` datetime NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_md5sum` varchar(50) NOT NULL,
  `number_of_valid_registries` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capitalize_by_workbook_register_users_fk` (`user_login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `car` (
  `code` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CAR';

CREATE TABLE `car_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_code` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CAR LINE';

CREATE TABLE `connection_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_a` varchar(50) DEFAULT NULL,
  `location_b` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `connection_link_provider` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `crossing_elements_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crossing_type` varchar(20) NOT NULL,
  `crossing_date` datetime NOT NULL,
  `crossing_login` varchar(50) NOT NULL,
  `crossing_state` varchar(20) NOT NULL,
  `crossing_commentaries` text,
  `approve_login` varchar(50) DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `reject_login` varchar(50) DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crossing_login` (`crossing_login`),
  KEY `approve_login` (`approve_login`),
  KEY `reject_login` (`reject_login`),
  KEY `crossing_type` (`crossing_type`),
  KEY `crossing_date` (`crossing_date`),
  KEY `crossing_state` (`crossing_state`),
  KEY `approve_date` (`approve_date`),
  KEY `reject_date` (`reject_date`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

CREATE TABLE `crossing_elements_process_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crossing_elements_process` int(11) NOT NULL,
  `element_missing` int(11) DEFAULT NULL,
  `element_model_missing` varchar(50) DEFAULT NULL,
  `location_missing` varchar(50) DEFAULT NULL,
  `serial_missing` varchar(100) DEFAULT NULL,
  `millicom_code_missing` varchar(150) DEFAULT NULL,
  `element_type_asset_missing` int(11) DEFAULT NULL,
  `element_category_asset_missing` int(11) DEFAULT NULL,
  `is_asset_missing` varchar(1) DEFAULT NULL,
  `asset_cop_value_missing` double DEFAULT NULL,
  `asset_usd_value_missing` double DEFAULT NULL,
  `asset_trm_missing` double DEFAULT NULL,
  `nationalization_cop_value_missing` double DEFAULT NULL,
  `nationalization_usd_value_missing` double DEFAULT NULL,
  `nationalization_trm_missing` double DEFAULT NULL,
  `date_capitalization_missing` date DEFAULT NULL,
  `element_new` int(11) DEFAULT NULL,
  `element_model_new` varchar(50) DEFAULT NULL,
  `location_new` varchar(50) DEFAULT NULL,
  `serial_new` varchar(100) DEFAULT NULL,
  `millicom_code_new` varchar(150) DEFAULT NULL,
  `element_type_asset_new` int(11) DEFAULT NULL,
  `element_category_asset_new` int(11) DEFAULT NULL,
  `is_asset_new` varchar(1) DEFAULT NULL,
  `asset_cop_value_new` double DEFAULT NULL,
  `asset_usd_value_new` double DEFAULT NULL,
  `asset_trm_new` double DEFAULT NULL,
  `nationalization_cop_value_new` double DEFAULT NULL,
  `nationalization_usd_value_new` double DEFAULT NULL,
  `nationalization_trm_new` double DEFAULT NULL,
  `date_capitalization_new` date DEFAULT NULL,
  `crossing_element_state` varchar(20) NOT NULL,
  `crossing_process_comment` varchar(255) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `approval_comments` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crossing_elements_process` (`crossing_elements_process`),
  KEY `element_missing` (`element_missing`),
  KEY `element_model_missing` (`element_model_missing`),
  KEY `location_missing` (`location_missing`),
  KEY `element_type_asset_missing` (`element_type_asset_missing`),
  KEY `element_category_asset_missing` (`element_category_asset_missing`),
  KEY `element_new` (`element_new`),
  KEY `element_model_new` (`element_model_new`),
  KEY `location_new` (`location_new`),
  KEY `element_type_asset_new` (`element_type_asset_new`),
  KEY `element_category_asset_new` (`element_category_asset_new`),
  KEY `serial_missing` (`serial_missing`),
  KEY `millicom_code_missing` (`millicom_code_missing`),
  KEY `is_asset_missing` (`is_asset_missing`),
  KEY `serial_new` (`serial_new`),
  KEY `millicom_code_new` (`millicom_code_new`),
  KEY `is_asset_new` (`is_asset_new`),
  KEY `crossing_element_state` (`crossing_element_state`)
) ENGINE=MyISAM AUTO_INCREMENT=4425 DEFAULT CHARSET=latin1;

CREATE TABLE `currency` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='CURRENCY';

CREATE TABLE `desktop_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_download` datetime DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `processed_user` varchar(50) DEFAULT NULL,
  `processed_date` datetime DEFAULT NULL,
  `reschedule` varchar(1) NOT NULL DEFAULT 'n',
  `rescheduled_by_user` varchar(50) DEFAULT NULL,
  `rescheduled_registry_date` datetime DEFAULT NULL,
  `desktop_inventory_grouping` int(11) DEFAULT NULL,
  `has_partial_inventory` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location` (`location`),
  KEY `processed_user` (`processed_user`),
  KEY `login` (`login`),
  KEY `rescheduled_by_user` (`rescheduled_by_user`),
  KEY `desktop_inventory_state_idx` (`state`),
  KEY `desktop_inventory_reschedule_idx` (`reschedule`),
  KEY `desktop_inventory_desktop_inventory_grouping_fk` (`desktop_inventory_grouping`),
  KEY `has_partial_inventory` (`has_partial_inventory`)
) ENGINE=MyISAM AUTO_INCREMENT=21868 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_admin_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_code` varchar(50) NOT NULL,
  `last_update_user` varchar(50) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `comments` text,
  `enabled` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_automatically_resolve_missing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory` int(11) NOT NULL,
  `desktop_inventory_process_result_detail` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `resolve_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `desktop_inventory_process_result_detail` (`desktop_inventory_process_result_detail`),
  KEY `element` (`element`),
  KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=6664 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `internal_location_id` int(11) DEFAULT NULL,
  `element` int(11) NOT NULL,
  `desktop_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `desktop_inventory_parcial_inventory` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `model` (`model`),
  KEY `location` (`location`),
  KEY `element` (`element`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `desktop_inventory_element_serial_idx` (`serial`),
  KEY `desktop_inventory_element_millicom_code_idx` (`millicom_code`),
  KEY `desktop_inventory_element_is_asset_idx` (`is_asset`),
  KEY `desktop_inventory_element_old_millicom_code_idx` (`old_millicom_code`),
  KEY `desktop_inventory_parcial_inventory` (`desktop_inventory_parcial_inventory`)
) ENGINE=MyISAM AUTO_INCREMENT=2685511 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_element_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_element` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `desktop_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `comments` text,
  `state` int(11) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `desktop_inventory_parcial_inventory` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `location` (`location`),
  KEY `model` (`model`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `desktop_inventory_element` (`desktop_inventory_element`),
  KEY `element` (`element`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `desktop_inventory_element_result_serial_idx` (`serial`),
  KEY `desktop_inventory_element_result_millicom_code_idx` (`millicom_code`),
  KEY `desktop_inventory_element_result_is_asset_idx` (`is_asset`),
  KEY `desktop_inventory_element_result_state_idx` (`state`),
  KEY `internal_location_id` (`internal_location_id`),
  KEY `desktop_inventory_parcial_inventory` (`desktop_inventory_parcial_inventory`)
) ENGINE=MyISAM AUTO_INCREMENT=2813967 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_excluded_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_grouping` int(11) DEFAULT NULL,
  `field_code` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `enabled` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_inventory_grouping` (`desktop_inventory_grouping`,`field_code`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_excluded_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_grouping` int(11) NOT NULL,
  `element_model` varchar(50) NOT NULL,
  `enabled` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_inventory_grouping` (`desktop_inventory_grouping`,`element_model`),
  KEY `element_model` (`element_model`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_grouping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grouping_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(1) NOT NULL,
  `is_default` varchar(1) DEFAULT NULL,
  `restrict_inventory_screen_fields` varchar(1) DEFAULT NULL,
  `solve_missing_only_field_service` varchar(1) DEFAULT NULL,
  `validate_upload_terminal_files` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `is_default` (`is_default`),
  KEY `desktop_inventory_grouping_restrict_inventory_screen_fields_idx` (`restrict_inventory_screen_fields`),
  KEY `desktop_inventory_grouping_solve_missing_only_field_service_idx` (`solve_missing_only_field_service`),
  KEY `validate_upload_terminal_files` (`validate_upload_terminal_files`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_partial_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory` int(11) DEFAULT NULL,
  `desktop_inventory_admin_warehouse` int(11) DEFAULT NULL,
  `internal_location` int(11) DEFAULT NULL,
  `partial_download_user` varchar(50) DEFAULT NULL,
  `partial_download_date` datetime DEFAULT NULL,
  `partial_upload_user` varchar(50) DEFAULT NULL,
  `partial_upload_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `desktop_inventory_admin_warehouse` (`desktop_inventory_admin_warehouse`),
  KEY `internal_location` (`internal_location`),
  KEY `partial_download_user` (`partial_download_user`),
  KEY `partial_download_date` (`partial_download_date`),
  KEY `partial_upload_user` (`partial_upload_user`),
  KEY `partial_upload_date` (`partial_upload_date`)
) ENGINE=MyISAM AUTO_INCREMENT=9250 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory` int(11) NOT NULL,
  `desktop_inventory_element` int(11) NOT NULL,
  `desktop_inventory_element_result` int(11) NOT NULL,
  `process_result_state` varchar(50) NOT NULL,
  `process_result_type` varchar(50) NOT NULL,
  `detail` text,
  `complete_description` text,
  `commentaries` text,
  `desktop_inventory_partial_inventory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `desktop_inventory_element` (`desktop_inventory_element`),
  KEY `desktop_inventory_element_result` (`desktop_inventory_element_result`),
  KEY `process_result_state` (`process_result_state`),
  KEY `process_result_type` (`process_result_type`),
  KEY `di_process_result_detail_partial_inventory_idx` (`desktop_inventory_partial_inventory`)
) ENGINE=MyISAM AUTO_INCREMENT=2870708 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_difference_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_element` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `desktop_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `comments` text,
  `desktop_inventory_process_result_detail` int(11) NOT NULL,
  `check_field_service_login` varchar(50) DEFAULT NULL,
  `check_field_service_date` datetime DEFAULT NULL,
  `check_inventory_responsible_login` varchar(50) DEFAULT NULL,
  `check_inventory_responsible_date` datetime DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `missing_element_created_for_partial_diff` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_inventory_element` (`desktop_inventory_element`),
  KEY `element` (`element`),
  KEY `location` (`location`),
  KEY `model` (`model`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `desktop_inventory_process_result_detail` (`desktop_inventory_process_result_detail`),
  KEY `check_field_service_login` (`check_field_service_login`),
  KEY `check_inventory_responsible_login` (`check_inventory_responsible_login`),
  KEY `process_result_diff_detail_serial_idx` (`serial`),
  KEY `process_result_diff_detail_millicom_code_idx` (`millicom_code`),
  KEY `process_result_diff_detail_is_asset_idx` (`is_asset`),
  KEY `internal_location_id` (`internal_location_id`),
  KEY `di_process_diff_detail_missing_element_created_idx` (`missing_element_created_for_partial_diff`)
) ENGINE=MyISAM AUTO_INCREMENT=181619 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_missing_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_element` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `desktop_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `comments` text,
  `desktop_inventory_process_result_detail` int(11) DEFAULT NULL,
  `solve_pending_unsuscribe_element` varchar(1) DEFAULT NULL,
  `field_service_check_login` varchar(50) DEFAULT NULL,
  `field_service_check_date` datetime DEFAULT NULL,
  `responsible_check_login` varchar(50) DEFAULT NULL,
  `responsible_check_date` datetime DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `desktop_inventory_element` (`desktop_inventory_element`),
  KEY `element` (`element`),
  KEY `location` (`location`),
  KEY `model` (`model`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `desktop_inventory_process_result_detail` (`desktop_inventory_process_result_detail`),
  KEY `field_service_check_login` (`field_service_check_login`),
  KEY `responsible_check_login` (`responsible_check_login`),
  KEY `process_result_missing_detail_serial_idx` (`serial`),
  KEY `process_result_missing_detail_millicom_code_idx` (`millicom_code`),
  KEY `process_result_missing_detail_is_asset_idx` (`is_asset`),
  KEY `process_result_missing_detail_solve_pending_unsuscribe_idx` (`solve_pending_unsuscribe_element`),
  KEY `internal_location_id` (`internal_location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117690 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_new_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_element` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `desktop_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `comments` text,
  `desktop_inventory_process_result_detail` int(11) DEFAULT NULL,
  `check_login` varchar(50) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `match_missing_login` varchar(50) DEFAULT NULL,
  `match_missing_date` datetime DEFAULT NULL,
  `only_solve_check_login` varchar(50) DEFAULT NULL,
  `only_solve_check_date` datetime DEFAULT NULL,
  `process_result_detail_missing_match` int(11) DEFAULT NULL,
  `new_element_assigned_asset_cop_value` double DEFAULT NULL,
  `new_element_created_id` int(11) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `desktop_inventory_element` (`desktop_inventory_element`),
  KEY `element` (`element`),
  KEY `location` (`location`),
  KEY `model` (`model`),
  KEY `desktop_inventory` (`desktop_inventory`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `desktop_inventory_process_result_detail` (`desktop_inventory_process_result_detail`),
  KEY `check_login` (`check_login`),
  KEY `match_missing_login` (`match_missing_login`),
  KEY `process_result_detail_missing_match` (`process_result_detail_missing_match`),
  KEY `process_result_new_detail_serial_idx` (`serial`),
  KEY `process_result_new_detail_millicom_code_idx` (`millicom_code`),
  KEY `process_result_new_detail_is_asset_idx` (`is_asset`),
  KEY `process_result_new_detail_only_solve_check_login_fk` (`only_solve_check_login`),
  KEY `process_result_new_detail_new_element_created_id` (`new_element_created_id`),
  KEY `internal_location_id` (`internal_location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48199 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_state` (
  `code` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_process_result_type` (
  `code` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_surplus_transfer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desktop_inventory_process_result_detail` int(11) DEFAULT NULL,
  `element_transfer_order` int(11) DEFAULT NULL,
  `element_transfer_order_detail` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_inventory_process_result_detail` (`desktop_inventory_process_result_detail`),
  KEY `element_transfer_order` (`element_transfer_order`),
  KEY `element_transfer_order_detail` (`element_transfer_order_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=12200 DEFAULT CHARSET=latin1;

CREATE TABLE `desktop_inventory_terminal_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_model` varchar(50) NOT NULL,
  `enabled` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

CREATE TABLE `document_type` (
  `id` varchar(10) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT 'N',
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `trm_value` double DEFAULT '0',
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT '0',
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `source_element` int(11) DEFAULT '0',
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT '0',
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) NOT NULL DEFAULT 'N',
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  `piece_box_stowage` varchar(65) DEFAULT NULL,
  `reenabled` varchar(1) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL,
  `import_declaration` varchar(50) DEFAULT NULL,
  `id_sap` varchar(20) DEFAULT NULL,
  `subnumber_sap` varchar(20) DEFAULT NULL,
  `software_cop` double DEFAULT NULL,
  `software_usd` double DEFAULT NULL,
  `services_cop` double DEFAULT NULL,
  `services_usd` int(15) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_deleted_idx` (`deleted`),
  KEY `element_containing_element_idx` (`containing_element`),
  KEY `element_awb_idx` (`awb`),
  KEY `element_tigo_inventory_code_idx` (`tigo_inventory_code`),
  KEY `element_serial_idx` (`serial`),
  KEY `element_location_idx` (`location`),
  KEY `element_model_idx` (`model`),
  KEY `element_internal_location_id_idx` (`internal_location_id`),
  KEY `element_source_element_idx` (`source_element`),
  KEY `element_installation_site_1_idx` (`installation_site_1`),
  KEY `element_installation_site_2_idx` (`installation_site_2`),
  KEY `element_login_update_installation_site_idx` (`login_update_installation_site`),
  KEY `element_in_movement_idx` (`in_movement`),
  KEY `element_type_asset_element_fk` (`element_type_asset`),
  KEY `element_category_asset_element_fk` (`element_category_asset`),
  KEY `element_purchase_order_number_idx` (`purchase_order_number`),
  KEY `element_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_fixed_asset_number_idx` (`fixed_asset_number`),
  KEY `element_wip_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_purchase_order_line_idx` (`purchase_order_line`),
  KEY `element_warehouse_entry_number_idx` (`warehouse_entry_number`),
  KEY `element_car_number_idx` (`car_number`),
  KEY `element_is_asset_idx` (`is_asset`),
  KEY `element_fixed_asset_subnumber_idx` (`fixed_asset_subnumber`),
  KEY `element_old_millicom_code_idx` (`old_millicom_code`),
  KEY `element_millicom_code_idx` (`millicom_code`),
  KEY `element_quantity_idx` (`quantity`),
  KEY `element_element_state_idx` (`element_state`),
  KEY `element_date_capitalization_idx` (`date_capitalization`),
  KEY `element_last_inventory_date_idx` (`last_inventory_date`),
  KEY `element_last_inventory_id_fk` (`last_inventory_id`),
  KEY `element_locked_idx` (`locked`),
  KEY `element_piece_box_stowage_idx` (`piece_box_stowage`),
  KEY `element_reenabled_idx` (`reenabled`),
  KEY `element_element_classification_idx` (`element_classification`),
  KEY `import_declaration` (`import_declaration`)
) ENGINE=InnoDB AUTO_INCREMENT=1526240 DEFAULT CHARSET=latin1;

CREATE TABLE `element3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT 'N',
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `trm_value` double DEFAULT '0',
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT '0',
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `source_element` int(11) DEFAULT '0',
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT '0',
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) NOT NULL DEFAULT 'N',
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_deleted_idx` (`deleted`),
  KEY `element_containing_element_idx` (`containing_element`),
  KEY `element_awb_idx` (`awb`),
  KEY `element_tigo_inventory_code_idx` (`tigo_inventory_code`),
  KEY `element_serial_idx` (`serial`),
  KEY `element_location_idx` (`location`),
  KEY `element_model_idx` (`model`),
  KEY `element_internal_location_id_idx` (`internal_location_id`),
  KEY `element_source_element_idx` (`source_element`),
  KEY `element_installation_site_1_idx` (`installation_site_1`),
  KEY `element_installation_site_2_idx` (`installation_site_2`),
  KEY `element_login_update_installation_site_idx` (`login_update_installation_site`),
  KEY `element_in_movement_idx` (`in_movement`),
  KEY `element_type_asset_element_fk` (`element_type_asset`),
  KEY `element_category_asset_element_fk` (`element_category_asset`),
  KEY `element_purchase_order_number_idx` (`purchase_order_number`),
  KEY `element_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_fixed_asset_number_idx` (`fixed_asset_number`),
  KEY `element_wip_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_purchase_order_line_idx` (`purchase_order_line`),
  KEY `element_warehouse_entry_number_idx` (`warehouse_entry_number`),
  KEY `element_car_number_idx` (`car_number`),
  KEY `element_is_asset_idx` (`is_asset`),
  KEY `element_fixed_asset_subnumber_idx` (`fixed_asset_subnumber`),
  KEY `element_old_millicom_code_idx` (`old_millicom_code`),
  KEY `element_millicom_code_idx` (`millicom_code`),
  KEY `element_quantity_idx` (`quantity`),
  KEY `element_element_state_idx` (`element_state`),
  KEY `element_date_capitalization_idx` (`date_capitalization`),
  KEY `element_last_inventory_date_idx` (`last_inventory_date`),
  KEY `element_last_inventory_id_fk` (`last_inventory_id`),
  KEY `element_locked_idx` (`locked`)
) ENGINE=MyISAM AUTO_INCREMENT=1036276 DEFAULT CHARSET=latin1;

CREATE TABLE `element_BKP_20111201` (
  `id` int(11) NOT NULL DEFAULT '0',
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT 'N',
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `trm_value` double DEFAULT '0',
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT '0',
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `source_element` int(11) DEFAULT '0',
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT '0',
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) NOT NULL DEFAULT 'N',
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  `piece_box_stowage` varchar(65) DEFAULT NULL,
  `reenabled` varchar(1) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

CREATE TABLE `element_category_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `investment_item` varchar(10) DEFAULT NULL,
  `mic_code_prefix` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `investment_item_element_category_asset_fk` (`investment_item`),
  KEY `mic_code_prefix_element_category_asset_fk` (`mic_code_prefix`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 COMMENT='Categor?­a de Activos Fijos para Elementos';

CREATE TABLE `element_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

CREATE TABLE `element_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` int(11) DEFAULT NULL,
  `history_date` date DEFAULT NULL,
  `history_time` time DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `movement_report` int(11) DEFAULT NULL,
  `detailed_type` varchar(50) DEFAULT NULL,
  `support_code` varchar(100) DEFAULT NULL,
  `support_table` varchar(100) DEFAULT NULL,
  `split_source_element` int(11) DEFAULT NULL,
  `element_model` varchar(150) DEFAULT NULL,
  `element_serial` varchar(150) DEFAULT NULL,
  `element_purchase_price` double DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `element_containing_element` int(11) DEFAULT NULL,
  `element_internal_location` int(11) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_invoice` int(11) DEFAULT NULL,
  `element_insurance_value` double DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_in_movement` varchar(1) DEFAULT NULL,
  `intermediate_location` varchar(50) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `element_asset_cop_value` double DEFAULT NULL,
  `element_asset_usd_value` double DEFAULT NULL,
  `element_asset_trm` double DEFAULT NULL,
  `element_nationalization_cop_value` double DEFAULT NULL,
  `element_nationalization_usd_value` double DEFAULT NULL,
  `element_nationalization_trm` double DEFAULT NULL,
  `element_purchase_order_number` varchar(50) DEFAULT NULL,
  `element_wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `element_fixed_asset_number` varchar(50) DEFAULT NULL,
  `element_fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `element_purchase_order_line` varchar(5) DEFAULT NULL,
  `element_warehouse_entry_number` varchar(50) DEFAULT NULL,
  `element_car_number` varchar(50) DEFAULT NULL,
  `element_is_asset` varchar(1) DEFAULT NULL,
  `element_date_capitalization` date DEFAULT NULL,
  `element_nationalization_subnumber` varchar(50) DEFAULT NULL,
  `element_locked` varchar(1) DEFAULT NULL,
  `element_piece_box_stowage` varchar(65) DEFAULT NULL,
  `element_reenabled` varchar(1) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_history_detailed_type_idx` (`detailed_type`),
  KEY `element_history_support_code_idx` (`support_code`),
  KEY `element_history_support_table_idx` (`support_table`),
  KEY `element_history_split_source_element_idx` (`split_source_element`),
  KEY `element_history_element_model_idx` (`element_model`),
  KEY `element_history_element_serial_idx` (`element_serial`),
  KEY `element_history_element_purchase_price_idx` (`element_purchase_price`),
  KEY `element_history_element_state_idx` (`element_state`),
  KEY `element_history_element_containing_element_idx` (`element_containing_element`),
  KEY `element_history_element_internal_location_idx` (`element_internal_location`),
  KEY `element_history_element_awb_idx` (`element_awb`),
  KEY `element_history_element_invoice_idx` (`element_invoice`),
  KEY `element_history_element_insurance_value_idx` (`element_insurance_value`),
  KEY `element_history_element_millicom_code_idx` (`element_millicom_code`),
  KEY `element_history_intermediate_location_idx` (`intermediate_location`),
  KEY `element_history_type_asset_idx` (`element_type_asset`),
  KEY `element_history_category_asset_idx` (`element_category_asset`),
  KEY `element_history_asset_cop_value_idx` (`element_asset_cop_value`),
  KEY `element_history_asset_usd_value_idx` (`element_asset_usd_value`),
  KEY `element_history_asset_trm_idx` (`element_asset_trm`),
  KEY `element_history_nationalization_cop_value_idx` (`element_nationalization_cop_value`),
  KEY `element_history_nationalization_usd_value_idx` (`element_nationalization_usd_value`),
  KEY `element_history_nationalization_trm_idx` (`element_nationalization_trm`),
  KEY `element_history_purchase_order_number_idx` (`element_purchase_order_number`),
  KEY `element_history_wip_temporal_fixed_asset_number_idx` (`element_wip_temporal_fixed_asset_number`),
  KEY `element_history_fixed_asset_number_idx` (`element_fixed_asset_number`),
  KEY `element_history_fixed_asset_subnumber_idx` (`element_fixed_asset_subnumber`),
  KEY `element_history_purchase_order_line_idx` (`element_purchase_order_line`),
  KEY `element_history_warehouse_entry_number_idx` (`element_warehouse_entry_number`),
  KEY `element_history_car_number_idx` (`element_car_number`),
  KEY `element_history_is_asset_idx` (`element_is_asset`),
  KEY `element_history_date_capitalization_idx` (`element_date_capitalization`),
  KEY `element_history_nationalization_subnumber_idx` (`element_nationalization_subnumber`),
  KEY `element_history_element_locked_idx` (`element_locked`),
  KEY `element_history_element_in_movement_idx` (`element_in_movement`),
  KEY `element_history_element_idx` (`element`),
  KEY `element_history_history_date_idx` (`history_date`),
  KEY `element_history_history_time_idx` (`history_time`),
  KEY `element_history_action_idx` (`action`),
  KEY `element_history_location_idx` (`location`),
  KEY `element_history_direction_idx` (`direction`),
  KEY `element_history_movement_report_idx` (`movement_report`),
  KEY `element_history_piece_box_stowage_idx` (`element_piece_box_stowage`),
  KEY `element_history_element_reenabled_idx` (`element_reenabled`),
  KEY `element_history_classification_idx` (`element_classification`)
) ENGINE=InnoDB AUTO_INCREMENT=13794425 DEFAULT CHARSET=latin1;

CREATE TABLE `element_history_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` int(11) DEFAULT NULL,
  `history_date` date DEFAULT NULL,
  `history_time` time DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `movement_report` int(11) DEFAULT NULL,
  `detailed_type` varchar(50) DEFAULT NULL,
  `support_code` varchar(100) DEFAULT NULL,
  `support_table` varchar(100) DEFAULT NULL,
  `split_source_element` int(11) DEFAULT NULL,
  `element_model` varchar(150) DEFAULT NULL,
  `element_serial` varchar(150) DEFAULT NULL,
  `element_purchase_price` double DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `element_containing_element` int(11) DEFAULT NULL,
  `element_internal_location` int(11) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_invoice` int(11) DEFAULT NULL,
  `element_insurance_value` double DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_in_movement` varchar(1) DEFAULT NULL,
  `intermediate_location` varchar(50) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `element_asset_cop_value` double DEFAULT NULL,
  `element_asset_usd_value` double DEFAULT NULL,
  `element_asset_trm` double DEFAULT NULL,
  `element_nationalization_cop_value` double DEFAULT NULL,
  `element_nationalization_usd_value` double DEFAULT NULL,
  `element_nationalization_trm` double DEFAULT NULL,
  `element_purchase_order_number` varchar(50) DEFAULT NULL,
  `element_wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `element_fixed_asset_number` varchar(50) DEFAULT NULL,
  `element_fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `element_purchase_order_line` varchar(5) DEFAULT NULL,
  `element_warehouse_entry_number` varchar(50) DEFAULT NULL,
  `element_car_number` varchar(50) DEFAULT NULL,
  `element_is_asset` varchar(1) DEFAULT NULL,
  `element_date_capitalization` date DEFAULT NULL,
  `element_nationalization_subnumber` varchar(50) DEFAULT NULL,
  `element_locked` varchar(1) DEFAULT NULL,
  `element_piece_box_stowage` varchar(65) DEFAULT NULL,
  `element_reenabled` varchar(1) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_history_detailed_type_idx` (`detailed_type`),
  KEY `element_history_support_code_idx` (`support_code`),
  KEY `element_history_support_table_idx` (`support_table`),
  KEY `element_history_split_source_element_idx` (`split_source_element`),
  KEY `element_history_element_model_idx` (`element_model`),
  KEY `element_history_element_serial_idx` (`element_serial`),
  KEY `element_history_element_purchase_price_idx` (`element_purchase_price`),
  KEY `element_history_element_state_idx` (`element_state`),
  KEY `element_history_element_containing_element_idx` (`element_containing_element`),
  KEY `element_history_element_internal_location_idx` (`element_internal_location`),
  KEY `element_history_element_awb_idx` (`element_awb`),
  KEY `element_history_element_invoice_idx` (`element_invoice`),
  KEY `element_history_element_insurance_value_idx` (`element_insurance_value`),
  KEY `element_history_element_millicom_code_idx` (`element_millicom_code`),
  KEY `element_history_intermediate_location_idx` (`intermediate_location`),
  KEY `element_history_type_asset_idx` (`element_type_asset`),
  KEY `element_history_category_asset_idx` (`element_category_asset`),
  KEY `element_history_asset_cop_value_idx` (`element_asset_cop_value`),
  KEY `element_history_asset_usd_value_idx` (`element_asset_usd_value`),
  KEY `element_history_asset_trm_idx` (`element_asset_trm`),
  KEY `element_history_nationalization_cop_value_idx` (`element_nationalization_cop_value`),
  KEY `element_history_nationalization_usd_value_idx` (`element_nationalization_usd_value`),
  KEY `element_history_nationalization_trm_idx` (`element_nationalization_trm`),
  KEY `element_history_purchase_order_number_idx` (`element_purchase_order_number`),
  KEY `element_history_wip_temporal_fixed_asset_number_idx` (`element_wip_temporal_fixed_asset_number`),
  KEY `element_history_fixed_asset_number_idx` (`element_fixed_asset_number`),
  KEY `element_history_fixed_asset_subnumber_idx` (`element_fixed_asset_subnumber`),
  KEY `element_history_purchase_order_line_idx` (`element_purchase_order_line`),
  KEY `element_history_warehouse_entry_number_idx` (`element_warehouse_entry_number`),
  KEY `element_history_car_number_idx` (`element_car_number`),
  KEY `element_history_is_asset_idx` (`element_is_asset`),
  KEY `element_history_date_capitalization_idx` (`element_date_capitalization`),
  KEY `element_history_nationalization_subnumber_idx` (`element_nationalization_subnumber`),
  KEY `element_history_element_locked_idx` (`element_locked`),
  KEY `element_history_element_in_movement_idx` (`element_in_movement`),
  KEY `element_history_element_idx` (`element`),
  KEY `element_history_history_date_idx` (`history_date`),
  KEY `element_history_history_time_idx` (`history_time`),
  KEY `element_history_action_idx` (`action`),
  KEY `element_history_location_idx` (`location`),
  KEY `element_history_direction_idx` (`direction`),
  KEY `element_history_movement_report_idx` (`movement_report`),
  KEY `element_history_piece_box_stowage_idx` (`element_piece_box_stowage`),
  KEY `element_history_element_reenabled_idx` (`element_reenabled`),
  KEY `element_history_classification_idx` (`element_classification`)
) ENGINE=InnoDB AUTO_INCREMENT=13660780 DEFAULT CHARSET=latin1;

CREATE TABLE `element_inventory` (
  `element` int(11) DEFAULT NULL,
  `inventory_date` datetime DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_model` (
  `id` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `maker` varchar(50) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `sub_reference` varchar(50) DEFAULT NULL,
  `element_type` int(11) DEFAULT NULL,
  `value_type` varchar(20) DEFAULT NULL,
  `remote_inventory_code` varchar(100) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT 'N',
  `measurement_unit` int(11) DEFAULT NULL,
  `plu` varchar(20) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `default_element_type_asset` int(11) DEFAULT NULL,
  `model_cop_value` double DEFAULT '0',
  `model_cop_value_file` text,
  `id_sap` varchar(50) DEFAULT NULL,
  `model_sap` varchar(5) DEFAULT NULL,
  `net_weight` varchar(13) DEFAULT NULL,
  `length` varchar(5) DEFAULT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_model_description_idx` (`description`),
  KEY `element_model_value_type_idx` (`value_type`),
  KEY `element_type_asset_element_model_fk` (`default_element_type_asset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `element_model_x_remote_inventory_reference` (
  `element_model` varchar(50) NOT NULL,
  `remote_inventory_reference` varchar(255) NOT NULL,
  `remote_inventory_provider` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`element_model`,`remote_inventory_reference`,`remote_inventory_provider`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_movement_order_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `comment_time` time DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99067 DEFAULT CHARSET=latin1;

CREATE TABLE `element_order_problem_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_login` varchar(50) DEFAULT NULL,
  `report_datetime` datetime DEFAULT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `case_type` varchar(50) DEFAULT NULL,
  `solve_login` varchar(50) DEFAULT NULL,
  `solve_datetime` datetime DEFAULT NULL,
  `report_comment` text,
  `solve_comment` text,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=880 DEFAULT CHARSET=latin1;

CREATE TABLE `element_order_problem_case_absence_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `detail_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6278 DEFAULT CHARSET=latin1;

CREATE TABLE `element_order_problem_case_attach_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_order_problem_case` int(11) NOT NULL,
  `attach_file` varchar(250) NOT NULL,
  `md5checksum` varchar(50) NOT NULL,
  `uploaded_by` varchar(50) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_order_problem_case` (`element_order_problem_case`),
  KEY `element_order_problem_case_attach_file_uploaded_by_fk` (`uploaded_by`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

CREATE TABLE `element_order_problem_case_excess_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_date` datetime DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `petitioner` varchar(150) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `reviewed` varchar(50) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `truck_type` int(11) DEFAULT NULL,
  `truck_license` varchar(10) DEFAULT NULL,
  `carry_proposed_time` datetime DEFAULT NULL,
  `carry_start_time` datetime DEFAULT NULL,
  `arrival_estimated_time` datetime DEFAULT NULL,
  `auth_transport` varchar(50) DEFAULT NULL,
  `auth_trans_time` datetime DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `truck_space_used` varchar(10) DEFAULT NULL,
  `in_transit` datetime DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `petitioner_email` varchar(150) DEFAULT NULL,
  `arrived_state` varchar(1) DEFAULT 'N',
  `arrived_time` datetime DEFAULT NULL,
  `created_state_user` varchar(50) DEFAULT NULL,
  `authorized_state_user` varchar(50) DEFAULT NULL,
  `in_transit_state_user` varchar(50) DEFAULT NULL,
  `canceled_state_user` varchar(50) DEFAULT NULL,
  `review_state_user` varchar(50) DEFAULT NULL,
  `end_state_user` varchar(50) DEFAULT NULL,
  `order_priority_type` int(11) DEFAULT NULL,
  `requires_transportation` varchar(1) DEFAULT NULL,
  `order_execution_responsible` int(11) DEFAULT NULL,
  `document_send` varchar(100) DEFAULT NULL,
  `document_receive` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_request_location_idx` (`location`),
  KEY `element_request_created_state_user_idx` (`created_state_user`),
  KEY `element_request_authorized_state_user_idx` (`authorized_state_user`),
  KEY `element_request_in_transit_state_user_idx` (`in_transit_state_user`),
  KEY `element_request_canceled_state_user_idx` (`canceled_state_user`),
  KEY `element_request_review_state_user_idx` (`review_state_user`),
  KEY `element_request_end_state_user_idx` (`end_state_user`),
  KEY `element_request_state_idx` (`state`),
  KEY `element_request_request_date_idx` (`request_date`),
  KEY `element_request_login_idx` (`login`),
  KEY `element_request_reviewed_idx` (`reviewed`),
  KEY `element_request_auth_transport_idx` (`auth_transport`),
  KEY `element_request_direction_idx` (`direction`),
  KEY `element_request_order_priority_type_idx` (`order_priority_type`),
  KEY `element_request_requires_transportation_idx` (`requires_transportation`),
  KEY `element_request_order_execution_responsible_idx` (`order_execution_responsible`)
) ENGINE=InnoDB AUTO_INCREMENT=64173 DEFAULT CHARSET=latin1;

CREATE TABLE `element_requested` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `request` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `truck_license` varchar(10) DEFAULT NULL,
  `confirmed` varchar(1) DEFAULT 'N',
  `arrived` varchar(1) DEFAULT 'N',
  `arrive_time` datetime DEFAULT NULL,
  `location_assigned_new` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_requested_request_idx` (`request`),
  KEY `element_requested_element_idx` (`element`),
  KEY `element_requested_arrived_idx` (`arrived`)
) ENGINE=InnoDB AUTO_INCREMENT=975723 DEFAULT CHARSET=latin1;

CREATE TABLE `element_request_person_in_charge` (
  `request` int(11) NOT NULL,
  `id_number` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_request_transport` (
  `request` int(11) DEFAULT NULL,
  `license` varchar(10) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_phone` varchar(20) DEFAULT NULL,
  `transporter` int(11) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `elements2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT 'N',
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `trm_value` double DEFAULT '0',
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT '0',
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT '0',
  `source_element` int(11) DEFAULT '0',
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT '0',
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) NOT NULL DEFAULT 'N',
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_deleted_idx` (`deleted`),
  KEY `element_containing_element_idx` (`containing_element`),
  KEY `element_awb_idx` (`awb`),
  KEY `element_tigo_inventory_code_idx` (`tigo_inventory_code`),
  KEY `element_serial_idx` (`serial`),
  KEY `element_location_idx` (`location`),
  KEY `element_model_idx` (`model`),
  KEY `element_internal_location_id_idx` (`internal_location_id`),
  KEY `element_source_element_idx` (`source_element`),
  KEY `element_installation_site_1_idx` (`installation_site_1`),
  KEY `element_installation_site_2_idx` (`installation_site_2`),
  KEY `element_login_update_installation_site_idx` (`login_update_installation_site`),
  KEY `element_in_movement_idx` (`in_movement`),
  KEY `element_type_asset_element_fk` (`element_type_asset`),
  KEY `element_category_asset_element_fk` (`element_category_asset`),
  KEY `element_purchase_order_number_idx` (`purchase_order_number`),
  KEY `element_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_fixed_asset_number_idx` (`fixed_asset_number`),
  KEY `element_wip_temporal_fixed_asset_number_idx` (`wip_temporal_fixed_asset_number`),
  KEY `element_purchase_order_line_idx` (`purchase_order_line`),
  KEY `element_warehouse_entry_number_idx` (`warehouse_entry_number`),
  KEY `element_car_number_idx` (`car_number`),
  KEY `element_is_asset_idx` (`is_asset`),
  KEY `element_fixed_asset_subnumber_idx` (`fixed_asset_subnumber`),
  KEY `element_old_millicom_code_idx` (`old_millicom_code`),
  KEY `element_millicom_code_idx` (`millicom_code`),
  KEY `element_quantity_idx` (`quantity`),
  KEY `element_element_state_idx` (`element_state`),
  KEY `element_date_capitalization_idx` (`date_capitalization`),
  KEY `element_last_inventory_date_idx` (`last_inventory_date`),
  KEY `element_last_inventory_id_fk` (`last_inventory_id`),
  KEY `element_locked_idx` (`locked`)
) ENGINE=MyISAM AUTO_INCREMENT=1034675 DEFAULT CHARSET=latin1;

CREATE TABLE `element_screenshot_comparison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(50) NOT NULL,
  `comparison_date` datetime NOT NULL,
  `screenshot_origin` int(11) NOT NULL,
  `screenshot_destination` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `error_stacktrace` text,
  PRIMARY KEY (`id`),
  KEY `element_screenshot_comparison_created_by_idx` (`created_by`),
  KEY `element_screenshot_comparison_screenshot_origin_idx` (`screenshot_origin`),
  KEY `element_screenshot_comparison_screenshot_destination_idx` (`screenshot_destination`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `element_screenshot_comparison_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_screenshot_comparison` int(11) DEFAULT NULL,
  `element_screenshot_comparison_difference_type` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `field` varchar(100) NOT NULL,
  `left_value` varchar(100) DEFAULT NULL,
  `right_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comparison_detail_comparison_fk` (`element_screenshot_comparison`),
  KEY `comparison_detail_difference_type_fk` (`element_screenshot_comparison_difference_type`),
  KEY `comparison_detail_element_fk` (`element`)
) ENGINE=MyISAM AUTO_INCREMENT=701912 DEFAULT CHARSET=latin1;

CREATE TABLE `element_screenshot_comparison_difference_type` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_screenshot_data` (
  `element_screenshot_registry` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT NULL,
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `trm_value` double DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT NULL,
  `source_element` int(11) DEFAULT NULL,
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  `piece_box_stowage` varchar(65) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL,
  KEY `screenshot_data_element_screenshot_registry_idx` (`element_screenshot_registry`),
  KEY `element_screenshot_data_location_idx` (`location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_screenshot_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_date` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `element_screenshot_registry_created_by_idx` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

CREATE TABLE `element_snapshot` (
  `id` int(11) NOT NULL,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT 'N',
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `internal_location` varchar(255) DEFAULT NULL,
  `in_wip` varchar(1) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `trm_value` double DEFAULT '0',
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT '0',
  `millicom_code` varchar(150) DEFAULT NULL,
  `snapshot_date` datetime DEFAULT NULL,
  `snap_comentaries` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

CREATE TABLE `element_structure` (
  `property` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  UNIQUE KEY `property` (`property`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_temp` (
  `element` int(11) NOT NULL,
  `quantity` double NOT NULL,
  PRIMARY KEY (`element`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `element_transfer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `creator_login` varchar(50) DEFAULT NULL,
  `petitioner_name` varchar(150) DEFAULT NULL,
  `pertitioner_email` varchar(150) DEFAULT NULL,
  `origin_location` varchar(50) DEFAULT NULL,
  `direction_location` varchar(50) DEFAULT NULL,
  `authorize_region` int(11) DEFAULT NULL,
  `authorize_login` varchar(50) DEFAULT NULL,
  `authorize_date` datetime DEFAULT NULL,
  `sender_login` varchar(50) DEFAULT NULL,
  `sender_date` datetime DEFAULT NULL,
  `addressee_login` varchar(50) DEFAULT NULL,
  `arrival_state` varchar(1) DEFAULT NULL,
  `arrival_date` datetime DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `cancel_login` varchar(50) DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `prepared_state_user` varchar(50) DEFAULT NULL,
  `order_priority_type` int(11) DEFAULT NULL,
  `requires_transportation` varchar(1) DEFAULT NULL,
  `order_execution_responsible` int(11) DEFAULT NULL,
  `prepared_date` datetime DEFAULT NULL,
  `document_send` varchar(100) DEFAULT NULL,
  `document_receive` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_transfer_order_state_idx` (`state`),
  KEY `element_transfer_order_prepared_state_user_fk` (`prepared_state_user`),
  KEY `element_transfer_order_creation_date_idx` (`creation_date`),
  KEY `element_transfer_order_creator_login_idx` (`creator_login`),
  KEY `element_transfer_order_origin_location_idx` (`origin_location`),
  KEY `element_transfer_order_direction_location_idx` (`direction_location`),
  KEY `element_transfer_order_authorize_login_idx` (`authorize_login`),
  KEY `element_transfer_order_sender_login_idx` (`sender_login`),
  KEY `element_transfer_order_addressee_login_idx` (`addressee_login`),
  KEY `element_transfer_order_cancel_login_idx` (`cancel_login`),
  KEY `element_transfer_order_authorize_region_fk` (`authorize_region`),
  KEY `element_transfer_order_order_priority_type_idx` (`order_priority_type`),
  KEY `element_transfer_order_requires_transportation_idx` (`requires_transportation`),
  KEY `element_transfer_order_order_execution_responsible_idx` (`order_execution_responsible`)
) ENGINE=InnoDB AUTO_INCREMENT=133112 DEFAULT CHARSET=latin1;

CREATE TABLE `element_transfer_order_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_transfer_order` int(11) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `comment_time` time DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106843 DEFAULT CHARSET=latin1;

CREATE TABLE `element_transfer_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_transfer_order` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `truck_license` varchar(10) DEFAULT NULL,
  `confirmed` varchar(1) DEFAULT 'N',
  `arrived` varchar(1) DEFAULT 'N',
  `arrival_date` datetime DEFAULT NULL,
  `send_date` datetime DEFAULT NULL,
  `sended` varchar(1) DEFAULT NULL,
  `location_assigned_new` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_transfer_order_detail_element_transfer_order_idx` (`element_transfer_order`),
  KEY `element_transfer_order_detail_arrived_idx` (`arrived`),
  KEY `element_transfer_order_detail_element_idx` (`element`)
) ENGINE=InnoDB AUTO_INCREMENT=522728 DEFAULT CHARSET=latin1;

CREATE TABLE `element_transfer_order_person_in_charge` (
  `element_transfer_order` int(11) DEFAULT NULL,
  `document_number` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_transfer_order_transport` (
  `element_transfer_order` int(11) DEFAULT NULL,
  `license` varchar(10) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_phone` varchar(20) DEFAULT NULL,
  `transporter` int(11) DEFAULT NULL,
  `company` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `element_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `mnemonic` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mnemonic` (`mnemonic`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

CREATE TABLE `element_type_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `default_element_category_asset` int(10) DEFAULT NULL,
  `investment_item` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element_category_asset_element_type_asset_fk` (`default_element_category_asset`),
  KEY `investment_item_element_type_asset_fk` (`investment_item`)
) ENGINE=MyISAM AUTO_INCREMENT=899 DEFAULT CHARSET=latin1 COMMENT='Tipos de Activos Fijos para Elementos';

CREATE TABLE `external_location` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `external_location_type` int(11) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `external_location_deleted_idx` (`deleted`),
  KEY `external_location_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `external_location_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `external_warehouse` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `external_warehouse_deleted_idx` (`deleted`),
  KEY `external_warehouse_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fault_element_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) DEFAULT NULL,
  `field_description` text,
  PRIMARY KEY (`id`),
  KEY `field_name` (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_report_responsible` int(11) DEFAULT NULL,
  `fault_report_state` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `creation_user` varchar(50) DEFAULT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_user` varchar(50) DEFAULT NULL,
  `cancel_comment` text,
  `warehouse_approve_date` datetime DEFAULT NULL,
  `warehouse_approve_user` varchar(50) DEFAULT NULL,
  `warehouse_reject_date` datetime DEFAULT NULL,
  `warehouse_reject_user` varchar(50) DEFAULT NULL,
  `warehouse_reject_comment` text,
  `responsible_approve_date` datetime DEFAULT NULL,
  `responsible_approve_user` varchar(50) DEFAULT NULL,
  `responsible_reject_date` datetime DEFAULT NULL,
  `responsible_reject_user` varchar(50) DEFAULT NULL,
  `responsible_reject_comment` text,
  `responsible_service_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fault_report_responsible` (`fault_report_responsible`),
  KEY `fault_report_state` (`fault_report_state`),
  KEY `creation_user` (`creation_user`),
  KEY `cancel_user` (`cancel_user`),
  KEY `warehouse_approve_user` (`warehouse_approve_user`),
  KEY `warehouse_reject_user` (`warehouse_reject_user`),
  KEY `responsible_approve_user` (`responsible_approve_user`),
  KEY `responsible_reject_user` (`responsible_reject_user`),
  KEY `responsible_service_number` (`responsible_service_number`)
) ENGINE=MyISAM AUTO_INCREMENT=10430 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_report` int(11) DEFAULT NULL,
  `fault_report_struct` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `fault_id_number` varchar(50) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `field_1` varchar(100) DEFAULT NULL,
  `field_2` varchar(100) DEFAULT NULL,
  `field_3` varchar(100) DEFAULT NULL,
  `field_4` varchar(100) DEFAULT NULL,
  `field_5` varchar(100) DEFAULT NULL,
  `field_6` varchar(100) DEFAULT NULL,
  `field_7` varchar(100) DEFAULT NULL,
  `field_8` varchar(100) DEFAULT NULL,
  `field_9` varchar(100) DEFAULT NULL,
  `field_10` varchar(100) DEFAULT NULL,
  `field_11` varchar(100) DEFAULT NULL,
  `field_12` varchar(100) DEFAULT NULL,
  `field_13` varchar(100) DEFAULT NULL,
  `field_14` varchar(100) DEFAULT NULL,
  `field_15` varchar(100) DEFAULT NULL,
  `field_16` varchar(100) DEFAULT NULL,
  `field_17` varchar(100) DEFAULT NULL,
  `field_18` varchar(100) DEFAULT NULL,
  `field_19` varchar(100) DEFAULT NULL,
  `field_20` varchar(100) DEFAULT NULL,
  `field_21` varchar(100) DEFAULT NULL,
  `field_22` varchar(100) DEFAULT NULL,
  `field_23` varchar(100) DEFAULT NULL,
  `field_24` varchar(100) DEFAULT NULL,
  `field_25` varchar(100) DEFAULT NULL,
  `field_26` varchar(100) DEFAULT NULL,
  `field_27` varchar(100) DEFAULT NULL,
  `field_28` varchar(100) DEFAULT NULL,
  `field_29` varchar(100) DEFAULT NULL,
  `field_30` varchar(100) DEFAULT NULL,
  `field_31` varchar(100) DEFAULT NULL,
  `field_32` varchar(100) DEFAULT NULL,
  `field_33` varchar(100) DEFAULT NULL,
  `field_34` varchar(100) DEFAULT NULL,
  `field_35` varchar(100) DEFAULT NULL,
  `field_36` varchar(100) DEFAULT NULL,
  `field_37` varchar(100) DEFAULT NULL,
  `field_38` varchar(100) DEFAULT NULL,
  `field_39` varchar(100) DEFAULT NULL,
  `field_40` varchar(100) DEFAULT NULL,
  `field_41` varchar(100) DEFAULT NULL,
  `field_42` varchar(100) DEFAULT NULL,
  `field_43` varchar(100) DEFAULT NULL,
  `field_44` varchar(100) DEFAULT NULL,
  `field_45` varchar(100) DEFAULT NULL,
  `field_46` varchar(100) DEFAULT NULL,
  `field_47` varchar(100) DEFAULT NULL,
  `field_48` varchar(100) DEFAULT NULL,
  `field_49` varchar(100) DEFAULT NULL,
  `field_50` varchar(100) DEFAULT NULL,
  `textarea_1` text,
  `textarea_2` text,
  `textarea_3` text,
  `textarea_4` text,
  `textarea_5` text,
  `textarea_6` text,
  PRIMARY KEY (`id`),
  KEY `fault_report` (`fault_report`),
  KEY `fault_report_struct` (`fault_report_struct`),
  KEY `fault_id_number` (`fault_id_number`),
  KEY `field_1` (`field_1`),
  KEY `field_2` (`field_2`),
  KEY `field_3` (`field_3`),
  KEY `field_4` (`field_4`),
  KEY `field_5` (`field_5`),
  KEY `field_6` (`field_6`),
  KEY `field_7` (`field_7`),
  KEY `field_8` (`field_8`),
  KEY `field_9` (`field_9`),
  KEY `field_10` (`field_10`),
  KEY `field_11` (`field_11`),
  KEY `field_12` (`field_12`),
  KEY `field_13` (`field_13`),
  KEY `field_14` (`field_14`),
  KEY `field_15` (`field_15`),
  KEY `field_16` (`field_16`),
  KEY `field_17` (`field_17`),
  KEY `field_18` (`field_18`),
  KEY `field_19` (`field_19`),
  KEY `field_20` (`field_20`),
  KEY `field_21` (`field_21`),
  KEY `field_22` (`field_22`),
  KEY `field_23` (`field_23`),
  KEY `field_24` (`field_24`),
  KEY `field_25` (`field_25`),
  KEY `field_26` (`field_26`),
  KEY `field_27` (`field_27`),
  KEY `field_28` (`field_28`),
  KEY `field_29` (`field_29`),
  KEY `field_30` (`field_30`),
  KEY `field_31` (`field_31`),
  KEY `field_32` (`field_32`),
  KEY `field_33` (`field_33`),
  KEY `field_34` (`field_34`),
  KEY `field_35` (`field_35`),
  KEY `field_36` (`field_36`),
  KEY `field_37` (`field_37`),
  KEY `field_38` (`field_38`),
  KEY `field_39` (`field_39`),
  KEY `field_40` (`field_40`),
  KEY `field_41` (`field_41`),
  KEY `field_42` (`field_42`),
  KEY `field_43` (`field_43`),
  KEY `field_44` (`field_44`),
  KEY `field_45` (`field_45`),
  KEY `field_46` (`field_46`),
  KEY `field_47` (`field_47`),
  KEY `field_48` (`field_48`),
  KEY `field_49` (`field_49`),
  KEY `field_50` (`field_50`)
) ENGINE=MyISAM AUTO_INCREMENT=10430 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_detail_multiple` (
  `fault_report_struct_detail` int(11) DEFAULT NULL,
  `code` varchar(60) DEFAULT NULL,
  `value` varchar(60) DEFAULT NULL,
  `wildcard` varchar(60) DEFAULT NULL,
  KEY `fault_report_struct_detail` (`fault_report_struct_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  `fault_report_provider_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fault_report_provider_type` (`fault_report_provider_type`),
  KEY `name` (`name`),
  KEY `phone` (`phone`),
  KEY `email` (`email`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_provider_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_responsible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_report_provider` int(11) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `alt_address` varchar(255) DEFAULT NULL,
  `alt_phone` varchar(50) DEFAULT NULL,
  `alt_email` varchar(100) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fault_report_provider` (`fault_report_provider`),
  KEY `login` (`login`),
  KEY `alt_address` (`alt_address`),
  KEY `alt_phone` (`alt_phone`),
  KEY `alt_email` (`alt_email`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_struct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `fault_report_provider` int(11) DEFAULT NULL,
  `template` text,
  `enabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fault_report_provider` (`fault_report_provider`),
  KEY `name` (`name`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `fault_report_struct_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_report_struct` int(11) DEFAULT NULL,
  `field_name` varchar(60) DEFAULT NULL,
  `field_label` varchar(60) DEFAULT NULL,
  `parameter_name` varchar(60) DEFAULT NULL,
  `parameter_type` varchar(50) DEFAULT NULL,
  `mandatory` varchar(1) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `fault_element_field` int(11) DEFAULT NULL,
  `by_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fault_report_struct` (`fault_report_struct`),
  KEY `fault_element_field` (`fault_element_field`),
  KEY `field_name` (`field_name`),
  KEY `field_label` (`field_label`),
  KEY `parameter_name` (`parameter_name`),
  KEY `parameter_type` (`parameter_type`),
  KEY `mandatory` (`mandatory`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

CREATE TABLE `fifo_exception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

CREATE TABLE `fifo_exception_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_type` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `fifo_exception` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `registry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fifo_exception_registry_order_type` (`order_type`),
  KEY `fifo_exception_registry_order_number` (`order_number`),
  KEY `fifo_exception_registry_element` (`element`),
  KEY `fifo_exception_registry_fifo_exception` (`fifo_exception`),
  KEY `fifo_exception_registry_login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=904406 DEFAULT CHARSET=latin1;

CREATE TABLE `forgotten_password` (
  `login` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_description_id` int(11) DEFAULT NULL,
  `unit_report` int(11) DEFAULT NULL,
  `warehouse_code` varchar(50) DEFAULT NULL,
  `unit_description_name` varchar(255) DEFAULT NULL,
  `unit_description_description` varchar(255) DEFAULT NULL,
  `unit_description_comments` varchar(255) DEFAULT NULL,
  `unit_description_keyword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=552 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `keyword` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `functional_unit_unique_index` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_description_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `model_1_id` varchar(50) DEFAULT NULL,
  `model_2_id` varchar(50) DEFAULT NULL,
  `model_3_id` varchar(50) DEFAULT NULL,
  `model_4_id` varchar(50) DEFAULT NULL,
  `model_5_id` varchar(50) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `functional_unit_description_line_unit_id_idx` (`unit_id`),
  KEY `functional_unit_description_line_model_1_id_idx` (`model_1_id`),
  KEY `functional_unit_description_line_model_2_id_idx` (`model_2_id`),
  KEY `functional_unit_description_line_model_3_id_idx` (`model_3_id`),
  KEY `functional_unit_description_line_model_4_id_idx` (`model_4_id`),
  KEY `functional_unit_description_line_model_5_id_idx` (`model_5_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2738 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `functional_unit` int(11) DEFAULT NULL,
  `functional_unit_description_line` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4770 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_remaining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=291385 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE `functional_unit_x_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `functional_unit_description_id` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `purchase_order_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

CREATE TABLE `geographic_location` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `responsible_user` varchar(50) NOT NULL,
  `region` int(11) NOT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `geographic_location_users_fk` (`responsible_user`),
  KEY `geographic_location_region_fk` (`region`),
  KEY `geographic_location_name_idx` (`name`),
  KEY `geographic_location_deleted_idx` (`deleted`),
  KEY `geographic_location_deleted_by_user_idx` (`deleted_by_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `history_action` (
  `id` varchar(50) NOT NULL,
  `action` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `incoterm` (
  `code` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `infrastructure_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL DEFAULT '',
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_user` varchar(50) NOT NULL DEFAULT '',
  `update_user` varchar(50) NOT NULL DEFAULT '',
  `quantity` double NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `millicom_code` varchar(100) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `infrastructure_model` varchar(50) NOT NULL,
  `date_capitalization` date DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `id_element` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_infrastructure_element_fk` (`invoice`),
  KEY `users_infrastructure_element_fk` (`create_user`),
  KEY `users_update_infrastructure_element_fk` (`update_user`),
  KEY `location_infrastructure_element_fk` (`location`),
  KEY `element_type_asset_infrastructure_element_fk` (`element_type_asset`),
  KEY `infrastructure_model_infrastructure_element_fk` (`infrastructure_model`),
  KEY `infrastructure_element_purchase_order_number_idx` (`purchase_order_number`),
  KEY `infrastructure_element_temporal_fixed_asset_number_idx` (`temporal_fixed_asset_number`),
  KEY `infrastructure_element_fixed_asset_number_idx` (`fixed_asset_number`),
  KEY `infrastructure_element_deleted_idx` (`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=10042668 DEFAULT CHARSET=latin1;

CREATE TABLE `infrastructure_element_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infrastructure_element` int(11) DEFAULT NULL,
  `history_date` date DEFAULT NULL,
  `history_time` time DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `detailed_type` varchar(50) DEFAULT NULL,
  `support_code` varchar(100) DEFAULT NULL,
  `support_table` varchar(100) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `millicom_code` varchar(100) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `infrastructure_model` varchar(50) DEFAULT NULL,
  `date_capitalization` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infrastructure_element` (`infrastructure_element`),
  KEY `history_date` (`history_date`),
  KEY `history_time` (`history_time`),
  KEY `action` (`action`),
  KEY `detailed_type` (`detailed_type`),
  KEY `support_code` (`support_code`),
  KEY `support_table` (`support_table`),
  KEY `location` (`location`),
  KEY `invoice` (`invoice`),
  KEY `millicom_code` (`millicom_code`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `purchase_order_number` (`purchase_order_number`),
  KEY `temporal_fixed_asset_number` (`temporal_fixed_asset_number`),
  KEY `fixed_asset_number` (`fixed_asset_number`),
  KEY `infrastructure_model` (`infrastructure_model`),
  KEY `date_capitalization` (`date_capitalization`)
) ENGINE=InnoDB AUTO_INCREMENT=26721 DEFAULT CHARSET=latin1;

CREATE TABLE `infrastructure_model` (
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `maker` varchar(100) DEFAULT NULL,
  `plu` varchar(100) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT 'Y',
  `default_element_type_asset` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `element_type_asset_infrastructure_model_fk` (`default_element_type_asset`),
  KEY `infrastructure_model_is_asset_idx` (`is_asset`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `internal_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador LAICON de la Ubicacion Interna',
  `tigo_code` varchar(150) NOT NULL COMMENT 'Codigo TIGO de la Ubicacion Interna',
  `description` text COMMENT 'Descripcion',
  `location` varchar(50) NOT NULL COMMENT 'Codigo de la Ubicacion General',
  PRIMARY KEY (`id`),
  UNIQUE KEY `internal_location_tigo_code_uidx` (`tigo_code`,`location`),
  KEY `internal_location_location_idx` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=13154 DEFAULT CHARSET=latin1 COMMENT='Ubicacion Interna de una Ubicacion General del Sistema';

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  `person_in_charge` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_alarm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element_model` varchar(50) NOT NULL,
  `type_alarm` varchar(20) NOT NULL,
  `warehouse` varchar(50) DEFAULT NULL,
  `regional` int(11) DEFAULT NULL,
  `quantity_min` double DEFAULT NULL,
  `quantity_max` double DEFAULT NULL,
  `quantity_suggested` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_alarm_element_model_idx` (`element_model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_alarm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_alarm` int(11) NOT NULL,
  `user_login` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_alarm_users_inventory_alarm_idx` (`inventory_alarm`),
  KEY `inventory_alarm_users_user_login_idx` (`user_login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_by_models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventory_elements` int(11) DEFAULT NULL,
  `id_model` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_by_models_id_inventory_elements_idx` (`id_inventory_elements`),
  KEY `inventory_by_models_id_model_idx` (`id_model`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_date_ini` datetime DEFAULT NULL,
  `warehouse` varchar(150) DEFAULT NULL,
  `user_create` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7178 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_elements_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventory_elements` int(11) DEFAULT NULL,
  `id_inventory_process` int(11) DEFAULT NULL,
  `internal_location` varchar(150) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `comment` varchar(150) DEFAULT NULL,
  `new_serial` varchar(50) DEFAULT NULL,
  `new_plu` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `save_element` varchar(1) DEFAULT 'N',
  `user_report` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_elements_detail_id_inventory_elements_idx` (`id_inventory_elements`)
) ENGINE=MyISAM AUTO_INCREMENT=192284 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_elements_download_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventory_elements` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `creation_date` varchar(100) DEFAULT NULL,
  `element_model_reference` varchar(200) DEFAULT NULL,
  `element_model_plu` varchar(100) DEFAULT NULL,
  `element_model_description` varchar(255) DEFAULT NULL,
  `value_type` varchar(30) DEFAULT NULL,
  `serial` varchar(150) DEFAULT NULL,
  `air_waybill_number` varchar(70) DEFAULT NULL,
  `invoice_number` varchar(60) DEFAULT NULL,
  `internal_location_tigo_code` varchar(170) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2863449 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_elements_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_inventory_elements` int(11) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4842 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_process_elements_difference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_tigo_code` varchar(50) DEFAULT NULL,
  `element_model` varchar(200) DEFAULT NULL,
  `element_model_plu` varchar(50) DEFAULT NULL,
  `element_serial` varchar(100) DEFAULT NULL,
  `element_quantity` double DEFAULT '0',
  `element_status` varchar(50) DEFAULT NULL,
  `element_location` varchar(50) DEFAULT NULL,
  `element_internal_location_id` int(11) DEFAULT '0',
  `element_in_movement` varchar(1) DEFAULT 'N',
  `element_quantity_reserved` double DEFAULT '0',
  `element_invoice_number` varchar(50) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_supplier_name` varchar(100) DEFAULT NULL,
  `difference` double DEFAULT '0',
  `element_awb_number` varchar(150) DEFAULT NULL,
  `element_internal_location_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_p_e_d_inventory_elements_process_idx` (`inventory_elements_process`),
  KEY `inventory_process_elements_difference_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=5032 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_process_elements_no_processed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_tigo_code` varchar(50) DEFAULT NULL,
  `element_model` varchar(200) DEFAULT NULL,
  `element_model_plu` varchar(50) DEFAULT NULL,
  `element_serial` varchar(100) DEFAULT NULL,
  `element_quantity` double DEFAULT '0',
  `element_status` varchar(50) DEFAULT NULL,
  `element_location` varchar(50) DEFAULT NULL,
  `element_internal_location_id` int(11) DEFAULT '0',
  `element_in_movement` varchar(1) DEFAULT 'N',
  `element_quantity_reserved` double DEFAULT '0',
  `element_invoice_number` varchar(50) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_supplier_name` varchar(100) DEFAULT NULL,
  `element_awb_number` varchar(150) DEFAULT NULL,
  `element_internal_location_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_p_e_no_processed_inventory_elements_process_idx` (`inventory_elements_process`),
  KEY `inventory_process_elements_no_processed_id_element_idx` (`id_element`),
  KEY `inventory_process_elements_no_processed_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=1897116 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_process_elements_ok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_tigo_code` varchar(50) DEFAULT NULL,
  `element_model` varchar(200) DEFAULT NULL,
  `element_model_plu` varchar(50) DEFAULT NULL,
  `element_serial` varchar(100) DEFAULT NULL,
  `element_quantity` double DEFAULT '0',
  `element_status` varchar(50) DEFAULT NULL,
  `element_location` varchar(50) DEFAULT NULL,
  `element_internal_location_id` int(11) DEFAULT '0',
  `element_in_movement` varchar(1) DEFAULT 'N',
  `element_quantity_reserved` double DEFAULT '0',
  `element_invoice_number` varchar(50) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_supplier_name` varchar(100) DEFAULT NULL,
  `element_awb_number` varchar(150) DEFAULT NULL,
  `element_internal_location_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_process_elements_ok_inventory_elements_process_idx` (`inventory_elements_process`),
  KEY `inventory_process_elements_ok_id_element_idx` (`id_element`),
  KEY `inventory_process_elements_ok_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=4492087 DEFAULT CHARSET=latin1;

CREATE TABLE `inventory_unknown_int_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `id_int_location` int(11) DEFAULT NULL,
  `int_location_tigo_code` varchar(150) DEFAULT NULL,
  `int_location_location` varchar(50) DEFAULT NULL,
  `int_location_description` text,
  PRIMARY KEY (`id`),
  KEY `inventory_unknown_int_locations_inventory_elements_process_idx` (`inventory_elements_process`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `investment_item` (
  `code` varchar(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `sector` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` int(11) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `value` double DEFAULT NULL,
  `freightage` double DEFAULT '0',
  `insurance` double DEFAULT '0',
  `expenditure` double DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL,
  `trm` double DEFAULT NULL,
  `incoterm` varchar(5) DEFAULT NULL,
  `detail_type` varchar(10) DEFAULT NULL,
  `in_inventory` varchar(1) DEFAULT NULL,
  `value_cop` double DEFAULT NULL,
  `last_costing_nationalization_subnumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6366 DEFAULT CHARSET=latin1;

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` int(11) DEFAULT NULL,
  `element_model` varchar(50) DEFAULT NULL,
  `unit_value` double DEFAULT NULL,
  `invoice_percent` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_detail_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=5250 DEFAULT CHARSET=latin1;

CREATE TABLE `invoice_detail_type` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `invoice_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `detail_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

CREATE TABLE `invoice_template_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_template` int(11) DEFAULT NULL,
  `element_model` varchar(50) DEFAULT NULL,
  `unit_value` double DEFAULT NULL,
  `invoice_percent` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_template_detail_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

CREATE TABLE `laicon_configuration` (
  `conf_property` varchar(150) NOT NULL,
  `conf_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`conf_property`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `laicon_inventory_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `codeId` int(11) DEFAULT NULL,
  `quantity` double DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `laicon_inventory_register_inventory_elements_process_idx` (`inventory_elements_process`)
) ENGINE=MyISAM AUTO_INCREMENT=2326 DEFAULT CHARSET=latin1;

CREATE TABLE `laicon_inventory_register_unknown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_elements_process` int(11) DEFAULT NULL,
  `id_laicon_inventory_register` int(11) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `element_millicom_code` varchar(150) DEFAULT NULL,
  `element_tigo_code` varchar(50) DEFAULT NULL,
  `element_model` varchar(200) DEFAULT NULL,
  `element_model_plu` varchar(50) DEFAULT NULL,
  `element_serial` varchar(100) DEFAULT NULL,
  `element_quantity` double DEFAULT '0',
  `element_status` varchar(50) DEFAULT NULL,
  `element_location` varchar(50) DEFAULT NULL,
  `element_internal_location_id` int(11) DEFAULT '0',
  `element_in_movement` varchar(1) DEFAULT 'N',
  `element_quantity_reserved` double DEFAULT '0',
  `element_invoice_number` varchar(50) DEFAULT NULL,
  `element_awb` int(11) DEFAULT NULL,
  `element_supplier_name` varchar(100) DEFAULT NULL,
  `intLocationCode` varchar(150) DEFAULT NULL,
  `element_awb_number` varchar(150) DEFAULT NULL,
  `element_internal_location_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laicon_inventory_register_unknown_inventory_elements_process_idx` (`inventory_elements_process`),
  KEY `laicon_inventory_register_unknown_id_element_idx` (`id_element`),
  KEY `laicon_inventory_register_unknown_element_model_idx` (`element_model`)
) ENGINE=MyISAM AUTO_INCREMENT=37135 DEFAULT CHARSET=latin1;

CREATE TABLE `location` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `location_type` varchar(50) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  `is_visible` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`code`),
  KEY `location_deleted_idx` (`deleted`),
  KEY `location_geographic_location_fk` (`geographic_location`),
  KEY `location_is_visible_idx` (`is_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `location_type` (
  `id` varchar(50) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(150) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `submodule` varchar(150) DEFAULT NULL,
  `message` text,
  `detail` text,
  `log_date` date DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `log_type` varchar(10) DEFAULT NULL,
  `log_time` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_logDate` (`log_date`)
) ENGINE=InnoDB AUTO_INCREMENT=70811452 DEFAULT CHARSET=latin1;

CREATE TABLE `measurement_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `abbr` varchar(10) DEFAULT NULL,
  `abbr_sap` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `mic_batch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mic_code_prefix` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `user_creator` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `user_last_updater` varchar(50) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_mic_batch_fk` (`user_creator`),
  KEY `users_mic_batch_updater_fk` (`user_last_updater`),
  KEY `mic_code_prefix_mic_batch_fk` (`mic_code_prefix`)
) ENGINE=MyISAM AUTO_INCREMENT=7841 DEFAULT CHARSET=latin1;

CREATE TABLE `mic_batch_responsible` (
  `login` varchar(50) NOT NULL,
  `mic_batch` int(10) NOT NULL,
  `assigned_by_user` varchar(50) NOT NULL,
  `assignment_date` datetime NOT NULL,
  `enabled` varchar(1) NOT NULL DEFAULT 'Y',
  `disabled_by_user` varchar(50) DEFAULT NULL,
  `disabled_date` datetime DEFAULT NULL,
  PRIMARY KEY (`login`,`mic_batch`),
  KEY `users_mic_batch_responsible_assign_fk` (`assigned_by_user`),
  KEY `users_mic_batch_responsible_disabled_fk` (`disabled_by_user`),
  KEY `mic_batch_mic_batch_responsible_fk` (`mic_batch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `mic_code` (
  `code` varchar(50) NOT NULL,
  `mic_batch` int(10) NOT NULL,
  `assigned_element` int(8) DEFAULT NULL,
  `enabled` varchar(1) NOT NULL DEFAULT 'Y',
  `assigned_by_user` varchar(50) DEFAULT NULL,
  `assignment_date` datetime DEFAULT NULL,
  `assignment_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `element_mic_code_fk` (`assigned_element`),
  KEY `users_mic_code_fk` (`assigned_by_user`),
  KEY `mic_batch_mic_code_fk` (`mic_batch`),
  KEY `mic_code_enabled_idx` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `mic_code_prefix` (
  `mic_prefix` varchar(10) NOT NULL,
  `mic_name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `next_free_code` int(10) NOT NULL,
  PRIMARY KEY (`mic_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `model_backup` (
  `id` varchar(50) DEFAULT NULL,
  `plu` varchar(20) DEFAULT NULL,
  KEY `model_backup_id_idx` (`id`),
  KEY `model_backup_plu_idx` (`plu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `model_value_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plu` varchar(50) NOT NULL,
  `old_model_cop_value` double NOT NULL,
  `new_model_cop_value` double NOT NULL,
  `update_date` datetime NOT NULL,
  `update_user` varchar(50) NOT NULL,
  `updated` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `update_date` (`update_date`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB AUTO_INCREMENT=2508 DEFAULT CHARSET=latin1;

CREATE TABLE `model_x_category_asset` (
  `element_model` varchar(50) NOT NULL,
  `element_category_asset` int(10) NOT NULL,
  PRIMARY KEY (`element_model`,`element_category_asset`),
  KEY `element_category_asset_model_x_category_asset_fk` (`element_category_asset`),
  KEY `model_x_category_asset_element_model_idx` (`element_model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `model_x_type_asset` (
  `element_model` varchar(50) NOT NULL,
  `element_type_asset` int(10) NOT NULL,
  PRIMARY KEY (`element_model`,`element_type_asset`),
  KEY `element_type_asset_model_x_type_asset_fk` (`element_type_asset`),
  KEY `model_x_type_asset_element_model_idx` (`element_model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `movement_quota` (
  `warehouse` varchar(50) NOT NULL,
  `element_model` varchar(50) NOT NULL,
  `region` int(11) NOT NULL,
  `quantity_limit` double NOT NULL,
  `quantity_available` double NOT NULL,
  KEY `movement_quota_warehouse_idx` (`warehouse`),
  KEY `movement_quota_element_model_idx` (`element_model`),
  KEY `movement_quota_region_idx` (`region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `movement_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_date` date DEFAULT NULL,
  `report_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

CREATE TABLE `msc` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `nationalization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_document` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `invoice_value` double DEFAULT NULL,
  `credit_note` varchar(50) DEFAULT NULL,
  `credit_note_value` double DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `nationalization_date` date DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `eta` date DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `nationalization_place` varchar(50) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

CREATE TABLE `nationalization_place` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_email` varchar(255) DEFAULT NULL,
  `boss_phone` varchar(255) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `nationalization_place_deleted_idx` (`deleted`),
  KEY `nationalization_place_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `no_attended_spare_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_attended_spare_state` int(11) NOT NULL,
  `damaged_element_id` int(11) NOT NULL,
  `damaged_element_model` varchar(50) NOT NULL,
  `spare_part_warehouse` int(11) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `no_attended_date` datetime DEFAULT NULL,
  `no_attended_user` varchar(50) DEFAULT NULL,
  `element_order_type` varchar(20) DEFAULT NULL,
  `element_order_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `no_attended_spare_state` (`no_attended_spare_state`),
  KEY `damaged_element_id` (`damaged_element_id`),
  KEY `damaged_element_model` (`damaged_element_model`),
  KEY `region` (`region`),
  KEY `no_attended_user` (`no_attended_user`),
  KEY `no_attended_date` (`no_attended_date`),
  KEY `element_order_type` (`element_order_type`),
  KEY `element_order_number` (`element_order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9706 DEFAULT CHARSET=latin1;

CREATE TABLE `no_attended_spare_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `operation_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(100) DEFAULT NULL,
  `air_waybill` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `tariff` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `trm` double DEFAULT NULL,
  `created_by_login` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `pre_inspection_by_login` varchar(50) DEFAULT NULL,
  `pre_inspection_report_date` date DEFAULT NULL,
  `pre_inspection_date` datetime DEFAULT NULL,
  `capital_request_by_login` varchar(50) DEFAULT NULL,
  `capital_request_approved` varchar(1) DEFAULT NULL,
  `capital_request_date` datetime DEFAULT NULL,
  `operation_approved_by_login` varchar(50) DEFAULT NULL,
  `operation_approved` varchar(1) DEFAULT NULL,
  `operation_approved_date` datetime DEFAULT NULL,
  `tax_payment_by_login` varchar(50) DEFAULT NULL,
  `tax_payment_report_date` date DEFAULT NULL,
  `tax_payment_date` datetime DEFAULT NULL,
  `nationalization_by_login` varchar(50) DEFAULT NULL,
  `nationalization_report_date` date DEFAULT NULL,
  `nationalization_date` datetime DEFAULT NULL,
  `canceled_by_login` varchar(50) DEFAULT NULL,
  `canceled_date` datetime DEFAULT NULL,
  `canceled_last_state` varchar(100) DEFAULT NULL,
  `customs_brokerage` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1843 DEFAULT CHARSET=latin1;

CREATE TABLE `operation_document_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operation_document` int(11) DEFAULT NULL,
  `user_login` varchar(50) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `comment_time` time DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

CREATE TABLE `operation_document_x_invoice` (
  `operation_document` int(11) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  KEY `operation_document_x_invoice_invoice` (`invoice`),
  KEY `operation_document_x_invoice_operation_document` (`operation_document`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `order_execution_responsible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `order_priority_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_edit` varchar(50) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` varchar(1) DEFAULT 'N',
  `last_action` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `owner_object` (
  `login` varchar(50) DEFAULT NULL,
  `object_type` varchar(50) DEFAULT NULL,
  `object_id_VARCHAR` varchar(50) DEFAULT NULL,
  `object_id_INT` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `piece_box_stowage` (
  `code` varchar(65) NOT NULL,
  `invoice` int(11) DEFAULT NULL,
  `pbs_type` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `plant_center` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='SAP PLANT CENTER';

CREATE TABLE `Pollo2` (
  `Campo1` decimal(10,0) NOT NULL,
  `Campo2` varchar(20) DEFAULT NULL,
  `Campo3` varchar(20) DEFAULT NULL,
  `Campo4` varchar(20) DEFAULT NULL,
  `Campo5` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `pollo_pivot` (
  `Campo1` decimal(10,0) NOT NULL,
  `Campo2` varchar(20) DEFAULT NULL,
  `Campo3` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `privilege` (
  `id` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `keyword` varchar(50) DEFAULT NULL,
  `editable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

CREATE TABLE `profile_privilege` (
  `profile` int(11) DEFAULT NULL,
  `privilege` varchar(50) DEFAULT NULL,
  KEY `profile_privilege_profile_privilege_idx` (`profile`,`privilege`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `profile_x_element_structure` (
  `profile` int(11) NOT NULL,
  `element_structure` varchar(255) NOT NULL,
  UNIQUE KEY `profile` (`profile`,`element_structure`),
  KEY `profile_x_element_structure_profile` (`profile`),
  KEY `profile_x_element_structure_element_structure` (`element_structure`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sap_code` varchar(50) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `car_line` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE_ORDER';

CREATE TABLE `purchase_order_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order` int(11) DEFAULT NULL,
  `line` varchar(10) NOT NULL,
  `value` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `tax_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE ORDER LINE';

CREATE TABLE `purchase_order_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(10) DEFAULT NULL,
  `position_type` varchar(10) DEFAULT NULL,
  `short_text` varchar(255) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `plant_center` varchar(10) DEFAULT NULL,
  `purchase_group` varchar(10) DEFAULT NULL,
  `petitioner` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `request_amount` double DEFAULT NULL,
  `asset` varchar(100) DEFAULT NULL,
  `subnumber` varchar(100) DEFAULT NULL,
  `order_number` varchar(100) DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `sap_requisition_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='PURCHASE ORDER REQUEST';

CREATE TABLE `quality_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_download` datetime NOT NULL,
  `location` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `date_upload` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `processed_user` varchar(50) NOT NULL,
  `processed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

CREATE TABLE `quality_inventory_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `internal_location_id` int(11) DEFAULT NULL,
  `element` int(11) NOT NULL,
  `quality_inventory` int(11) NOT NULL,
  `millicom_code` varchar(100) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33183 DEFAULT CHARSET=latin1;

CREATE TABLE `quality_inventory_element_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_inventory_element` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `quality_inventory` int(11) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `comments` text,
  `state` int(11) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26048 DEFAULT CHARSET=latin1;

CREATE TABLE `quality_inventory_element_result_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_inventory` int(11) NOT NULL,
  `quality_inventory_element` int(11) NOT NULL,
  `quality_inventory_element_result` int(11) NOT NULL,
  `process_result_state` varchar(50) NOT NULL,
  `process_result_type` varchar(50) NOT NULL,
  `detail` text,
  `complete_description` text,
  `commentaries` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28075 DEFAULT CHARSET=latin1;

CREATE TABLE `reenabled_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `element` int(11) DEFAULT NULL,
  `tigo_inventory_code` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `contract` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `warranty_duration` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `element_state` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `location_asigned` varchar(50) DEFAULT NULL,
  `awb` int(11) DEFAULT NULL,
  `containing_element` int(11) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `is_spare_part` varchar(5) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `in_movement` varchar(1) DEFAULT NULL,
  `quantity_reserved` double DEFAULT NULL,
  `control_code` varchar(100) DEFAULT NULL,
  `inventory` varchar(1) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `trm_value` double DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `insurance_value` double DEFAULT NULL,
  `millicom_code` varchar(150) DEFAULT NULL,
  `internal_location_id` int(11) DEFAULT NULL,
  `source_element` int(11) DEFAULT NULL,
  `installation_site_1` varchar(100) DEFAULT NULL,
  `installation_site_2` varchar(100) DEFAULT NULL,
  `comment_installation_site` varchar(255) DEFAULT NULL,
  `login_update_installation_site` varchar(50) DEFAULT NULL,
  `initial_unit_value_by_invoice_usd` double DEFAULT NULL,
  `element_type_asset` int(11) DEFAULT NULL,
  `element_category_asset` int(11) DEFAULT NULL,
  `asset_cop_value` double DEFAULT NULL,
  `asset_usd_value` double DEFAULT NULL,
  `asset_trm` double DEFAULT NULL,
  `nationalization_cop_value` double DEFAULT NULL,
  `nationalization_usd_value` double DEFAULT NULL,
  `nationalization_trm` double DEFAULT NULL,
  `purchase_order_number` varchar(50) DEFAULT NULL,
  `wip_temporal_fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_number` varchar(50) DEFAULT NULL,
  `fixed_asset_subnumber` varchar(10) DEFAULT NULL,
  `purchase_order_line` varchar(5) DEFAULT NULL,
  `warehouse_entry_number` varchar(50) DEFAULT NULL,
  `car_number` varchar(50) DEFAULT NULL,
  `is_asset` varchar(1) DEFAULT NULL,
  `date_capitalization` date DEFAULT NULL,
  `nationalization_subnumber` varchar(50) DEFAULT NULL,
  `old_millicom_code` varchar(150) DEFAULT NULL,
  `last_inventory_date` datetime DEFAULT NULL,
  `last_inventory_id` int(11) DEFAULT NULL,
  `locked` varchar(1) DEFAULT NULL,
  `piece_box_stowage` varchar(65) DEFAULT NULL,
  `element_classification` int(11) DEFAULT NULL,
  `revived_date` datetime DEFAULT NULL,
  `revived_login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `element` (`element`),
  KEY `millicom_code` (`millicom_code`),
  KEY `model` (`model`),
  KEY `element_type_asset` (`element_type_asset`),
  KEY `element_category_asset` (`element_category_asset`),
  KEY `revived_date` (`revived_date`),
  KEY `revived_login` (`revived_login`)
) ENGINE=MyISAM AUTO_INCREMENT=2693 DEFAULT CHARSET=latin1;

CREATE TABLE `reenabled_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location_type` varchar(50) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `deleted` varchar(1) DEFAULT NULL,
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `deleted_type` varchar(5) DEFAULT NULL,
  `image_data_1` longtext,
  `image_data_2` longtext,
  `image_name_1` varchar(250) DEFAULT NULL,
  `image_name_2` varchar(250) DEFAULT NULL,
  `image_size_1` int(11) DEFAULT NULL,
  `image_size_2` int(11) DEFAULT NULL,
  `revived_date` datetime DEFAULT NULL,
  `revived_login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location` (`location`),
  KEY `revived_date` (`revived_date`),
  KEY `revived_login` (`revived_login`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `commercial` varchar(50) DEFAULT NULL,
  `responsible_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_included_model` (
  `element_model` varchar(50) NOT NULL,
  `enabled` varchar(1) NOT NULL,
  PRIMARY KEY (`element_model`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_inconsistency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `laicon_location` varchar(50) DEFAULT NULL,
  `laicon_user_in_charge` varchar(50) DEFAULT NULL,
  `ri_location` varchar(50) DEFAULT NULL,
  `ri_user_in_charge` varchar(50) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `millicom_code` varchar(50) DEFAULT NULL,
  `ri_element_model` varchar(50) DEFAULT NULL,
  `laicon_element_model` varchar(50) DEFAULT NULL,
  `ri_serial` varchar(100) DEFAULT NULL,
  `laicon_serial` varchar(100) DEFAULT NULL,
  `inconsistency_type` int(11) DEFAULT NULL,
  `inconsistency_detail` text,
  `reporting_days` int(11) DEFAULT NULL,
  `inconsistency_state` varchar(10) DEFAULT NULL,
  `validation_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laicon_location` (`laicon_location`),
  KEY `laicon_user_in_charge` (`laicon_user_in_charge`),
  KEY `ri_location` (`ri_location`),
  KEY `ri_user_in_charge` (`ri_user_in_charge`),
  KEY `element` (`element`),
  KEY `millicom_code` (`millicom_code`),
  KEY `ri_element_model` (`ri_element_model`),
  KEY `laicon_element_model` (`laicon_element_model`),
  KEY `ri_serial` (`ri_serial`),
  KEY `laicon_serial` (`laicon_serial`),
  KEY `inconsistency_type` (`inconsistency_type`),
  KEY `reporting_days` (`reporting_days`),
  KEY `inconsistency_state` (`inconsistency_state`),
  KEY `remote_inventory_inconsistency_validation_type_idx` (`validation_type`)
) ENGINE=MyISAM AUTO_INCREMENT=1359877 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_inconsistency_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ri_location_code` varchar(50) NOT NULL,
  `laicon_location_code` varchar(50) NOT NULL,
  `ri_provider` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ri_location_code_2` (`ri_location_code`,`laicon_location_code`,`ri_provider`),
  KEY `ri_location_code` (`ri_location_code`),
  KEY `laicon_location_code` (`laicon_location_code`),
  KEY `ri_provider` (`ri_provider`)
) ENGINE=MyISAM AUTO_INCREMENT=331649 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_mail_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `receive_no_region` varchar(1) DEFAULT NULL,
  `receive_all_region` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_name` (`user_name`),
  KEY `display_name` (`display_name`),
  KEY `email` (`email`),
  KEY `enabled` (`enabled`),
  KEY `region` (`region`),
  KEY `remote_inventory_mail_list_receive_no_region_idx` (`receive_no_region`),
  KEY `remote_inventory_mail_list_receive_all_region_idx` (`receive_all_region`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_code` varchar(20) DEFAULT NULL,
  `provider_name` varchar(50) DEFAULT NULL,
  `provider_description` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name_format` varchar(50) DEFAULT NULL,
  `file_extension` varchar(10) DEFAULT NULL,
  `file_version` varchar(20) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT 'Y',
  `location_in_file` varchar(1) DEFAULT NULL,
  `location_file_format` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider_code_2` (`provider_code`),
  KEY `provider_code` (`provider_code`),
  KEY `provider_name` (`provider_name`),
  KEY `enabled` (`enabled`),
  KEY `remote_inventory_provider_location_in_file_idx` (`location_in_file`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `remote_inventory_temp_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ri_serial` varchar(100) DEFAULT NULL,
  `ri_location` varchar(50) DEFAULT NULL,
  `ri_reference` varchar(50) DEFAULT NULL,
  `ri_creation_date` datetime DEFAULT NULL,
  `ri_update_date` datetime DEFAULT NULL,
  `ri_state` varchar(1) DEFAULT NULL,
  `ri_provider` int(11) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ri_location` (`ri_location`),
  KEY `ri_provider` (`ri_provider`),
  KEY `ri_serial` (`ri_serial`),
  KEY `ri_reference` (`ri_reference`),
  KEY `ri_creation_date` (`ri_creation_date`),
  KEY `ri_update_date` (`ri_update_date`),
  KEY `ri_state` (`ri_state`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=63349 DEFAULT CHARSET=latin1;

CREATE TABLE `reverse_costing_by_webservice_detail` (
  `reverse_costing_by_webservice_register` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  KEY `reverse_costing_by_webservice_detail_register_fk` (`reverse_costing_by_webservice_register`),
  KEY `reverse_costing_by_webservice_detail_element_fk` (`element`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `reverse_costing_by_webservice_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siscap_login` varchar(50) NOT NULL,
  `process_date` datetime NOT NULL,
  `warehouse_entry_number` varchar(50) NOT NULL,
  `purchase_order_number` varchar(50) NOT NULL,
  `purchase_order_line` varchar(50) NOT NULL,
  `number_of_affected_registries` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reverse_costing_webservice_register_siscap_login_idx` (`siscap_login`),
  KEY `reverse_costing_webservice_register_we_number_idx` (`warehouse_entry_number`),
  KEY `reverse_costing_webservice_register_po_number_idx` (`purchase_order_number`),
  KEY `reverse_costing_webservice_register_po_line_idx` (`purchase_order_line`)
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_Elemento_PedidoEntrada` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sislog_PedidoEntrada` int(11) NOT NULL,
  `CodigoLaicon` int(11) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `LaiconIdPadre` int(11) DEFAULT NULL,
  `Cantidad` double DEFAULT NULL,
  `MillicomCode` varchar(150) DEFAULT NULL,
  `ValorUnitario` double DEFAULT NULL,
  `Serial` varchar(50) DEFAULT NULL,
  `Factura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Sislog_PedidoEntrada` (`Sislog_PedidoEntrada`),
  KEY `FK_Sislog_Elemento_PedidoEntrada_Modelo` (`Modelo`),
  KEY `FK_Sislog_Elemento_PedidoEntrada_Elemento` (`CodigoLaicon`),
  KEY `FK_Sislog_Elemento_PedidoEntrada_ElementoPadre` (`LaiconIdPadre`)
) ENGINE=InnoDB AUTO_INCREMENT=145581 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_Elemento_PedidoSalida` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sislog_PedidoSalida` int(11) NOT NULL,
  `CodigoLaicon` int(11) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Cantidad` double NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Sislog_PedidoSalida` (`Sislog_PedidoSalida`),
  KEY `FK_Sislog_Elemento_PedidoSalida_Modelo` (`Modelo`),
  KEY `FK_Sislog_Elemento_PedidoSalida_Elemento` (`CodigoLaicon`)
) ENGINE=InnoDB AUTO_INCREMENT=387550 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_Elemento_Transferencia` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdTransaccion` int(11) NOT NULL,
  `CodigoLaicon` int(11) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `LaiconIdPadre` int(11) DEFAULT NULL,
  `Cantidad` double NOT NULL,
  `Serial` varchar(100) DEFAULT NULL,
  `MillicomCode` varchar(150) DEFAULT NULL,
  `ValorUnitario` double DEFAULT NULL,
  `Estado` int(11) NOT NULL,
  `FechaAprobacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdTransaccion` (`IdTransaccion`),
  KEY `FK_Sislog_Elemento_Transferencia_Modelo` (`Modelo`),
  KEY `FK_Sislog_Elemento_Transferencia_Elemento` (`CodigoLaicon`),
  KEY `FK_Sislog_Elemento_Transferencia_ElementoPadre` (`LaiconIdPadre`),
  KEY `FK_Sislog_Elemento_Transferencia_Estado` (`Estado`)
) ENGINE=InnoDB AUTO_INCREMENT=161686 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_PedidoEntrada` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdTransaccion` int(11) NOT NULL,
  `CodigoBodega` varchar(50) NOT NULL,
  `Proveedor` varchar(100) NOT NULL,
  `Factura` varchar(50) DEFAULT NULL,
  `UsuarioCreacion` varchar(50) NOT NULL,
  `Awb` varchar(50) NOT NULL,
  `PO` varchar(50) NOT NULL,
  `FechaNotificacionSislog` datetime NOT NULL,
  `FechaAprobacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UQ_Sislog_PedidoEntrada_IdTransaccion` (`IdTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=1691 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_PedidoSalida` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoBodega` varchar(50) NOT NULL,
  `CodigoDestinatario` varchar(50) NOT NULL,
  `OM_OT` varchar(15) NOT NULL,
  `RazonSocial` varchar(100) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `FechaNotificacionSislog` datetime NOT NULL,
  `FechaAprobacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24186 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_TransferenciaParcial` (
  `IdTransaccion` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoBodega` varchar(50) NOT NULL,
  `BodegaOrigen` varchar(50) NOT NULL,
  `FechaNotificacionSislog` datetime DEFAULT NULL,
  `OM_OT` varchar(15) NOT NULL,
  PRIMARY KEY (`IdTransaccion`)
) ENGINE=InnoDB AUTO_INCREMENT=12358 DEFAULT CHARSET=latin1;

CREATE TABLE `Sislog_Warehouse` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoBodega` varchar(50) NOT NULL,
  `FechaAdicion` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UQ_Sislog_Warehouse_CodigoBodega` (`CodigoBodega`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

CREATE TABLE `site` (
  `code` varchar(50) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `x` varchar(50) DEFAULT NULL,
  `y` varchar(50) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `site_type` int(11) DEFAULT NULL,
  `security_company` varchar(100) DEFAULT NULL,
  `commentaries` varchar(255) DEFAULT NULL,
  `last_revision` date DEFAULT NULL,
  `last_inspector` varchar(100) DEFAULT NULL,
  `folio` varchar(100) DEFAULT NULL,
  `production_date` date DEFAULT NULL,
  `father_plate_code` varchar(100) DEFAULT NULL,
  `tower_height` varchar(50) DEFAULT NULL,
  `tower_contract_type` varchar(50) DEFAULT NULL,
  `bts_technology_type` varchar(50) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `on_air_date` date DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  `spare_part_maintenance_zone` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `site_deleted_idx` (`deleted`),
  KEY `site_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `site_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

CREATE TABLE `solve_surplus_alpopular` (
  `process_result_detail` int(11) DEFAULT NULL,
  `desktop_inventory` int(11) DEFAULT NULL,
  `element_result` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_interchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spare_laicon_id` int(11) NOT NULL,
  `spare_model` varchar(50) NOT NULL,
  `spare_serial` varchar(100) DEFAULT NULL,
  `spare_part_interchange_state` int(11) NOT NULL,
  `departure_date` datetime DEFAULT NULL,
  `departure_user` varchar(50) DEFAULT NULL,
  `spare_part_warehouse` int(11) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL,
  `responsible_user` varchar(50) DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  `closing_user` varchar(50) DEFAULT NULL,
  `closing_comment` text,
  `element_order_type` varchar(20) DEFAULT NULL,
  `element_order_number` int(11) DEFAULT NULL,
  `pending_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spare_laicon_id` (`spare_laicon_id`),
  KEY `spare_model` (`spare_model`),
  KEY `spare_part_interchange_state` (`spare_part_interchange_state`),
  KEY `departure_user` (`departure_user`),
  KEY `spare_part_warehouse` (`spare_part_warehouse`),
  KEY `direction` (`direction`),
  KEY `responsible_user` (`responsible_user`),
  KEY `closing_user` (`closing_user`),
  KEY `spare_serial` (`spare_serial`),
  KEY `departure_date` (`departure_date`),
  KEY `closing_date` (`closing_date`),
  KEY `element_order_type` (`element_order_type`),
  KEY `element_order_number` (`element_order_number`),
  KEY `pending_days` (`pending_days`)
) ENGINE=InnoDB AUTO_INCREMENT=6291 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_interchange_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spare_part_interchange` int(11) NOT NULL,
  `damaged_element_id` int(11) NOT NULL,
  `damaged_element_model` varchar(50) DEFAULT NULL,
  `damaged_element_serial` varchar(100) DEFAULT NULL,
  `interchange_date` datetime DEFAULT NULL,
  `interchange_user` varchar(50) DEFAULT NULL,
  `element_order_type` varchar(20) DEFAULT NULL,
  `element_order_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spare_part_interchange` (`spare_part_interchange`),
  KEY `damaged_element_id` (`damaged_element_id`),
  KEY `dameged_element_model` (`damaged_element_model`),
  KEY `interchange_user` (`interchange_user`),
  KEY `damaged_element_serial` (`damaged_element_serial`),
  KEY `interchange_date` (`interchange_date`),
  KEY `element_order_type` (`element_order_type`),
  KEY `element_order_number` (`element_order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2686 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_interchange_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_mail_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `spare_part_mail_list_module` varchar(50) NOT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spare_part_mail_list_module` (`spare_part_mail_list_module`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_mail_list_module` (
  `code` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_maintenance_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spare_part_warehouse` int(11) NOT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_om_director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region` (`region`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  `warehouse_type` int(11) DEFAULT NULL,
  `enabled` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

CREATE TABLE `spare_part_warehouse_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `stealed_element_location` (
  `code` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `stealed_element_location_deleted_idx` (`deleted`),
  KEY `stealed_element_location_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type` varchar(10) DEFAULT NULL,
  `document_number` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

CREATE TABLE `synchronization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sync_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

CREATE TABLE `synchronization_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `synchronization_id` int(11) DEFAULT NULL,
  `element` int(11) DEFAULT NULL,
  `sync_action` varchar(50) DEFAULT NULL,
  `location_to` varchar(50) DEFAULT NULL,
  `location_from` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77263 DEFAULT CHARSET=latin1;

CREATE TABLE `tax_type` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TYPE OF TAXES';

CREATE TABLE `ticket_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `text_xml` text,
  `template_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `tigoea_owner_object` (
  `login` varchar(50) NOT NULL,
  `object_type` varchar(50) DEFAULT NULL,
  `object_id_varchar` varchar(50) DEFAULT NULL,
  `object_id_int` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TIGO EA OWNER & OWNED OBJECTS';

CREATE TABLE `tigoea_privilege` (
  `id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TIGO EA PRIVILEGES';

CREATE TABLE `tigoea_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `editable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='TIGO EA PROFILES';

CREATE TABLE `tigoea_profile_privilege` (
  `profile` int(11) NOT NULL,
  `privilege` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TIGO EA PROFILE & PRIVILEGES';

CREATE TABLE `tigoea_user_profile` (
  `login` varchar(50) NOT NULL,
  `profile` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TIGO EA USER & PROFILES';

CREATE TABLE `tigoea_users` (
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='TIGO EA USERS';

CREATE TABLE `tower_contract_type` (
  `id` varchar(50) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `transporter` (
  `id_number` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `truck` (
  `license_plate` varchar(10) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_phone` varchar(20) DEFAULT NULL,
  `transporter` varchar(50) DEFAULT NULL,
  `truck_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`license_plate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `truck_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

CREATE TABLE `user_password_history` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `user_profile` (
  `login` varchar(50) DEFAULT NULL,
  `profile` int(11) DEFAULT NULL,
  KEY `user_profile_login_profile_idx` (`login`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `login` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login_mobile` varchar(50) DEFAULT NULL,
  `password_mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `identification` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(50) DEFAULT NULL,
  `authenticate_sap` varchar(1) DEFAULT 'N',
  `login_sap` varchar(50) DEFAULT NULL,
  `active` varchar(1) DEFAULT 'Y',
  `blocked` varchar(1) DEFAULT 'N',
  `set_new_password` varchar(1) DEFAULT 'Y',
  `failed_attempts_seq_counter` int(11) DEFAULT '0',
  PRIMARY KEY (`login`),
  UNIQUE KEY `login_mobile` (`login_mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `value_data` (
  `element_model_description` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(100) DEFAULT NULL,
  `invoice_amount` double DEFAULT NULL,
  `element_value` double DEFAULT NULL,
  `element_serial` varchar(100) DEFAULT NULL,
  `awb_number` varchar(100) DEFAULT NULL,
  `tax_value` double DEFAULT NULL,
  `trm` double DEFAULT NULL,
  `quantity` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sap_code` varchar(50) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `name` varchar(70) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='VENDOR';

CREATE TABLE `warehouse` (
  `code` varchar(50) NOT NULL,
  `region` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_in_charge` varchar(50) DEFAULT NULL,
  `electric_power_company` varchar(50) DEFAULT NULL,
  `phone_company` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_email` varchar(255) DEFAULT NULL,
  `boss_phone` varchar(255) DEFAULT NULL,
  `deleted` varchar(1) NOT NULL DEFAULT 'N',
  `deleted_by_user` varchar(50) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `geographic_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`),
  KEY `warehouse_deleted_idx` (`deleted`),
  KEY `warehouse_geographic_location_fk` (`geographic_location`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `warehouse_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `we_request` int(11) DEFAULT NULL,
  `sap_code` varchar(50) NOT NULL,
  `purchase_order_line` int(11) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `account_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY';

CREATE TABLE `warehouse_entry_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_entry` int(11) NOT NULL,
  `ext_line` int(11) NOT NULL,
  `line_no` int(11) NOT NULL,
  `short_text` varchar(50) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `gr_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY DETAIL';

CREATE TABLE `warehouse_keeper` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE `warehouse_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `we_type` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `solve_date` datetime DEFAULT NULL,
  `last_access_date` datetime DEFAULT NULL,
  `last_result` varchar(50) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE REQUEST';

CREATE TABLE `we_request_category` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY CATEGORY';

CREATE TABLE `we_request_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY REQUEST TYPE';

CREATE TABLE `we_status` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='WAREHOUSE ENTRY STATUS';

CREATE TABLE `xelement_price` (
  `id` int(11) DEFAULT NULL,
  `purchase_price` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
