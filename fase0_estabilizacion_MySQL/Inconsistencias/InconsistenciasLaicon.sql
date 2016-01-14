/*01-07-2015*/

/*No existe en la tabla users*/
--select * from  laicon20f.users where login='jhoany.rogriguez';
  --select responsible_user from geographic_location where code='WAR04BUC';
  -- cambiar en la tabla users el loging por 'jhoany.rogriguez' ya q en esta esta 'jhoany.rogriguez ' 
  --solucionado desde PreMigracionParaMYSQL.sql

--SELECT * FROM laicon20f.warehouse_keeper where id = '98670475';
  --select * from users where login =  'david.vanegas';
-- cambiar en la tabla warehouse_keeper el loging por 'david.vanegas' ya q en esta esta 'david .vanegas'
  --solucionado desde PreMigracionParaMYSQL.sql

/*No existe en la tabala supplier*/
--SELECT * FROM laicon20f.invoice where id = 927;
  --select * from supplier where id = 12;
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

--SELECT * FROM laicon20f.invoice where id = 1041;
  --select * from supplier where id = 21;
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

/*campo region con valores -1 y 0*/
--select * from laicon20f.geographic_location where code in ('PLATFORM','WAR98BG','WAR02BG_NAC', 'WAR04BG_NAC');
-- se escala a los funcionales para solicion
-- AccionesDefinitivas.xml

/*id air_waybill no existe 1242*/
--select * from laicon20f.operation_document where id = 108;
  --select * from air_waybill where id = 1242;
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

/*id mic_batch no existen*/
--select * from laicon20f.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon') and mic_batch in (6600,6740,6747,6762,6767,6768,6784,6756,6758);
  --select * from laicon20f.mic_batch where id in (6600,6740,6747,6762,6767,6768,6784,6756,6758);
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

/*No existe en la tabla users */
select code,assigned_by_user from mic_code where assigned_by_user = 'ALPOPULAR_WS';
  select * from users where login = 'ALPOPULAR_WS';
-- se debe crear el usuario

/*Se eliminaron anteriomente estas geographic_location que son necesarias para nationalization_place*/
select * from nationalization_place;
select * from geographic_location where code in ('WAR02BG_NAC', 
'WAR04BG_NAC');

/*location con code = 'RBOG1453_CUS' no existe necesario para registro en tabla Sislog_PedidoSalida con id 19065*/
select * from Sislog_PedidoSalida where id = 19065 ;
select * from location where code = 'RBOG1453_CUS';
/*accion*/
update Sislog_PedidoSalida set CodigoDestinatario = 'RBOG1453_CUSTOMER' where CodigoDestinatario = 'RBOG1453_CUS';

/*No se encuebtra la location con codigo 'MSCCAR01_TRAU' necesaria para element_transfer_order con id = 17552*/
select * from element_transfer_order where id = 17552;
select * from location where code = 'MSCCAR01_TRAU';

/*Campo UsuarioCreacion null en los registros con id 1691, 1692, 1693, 1694 de la tabla Sislog_PedidoEntrada*/
Select * from Sislog_PedidoEntrada where id in (1691, 1692, 1693, 1694);
Select * from Sislog_PedidoEntrada where UsuarioCreacion = 'null';

/*id en location no existe*/
--select * from internal_location where id in (2495,2496);
  --select * from location where code = 'BARTRAU01';
-- s	e escala a los funcionales para solicion

/*No existen el code en la tabla location
'BAR0XXX'
'BOG0998'
'SIN0999'
'TUN003'
'test'
'TEMPVAL'
'BAR0555'
'TEMPBAR'
'TEMPSMA'
'TEMPSIN'
'BAR0999'
*/
select distinct laicon_location_code from remote_inventory_location where id in (331648,
331607,
331346,
331217,
331168,
331106,
331021,
330632,
330568,
330495,
330438,
330434,
330335,
330226,
330088,
329440,
329438);

select * from location where code in (select distinct laicon_location_code from remote_inventory_location where id in (331648,
331607,
331346,
331217,
331168,
331106,
331021,
330632,
330568,
330495,
330438,
330434,
330335,
330226,
330088,
329440,
329438));

-- se escala a los funcionales para solicion

/*No existen el code en la tabla location  'MWNOR50' */
--select * from infrastructure_element where id in (10015335,10015334);
  --select * from location where code = 'MWNOR50';
-- se escala a los funcionales para solicion
-- AccionesDefinitivas.xml

