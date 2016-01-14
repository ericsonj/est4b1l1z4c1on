SET SQL_SAFE_UPDATES=0;
update laicon20f.element_screenshot_data set element_classification = null where element_classification = 0;
update laicon20f.element_screenshot_data set internal_location_id = null where internal_location_id = 0;
update laicon20f.element_screenshot_data set awb = null where awb = 0;
update laicon20f.element_screenshot_data set invoice = null where invoice = 0;
update laicon20f.element_screenshot_data set element_category_asset = null where element_category_asset = 0;
update laicon20f.element_screenshot_data set element_state = null where element_state = 0;
update laicon20f.element_screenshot_data set element_type_asset = null where element_type_asset = 0;

update laicon20f.element set element_classification = null where element_classification = 0;
update laicon20f.reenabled_element set element_classification = null where element_classification = 0;
update laicon20f.desktop_inventory_element set internal_location_id = null where internal_location_id = 0;
update laicon20f.desktop_inventory_element_result set internal_location_id = null where internal_location_id = 0;
update laicon20f.desktop_inventory_partial_inventory set internal_location = null where internal_location = 0;
update laicon20f.desktop_inventory_process_result_difference_detail set internal_location_id = null where internal_location_id = 0;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id = null where internal_location_id = 0;
update laicon20f.desktop_inventory_process_result_new_detail set internal_location_id = null where internal_location_id = 0;
update laicon20f.laicon_inventory_register_unknown set element_internal_location_id = null where element_internal_location_id = 0;
update laicon20f.quality_inventory_element set internal_location_id = null where internal_location_id = 0;
update laicon20f.element set awb =  null where awb = 0;
update laicon20f.nationalization set awb = null where awb = 0;
update laicon20f.reenabled_element set awb =  null where awb = 0;
update laicon20f.element set invoice = null where invoice = 0;
update laicon20f.nationalization set invoice = null where invoice = 0;
update laicon20f.desktop_inventory_element set element_category_asset = null where element_category_asset = 0;
update laicon20f.desktop_inventory_element_result set element_category_asset = null where element_category_asset = 0;
update laicon20f.desktop_inventory_process_result_new_detail set element_category_asset = null where  element_category_asset = 0;
update laicon20f.element_type_asset set default_element_category_asset = null where default_element_category_asset = 0;
update laicon20f.quality_inventory_element_result set element_category_asset = null where element_category_asset = 0;
update laicon20f.reenabled_element set element_category_asset = null where element_category_asset = 0;
update laicon20f.element set element_state =  null where element_state = 0;
update laicon20f.reenabled_element set element_state = null where element_state = 0;
update laicon20f.desktop_inventory_element set element_type_asset = null where element_type_asset = 0;
update laicon20f.desktop_inventory_element_result set element_type_asset = null where element_type_asset = 0;
update laicon20f.desktop_inventory_process_result_difference_detail set element_type_asset = null where element_type_asset = 0;
update laicon20f.desktop_inventory_process_result_new_detail set element_type_asset = null where element_type_asset = 0;
update laicon20f.element_model set default_element_type_asset = null where default_element_type_asset = 0;
update laicon20f.quality_inventory_element set element_type_asset = null where element_type_asset = 0;
update laicon20f.quality_inventory_element_result set element_type_asset = null where element_type_asset = 0;
update laicon20f.reenabled_element set element_type_asset = null where element_type_asset = 0;
ALTER TABLE `laicon20f`.`desktop_inventory_excluded_field`
CHANGE COLUMN `desktop_inventory_grouping` `desktop_inventory_grouping` INT(11);
update laicon20f.desktop_inventory_excluded_field set desktop_inventory_grouping = 1 where desktop_inventory_grouping = -1;
update laicon20f.element_transfer_order set order_priority_type = null where order_priority_type = 0;
update laicon20f.element_request set order_priority_type = null where order_priority_type = 0;
update laicon20f.location set region = null where region = 0;
update laicon20f.element set internal_location_id = null where internal_location_id = 0;
update laicon20f.element set containing_element = null where containing_element = 0;
update laicon20f.element set element_type_asset = null where element_type_asset = 0;
update laicon20f.element set login_update_installation_site = null where login_update_installation_site = '_FOUR';
update laicon20f.element set location_asigned = 'BAR0190' where location_asigned = 'Poste Los Nogales II (BAR0190)';
update laicon20f.element set location_asigned = 'BAR0411' where location_asigned = 'Ciudad Modesto II  (BAR0411)';
update laicon20f.element set source_element = null where source_element = 0;
update laicon20f.forgotten_password set login = 'JN1102794815' where login = 'JN1102794815 ';
update laicon20f.geographic_location set responsible_user = 'Andres.hernandez' where responsible_user = 'andres.hernandez';
update laicon20f.invoice set supplier = null where supplier = 0;
ALTER TABLE `laicon20f`.`mic_code`
  CHANGE COLUMN `mic_batch` `mic_batch` INT(10);
