
 CREATE TABLE desktop_version (
     version INT 
 );



 CREATE TABLE configuration(
     code VARCHAR(250), 
     value VARCHAR(255), 
     PRIMARY KEY(code)
 );



 CREATE TABLE element(
     id INT, 
     model VARCHAR(150), 
     serial VARCHAR(250), 
     quantity DOUBLE, 
     millicom_code VARCHAR(250), 
     location VARCHAR(250), 
     internal_location_id INT, 
     old_millicom_code VARCHAR(250), 
     is_asset VARCHAR(1), 
     element_type_asset INT, 
     element_category_asset INT, 
     PRIMARY KEY(id)
 );



 CREATE TABLE element_model(
     id VARCHAR(50), 
     description VARCHAR(255), 
     maker VARCHAR(100), 
     reference VARCHAR(100), 
     sub_reference VARCHAR(100), 
     plu VARCHAR(20), 
     element_type VARCHAR(150), 
     value_type VARCHAR(20), 
     is_asset VARCHAR(1), 
     default_element_type_asset INT, 
     PRIMARY KEY(id)
 );



 CREATE TABLE inventory(
     id INT, 
     date_download TIMESTAMP, 
     date_upload TIMESTAMP, 
     location VARCHAR(250), 
     login VARCHAR(250), 
     state INT, 
     grouping INT, 
     PRIMARY KEY(id)
 );



 CREATE TABLE inventory_element(
     id INT, 
     model VARCHAR(250), 
     location VARCHAR(250), 
     internal_location_id INT, 
     element INT, 
     inventory INT, 
     serial VARCHAR(250), 
     quantity DOUBLE, 
     millicom_code VARCHAR(250), 
     is_asset VARCHAR(1), 
     element_type_asset INT, 
     element_category_asset INT, 
     old_millicom_code VARCHAR(250), 
     inventory_parcial_inventory   INT,
     offline	VARCHAR(1) DEFAULT 'N',
     PRIMARY KEY(id)
 );



 CREATE TABLE inventory_element_result(
     id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
     inventory_element INT, 
     element INT, 
     model VARCHAR(250), 
     location VARCHAR(250), 
     inventory INT, 
     serial VARCHAR(250), 
     quantity DOUBLE, 
     millicom_code VARCHAR(250), 
     is_asset VARCHAR(1), 
     element_type_asset INT, 
     element_category_asset INT, 
     comments VARCHAR(4000), 
     state INT, 
     internal_location_id INT DEFAULT 0, 
     inventory_parcial_inventory   INT,
     PRIMARY KEY(id)
 );



 CREATE TABLE inventory_internal_location(
     id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
     inventory INT, 
     internal_location INT, 
     date TIMESTAMP, 
     user_responsible VARCHAR(100), 
     PRIMARY KEY(id)
 );



 CREATE TABLE users(
     login VARCHAR(100), 
     password VARCHAR(250), 
     name VARCHAR(250), 
     PRIMARY KEY(login)
 );



 CREATE TABLE element_type_asset(
     id INT, 
     name VARCHAR(150), 
     default_element_category_asset INT, 
     investment_item VARCHAR(10), 
     investment_item_name VARCHAR(150), 
     PRIMARY KEY(id)
 );



 CREATE TABLE model_x_type_asset(
     element_model VARCHAR(50), 
     element_type_asset INT, 
     PRIMARY KEY(element_model, element_type_asset)
 );



 CREATE TABLE element_category_asset(
     id INT, 
     name VARCHAR(150), 
     investment_item VARCHAR(10), 
     investment_item_name VARCHAR(150), 
     mic_code_prefix VARCHAR(10), 
     PRIMARY KEY(id)
 );



 CREATE TABLE model_x_category_asset(
     element_model VARCHAR(50), 
     element_category_asset INT, 
     PRIMARY KEY(element_model, element_category_asset)
 );



 CREATE TABLE location(
     code VARCHAR(50), 
     name VARCHAR(150), 
     PRIMARY KEY(code)
 );



 CREATE TABLE internal_location(
     id INT, 
     tigo_code VARCHAR(150), 
     description VARCHAR(4000), 
     location VARCHAR(50), 
     PRIMARY KEY(id)
 );




 CREATE TABLE terminal_file_load ( 
     id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
     inventory INT, 
     location VARCHAR(50), 
     file_name VARCHAR(300), 
     checksum VARCHAR(100), 
     load_time TIMESTAMP, 
     user_login VARCHAR(100), 
     PRIMARY KEY(id) 
 );



 CREATE TABLE terminal_file_load_detail ( 
     id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
     terminal_file_load INT,
     element INT, 
     element_model VARCHAR(250), 
     serial VARCHAR(250), 
     millicom_code VARCHAR(250), 
     location VARCHAR(250), 
     detail_type VARCHAR(50), 
     comments VARCHAR(4000), 
     element_category_asset INT, 
     changes VARCHAR(4000), 
     processed INT, 
     is_asset VARCHAR(1), 
     element_type_asset INT, 
     element_state INT, 
     PRIMARY KEY(id) 
 );



 CREATE TABLE terminal_file_load_detail_photo ( 
     id INT GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), 
     terminal_file_load_detail INT, 
     photo_file_name VARCHAR(300), 
     PRIMARY KEY(id) 
 );





 CREATE TABLE excluded_model ( 
     id INT, 
     desktop_inventory_grouping INT, 
     element_model VARCHAR(50), 
     PRIMARY KEY(id)
 ) 




 CREATE TABLE excluded_field ( 
     id INT, 
     desktop_inventory_grouping INT, 
     field_code VARCHAR(50), 
     field_name VARCHAR(50), 
     PRIMARY KEY(id) 
 ) 






 CREATE TABLE user_x_privilege ( 
     login VARCHAR(50),
     privilege VARCHAR(50)
 ) 