/*login en la tabla users no existe 'ALPOPULAR_WS'*/
select count(*) from element_transfer_order where addressee_login = 'ALPOPULAR_WS';
  select * from users  where login = 'ALPOPULAR_WS';
-- se debe crear el usuario

/*plu en la tabla element_model no existen
1000061,
1007850,
1007913,
1008013,
1008014,
5000022,
80009703,
1009678,
1009679,
1009680,
1009681,
1009948,
1009949,
*/
select distinct plu from model_value_change where id in (10,
221,
300,
509,
515,
1788,
8368,
8419,
8420,
8421,
8422,
8920,
8921);
select * from element_model where id in (select distinct plu from model_value_change where id in (10,
221,
300,
509,
515,
1788,
8368,
8419,
8420,
8421,
8422,
8920,
8921));
-- a la espera de la respuesta de jorge garcia


/*element_model en la tabla element_model no existen
'KITMW_NEC_SDH113000S'
'1000684'
'1001399'
*/
--select element_model from invoice_detail where id in (54,
--2587,
--4113);
--select * from element_model where id in (select element_model from invoice_detail where id in (54,
--2587,
--4113));
-- se escala a los funcionales para solicion
-- AccionesDefinitivas.xml

/*element_model en la tabla element_model no existen 1001399*/
--select element_model from invoice_template_detail where id = 128;
  --select * from element_model where id = 1001399;
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

/*id de element_type_asset no existe 145*/
--select * from model_x_type_asset where element_model = 'CARD_ADLI_COMPACTPCICARD';
  --select * from element_type_asset where id =  145;
  -- se escala a los funcionales para solicion
  -- AccionesDefinitivas.xml

/*02-07-2015*/

/*No esiste en la tabla warehouse necesarios para 258 registros de la tabla inventory_elements*/
select * from inventory_elements where id in (20,
21,
22,
242,
260,
262,
263,
264,
265,
288,
373,
439,
440,
701,
1636,
1732,
1911,
1917,
1918,
2735,
2821,
2822,
5403,
5696,
5697,
6211,
7324,
7325) order by  warehouse desc;
select * from warehouse where code in ('WAR15BGEXT',
'VIL0004',
'VAL0098',
'VAC0032',
'MWCOS04',
'MSCCAL01_TX',
'MSCBAQ01_VAS',
'MSCBAQ01_COR',
'IBA0017',
'CAR0011',
'BUC0001',
'BOG0605',
'BOG0352',
'BOG0147',
'BOG0124',
'BOG0005',
'BOG0003',
'BAR0430',
'ANT0058'
);


/*valor del campo spare_part_warehouse en 0 no existe en la tabla spare_part_warehouse y no se permite valor null*/
select * from spare_part_maintenance_zone where id = 53;

/*valor del campo code no esiste en la tabla location necesario para 3 registros de la tabla element_request*/
select * from location where code like 'WAR01BAREXT';

/*no esiste en la tabla location necesario para 10 registros en la tabla element_request*/
select * from location WHERE code like 'VAC0131 (P)';
select * from location WHERE code like 'WAR01BAREXT';
select * from location WHERE code like 'MSCPER_BSC';

/*No esiset el login en la tabla users necesario para 48 registros de la tabla element_request*/
select * from users where login like 'jose.diaz';

/*No existe el code en la tabala warehouse
'WAR13BGEXT'
'WAR15BGEXT'
'WAR01BGEXT'
'WAR05BUC'
'WAR04BUC'
'WAR08BGEXT'
'WAR28BGEXT'
'WAR16BGEXT'
'WAR20BGEXT'
'WAR25BGEXT'
'WAR26BGEXT*/
select distinct warehouse_code from desktop_inventory_admin_warehouse
where id in (11,
17,
23,
24,
27,
28,
30,
34,
35,
36,
37);
select * from warehouse where code in ('WAR13BGEXT',
'WAR15BGEXT',
'WAR01BGEXT',
'WAR08BGEXT',
'WAR28BGEXT',
'WAR16BGEXT',
'WAR20BGEXT',
'WAR25BGEXT',
'WAR26BGEXT');

/*No se encuentran los code en la tabla location necesarios para la tabla element*/
select * from location where code in ('COR0032','VAC0128(P)','VAC0131 (P)','WAR08BG', 'ANT0113');