update laicon20f.mic_code set mic_batch = null where mic_batch = 0;
update laicon20f.mic_code set assigned_element = null where assigned_element = 0;
ALTER TABLE `laicon20f`.`mic_code`
  CHANGE COLUMN `assigned_element` `assigned_element` INT(11) ;
update laicon20f.remote_inventory_mail_list set region = null where region = 0;
update laicon20f.fault_report_struct_detail set fault_element_field = null where fault_element_field = 0;
update laicon20f.external_location set external_location_type = null where external_location_type = 0;

update laicon20f.desktop_inventory set login = 'AF3086222' where  login = 'af3086222';
update laicon20f.desktop_inventory set login = 'Andres.hernandez' where  login = 'andres.hernandez';
update laicon20f.desktop_inventory set login = 'AO79049480' where  login = 'ao79049480';
update laicon20f.desktop_inventory set login = 'AO94228856' where  login = 'ao94228856';
update laicon20f.desktop_inventory set login = 'AP79819342' where  login = 'ap79819342';
update laicon20f.desktop_inventory set login = 'CC6105541' where  login = 'cc6105541';
update laicon20f.desktop_inventory set login = 'CC94287500' where  login = 'cc94287500';
update laicon20f.desktop_inventory set login = 'cesar.estevez' where  login = 'CESAR.ESTEVEZ';
update laicon20f.desktop_inventory set login = 'CG94317021' where  login = 'cg94317021';
update laicon20f.desktop_inventory set login = 'CJ72271212' where  login = 'cj72271212';
update laicon20f.desktop_inventory set login = 'CL80759750' where  login = 'cl80759750';
update laicon20f.desktop_inventory set login = 'CM1082872401' where  login = 'cm1082872401';
update laicon20f.desktop_inventory set login = 'CM72193408' where  login = 'cm72193408';
update laicon20f.desktop_inventory set login = 'CR7574299' where  login = 'cr7574299';
update laicon20f.desktop_inventory set login = 'DJ1036625806' where  login = 'dj1036625806';
update laicon20f.desktop_inventory set login = 'DM1077438122' where  login = 'dm1077438122';
update laicon20f.desktop_inventory set login = 'DS1098603917' where  login = 'ds1098603917';
update laicon20f.desktop_inventory set login = 'EM8526128' where  login = 'em8526128';
update laicon20f.desktop_inventory set login = 'EV72287302' where  login = 'ev72287302';
update laicon20f.desktop_inventory set login = 'FB80116681' where  login = 'fb80116681';
update laicon20f.desktop_inventory set login = 'FS16658896' where  login = 'fs16658896';
update laicon20f.desktop_inventory set login = 'GC1094889215' where  login = 'gc1094889215';
update laicon20f.desktop_inventory set login = 'GO80037050' where  login = 'go80037050';
update laicon20f.desktop_inventory set login = 'HA79687310' where  login = 'ha79687310';
update laicon20f.desktop_inventory set login = 'HM1123621197' where  login = 'hm1123621197';
update laicon20f.desktop_inventory set login = 'HN71229150' where  login = 'hn71229150';
update laicon20f.desktop_inventory set login = 'HP2969344' where  login = 'hp2969344';
update laicon20f.desktop_inventory set login = 'JC1083867636' where  login = 'jc1083867636';
update laicon20f.desktop_inventory set login = 'JD1128053765' where  login = 'jd1128053765';
update laicon20f.desktop_inventory set login = 'JD19471339' where  login = 'Jd19471339';
update laicon20f.desktop_inventory set login = 'JD72346722' where  login = 'jd72346722';
update laicon20f.desktop_inventory set login = 'JG8649737' where  login = 'jg8649737';
update laicon20f.desktop_inventory set login = 'JL9690502' where  login = 'jl9690502';
update laicon20f.desktop_inventory set login = 'JM10255349' where  login = 'jm10255349';
update laicon20f.desktop_inventory set login = 'JM79694731' where  login = 'jm79694731';
update laicon20f.desktop_inventory set login = 'JN10173494' where  login = 'jn10173494';
update laicon20f.desktop_inventory set login = 'JN1102794815' where  login = 'jn1102794815';
update laicon20f.desktop_inventory set login = 'jose.mejia' where  login = 'JOSE.MEJIA';
update laicon20f.desktop_inventory set login = 'JP91160612' where  login = 'jp91160612';
update laicon20f.desktop_inventory set login = 'JR1129569262' where  login = 'jr1129569262';
update laicon20f.desktop_inventory set login = 'JR5777936' where  login = 'jr5777936';
update laicon20f.desktop_inventory set login = 'JR79430814' where  login = 'jr79430814';
update laicon20f.desktop_inventory set login = 'JS80878610' where  login = 'js80878610';
update laicon20f.desktop_inventory set login = 'JV1130605935' where  login = 'jv1130605935';
update laicon20f.desktop_inventory set login = 'JV14324799' where  login = 'jv14324799';
update laicon20f.desktop_inventory set login = 'LD8648664' where  login = 'ld8648664';
update laicon20f.desktop_inventory set login = 'LE12753612' where  login = 'le12753612';
update laicon20f.desktop_inventory set login = 'LQ11318319' where  login = 'lq11318319';
update laicon20f.desktop_inventory set login = 'luis.salamanca' where  login = 'Luis.salamanca';
update laicon20f.desktop_inventory set login = 'mario.roman' where  login = 'MARIO.ROMAN';
update laicon20f.desktop_inventory set login = 'MC79582235' where  login = 'mc79582235';
update laicon20f.desktop_inventory set login = 'NP80877866' where  login = 'np80877866';
update laicon20f.desktop_inventory set login = 'RP87103172' where  login = 'rp87103172';
update laicon20f.desktop_inventory set login = 'RR1111755541' where  login = 'rr1111755541';
update laicon20f.desktop_inventory set login = 'SC1022383553' where  login = 'sc1022383553';
update laicon20f.desktop_inventory set login = 'SR79241975' where  login = 'sr79241975';
update laicon20f.desktop_inventory set login = 'WS11510831' where  login = 'ws11510831';
update laicon20f.desktop_inventory set login = 'WV1022937208' where  login = 'wv1022937208';
update laicon20f.desktop_inventory set login = 'YS79414221' where  login = 'ys79414221';