CREATE TABLE inventory_terminal_model(
    id INT NOT NULL, 
    element_model   VARCHAR(50)    NOT NULL REFERENCES element_model(id),
    enabled VARCHAR(1) NOT NULL
);
CREATE TABLE inventory_partial_inventory(
     id INT NOT NULL PRIMARY KEY, 
     desktop_inventory   INT NOT NULL REFERENCES inventory(id),
     desktop_inventory_admin_warehouse   INT 
      REFERENCES inventory_admin_warehouse(id),
     internal_location   INT,
     partial_download_user   VARCHAR(50),
     partial_download_date   TIMESTAMP,
     partial_upload_user VARCHAR(50),
     partial_upload_date     TIMESTAMP,
     add_special_elements    VARCHAR(1) DEFAULT 'N'
);
CREATE TABLE inventory_admin_warehouse(
 id INT NOT NULL PRIMARY KEY,
 warehouse_code varchar(50)
);
CREATE TABLE inventory_grouping (
 id INT NOT NULL PRIMARY KEY,
 grouping_name VARCHAR(50),
 description VARCHAR(255),
 is_active   VARCHAR(1),
 is_default  VARCHAR(1),
 restrict_inventory_screen_fields    VARCHAR(1),
 solve_missing_only_field_service    VARCHAR(1)
);




CREATE INDEX element_model_idx ON element(model);



CREATE INDEX element_serial_idx ON element(serial);



CREATE INDEX element_location_idx ON element(location);



CREATE INDEX element_internal_location_id_idx ON element(internal_location_id);



CREATE INDEX inventory_location_idx ON inventory(location);



CREATE INDEX element_millicom_code_idx ON element(millicom_code);



CREATE INDEX element_old_millicom_code_idx ON element(old_millicom_code);



CREATE INDEX inventory_element_model_idx ON inventory_element(model);



CREATE INDEX inventory_element_location_idx ON inventory_element(location);



CREATE INDEX inventory_element_internal_location_id_idx ON inventory_element(internal_location_id);



CREATE INDEX inventory_element_element_idx ON inventory_element(element);
CREATE INDEX inventory_element_type_asset_idx ON inventory_element(element_type_asset);
CREATE INDEX inventory_element_category_asset_idx ON inventory_element(element_category_asset);
CREATE INDEX inventory_element_is_asset_idx ON inventory_element(is_asset);
CREATE INDEX inventory_element_old_millicom_code_idx ON inventory_element(old_millicom_code);
CREATE INDEX inventory_element_inventory_partial_inventory_idx ON inventory_element(inventory_parcial_inventory);



CREATE INDEX inventory_element_inventory_idx ON inventory_element(inventory);



CREATE INDEX inventory_element_serial_idx ON inventory_element(serial);



CREATE INDEX inventory_element_millicom_code_idx ON inventory_element(millicom_code);