/*No existe id en la tabla air_waybill'242'
'590','1173','1194','1212','1242'
,'1219','1225','1226','1224','1227','1228','1229'
,'1230','1231','1232','1233','1234','1245','1258'
,'1259','1265','1264','1269','1270','1271','1273'
necesarios para 1223 registros en ela tabla element*/
select * from air_waybill where id in('242','590','1173','1194','1212','1242'
,'1219','1225','1226','1224','1227','1228','1229'
,'1230','1231','1232','1233','1234','1245','1258'
,'1259','1265','1264','1269','1270','1271','1273');


/*no existe Id en la tabla element_model se adjunta excel becesario para 11584 elemento de la tabala element*/
select * from element_model where id in ('F_SIEM_F:ACOMV',
'F_SIEM_F:RXCUV5',
'EMI-P_SIEM_EMI-P:SHEV2',
'F_SIEM_F:CORECU',
'F_SIEM_F:CORECUV5',
'F_SIEM_F:RXCU',
'EMI-P_SIEM_EMI-P:SHBV3',
'EMI-P_SIEM_EMI-P:RSV3',
'MEF_SIEM_MEFV2',
'F_SIEM_F:FAN',
'F_SIEM_F:RXCUV6',
'F_SIEM_F:CUV1',
'AIRIN_SIEM_CP:AIRINLETV2',
'F_SIEM_F:RXCU12V1',
'F_SIEM_F:CORECUV6',
'EMI-P_SIEM_EMI-P:SH2S2V1',
'F_SIEM_F:WCUV1',
'F_SIEM_F:FAN-2V1',
'AIRIN_SIEM_CP:AIRINLETV3',
'EMI-P_SIEM_EMI-P:SH-2BV1',
'EMI-P_SIEM_EMI-P:SH-2EV1',
'MSU_SIEM_MSU:AC2PH80UV1',
'UNID_SIEM_ADPA/UV2',
'F_SIEM_F:CU',
'F_SIEM_F:FANV3',
'EMI-P_SIEM_EMI-P:SH-2S1V1',
'F_SIEM_F:RXCUV1',
'MK_SIEM_MK:CAR12-2S2V1',
'AIRIN_SIEM_CP:AIRINLETV5',
'M_SIEM_M:ABISCONX',
'UNID_SIEM_ADPx',
'EMI-P_SIEM_EMI-P:SH-2S1V2',
'UNID_SIEM_ADP-2V1',
'F_SIEM_ACTC-2V1',
'MSU_SIEM_MSU:BASV2',
'AIRIN_SIEM_CP:AIRINLETV6',
'MSU_SIEM_MSU:DC-2V1',
'F_SIEM_F:CORECUXSV1',
'F_SIEM_F:FANV1',
'F_SIEM_F:FAN2V1',
'UNID_SIEM_RBS120V4',
'MEF_SIEM_MEFV1',
'MEF_SIEM_MEF-2V1',
'MEF_SIEM_MEF150V4',
'MEF_SIEM_MEFM-2V2',
'EMI-P_SIEM_EMI-P:SH-2BV2',
'EMI-P_SIEM_EMI-P:SH-2S2V2',
'EMI-P_SIEM_EMI-P:SH-2EV2',
'EMI-P_SIEM_EMI-P:SH-2S1V3',
'UNID_SIEM_BATTPACKx',
'UNID_SIEM_BATTPACKV4',
'MSU_SIEM_MSU:AC2PH/UV1',
'EMI-P_SIEM_EMI-P:R12BV1',
'EMI-P_SIEM_EMI-P:SHS1/UV1',
'AIRD_SIEM_CP:AIRDUCTV1',
'UNID_SIEM_MK:AIRDUCT',
'F_SIEM_F:NT',
'UNID_SIEM_MK:BUS',
'F_SIEM_EMICRO-2V3',
'UNID_SIEM_BATTPACKM-2V2',
'UNID_SIEM_BATTPACKM-2V3',
'F_SIEM_F:EMICRO-2',
'UNID_SIEM_BATTPACKM-2',
'F_SIEM_F:CORECLV5',
'UNID_SIEM_F:RXCU12V13',
'UNID_SIEM_DCP:RSHSBV1',
'UNID_SIEM_F:ACOMCUV5',
'UNID_SIEM_DCP:RSHBV1',
'UNID_SIEM_DCP:R2EV1',
'UNID_SIEM_DCP:R2BV2',
'UNID_SIEM_MEF',
'UNID_SIEM_MEF1S0V4',
'UNID_SIEM_MEF-150V4',
'UNID_SIEM_BATTPACKFV1',
'UNID_SIEM_DCPRSHSV2',
'UNID_SIEM_MK:CASHB',
'UNID_SIEM_MK:CASHS',
'UNID_SIEM_MSUAC',
'UNID_SIEM_F:RXCUv5',
'UNID_SIEM_MK:BATTERY',
'UNID_SIEM_MK:BATTERYCB2',
'UNID_SIEM_MK:BATTPACKBV2',
'UNID_SIEM_BATTPACKM-2V1',
'TOWCW_N/A_DADOS_METALICOS',
'SOPMW_NEC_SOPORTE_PARA_ANTENA_1.8M_UN_SIDE_STRUCT',
'UNID_SIEM_69_PINES_BTS',
'CONN_ANDR_F4ATDMV2-C-4',
'TUBMW_1.8M_TUBO_SOPORTE_1.8M',
'TUBMW_NEC_TUBO_SOPORTE_0.3M',
'SOPMW_NEC_SOPORTE_PARA_ANTENA_0.3M',
'1001100',
'B3G_HUAW_16MO_NO_BINDING_21_0CM?9_7CM',
'1000684',
'B3G_HUAW_HEAT_SHRINK_TUBE_D18_RADIAL_SHRINK',
'1001230',
'B3G_HUAW_DL380G5_2_XEON_WOODCREST_DUAL_CORE_1_6GHZ',
'BSC3G_SIEM_CROSS_CONNECTWIRE_1000FT',
'BSC3G_SIEM_P_N_040-2000-024',
'BSC3G_SIEM_P_N_071-3000-0052',
'BSC3G_SIEM_P_N_1011235-1',
'BSC3G_SIEM_P_N_071-3000-2005',
'BSC3G_SIEM_P_N_071-3000-2002',
'BSC3G_SIEM_P_N_760-0707-2130-000',
'BSC3G_SIEM_P_N_071-3000-2011',
'1001399',
'1001278 ',
'UNID_VPC_10_AWG_?',
'B3G_HUAW_DL580_G5_4_XEON_4CORE_7320_2_13GHZ',
'TUBMW_NEC_TUBO_SOPORTE_3.0M',
'B3G_HUAW_S3100_32PCS_4_5M_FIBER_2',
'B3G_HUAW_SIDE_BEARING_PLATE_COMPONENT',
'HUAW_HEAT_SHRINK_TUBE/D18_1001466',
'KITMW_NEC_KIT_INSTAL_PASO_LINK_NEO_1_1',
'SOPMW_NEC_SOPORTE_PARA_ANTENA_3.7M',
'TUBMW_NEC_ANTENA_3.7M',
'SOPMW_NEC_SOPORTE_PARA_ANTENA_3.0M',
'UNID_SYMS_CHEETAH15K5',
'UNID_SIEM_S30861-C2042-X',
'1001947_SHELF_4',
'1001948_SHELF_5',
'1001949_SHELF_6',
'1001950_SHELF_7',
'1001945_SHELF_3',
'1001918',
'C04NP_ADLI_COMPACTPCI',
'POWSP_ADLI_DMP200A1',
'R_NEC_RACKDMR500',
'10BATT_COSL_BATERIACOSLIGHT6-GFM-10012V100AH02011',
'B3G_HUAW_16MO_NO_BINDING_21_0CM£9_7CM',
'UNID_VPC_10_AWG_¼',
'10002296',
'10002639',
'10003713',
'10005034',
'10005876',
'10006755',
'10006758',
'10006774',
'10006778',
'10006784',
'10006790',
'10023880',
'10023882',
'10023883',
'10026239',
'10026241',
'10026243',
'10026245',
'10026248',
'10026250',
'10027713',
'10027778',
'10027779',
'10027792',
'10027806');