update laicon20f.infrastructure_element set location = 'ATL0019' where location = 'atl0019';
update laicon20f.infrastructure_element set location = 'ATL0027' where location = 'atl0027';
update laicon20f.infrastructure_element set location = 'BAR0009' where location = 'bar0009';
update laicon20f.infrastructure_element set location = 'COR0018' where location = 'cor0018';
update laicon20f.infrastructure_element set location = 'CUN0026' where location = 'cun0026';
update laicon20f.infrastructure_element set location = 'RVAC0035' where location = 'rvac0035';
update laicon20f.infrastructure_element set location = 'SMA0028' where location = 'sma0028';
update laicon20f.infrastructure_element set location = 'VAC0020' where location = 'vAC0020';

update laicon20f.reenabled_location set region = null where region = 0;

update laicon20f.element_transfer_order set addressee_login = 'juan.gallego' where addressee_login = 'Juan.Gallego';

update laicon20f.element_transfer_order set order_execution_responsible =  null where order_execution_responsible = 0;

update laicon20f.element_transfer_order set authorize_region =  null where authorize_region = 0;

update laicon20f.element_transfer_order set creator_login = 'juan.gallego' where creator_login = 'Juan.Gallego';
update laicon20f.element_transfer_order set creator_login = 'GJ7169462' where creator_login = 'gj7169462';

update laicon20f.element_transfer_order set sender_login = null where sender_login = '2010-10-31 15:25:10';

INSERT INTO `laicon20f`.`users` (`login`, `name`, `email`, `login_mobile`, `authenticate_sap`, `active`, `blocked`, `set_new_password`, `failed_attempts_seq_counter`) VALUES ('ALPOPULAR_WS', 'ALPOPULAR_WS', 'rollout@tigo.com.co', 'ALPOPULAR_WS', 'N', 'Y', 'N', 'Y', '0');

update laicon20f.reenabled_location set deleted_by_user = 'carlos.chilito' where deleted_by_user = 'CARLOS CHILITO';

update laicon20f.users set login = 'jhoany.rodriguez' where login = 'jhoany.rodriguez ';
update laicon20f.geographic_location set responsible_user='jhoany.rodriguez' where responsible_user = 'jhoany.rogriguez';

update laicon20f.warehouse_keeper set login =  'david.vanegas' where login = 'david .vanegas';

INSERT INTO `laicon20f`.`region` (`id`, `name`, `commercial`, `responsible_user`) VALUES (9, 'PLATFORM', 'PLATFORM', 'admin');
update laicon20f.geographic_location set region = 9 where code = 'PLATFORM';