CREATE INDEX inventory_element_result_inventory_element_idx ON inventory_element_result(inventory_element);
CREATE INDEX inventory_element_result_inventory_type_asset_idx ON inventory_element_result(element_type_asset);
CREATE INDEX inventory_element_result_inventory_category_asset_idx ON inventory_element_result(element_category_asset);
CREATE INDEX inventory_element_result_inventory_is_asset_idx ON inventory_element_result(is_asset);
CREATE INDEX inventory_element_result_inventory_state_idx ON inventory_element_result(state);
CREATE INDEX inventory_element_result_inventory_internal_location_idx ON inventory_element_result(internal_location_id);
CREATE INDEX inventory_element_result_inventory_partial_inventory_idx ON inventory_element_result(inventory_parcial_inventory);



CREATE INDEX inventory_element_result_model_idx ON inventory_element_result(model);



CREATE INDEX inventory_element_result_location_idx ON inventory_element_result(location);



CREATE INDEX inventory_element_result_inventory_idx ON inventory_element_result(inventory);



CREATE INDEX inventory_element_result_serial_idx ON inventory_element_result(serial);



CREATE INDEX inventory_element_result_millicom_code_idx ON inventory_element_result(millicom_code);



CREATE INDEX inventory_element_result_element_idx ON inventory_element_result(element);



CREATE INDEX inventory_element_result_type_idx ON inventory_element_result(result_type);



CREATE INDEX inventory_element_result_confirmed_idx ON inventory_element_result(confirmed);







CREATE INDEX terminal_file_load_inventory_idx ON terminal_file_load(inventory);



CREATE INDEX terminal_file_load_location_idx ON terminal_file_load(location);



CREATE INDEX terminal_file_load_file_name_idx ON terminal_file_load(file_name);



CREATE INDEX terminal_file_load_load_time_idx ON terminal_file_load(load_time);



CREATE INDEX terminal_file_load_user_login_idx ON terminal_file_load(user_login);






CREATE INDEX terminal_file_load_detail_terminal_file_load_idx ON terminal_file_load_detail(terminal_file_load);



CREATE INDEX terminal_file_load_detail_element_idx ON terminal_file_load_detail(element);



CREATE INDEX terminal_file_load_detail_element_model_idx ON terminal_file_load_detail(element_model);



CREATE INDEX terminal_file_load_detail_serial_idx ON terminal_file_load_detail(serial);



CREATE INDEX terminal_file_load_detail_millicom_code_idx ON terminal_file_load_detail(millicom_code);



CREATE INDEX terminal_file_load_detail_location_idx ON terminal_file_load_detail(location);



CREATE INDEX terminal_file_load_detail_detail_type_idx ON terminal_file_load_detail(detail_type);



CREATE INDEX terminal_file_load_detail_element_category_asset_idx ON terminal_file_load_detail(element_category_asset);



CREATE INDEX terminal_file_load_detail_processed_idx ON terminal_file_load_detail(processed);



CREATE INDEX terminal_file_load_detail_is_asset_idx ON terminal_file_load_detail(is_asset);



CREATE INDEX terminal_file_load_detail_element_type_asset_idx ON terminal_file_load_detail(element_type_asset);



CREATE INDEX terminal_file_load_detail_element_state_idx ON terminal_file_load_detail(element_state);






CREATE INDEX terminal_file_load_detail_photo_terminal_file_load_detail_idx ON terminal_file_load_detail_photo(terminal_file_load_detail);



CREATE INDEX terminal_file_load_detail_photo_photo_file_name_idx ON terminal_file_load_detail_photo(photo_file_name);








CREATE INDEX excluded_field_grouping_idx ON excluded_field(desktop_inventory_grouping);



CREATE INDEX excluded_model_grouping_idx ON excluded_model(desktop_inventory_grouping);




 CREATE INDEX user_priv_login_idx ON user_x_privilege(login) 




CREATE INDEX inventory_admin_warehousewhcode_idx ON inventory_admin_warehouse(warehouse_code);



CREATE INDEX inventory_partial_inventory_di_idx ON inventory_partial_inventory(desktop_inventory);
CREATE INDEX inventory_partial_inventory_diaw_idx ON inventory_partial_inventory(desktop_inventory_admin_warehouse);
CREATE INDEX inventory_partial_inventory_iloc_idx ON inventory_partial_inventory(internal_location)