/*no existe id en la tabla element_type_asset 145*/
select element_type_asset from element where id in (280667
,280668
,280669
,280670
,280671);

select * from element_type_asset where id = 145;

/*no existe id en la tabala invoice necesario para element*/
select * from invoice where id in (898);

select id,invoice from element where id in (125792,
125793,
125794,
125795,
125796,
125797,
125798,
125799,
125800,
125801,
125802,
125803,
125804,
125805,
125806,
125807,
125808,
125809,
125810,
125811,
125812,
125813,
125814,
125815,
125816,
125817,
125818);


/*no existe code en la tabla geographic_location*/
select * from location where code in ('CUN389', 'BOG01236');
  select * from geographic_location where code in ('CUN389', 'BOG01236');

/*referencia a una tabla vacia ALERTA*/
select * from functional_unit_x_invoice;
  select * from functional_unit_description;

/*no existen code en la tabla location
*/
select * from location where code in ('BARTRAU01',
'MSC BUC 01_TX',
'MSC CAR 02 TX',
'MSC CAR 01 TX',
'MSC CAR 01_CORE',
'MSC CAL 01_TRAU',
'MSC CAR 01_ENERGIA',
'MSC CAR 01_TRAU',
'MSCSMA_ENERGIA',
'MSCVAL_ENERGIA',
'MSCPAS_ENERGIA',
'MSCPOP_BSC',
'MSCSMA_CORE',
'MSCPOP_ENERGIA',
'MSCPER_CORE',
'MSCMAN_TRAU',
'MSCMAN_CORE',
'MSC BUC 01 _CORE',
'MSCMAN_TX',
'MSCMAN_ENERGIA',
'MSCSMA_TRAU');
--ACCION !!!!!por aprobar para pre update en MYSQL!!
update laicon20f.internal_location set location='MSCBAQ01_TRAU' where location='BARTRAU01';
update laicon20f.internal_location set location='MSCBUC01_TX' where location='MSC BUC 01_TX';
update laicon20f.internal_location set location='MSCCAR02_TX'  where location='MSC CAR 02 TX';
update laicon20f.internal_location set location='MSCCAR01_TX' where location='MSC CAR 01 TX';
update laicon20f.internal_location set location='MSCCAR01_CORE'  where location='MSC CAR 01_CORE';
update laicon20f.internal_location set location='MSCCAL01_TRAU'  where location='MSC CAL 01_TRAU';
update laicon20f.internal_location set location='MSCCAR01_ENERGIA'  where location='MSC CAR 01_ENERGIA';
update laicon20f.internal_location set location='MSCCAR01_TRAU'  where location='MSC CAR 01_TRAU';
update laicon20f.internal_location set location='MSCSMA01_ENERGIA'  where location='MSCSMA_ENERGIA';
update laicon20f.internal_location set location='MSCVAL01_ENERGIA'  where location='MSCVAL_ENERGIA';
update laicon20f.internal_location set location='MSCPAS01_ENERGIA'  where location='MSCPAS_ENERGIA';
update laicon20f.internal_location set location='MSCPOP01_BSC'  where location='MSCPOP_BSC';
update laicon20f.internal_location set location='MSCSMA01_CORE'  where location='MSCSMA_CORE';
update laicon20f.internal_location set location='MSCPOP01_ENERGIA'  where location='MSCPOP_ENERGIA';
update laicon20f.internal_location set location='MSCPER01_CORE'  where location='MSCPER_CORE'; /*ALERTA  NO SE SABE SI ACTUALIZAR A 'MSCPER01_CORE' O A 'MSCPER02_CORE' */
update laicon20f.internal_location set location='MSCMAN01_TRAU'  where location='MSCMAN_TRAU';
update laicon20f.internal_location set location='MSCMAN01_CORE'  where location='MSCMAN_CORE';
update laicon20f.internal_location set location='MSCBUC01_CORE'  where location='MSC BUC 01 _CORE';
update laicon20f.internal_location set location='MSCMAN01_TX'  where location='MSCMAN_TX';
update laicon20f.internal_location set location='MSCMAN01_ENERGIA'  where location='MSCMAN_ENERGIA';
update laicon20f.internal_location set location='MSCSMA01_TRAU'  where location='MSCSMA_TRAU';