update laicon20f.element_request set truck_type = null where truck_type = 0;

update laicon20f.element_request set order_execution_responsible = null where order_execution_responsible = 0;

update laicon20f.element_request set direction = 'MSCBOG03_TX' where id = 5585;
update laicon20f.element_request set direction = 'MSCBOG03_TX' where id = 6008;
update laicon20f.element set location = 'MSCBOG03_TX' where location = 'MSCBOG03_Tx';

update laicon20f.element set location_asigned = 'VAC0025' where location_asigned  = 'ITALCOL (VAC0025)';
update laicon20f.element set location_asigned = 'SAT0035' where location_asigned  = 'CINCUENTENARIO (SAT0035)';
update laicon20f.element set location_asigned = 'MED0031' where location_asigned  = 'Guayabal Fiscalia (MED0031)';
update laicon20f.element set location_asigned = 'SUC0027' where location_asigned  = 'Palo Alto (SUC0027)';
update laicon20f.element set location_asigned = 'TORITUNJA' where location_asigned  = 'Tienda  Tunja (TORITUNJA)';
update laicon20f.element set location_asigned = 'MED0083' where location_asigned  = 'Aeroparque (MED0083)';
update laicon20f.element set location_asigned = 'MED0086' where location_asigned  = 'SURAMERICANA (MED0086)';
update laicon20f.element set location_asigned = 'MED1018' where location_asigned  = 'GALERIAS DE SAN DIEGO (MED1018)';
update laicon20f.element set location_asigned = 'CAU0033' where location_asigned  = 'Suárez (CAU0033)';
update laicon20f.element set location_asigned = 'MED0082' where location_asigned  = 'Micro Noel (MED0082)';
update laicon20f.element set location_asigned = 'PER0034' where location_asigned  = 'Clinica Comfamiliar (PER0034)';
update laicon20f.element set location_asigned = 'MED0285' where location_asigned  = 'ANTILLAS (MED0285)';
update laicon20f.element set location_asigned = 'MED1091' where location_asigned  = 'AJISAL (MED1091)';
update laicon20f.element set location_asigned = 'MED2041' where location_asigned  = 'SALUDCOOP LA 80 (MED2041)';
update laicon20f.element set location_asigned = 'PER0029' where location_asigned  = 'Parque Industrial (PER0029)';
update laicon20f.element set location_asigned = 'BOG0911' where location_asigned  = 'Suba Las Mercedes II (BOG0911)';
update laicon20f.element set location_asigned = 'WAR01CAR' where location_asigned  = 'BODEGA SATELITE CARTAGENA (WAR01CAR)';
update laicon20f.element set location_asigned = 'COR0061' where location_asigned  = 'Lorica Centro (COR0061)';
update laicon20f.element set location_asigned = 'MED2023' where location_asigned  = 'Bodega Sabaneta (MED2023)';

update laicon20f.internal_location set location='MSCBOG01_DESEMPENO' where location='MSCBOG01_DESEMPE?O';
update laicon20f.internal_location set location='MSCBOG03_DESEMPENO' where location='MSCBOG03_DESEMPE?O';

update laicon20f.element_transfer_order set direction_location='MSCBOG02_TX' where direction_location='MSCBOG02_Tx';
update laicon20f.element_transfer_order set direction_location='MSCCAR01_TRAU' where direction_location = 'MSC CAR 01_TRAU';
update laicon20f.element_transfer_order set origin_location='MSCSMA01_TX' where origin_location = 'MSCSMA_TX'; --por confirmar
update laicon20f.element_transfer_order set prepared_state_user='juan.gallego' where prepared_state_user= 'Juan.Gallego';
update laicon20f.element_transfer_order set sender_login='juan.gallego' where sender_login= 'Juan.Gallego';


update laicon20f.element set location = 'BOG0039' where location = 'Bog0039';
update laicon20f.element set location = 'BOG0332' where location = 'Bog0332';
update laicon20f.element set location = 'CUN0051' where location = 'cun0051';

update laicon20f.element_transfer_order_detail set element_transfer_order = null where element_transfer_order =  0;
update laicon20f.inventory_by_models set id_model = null where id_model = 'null';
update laicon20f.site set spare_part_maintenance_zone = null where spare_part_maintenance_zone = 0;

update laicon20f.desktop_inventory_partial_inventory set partial_download_user = 'EV72287302' where partial_download_user = 'ev72287302';
update laicon20f.reenabled_element set internal_location_id = null where internal_location_id = 0;