/*no existe id en la tabla internal_location importante para 1018 registros de la tabla element*/
select * from internal_location where id in (2761,
263,
264,
312,
317,
2150,
301,
326,
331,
333,
311,
335,
337,
2153,
3603,
2154,
1900,
223,
5093,
3848,
2061);

/*No existe en code en la tabal location necesario para la tabla element*/
select * from location where code in ('WAR08BG',
'VAC0128(P)',
'COR0032',
'VAC0131 (P)');


/*referencia a una atabla vacia*/
select unit_description_id from functional_unit;
  select * from functional_unit_description;

/*no existe id en la tabla element_transfer_order '124172'
'126810'*/
select element_transfer_order from element_transfer_order_comment where id in (98318,100825);
  select * from element_transfer_order where id in (124172, 126810);

/*no existe code en la tabla warehouse 'WAR13BGEXT'
'WAR15BGEXT'
'WAR01BGEXT'
'WAR08BGEXT'
'WAR28BGEXT'
'WAR16BGEXT'
'WAR20BGEXT'
*/
select  distinct warehouse_code from desktop_inventory_admin_warehouse where id in (11,
17,23,28,30,34,35,36,37);


/*No existen elementos en la tabla element*/
select * from element where id in (85506,100012, 280485);
select distinct containing_element from element where id in (85515,
85516,85518,101083,280525,280526,
280527,280528,280529,280530,280531,
280532,280533,280534);

/*No existen elementos en la tabla element*/
select * from element where id in (91364,
148717,149206,144822,147198,147192,128679,142119,144817,172658,161365,95273,124752,181976,
208667,208668,208669,208670,208671,212101,212126,212099,212100,212102,212127,203603,192171,
192174,231076,231065,248702,224051,231019,224161,225391,244184,224158,191016,131480,224167,
191018,191019,191020,191229);
select distinct source_element from element where id in (162640,
163283,
165295,
165299,
165778,
165783,
165820,
166013,
166053,
166060,
166270,
166271,
166272,
171351,
174998,
175013,
178017,
180183,
180612,
180614,
180617,
180668,
181043,
181165,
181216,
181239,
181241,
181308,
181316,
181849,
183452,
185664,
185756,
186226,
186605,
186606,
187089,
212725,
212726,
212727,
212728,
212729,
213282,
213283,
216719,
216721,
216755,
216756,
217630,
245716,
245717,
245720,
245744,
246087,
248829,
251502,
251503,
251515,
251522,
252072,
252075,
252076,
252077,
252078,
252098,
256279,
256281,
256282,
256284,
256285,
256286,
256287,
256289,
276487,
276488,
276489,
278128,
278129);

/*No existe id en element_type_asset*/
select * from element_type_asset where id = 145;
select id,element_type_asset from element where id in (280667,
280668,
280669,
280670,
280671);

/*no existe id en la tabla internal_location*/
select * from internal_location where id in (221,270,266);
select distinct internal_location_id from element where id in (70616,
70669,70671,74307,
74623,74659,74703,
74706,74717);


/*No existe code en la tabla warehouse*/
select * from warehouse where code  = 'WAR03BG_NAC';
select distinct warehouse_code from functional_unit where id in (10,
11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,
43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,,69,70,71,72,73,74,75,
76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,9293,94,95,96,97,98,99,100,101,102,103,104,105,106,107,
108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,
134,135,136,137,138,139,140,141,142);

/*No existe id en tabala tower_contract_type necesario para 2272 elementos de la tabla site*/
select * from tower_contract_type where id = '(L) Leased';

/*No existe code en la tabla geographic_location necesarios para 7 registros de la tabla site*/
select * from geographic_location where code in (select geographic_location from site where code in ('MWSUR33',
'MWSUR32',
'MWSUR31',
'MWCEN16',
'MWCEN13',
'CUN389',
'BOG01236'));

/*No existe id en la tabla desktop_inventory necesarios para 63 registros en la tabla desktop_inventory_partial_inventory*/
select * from desktop_inventory where id in (11340,
11341,11342,11344,11345,
11346,11348,11349,11351,
11372,11376,21506,21578);


/*No existe id en tabla internal_location necesaria para 20 registros de la tabla desktop_inventory_partial_inventory*/
select * from internal_location where id in ('3825',
'3848','2061','5490','3823','222','223',
'2380','3812','3603','7552');
select * from internal_location where id in (select internal_location from desktop_inventory_partial_inventory where id in (215,
367,412,415,424,586,587,687,689,693,1932,1933,2417,
2418,2419,2461,2462,2463,2465,2468));

/*no existe id en la tabla element necesaria para 660 registros en la tabla element_inventory*/
select * from element where id in (15833,
16912,
28153,
31400,
34154,
34740,
57292,
57363,
57841,
58541,
58565,
58573,
58750,
59921,
59927,
59956,
60019,
60458,
60462,
60468,
60557,
60583,
60586,
60659,
61899,
61903,
66132,
66605,
78726,
78993,
79176,
79308,
82073,
82089,
82098,
82662,
85178,
85504,
85508,
85510,
85563,
85617,
85670,
85699,
85886,
86765,
86798,
89293,
90117,
91364,
94037,
94076,
94190,
94245,
94256,
95888,
97716,
98178,
98669,
99486,
100270,
100936,
101692,
102049,
106964,
109785,
112920,
114436,
114447,
114464,
114518,
114552,
114577,
114598,
114615,
114616,
114618,
114620,
114632,
114639,
114643,
114661,
114732,
114796,
114798,
114881,
114904,
114911,
114917,
114929,
114930,
114935,
114943,
114948,
114974,
114984,
115006,
115008,
115026,
115048,
115051,
115060,
115062,
115065,
115128,
115178,
115235,
115237,
115239,
115289,
115325,
115360,
115416,
115542,
115752,
117387,
117684,
120733,
120735,
123267,
123269,
123272,
123281,
123285,
123287,
123292,
123356,
123434,
123510,
124709,
124712,
125004,
128679,
130226,
131068,
131069,
131080,
131090,
131119,
131121,
131123,
131126,
131924,
131984,
132005,
132850,
133967,
134071,
134087,
134096,
134099,
134114,
134307,
134470,
135226,
135952,
139116,
140249,
140255,
140788);