update laicon20f.remote_inventory_inconsistency set ri_location = 'MET0014' where ri_location = 'MET0014 SAN MAR';
update laicon20f.remote_inventory_inconsistency set ri_location = 'VIL0004' where ri_location = 'VIL0004 C.VCIO';

/*09-Julio-2015*/
update laicon20f.desktop_inventory_element set desktop_inventory_parcial_inventory = null where desktop_inventory_parcial_inventory = 0;

INSERT INTO `laicon20f`.`users` (`login`, `name`, `email`, `login_mobile`, `authenticate_sap`, `active`, `blocked`, `set_new_password`, `failed_attempts_seq_counter`) VALUES ('laicon', 'laicon', 'rollout@tigo.com.co', 'laicon', 'N', 'Y', 'N', 'Y', '0');

update laicon20f.quality_inventory_element_result set element = null where element = 0;

/*13-Julio-2015*/

ALTER TABLE `laicon20f`.`desktop_inventory_element_result` CHANGE COLUMN `element` `element` INT(11);
update laicon20f.desktop_inventory_element_result set element = null where element = 0;

ALTER TABLE `laicon20f`.`desktop_inventory_element_result`  CHANGE COLUMN `desktop_inventory_element` `desktop_inventory_element` INT(11);
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 0;

update laicon20f.desktop_inventory_element_result set location = 'BOG0332' where location = 'Bog0332';
update laicon20f.desktop_inventory_element_result set location = 'BAR0018' where location = 'BAR0018';
update laicon20f.desktop_inventory_element_result set location = 'BOG0039' where location = 'Bog0039';
update laicon20f.desktop_inventory_element_result set location = 'PLATFORM' where location = 'Platform';

update desktop_inventory_process_result_detail set  desktop_inventory_partial_inventory =  null where  desktop_inventory_partial_inventory = 0;

ALTER TABLE `laicon20f`.`desktop_inventory_process_result_detail`
CHANGE COLUMN `desktop_inventory_element` `desktop_inventory_element` INT(11);

update desktop_inventory_process_result_detail set  desktop_inventory_element =  null where  desktop_inventory_element = 0;

ALTER TABLE `laicon20f`.`desktop_inventory_process_result_detail`
CHANGE COLUMN `desktop_inventory_element_result` `desktop_inventory_element_result` INT(11);

update desktop_inventory_process_result_detail set  desktop_inventory_element_result =  null where  desktop_inventory_element_result = 0;

ALTER TABLE `laicon20f`.`desktop_inventory_process_result_new_detail`
CHANGE COLUMN `element` `element` INT(11) NULL ;

update laicon20f.desktop_inventory_process_result_new_detail set element= null where element = 0;

update laicon20f.desktop_inventory_process_result_missing_detail set element_type_asset = null where element_type_asset= 0;

ALTER TABLE `laicon20f`.`desktop_inventory_process_result_difference_detail`
CHANGE COLUMN `desktop_inventory_element` `desktop_inventory_element` INT(11);

update laicon20f.desktop_inventory_process_result_difference_detail set desktop_inventory_element = null where desktop_inventory_element = 0;

update laicon20f.desktop_inventory_process_result_difference_detail set location = 'BOG0332' where location = 'Bog0332';
update laicon20f.desktop_inventory_process_result_difference_detail set location = 'PLATFORM' where location = 'Platform';
update laicon20f.desktop_inventory_process_result_difference_detail set location = 'MSCBOG03_DESEMPENO' where location = 'MSCBOG03_DESEMPE?O';

/*por hacer*/
update desktop_inventory set login = 'WT80126241' where login = 'wt80126241'; 
update desktop_inventory set login = 'WM1037622561' where login = 'wM1037622561'; 
update desktop_inventory set login = 'KG55313440' where login = 'kg55313440'; 
update desktop_inventory set login = 'JM1031122956' where login = 'jm1031122956'; 
update desktop_inventory set login = 'javier.espinosa' where login = 'Javier.Espinosa'; 
update desktop_inventory set login = 'FR1143425033' where login = 'fr1143425033'; 
update desktop_inventory set login = 'DC1037610423' where login = 'Dc1037610423'; 
update desktop_inventory set login = 'AK71738921' where login = 'ak71738921';

UPDATE inventory_elements SET user_create = 'DF72272569' where user_create = 'DF72272569 ';
update element_request set direction = 'RBOG1453_CUSTOMER' where direction = 'RBOG1453_CUS';
update element set location = 'RBOG1453_CUSTOMER' where location = 'RBOG1453_CUS';
update element set location_asigned =  'VAC0043' where location_asigned = 'KM18 (VAC0043)';

SET SQL_SAFE_UPDATES=1;