/*Campo element_transfer_order es NULL*/
select element_transfer_order from element_transfer_order_detail where id in (88225,
88226,88228,88229,88231,95019,95025,95029,101441,101970,101971,101977,
101978,101982,101983,101985,101986,101987,101988,101989,102013,102014,102015,
102017,102019,102020,102021,102156,105382,105383,105400);

/*No existe id en tabla internal_location 2761, 3848*/
select * from internal_location where id in (2761,3848);
select distinct internal_location_id from quality_inventory_element where id in (6370,
6400,6404,6405,31119,31118,31117,31098,33145,33146,33147,
33148,33149,33150,33151,33152,33153,33154,33155,33156,33157,
33158,33159,33160);

/*no existe id en tabla element_model 'UNID_VPC_10_AWG_?'*/
select * from element_model where id like 'UNID_VPC_10_AWG_?';
select distinct model from quality_inventory_element where id in (11939,
11937,
13146,
19669,
19682,
19695,
21468,
23884);

/*No existe id en la tabal element_model 'F_SIEM_F:ACOMV' */
select * from element_model where id = 'F_SIEM_F:ACOMV';
select model from reenabled_element where id = 195;

/*No existe code en tabla location necesaria para 200 registros en tabla remote_invtory_inconsistency*/
select * from location where code in ('ARM00010',
'ARM00011',
'ARM00012',
'NTS0010',
'NTS0011',
'NTS0035',
'NTS0059',
'NOT_DEFINED',
'MET00131',
'BOY00102');

/*No existe id en la tabla inventory_elements_process necesaria para 550 registros de la tabla laicon_inventory_register*/
select * from inventory_elements_process where id = 1;


/*09-Julio-2015*/

/*No existe id en la tabla element_type_asset*/
select * from element_type_asset where id = 25;
select element_type_asset from desktop_inventory_element where id in (342731,342732,347535,347536);

/*No existe id en la tabla element_category_asset necesaria para 2 registros de la tabla desktop_inventory_element*/
select * from element_category_asset where id = 236;
select element_category_asset from desktop_inventory_element where id in (3231,87604);
select * from desktop_inventory_element where element_category_asset = 236;

/*no existe id en la tabla internal_location necesarios para 163 registros de la tabla desktop_inventory_element*/
select * from internal_location where id in (3825,
3848,5490,3823,222,223);


/*10-Julio-2015*/

/*No existe id en la tabala element_model necesario para 1050 registros de la tabla desktop_inventory_element*/
select * from element_model where id in ('1000429',
'1000585','UNID_VPC_10_AWG_?',
'1001191','1001399','1001918','1000541',
'B3G_HUAW_16MO_NO_BINDING_21_0CM?9_7CM',
'1004875','1004911','1005016','1005017',
'1001100');

/*No existe id en la tabla internal_location_id necesaria para 492 registros de la tabla desktop_inventory_element*/
select * from internal_location where id in (3603,
264,2761,240,326,5093,2061,7552);

/*No existe id en la tabal quality_inventory necesaria para quality_inventory_element_result*/
select * from quality_inventory where id in (118, 130);


/*tabla quality_inventory_element_result_detail con campo quality_inventory_element inconsistencia ALERTA*/
/*tabla quality_inventory_element_result_detail con campo quality_inventory_element_result inconsistencia ALERTA*/


/*tabla desktop_inventory_element_result con campo desktop_inventory_element inconsistencia  ALERTA*/


/*no existe id en la tabla element_model necesarios para 371 registros de la tabla desktop_inventory_element_result*/
select * from element_model where id in (1000429,
1000585,
1001191,
1001918,
1001399,
1005017,
1005016,
1004911,
1001100);

/*No existe id en la tabla internal_location necesario para 179 registros de la tabla desktop_inventory_element_result*/
select * from internal_location where id in (3848,
5490,
3823,
222,
3825,
7552);

/*no existe code en la tabla location necesaria para desktop_inventory_element_result*/
select * from location where code in ('MSCCORE01_CORE',
'A05T115754',
'A05G232361',
'A05G305419');

/*no existe id en la tabala desktop_inventory_parcial_inventory necesario para registro de la tabla desktop_inventory_element_result*/
select * from desktop_inventory_partial_inventory where id  = 2447;
select desktop_inventory_parcial_inventory from desktop_inventory_element_result where id = 2383608;


/*tabla desktop_inventory_process_result_detail con campo desktop_inventory_element_result ALERTA*/
--ACCION
/*se actualizacion estos valores a 1*/


/*No esxiste id en la tabla desktop_inventory_element necesaria para 88 regsitros de desktop_inventory_process_result_detail*/
select * from desktop_inventory_element where id = 1 ;

/*no existe id en la tabla desktop_inventory_element necesario para 900 registros de desktop_inventory_process_result_missing_detail*/
select * from desktop_inventory where id in (16,
30,10,15,35,70,53,106,51,163,150,162,104,257,157,166,165,153,279);

/*no existe id en la tabal element_model necesario para 198 registros de la tabla desktop_inventory_process_result_missing_detail*/
select * from element_model where id in (1000585,1001191,1000429);

/*no existe id en la tabla internal_location necesaria para 6 registros de la tabla desktop_inventory_process_result_missing_detail*/
select * from internal_location where id in (2761,
3603,7552,5093);

/*no existe id en la tabla element_category_asset necesaria para 1 registro de la tabla desktop_inventory_process_result_missing_detail*/
select * from element_category_asset where id = 236;
select distinct element_category_asset from desktop_inventory_process_result_missing_detail where id  = 689;

/*no existe id en la tabla element*/
select * from element where id in (244944,244945);
select distinct element_result from solve_surplus_alpopular where process_result_detail in (272511,272512);

/*no existe code in location necesaria para desktop_inventory_process_result_difference_detail*/
select * from location where code in ('A05T115754','A05G232361','A05G305419');
select distinct location from desktop_inventory_process_result_difference_detail where id in (735,736,737,739,740,39736,39737,39738,39739,39740,39741,39742,39743,39744,39745,39746,39747,39748,39749,39750,39751,39752,39753,39754,39755,
39756,39757,39758,39759,39760,39761,39762,39763,39764,39765,39766,39767,39768,39769,39770,39771,39772,39773,39774,39775,39776,39777,39778,39779,
39780,39781,39782,39783,39784,39785,39786,39787,39788,39789,39790,39791,39792,39793,39794,39795,39796,39797,39798,39799,39800,39801,39802,39803,
39804,39805,39806,39807,39808,39809,39810,39811,39812,39813,39814,39815,39816,39817,39818,39819,39820,39821,39822,39823,39824,39825,39826,39827,
39828,39829,39830,39831,39832,39833,39834,39835,39836,39837,39838,39839,39840,39841,39842,39843,39844,39845,39846,39847,39848,39849,39850,39851,
39852,39853,39854,39855,39856,39857,39858,39859,39860,39861,39862,39863,39864,39865,39866,39867,39868,115845,115846,115847,115848,115849,115850,
115851,115852,165143,165144,165145,165146,165147,165148,165149,165150,165151,166017);

/*no existe id en tabla element_model necesaria para registros en la tabla desktop_inventory_process_result_difference_detail*/
select * from element_model where id in (1000585,
1000429,
1001191,
1001399);
select distinct model from desktop_inventory_process_result_difference_detail where id in (7788,8150,8180,8531,8532,8533,8534,8535,8536,8537,8538,14455,14456,14903,20918,20920,22200,22201,22498,22499,24657,
24658,24659,24660,35072,41210,41211,42536,43493,45271,45272,45273,45274,45408,46737,46738,46739,46743,47910,47912,
50981,50982,51993,51995,52209,52653,52658,56250,57328,58165,58783,58785,83614);

/*no existe id en tabla internal_location necesaria para registros en la tabla desktop_inventory_process_result_difference_detail*/
select * from internal_location where id in (3825,2061,7552);
select distinct internal_location_id  from desktop_inventory_process_result_difference_detail where id in (127091,
127120,127121,127122,127123,127124,127125,127126,127127,156807);
