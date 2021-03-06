/*No existe en la tabala supplier*/
SELECT * FROM laicon20f.invoice where id = 927;
  select * from supplier where id = 12;
  -- se escala a los funcionales para solicion

SELECT * FROM laicon20f.invoice where id = 1041;
  select * from supplier where id = 21;
  -- se escala a los funcionales para solicion
--ACCION
update laicon20f.invoice set supplier = null where id = 927;
update laicon20f.invoice set supplier = null where id = 1041;


/*campo region con valores -1 y 0*/
select * from laicon20f.geographic_location where code in ('PLATFORM','WAR98BG','WAR02BG_NAC', 'WAR04BG_NAC');
--ACCION
INSERT INTO `laicon20f`.`region` (`id`, `name`, `commercial`, `responsible_user`) VALUES (9, 'PLATFORM', 'PLATFORM', 'admin');
update laicon20f.geographic_location set region = 9 where code = 'PLATFORM';
update laicon20f.geographic_location set region = 1 where code in ('WAR98BG','WAR02BG_NAC', 'WAR04BG_NAC');


/*id air_waybill no existe 1242*/
select * from laicon20f.operation_document where id = 108;
  select * from air_waybill where id = 1242;
--ACCION
update laicon20f.operation_document set air_waybill = 1243 where air_waybill = 1242;

/*no existe code en la tabla geographic_location*/
select * from location where code in ('CUN389', 'BOG01236');
  select * from geographic_location where code in ('CUN389', 'BOG01236');
--ACCION
update laicon20f.location set geographic_location = 'BOG1236' where geographic_location = 'BOG01236';
update laicon20f.location set geographic_location = 'CUN0389' where geographic_location = 'CUN389';

/*referencia a ala tabla region con valor -1*/
select * from location where code in ('WAR98BG');
--ACCION
update laicon20f.location set region = 1 where code = 'WAR98BG';

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
--ACCION
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

/*no existe Id en la tabla element_model se adjunta excel*/
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
'10BATT_COSL_BATERIACOSLIGHT6-GFM-10012V100AH02011');
--ACCION
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:ACOMV'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:RXCUV5'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SHEV2'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CORECU'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CORECUV5'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:RXCU'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SHBV3'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:RSV3'	;
update laicon20f.element set model = '1000001' where model = 'MEF_SIEM_MEFV2'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:FAN'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:RXCUV6'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CUV1'	;
update laicon20f.element set model = '1000001' where model = 'AIRIN_SIEM_CP:AIRINLETV2'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:RXCU12V1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CORECUV6'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH2S2V1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:WCUV1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:FAN-2V1'	;
update laicon20f.element set model = '1000001' where model = 'AIRIN_SIEM_CP:AIRINLETV3'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2BV1'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2EV1'	;
update laicon20f.element set model = '1000001' where model = 'MSU_SIEM_MSU:AC2PH80UV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_ADPA/UV2'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CU'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:FANV3'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2S1V1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:RXCUV1'	;
update laicon20f.element set model = '1000001' where model = 'MK_SIEM_MK:CAR12-2S2V1'	;
update laicon20f.element set model = '1000001' where model = 'AIRIN_SIEM_CP:AIRINLETV5'	;
update laicon20f.element set model = '1000001' where model = 'M_SIEM_M:ABISCONX'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_ADPx'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2S1V2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_ADP-2V1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_ACTC-2V1'	;
update laicon20f.element set model = '1000001' where model = 'MSU_SIEM_MSU:BASV2'	;
update laicon20f.element set model = '1000001' where model = 'AIRIN_SIEM_CP:AIRINLETV6'	;
update laicon20f.element set model = '1000001' where model = 'MSU_SIEM_MSU:DC-2V1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CORECUXSV1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:FANV1'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:FAN2V1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_RBS120V4'	;
update laicon20f.element set model = '1000001' where model = 'MEF_SIEM_MEFV1'	;
update laicon20f.element set model = '1000001' where model = 'MEF_SIEM_MEF-2V1'	;
update laicon20f.element set model = '1000001' where model = 'MEF_SIEM_MEF150V4'	;
update laicon20f.element set model = '1000001' where model = 'MEF_SIEM_MEFM-2V2'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2BV2'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2S2V2'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2EV2'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SH-2S1V3'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKx'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKV4'	;
update laicon20f.element set model = '1000001' where model = 'MSU_SIEM_MSU:AC2PH/UV1'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:R12BV1'	;
update laicon20f.element set model = '1000001' where model = 'EMI-P_SIEM_EMI-P:SHS1/UV1'	;
update laicon20f.element set model = '1000001' where model = 'AIRD_SIEM_CP:AIRDUCTV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:AIRDUCT'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:NT'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:BUS'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_EMICRO-2V3'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKM-2V2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKM-2V3'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:EMICRO-2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKM-2'	;
update laicon20f.element set model = '1000001' where model = 'F_SIEM_F:CORECLV5'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_F:RXCU12V13'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_DCP:RSHSBV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_F:ACOMCUV5'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_DCP:RSHBV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_DCP:R2EV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_DCP:R2BV2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MEF'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MEF1S0V4'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MEF-150V4'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKFV1'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_DCPRSHSV2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:CASHB'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:CASHS'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MSUAC'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_F:RXCUv5'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:BATTERY'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:BATTERYCB2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_MK:BATTPACKBV2'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_BATTPACKM-2V1'	;
update laicon20f.element set model = '1000001' where model = 'TOWCW_N/A_DADOS_METALICOS'	;
update laicon20f.element set model = '1000001' where model = 'SOPMW_NEC_SOPORTE_PARA_ANTENA_1.8M_UN_SIDE_STRUCT'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_69_PINES_BTS'	;
update laicon20f.element set model = '1000001' where model = 'CONN_ANDR_F4ATDMV2-C-4'	;
update laicon20f.element set model = '1000001' where model = 'TUBMW_1.8M_TUBO_SOPORTE_1.8M'	;
update laicon20f.element set model = '1000001' where model = 'TUBMW_NEC_TUBO_SOPORTE_0.3M'	;
update laicon20f.element set model = '1000001' where model = 'SOPMW_NEC_SOPORTE_PARA_ANTENA_0.3M'	;
update laicon20f.element set model = '1000001' where model = '1001100'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_16MO_NO_BINDING_21_0CM?9_7CM'	;
update laicon20f.element set model = '1000001' where model = '1000684'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_HEAT_SHRINK_TUBE_D18_RADIAL_SHRINK'	;
update laicon20f.element set model = '1000001' where model = '1001230'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_DL380G5_2_XEON_WOODCREST_DUAL_CORE_1_6GHZ'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_CROSS_CONNECTWIRE_1000FT'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_040-2000-024'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_071-3000-0052'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_1011235-1'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_071-3000-2005'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_071-3000-2002'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_760-0707-2130-000'	;
update laicon20f.element set model = '1000001' where model = 'BSC3G_SIEM_P_N_071-3000-2011'	;
update laicon20f.element set model = '1000001' where model = '1001399'	;
update laicon20f.element set model = '1000001' where model = '1001278 '	;
update laicon20f.element set model = '1000001' where model = 'UNID_VPC_10_AWG_?'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_DL580_G5_4_XEON_4CORE_7320_2_13GHZ'	;
update laicon20f.element set model = '1000001' where model = 'TUBMW_NEC_TUBO_SOPORTE_3.0M'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_S3100_32PCS_4_5M_FIBER_2'	;
update laicon20f.element set model = '1000001' where model = 'B3G_HUAW_SIDE_BEARING_PLATE_COMPONENT'	;
update laicon20f.element set model = '1000001' where model = 'HUAW_HEAT_SHRINK_TUBE/D18_1001466'	;
update laicon20f.element set model = '1000001' where model = 'KITMW_NEC_KIT_INSTAL_PASO_LINK_NEO_1_1'	;
update laicon20f.element set model = '1000001' where model = 'SOPMW_NEC_SOPORTE_PARA_ANTENA_3.7M'	;
update laicon20f.element set model = '1000001' where model = 'TUBMW_NEC_ANTENA_3.7M'	;
update laicon20f.element set model = '1000001' where model = 'SOPMW_NEC_SOPORTE_PARA_ANTENA_3.0M'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SYMS_CHEETAH15K5'	;
update laicon20f.element set model = '1000001' where model = 'UNID_SIEM_S30861-C2042-X'	;
update laicon20f.element set model = '1000001' where model = '1001947_SHELF_4'	;
update laicon20f.element set model = '1000001' where model = '1001948_SHELF_5'	;
update laicon20f.element set model = '1000001' where model = '1001949_SHELF_6'	;
update laicon20f.element set model = '1000001' where model = '1001950_SHELF_7'	;
update laicon20f.element set model = '1000001' where model = '1001945_SHELF_3'	;
update laicon20f.element set model = '1000001' where model = '1001918'	;
update laicon20f.element set model = '1000001' where model = 'C04NP_ADLI_COMPACTPCI'	;
update laicon20f.element set model = '1000001' where model = 'CARD_ADLI_COMPACTPCICARD'	;
update laicon20f.element set model = '1000001' where model = 'POWSP_ADLI_DMP200A1'	;
update laicon20f.element set model = '1000001' where model = 'R_NEC_RACKDMR500'	;
update laicon20f.element set model = '1000001' where model = '10BATT_COSL_BATERIACOSLIGHT6-GFM-10012V100AH02011'	;


/*No existe id en la tabla air_waybill'242'
'590','1173','1194','1212','1242'
,'1219','1225','1226','1224','1227','1228','1229'
,'1230','1231','1232','1233','1234','1245','1258'
,'1259','1265','1264','1269','1270','1271','1273'
necesarios para 1223 registros en ela tabla element*/
select * from air_waybill where id in(242,590,1173,1194,1212,1242
,1219,1225,1226,1224,1227,1228,1229
,1230,1231,1232,1233,1234,1245,1258
,1259,1265,1264,1269,1270,1271,1273);
--ACCION
update laicon20f.element set awb = 1 where awb = 242;
update laicon20f.element set awb = 1 where awb = 590;
update laicon20f.element set awb = 1 where awb = 1173;
update laicon20f.element set awb = 1 where awb = 1194;
update laicon20f.element set awb = 1 where awb = 1212;
update laicon20f.element set awb = 1 where awb = 1242;
update laicon20f.element set awb = 1 where awb = 1219;
update laicon20f.element set awb = 1 where awb = 1225;
update laicon20f.element set awb = 1 where awb = 1226;
update laicon20f.element set awb = 1 where awb = 1224;
update laicon20f.element set awb = 1 where awb = 1227;
update laicon20f.element set awb = 1 where awb = 1228;
update laicon20f.element set awb = 1 where awb = 1229;
update laicon20f.element set awb = 1 where awb = 1230;
update laicon20f.element set awb = 1 where awb = 1231;
update laicon20f.element set awb = 1 where awb = 1232;
update laicon20f.element set awb = 1 where awb = 1233;
update laicon20f.element set awb = 1 where awb = 1234;
update laicon20f.element set awb = 1 where awb = 1245;
update laicon20f.element set awb = 1 where awb = 1258;
update laicon20f.element set awb = 1 where awb = 1259;
update laicon20f.element set awb = 1 where awb = 1265;
update laicon20f.element set awb = 1 where awb = 1264;
update laicon20f.element set awb = 1 where awb = 1269;
update laicon20f.element set awb = 1 where awb = 1270;
update laicon20f.element set awb = 1 where awb = 1271;
update laicon20f.element set awb = 1 where awb = 1273;

/*no existe id en la tabla internal_location importante para 1018 registros de la tabla element*/
select * from internal_location where id in (2228,
2205,
2761,
263,
264,
221,
270,
266,
2207,
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
--ACCION
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2228;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2205;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2761;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 263;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 264;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 221;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 270;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 266;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2207;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 312;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 317;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2150;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 301;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 326;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 331;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 333;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 311;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 335;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 337;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2153;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 3603;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2154;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 1900;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 223;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 5093;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 3848;
UPDATE element SET internal_location_id  = 1 where internal_location_id = 2061;


/*No existe en code en la tabal location necesario para la tabla element*/
select * from location where code in ('WAR08BG',
'VAC0128(P)',
'COR0032',
'VAC0131 (P)', 'ANT0113');
--ACCION
update laicon20f.element set location = 'BOG0039' where location = 'Bog0039';
update laicon20f.element set location = 'BOG0332' where location = 'Bog0332';
update laicon20f.element set location = 'CUN0051' where location = 'cun0051';
update laicon20f.element set location = 'VAC0128' where location = 'VAC0128(P)';
update laicon20f.element set location = 'VAC0131' where location = 'VAC0131 (P)';
update laicon20f.element set location = 'COR0031' where location = 'COR0032';
update laicon20f.element set location = 'WAR08BGEXT' where location = 'WAR08BG';
update element set location = 'ANT0112' where location = 'ANT0113';

/*no existe id en la tabala invoice necesario para element*/
select * from invoice where id in (898);
--ACCION
update laicon20f.element set invoice =  897 where invoice=  898;

/*No esiste en la tabla warehouse necesarios para 258 registros de la tabla inventory_elements*/
select * from warehouse where code in ('VIL0004',
'BOG0124',
'BUC0001',
'CAR0011',
'VAC0032',
'BOG0005',
'MSCBAQ01_CORE',
'BOG0003',
'IBA0017',
'MSCCAL01_TX',
'MWCOS04',
'BOG0352',
'BOG0147',
'MSCBAQ01_VAS',
'VAL0098',
'BOG0605',
'BAR0430',
'WAR15BGEXT'
);
--ACCION
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'VIL0004';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0124';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BUC0001';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'CAR0011';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'VAC0032';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0005';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'MSCBAQ01_CORE';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0003';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'IBA0017';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'MSCCAL01_TX';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'MWCOS04';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0352';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0147';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'MSCBAQ01_VAS';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'VAL0098';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BOG0605';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'BAR0430';
update laicon20f.inventory_elements set warehouse =  'WAR02BG' where warehouse = 'WAR15BGEXT';



/*referencia a una atabla vacia ALERTA*/
select unit_description_id from functional_unit;
  select * from functional_unit_description;
--ACCION
insert into laicon20f.functional_unit_description value(5,'porCrear', 'porCrear', 'Creado para test de migracion 06072015, se encontro vacia esta tabla BUG', 'porCrear5');
insert into laicon20f.functional_unit_description value(4,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear4');
insert into laicon20f.functional_unit_description value(48,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear48');
insert into laicon20f.functional_unit_description value(65,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear65');
insert into laicon20f.functional_unit_description value(41,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear41');
insert into laicon20f.functional_unit_description value(49,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear49');
insert into laicon20f.functional_unit_description value(50,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear50');
insert into laicon20f.functional_unit_description value(57,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear57');
insert into laicon20f.functional_unit_description value(42,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear42');
insert into laicon20f.functional_unit_description value(45,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear45');
insert into laicon20f.functional_unit_description value(46,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear46');
insert into laicon20f.functional_unit_description value(47,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear47');
insert into laicon20f.functional_unit_description value(56,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear56');
insert into laicon20f.functional_unit_description value(63,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear63');
insert into laicon20f.functional_unit_description value(77,'porCrear', 'porCrear', 'Creado para test de migracion 06072015 se encontro vacia esta tabla BUG', 'porCrear77');

/*valor del campo spare_part_warehouse en 0 no existe en la tabla spare_part_warehouse y no se permite valor null*/
select * from spare_part_maintenance_zone where id = 53;
--ACCION
update laicon20f.spare_part_maintenance_zone set spare_part_warehouse = 25 where id = 53;


/*No existe el login en la tabla users necesario para 48 registros de la tabla element_request*/
select * from users where login like 'jose.diaz';
--ACCION
update laicon20f.element_request set login = 'rollout' where login = 'jose.diaz';

/*valor del campo code no existe en la tabla location necesario para 3 registros de la tabla element_request*/
select * from location where code like 'WAR01BAREXT';
--ACCION
update laicon20f.element_request set location = 'WAR01BAR' where location = 'WAR01BAREXT';

/*no esiste en la tabla location necesario para 10 registros en la tabla element_request*/
select * from location WHERE code like 'VAC0131 (P)';
select * from location WHERE code like 'WAR01BAREXT';
select * from location WHERE code like 'MSCPER_BSC';
--ACCION
update laicon20f.element_request set direction = 'WAR01BAR' where direction = 'WAR01BAREXT';
update laicon20f.element_request set direction = 'VAC0131' where direction = 'VAC0131 (P)';
update laicon20f.element_request set direction = 'MSCPER01_BSC' where direction = 'MSCPER_BSC';

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
--ACCION
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR01BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR08BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR28BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR16BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR20BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR25BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR26BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR13BGEXT';
update laicon20f.desktop_inventory_admin_warehouse set warehouse_code = 'WAR01BG' where warehouse_code = 'WAR15BGEXT';

/*No existe id en element_type_asset*/
select * from element_type_asset where id = 145;
select id,element_type_asset from element where id in (280667,
280668,
280669,
280670,
280671);
--ACCION
update laicon20f.element set element_type_asset = 146 where element_type_asset = 145;

/*no existe id en la tabla internal_location*/
select * from internal_location where id in (221,270,266);
select distinct internal_location_id from element where id in (70616,
70669,70671,74307,
74623,74659,74703,
74706,74717);
--ACCION
update laicon20f.element set internal_location_id = 220 where internal_location_id = 221;
update laicon20f.element set internal_location_id = 267 where internal_location_id = 266;
update laicon20f.element set internal_location_id = 271 where internal_location_id = 270;


/*No existe code en la tabla warehouse*/
select * from warehouse where code  = 'WAR03BG_NAC';
select distinct warehouse_code from functional_unit where id in (10,
11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,
43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,,69,70,71,72,73,74,75,
76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,9293,94,95,96,97,98,99,100,101,102,103,104,105,106,107,
108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,
134,135,136,137,138,139,140,141,142);
--ACCION
update laicon20f.functional_unit set warehouse_code = 'WAR03BG' where warehouse_code = 'WAR03BG_NAC';


/*No existe id en la tabla desktop_inventory necesarios para 63 registros en la tabla desktop_inventory_partial_inventory*/
select * from desktop_inventory where id in (11340,
11341,
11342,
11344,
11345,
11346,
11348,
11349,
11351,
11372,
11376,
21506,
21578,
28278,
28279);
--ACCION
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11340;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11341;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11342;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11344;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11345;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11346;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11348;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11349;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11351;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11372;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11376;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 21506;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 21578;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 28278;
update laicon20f.desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 28279;

/*No existe id en tabla internal_location necesaria para 20 registros de la tabla desktop_inventory_partial_inventory*/
select * from internal_location where id in (222,
223,
2061,
2205,
2207,
2228,
2380,
3603,
3812,
3823,
3825,
3848,
5490,
7552);

select * from internal_location where id in (select internal_location from desktop_inventory_partial_inventory where id in (215,
367,412,415,424,586,587,687,689,693,1932,1933,2417,
2418,2419,2461,2462,2463,2465,2468));
--ACCION
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 222;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 223;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 2061;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 2205;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 2207;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 2228;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 2380;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 3603;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 3812;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 3823;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 3825;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 3848;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 5490;
update desktop_inventory_partial_inventory set internal_location = 1 where internal_location = 7552;

/*No existe id en tabla internal_location 2761, 3848*/
select * from internal_location where id in (2761,3848,2205,2228,2207);
select distinct internal_location_id from quality_inventory_element where id in (6370,
6400,6404,6405,31119,31118,31117,31098,33145,33146,33147,
33148,33149,33150,33151,33152,33153,33154,33155,33156,33157,
33158,33159,33160);
--ACCION
update laicon20f.quality_inventory_element set internal_location_id = 2762 where internal_location_id = 2761;
update laicon20f.quality_inventory_element set internal_location_id = 3849 where internal_location_id = 3848;

/*no existe id en tabla element_model 'UNID_VPC_10_AWG_?'*/
select * from element_model where id like 'UNID_VPC_10_AWG_1/4';
select distinct model from quality_inventory_element where id in (11939,
11937,13146,19669,19682,
19695,21468,23884);
--ACCION
update laicon20f.quality_inventory_element set model = 1000001 where model = 'UNID_VPC_10_AWG_1/4';

/*09-Julio-2015*/

/*No existe id en la tabla inventory_elements_process necesaria para 550 registros de la tabla laicon_inventory_register*/
select * from inventory_elements_process where id = 1;
--ACCION
update laicon20f.laicon_inventory_register set inventory_elements_process = 2 where inventory_elements_process = 1;


/*No existe id en la tabla element_type_asset*/
select * from element_type_asset where id = 25;
select element_type_asset from desktop_inventory_element where id in (342731,342732,347535,347536);
--ACCION
update laicon20f.desktop_inventory_element set element_type_asset = 26 where element_type_asset = 25;

/*No existe id en la tabla element_category_asset necesaria para 2 registros de la tabla desktop_inventory_element*/
select * from element_category_asset where id = 236;
select element_category_asset from desktop_inventory_element where id in (3231,87604);
select * from desktop_inventory_element where element_category_asset = 236;
--ACCION
update laicon20f.desktop_inventory_element set element_category_asset = 23 where element_category_asset = 236;


/*10-Julio-2015*/
/*no existe id en la tabla internal_location necesarios para 4527 registros de la tabla desktop_inventory_element --ALERTA*/ 
select * from internal_location where id in (3603,2205,2228,264,2761,222,240,223,326,2207,5093,3848,3825,5490,3823,2061,7552);
--ACCION
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 3603;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 2205;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 2228;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 264;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 2761;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 222;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 240;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 223;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 326;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 2207;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 5093;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 3848;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 3825;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 5490;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 3823;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 2061;
update desktop_inventory_element set internal_location_id = 1 where internal_location_id = 7552;


/*No existe id en la tabal quality_inventory necesaria para quality_inventory_element_result*/
select * from quality_inventory where id in (118, 130);
--ACCION
update laicon20f.quality_inventory_element_result set quality_inventory = 14  where quality_inventory = 118;
update laicon20f.quality_inventory_element_result set quality_inventory = 14  where quality_inventory = 130;


/*tabla desktop_inventory_element_result con campo desktop_inventory_element inconsistencia  ALERTA*/
select * from desktop_inventory_element where id in (3364,3366,3367,3368,3369,3370,3371,3372,3373,3374,3375,3376,3377,3299,3298,3301,3300,3360,3361,3296,3330,3326,3322,3324,3323,3328,3325,3327,3321,3291,3297,3290,3294,3362,3347,3333,3332,3336,3378,3383,3380,
3335,3384,3381,3382,3350,3351,3352,3379,3295,3353,712,709,715,714,717,716,718,719,770,743,744,745,746,747,748,749,750,771,720,721,722,723,724,725,726,791,792,793,794,773,699,686,688,685,687,701,698,690,689,
772,697,702,700,691,692,774,801,762,751,777,696,710,711,803,765,766,767,768,769,706,707,708,6379,6459,6460,6461,6432,6443,6444,6445,6446,6447,6448,6449,6450,6451,6452,6453,6454,6455,6456,6457,6458,6404,6405,
6406,6407,6408,6409,6437,6374,6371,6373,6372,6368,6369,6380,6370,6399,6362,6361,6363,6402,6376,6375,6377,6367,6418,6381,6438,6439,6441,6442,6440,6436,6431,6430,6416,6417,6415,6414,6401,6400,24740,24715,24779,
24780,24781,24782,24783,24784,24785,24786,24787,24788,24789,24790,24741,24721,24722,24723,24724,24725,24742,24743,24704,24705,24707,24710,24708,24709,24749,24720,24767,24764,24712,24713,24711,24762,24763,24714,
24765,24717,24718,24716,24778,24750,24694,24696,24698,24695,24697,24700,24706,24699,24702,15615,15559,15563,15538,15537,15536,15612,15595,15586,15546,15544,15590,15547,15587,15496,15591,15592,15548,15593,15550,
15499,15507,15557,15555,15554,15560,15627,15567,15614,15621,15620,15619,15618,15617,15616,15506,15504,15505,16914,16901,16917,16897,16899,16878,16912,16908,16918,16930,16873,16942,16898,16946,16947,16968,16969,
16970,16971,16972,16975,16957,16958,16965,16964,16949,16940,16923,16811,16812,16762,16836,16795,16787,16764,16763,16806,16790,16793,16802,16760,16780,16779,16784,16809,16800,16839,16840,16847,16848,16822,16829,
15715,15714,15717,15689,15683,15660,15669,15676,15677,15657,15641,15673,15663,15690,15659,15672,15687,15685,15694,15655,15695,15667,15668,15650,15716,15711,15651,15652,15653,15709,15710,15731,27363,27371,27408,
27359,27344,27345,27343,27397,27399,27400,27401,27402,27358,27375,27379,27362,27348,27403,27382,27616,27598,27587,27588,27589,27661,27662,27663,27664,27665,27666,27667,27668,27645,27610,27603,27584,27615,27635,
27602,27619,27614,27592,27595,27593,27519,27435,27520,27469,27436,27518,27414,27580,27582,27583,27581,27533,27530,27531,27415,27412,27411,27413,27439,27441,27541,27446,27440,27570,27544,27409,27448,27416,27447,
27445,27470,27543,27442,27465,27542,27467,27571,27569,27468,27538,27455,27454,27514,27515,27516,27517,27505,27497,27496,27525,27498,27499,27547,27548,27549,27566,27567,27532,27452,27487,27565,28345,28346,28343,
28344,28347,28342,28341,28349,28340,28357,189708,189707,189639,189638,189637,189705,189706,189720,189660,189698,189671,189699,189687,189721,189722,189723,189719,189718,189696,189659,189667,291907,294480,1157365,
1157366,1157367,1157368,1157369,1157370,1157371,1157372,1157373,1157374,1157375,1157376,1221026,1221033,1221027,1221032,1221014,1221015,1221018,1221030,1221031,1221029,1226978,1280523,1768916,1768911,1768917,
1768912,1768910,1768909,1768913,1768914,1768915,1805781,1805785,1779726,1779746,1779771,1779766,1779738,1779742,1779735,1779741,1779734,1779739,1779740,1779744,1779743,1779747,1779745,1779770,1779728,1779729,
1779765,1779761,1779762,1779727,1779759,1779773,1779769,1779768,1779732,1779733,1779755,1779750,1779754,1779749,1779753,1779748,1779751,1779752,1779757,1779756,1779760,1779758,1779763,1779764,1779730,1779731,
1779767,1799572,1799573,1768947,1804129,1804117,1804121,1804125,1804123,1804130,1804131,1804120,1804132,1804124,1804119,1804118,1804127,1804126,1804122,1804128,1771178,1805784,1805801,1805799,1805802,1805775,
1805767,1805769,1805768,1805776,1805773,1805774,1805782,1805780,1805779,1805800,1805795,1805797,1805804,1805805,1805806,1799659,1799654,1799653,1799655,1799658,1799656,1799657,1799715,1768953,1768954,1768958,
1768957,1768956,1768955,1768962,1768961,1768967,1768968,1768969,1768970,1768963,1768964,1768965,1768966,1768971,1768972,1768973,1877126,1877127,1877125,1877130,1877132,1877129,1877111,1877124,1877123,1877122,
1877121,1877131,1877115,1877128,1877119,1877117,1877118,1877120,1877113,1877112,1877114,1877116,1896496,1896495,1896498,1896497,1896500,1896499,1896524,1896530,1896527,1896520,1896522,1896535,1896548,1896545,
1896515,1896529,1896519,1896521,1896518,1896517,1896531,1896533,1896537,1896541,1896536,1896540,1896538,1896542,1896539,1896544,1896532,1896528,1896516,1896551,1896525,1896523,1896526,1896534,1896546,1896549,
1896552,1896550,1896553,1897241,1895170,1895176,1895177,1895175,1895173,1895174,1895172,1895178,1895320,1895293,1895298,1895301,1895311,1895300,1895319,1895309,1895302,1895307,1895310,1895312,1895313,1895321,
1895297,1895294,1895299,1895296,1895318,1895314,1895316,1895317,1895305,1895303,1895304,1895315,1895308,1895306,1895295,1895292,1895397,1895378,1895381,1895383,1895386,1895384,1895338,1895356,1895395,1895392,
1895387,1895385,1895370,1895396,1895390,1895393,1895389,1895379,1895391,1895388,1895382,1895380,1895394,1895342,1895327,1895421,1895374,1895416,1895403,1895423,1895425,1895422,1895353,1895401,1895415,1895411,
1895357,1895368,1895366,1895426,1895404,1895367,1895410,1895428,1895398,1895420,1895419,1895358,1895355,1895348,1895347,1895336,1895406,1895427,1895362,1895377,1895334,1895402,1895351,1895364,1895400,1895412,
1895430,1895429,1895424,1895405,1895341,1895328,1895340,1895359,1895361,1895363,1895349,1895339,1895369,1895414,1895350,1895371,1895376,1895345,1895375,1895399,1895354,1895346,1895343,1895335,1895326,1895372,
1895337,1895373,1895344,1895407,1895333,1895365,1895408,1895409,1895331,1895329,1895330,1895332,1895322,1895323,1895325,1895413,1895418,1895417,1885925,1879891,1879850,1879900,1879839,1879864,1879878,1879853,
1879842,1879881,1879867,1879897,1879888,1879885,1879894,1879838,1879865,1882027,1882026,1882022,1882032,1882037,1882048,1882060,1882062,1882063,1882020,1882024,1882068,1882069,1882073,1882079,1882123,1882235,
1882234,1882233,1882228,1882227,1882224,1882221,1882179,1882178,1881991,1881995,1881997,1881981,1881979,1881972,1881974,1881922,1881951,1881949,1881948,1881956,1881959,1871238,1871239,1871236,1871237,1871240,
1880193,1880222,1880215,1880181,1880211,1880183,1880213,1880224,1880190,1880187,1880226,1880188,1880194,1880220,1880199,1880202,1880196,1880174,1880171,1880178,1880176,1880185,1897001,1909300,1909301,1909302,
1909303,1909304,1909305,1909306,1909307,1909332,1908828,1908838,1908839,1908840,1908841,1908842,1908843,1908844,1908845,1891982,1891981,1891978,1891979,1891980,1855943,1855944,2576542,2597679,2597680,2597676,
2597677,2597678,2597681,2596838,2596839,2596840,2596841,2596834,2596835,2596836,2596837,3444148,3444140,3444138,3444150,3444136,3444137,3444144,3444161,3444152,3444177,3444166,3444186,3444169,3444184,3444172,
3444181,3444159,3444158,3453704,3453709,3453719,3423565);

ALTER TABLE `laicon20f`.`desktop_inventory_element_result`  CHANGE COLUMN `desktop_inventory_element` `desktop_inventory_element` INT(11);
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 0;
--ACCION
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3364;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3366;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3367;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3368;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3369;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3370;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3371;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3372;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3373;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3374;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3375;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3376;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3377;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3299;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3298;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3301;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3300;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3360;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3361;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3296;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3330;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3326;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3322;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3324;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3323;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3328;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3325;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3327;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3321;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3291;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3297;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3290;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3294;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3362;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3347;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3333;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3332;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3336;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3378;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3383;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3380;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3335;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3384;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3381;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3382;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3350;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3351;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3352;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3379;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3295;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 3353;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 712;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 709;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 715;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 714;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 717;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 716;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 718;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 719;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 770;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 743;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 744;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 745;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 746;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 747;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 748;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 749;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 750;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 771;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 720;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 721;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 722;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 723;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 724;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 725;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 726;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 791;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 792;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 793;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 794;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 773;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 699;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 686;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 688;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 685;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 687;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 701;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 698;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 690;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 689;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 772;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 697;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 702;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 700;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 691;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 692;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 774;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 801;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 762;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 751;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 777;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 696;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 710;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 711;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 803;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 765;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 766;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 767;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 768;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 769;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 706;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 707;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 708;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6379;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6459;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6460;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6461;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6432;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6443;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6444;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6445;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6446;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6447;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6448;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6449;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6450;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6451;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6452;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6453;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6454;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6455;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6456;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6457;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6458;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6404;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6405;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6406;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6407;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6408;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6409;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6437;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6374;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6371;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6373;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6372;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6368;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6369;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6380;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6370;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6399;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6362;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6361;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6363;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6402;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6376;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6375;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6377;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6367;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6418;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6381;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6438;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6439;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6441;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6442;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6440;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6436;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6431;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6430;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6416;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6417;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6415;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6414;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6401;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 6400;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24740;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24715;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24779;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24780;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24781;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24782;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24783;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24784;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24785;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24786;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24787;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24788;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24789;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24790;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24741;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24721;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24722;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24723;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24724;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24725;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24742;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24743;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24704;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24705;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24707;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24710;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24708;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24709;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24749;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24720;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24767;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24764;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24712;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24713;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24711;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24762;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24763;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24714;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24765;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24717;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24718;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24716;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24778;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24750;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24694;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24696;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24698;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24695;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24697;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24700;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24706;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24699;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 24702;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15615;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15559;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15563;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15538;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15537;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15536;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15612;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15595;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15586;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15546;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15544;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15590;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15547;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15587;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15496;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15591;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15592;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15548;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15593;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15550;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15499;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15507;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15557;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15555;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15554;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15560;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15627;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15567;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15614;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15621;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15620;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15619;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15618;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15617;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15616;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15506;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15504;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15505;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16914;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16901;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16917;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16897;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16899;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16878;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16912;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16908;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16918;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16930;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16873;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16942;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16898;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16946;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16947;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16968;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16969;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16970;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16971;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16972;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16975;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16957;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16958;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16965;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16964;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16949;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16940;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16923;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16811;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16812;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16762;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16836;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16795;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16787;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16764;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16763;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16806;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16790;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16793;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16802;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16760;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16780;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16779;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16784;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16809;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16800;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16839;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16840;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16847;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16848;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16822;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 16829;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15715;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15714;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15717;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15689;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15683;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15660;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15669;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15676;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15677;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15657;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15641;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15673;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15663;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15690;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15659;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15672;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15687;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15685;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15694;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15655;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15695;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15667;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15668;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15650;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15716;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15711;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15651;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15652;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15653;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15709;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15710;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 15731;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27363;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27371;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27408;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27359;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27344;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27345;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27343;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27397;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27399;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27400;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27401;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27402;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27358;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27375;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27379;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27362;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27348;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27403;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27382;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27616;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27598;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27587;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27588;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27589;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27661;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27662;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27663;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27664;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27665;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27666;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27667;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27668;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27645;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27610;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27603;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27584;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27615;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27635;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27602;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27619;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27614;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27592;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27595;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27593;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27519;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27435;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27520;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27469;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27436;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27518;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27414;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27580;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27582;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27583;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27581;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27533;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27530;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27531;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27415;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27412;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27411;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27413;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27439;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27441;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27541;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27446;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27440;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27570;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27544;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27409;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27448;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27416;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27447;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27445;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27470;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27543;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27442;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27465;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27542;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27467;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27571;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27569;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27468;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27538;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27455;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27454;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27514;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27515;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27516;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27517;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27505;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27497;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27496;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27525;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27498;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27499;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27547;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27548;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27549;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27566;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27567;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27532;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27452;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27487;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 27565;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28345;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28346;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28343;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28344;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28347;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28342;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28341;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28349;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28340;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 28357;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189708;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189707;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189639;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189638;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189637;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189705;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189706;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189720;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189660;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189698;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189671;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189699;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189687;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189721;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189722;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189723;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189719;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189718;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189696;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189659;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 189667;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 291907;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 294480;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157365;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157366;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157367;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157368;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157369;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157370;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157371;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157372;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157373;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157374;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157375;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1157376;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221026;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221033;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221027;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221032;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221014;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221015;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221018;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221030;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221031;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1221029;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1226978;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1280523;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768916;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768911;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768917;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768912;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768910;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768909;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768913;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768914;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768915;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805781;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805785;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779726;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779746;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779771;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779766;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779738;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779742;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779735;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779741;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779734;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779739;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779740;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779744;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779743;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779747;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779745;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779770;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779728;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779729;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779765;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779761;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779762;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779727;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779759;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779773;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779769;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779768;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779732;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779733;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779755;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779750;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779754;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779749;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779753;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779748;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779751;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779752;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779757;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779756;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779760;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779758;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779763;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779764;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779730;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779731;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1779767;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799572;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799573;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768947;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804129;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804117;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804121;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804125;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804123;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804130;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804131;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804120;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804132;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804124;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804119;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804118;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804127;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804126;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804122;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1804128;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1771178;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805784;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805801;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805799;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805802;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805775;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805767;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805769;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805768;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805776;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805773;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805774;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805782;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805780;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805779;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805800;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805795;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805797;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805804;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805805;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1805806;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799659;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799654;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799653;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799655;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799658;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799656;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799657;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1799715;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768953;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768954;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768958;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768957;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768956;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768955;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768962;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768961;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768967;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768968;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768969;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768970;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768963;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768964;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768965;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768966;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768971;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768972;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1768973;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877126;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877127;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877125;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877130;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877132;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877129;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877111;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877124;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877123;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877122;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877121;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877131;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877115;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877128;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877119;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877117;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877118;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877120;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877113;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877112;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877114;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1877116;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896496;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896495;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896498;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896497;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896500;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896499;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896524;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896530;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896527;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896520;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896522;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896535;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896548;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896545;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896515;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896529;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896519;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896521;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896518;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896517;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896531;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896533;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896537;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896541;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896536;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896540;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896538;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896542;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896539;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896544;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896532;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896528;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896516;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896551;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896525;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896523;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896526;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896534;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896546;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896549;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896552;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896550;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1896553;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1897241;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895170;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895176;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895177;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895175;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895173;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895174;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895172;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895178;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895320;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895293;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895298;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895301;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895311;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895300;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895319;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895309;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895302;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895307;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895310;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895312;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895313;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895321;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895297;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895294;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895299;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895296;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895318;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895314;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895316;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895317;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895305;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895303;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895304;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895315;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895308;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895306;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895295;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895292;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895397;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895378;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895381;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895383;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895386;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895384;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895338;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895356;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895395;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895392;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895387;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895385;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895370;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895396;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895390;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895393;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895389;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895379;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895391;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895388;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895382;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895380;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895394;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895342;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895327;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895421;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895374;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895416;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895403;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895423;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895425;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895422;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895353;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895401;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895415;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895411;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895357;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895368;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895366;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895426;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895404;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895367;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895410;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895428;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895398;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895420;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895419;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895358;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895355;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895348;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895347;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895336;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895406;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895427;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895362;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895377;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895334;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895402;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895351;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895364;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895400;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895412;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895430;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895429;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895424;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895405;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895341;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895328;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895340;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895359;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895361;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895363;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895349;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895339;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895369;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895414;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895350;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895371;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895376;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895345;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895375;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895399;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895354;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895346;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895343;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895335;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895326;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895372;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895337;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895373;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895344;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895407;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895333;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895365;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895408;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895409;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895331;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895329;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895330;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895332;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895322;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895323;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895325;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895413;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895418;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1895417;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1885925;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879891;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879850;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879900;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879839;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879864;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879878;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879853;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879842;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879881;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879867;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879897;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879888;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879885;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879894;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879838;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1879865;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882027;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882026;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882022;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882032;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882037;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882048;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882060;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882062;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882063;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882020;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882024;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882068;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882069;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882073;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882079;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882123;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882235;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882234;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882233;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882228;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882227;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882224;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882221;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882179;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1882178;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881991;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881995;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881997;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881981;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881979;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881972;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881974;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881922;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881951;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881949;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881948;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881956;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1881959;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1871238;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1871239;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1871236;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1871237;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1871240;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880193;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880222;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880215;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880181;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880211;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880183;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880213;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880224;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880190;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880187;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880226;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880188;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880194;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880220;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880199;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880202;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880196;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880174;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880171;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880178;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880176;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1880185;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1897001;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909300;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909301;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909302;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909303;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909304;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909305;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909306;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909307;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1909332;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908828;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908838;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908839;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908840;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908841;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908842;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908843;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908844;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1908845;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1891982;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1891981;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1891978;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1891979;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1891980;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1855943;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 1855944;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2576542;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597679;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597680;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597676;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597677;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597678;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2597681;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596838;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596839;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596840;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596841;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596834;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596835;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596836;
update laicon20f.desktop_inventory_element_result set desktop_inventory_element = null where desktop_inventory_element = 2596837;



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
--ACCION
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1000429;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1000585;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1001191;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1001918;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1001399;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1005017;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1005016;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1004911;
update laicon20f.desktop_inventory_element_result set model = 1000001 where model = 1001100;

/*No existe id en la tabla internal_location necesario para 179 registros de la tabla desktop_inventory_element_result*/
select * from internal_location where id in (3848,
5490,
3823,
222,
3825,
7552,
2228,
2207);
--ACCION
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =3848;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =5490;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =3823;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =222;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =3825;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =7552;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =2228;
update laicon20f.desktop_inventory_element_result set internal_location_id = 1 where internal_location_id =2207;


/*no existe code en la tabla location necesaria para desktop_inventory_element_result*/
select * from location where code in ('MSCCORE01_CORE',
'A05T115754',
'A05G232361',
'A05G305419');
--ACCION
update laicon20f.desktop_inventory_element_result set location = 'BOG0332' where location = 'MSCCORE01_CORE';
update laicon20f.desktop_inventory_element_result set location = 'BOG0332' where location = 'A05T115754';
update laicon20f.desktop_inventory_element_result set location = 'BOG0332' where location = 'A05G232361';
update laicon20f.desktop_inventory_element_result set location = 'BOG0332' where location = 'A05G305419';


/*no existe id en la tabala desktop_inventory_parcial_inventory necesario para registro de la tabla desktop_inventory_element_result*/
select * from desktop_inventory_partial_inventory where id  = 2447;
select desktop_inventory_parcial_inventory from desktop_inventory_element_result where id = 2383608;
--ACCION
update laicon20f.desktop_inventory_element_result set desktop_inventory_parcial_inventory = 2448 where desktop_inventory_parcial_inventory = 2447;

/*tabla quality_inventory_element_result_detail con campo quality_inventory_element_result inconsistencia ALERTA*/
ALTER TABLE `laicon20f`.`quality_inventory_element_result_detail`
CHANGE COLUMN `quality_inventory_element_result` `quality_inventory_element_result` INT(11);
update laicon20f.quality_inventory_element_result_detail set quality_inventory_element_result = null where quality_inventory_element_result = 0;

/*tabla desktop_inventory_process_result_detail con campo desktop_inventory_element_result ALERTA*/
--ACCION
/*se actualiza estos registros a un valor existente = 1*/

/*tabla desktop_inventory_process_result_detail con campo desktop_inventory_element ALERTA*/
--ACCION
/*se actualiza estos registros a un valor existente*/


/*No esxiste id en la tabla desktop_inventory_element necesaria para 88 regsitros de desktop_inventory_process_result_detail*/
select * from desktop_inventory_element where id in(292127,292126,292125,292124,292122,292123,292121,292084,292085,292087,292086,292088,292089,292090,292091,
292093,291907,292094,292096,292095,292097,292098,292099,292100,292101,292102,292103,292104,292105,292106,292107,292109,292108,292110,292112,292111,292114,
292113,292115,292116,292117,292118,292119,292120,294341,294342,294343,294344,294345,294346,294347,294348,294349,294350,294351,294352,294353,294354,294355,
294356,294357,294358,294359,294360,294361,294362,294363,294364,294365,294366,294367,294368,294369,294370,294371,294372,294373,294374,294375,294376,294377,
294378,294379,294380,294381,294382,294383,294384);
--ACCION	
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292127;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292126;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292125;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292124;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292122;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292123;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292121;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292084;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292085;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292087;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292086;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292088;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292089;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292090;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292091;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292093;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 291907;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292094;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292096;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292095;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292097;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292098;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292099;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292100;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292101;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292102;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292103;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292104;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292105;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292106;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292107;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292109;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292108;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292110;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292112;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292111;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292114;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292113;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292115;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292116;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292117;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292118;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292119;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 292120;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294341;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294342;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294343;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294344;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294345;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294346;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294347;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294348;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294349;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294350;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294351;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294352;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294353;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294354;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294355;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294356;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294357;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294358;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294359;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294360;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294361;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294362;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294363;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294364;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294365;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294366;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294367;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294368;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294369;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294370;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294371;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294372;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294373;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294374;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294375;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294376;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294377;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294378;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294379;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294380;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294381;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294382;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294383;
update desktop_inventory_process_result_detail set desktop_inventory_element = null where desktop_inventory_element = 294384;

/*no existe id en la tabla desktop_inventory necesario para 900 registros de desktop_inventory_process_result_missing_detail*/
select * from desktop_inventory where id in (16,
30,10,15,35,70,53,106,51,163,150,162,104,257,157,166,165,153,279);
--ACCION
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 16;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 30;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 10;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 15;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 35;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 70;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 53;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 106;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 51;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 163;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 150;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 162;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 104;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 257;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 157;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 166;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 165;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 153;
update laicon20f.desktop_inventory_process_result_missing_detail set desktop_inventory = 27 where desktop_inventory = 279;


/*no existe id en la tabal element_model necesario para 198 registros de la tabla desktop_inventory_process_result_missing_detail*/
select * from element_model where id in (1000585,1001191,1000429);
--ACCION
update laicon20f.desktop_inventory_process_result_missing_detail set model = 1000001 where model = 1000429;
update laicon20f.desktop_inventory_process_result_missing_detail set model = 1000001 where model = 1000585;
update laicon20f.desktop_inventory_process_result_missing_detail set model = 1000001 where model = 1001191;

/*no existe id en la tabla internal_location necesaria para 6 registros de la tabla desktop_inventory_process_result_missing_detail*/
select * from internal_location where id in (2761,2228,2207,2205,3603,7552,5093);
--ACCION
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 2761;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 3603;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 7552;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 5093;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 2228;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 2207;
update laicon20f.desktop_inventory_process_result_missing_detail set internal_location_id  = 1 where internal_location_id = 2205;


/*no existe id en la tabla element_category_asset necesaria para 1 registro de la tabla desktop_inventory_process_result_missing_detail*/
select * from element_category_asset where id = 236;
select distinct element_category_asset from desktop_inventory_process_result_missing_detail where id  = 689;
--ACCION
update laicon20f.desktop_inventory_process_result_missing_detail set element_category_asset  = 166 where element_category_asset = 236;

/*no existe id en la tabla desktop_inventory_process_result_detail necesario para 911 registros de la tabla desktop_inventory_process_result_missing_detail*/
select * from desktop_inventory_process_result_detail where id in (151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,761,762,763,764,
765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,
1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,2971,2972,2973,2974,
2975,2976,2977,2978,2979,2980,2981,2982,2983,2984,2985,2986,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3048,3049,3050,3051,3052,
3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,
3094,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,
3209,4205,4206,4207,4208,4209,4210,4211,4212,4213,4214,4215,4216,4230,4231,4232,4233,4234,4235,4236,4237,4238,4239,4240,4241,4555,4556,4554,4553,4552,4551,4550,4549,4548,4547,4546,4545,4544,4543,4542,4541,
4540,4539,4538,4537,4536,4535,4534,4533,4532,4531,4530,4529,4528,4527,4526,4525,4524,4523,4522,4521,4520,4519,4518,4517,4516,4515,4514,4513,4512,4511,4509,4510,4507,4508,4505,4506,4503,4504,4501,4502,4500,
4499,4498,4497,4496,4495,4494,4493,4492,4491,4490,4489,4488,4487,4486,4485,4484,4483,4482,4481,4480,4479,4478,4477,4476,4475,4474,4473,4472,4471,4470,4469,4468,4467,4466,4465,4464,4463,4462,5400,5401,5402,
5403,5404,5405,5406,5407,5408,5409,5410,5411,5412,5413,5414,5415,5416,5417,5418,5419,5420,5421,5422,5423,5424,5425,5426,5427,5428,5429,5430,5431,5432,5433,9293,9294,9295,9296,9297,9298,9299,9300,9301,9302,
9303,9304,9305,9306,9307,9308,9309,9310,9311,9312,9313,9314,9315,9316,9317,9318,9319,9320,9321,9322,9323,9324,9325,9326,9327,9328,9329,9330,9331,9332,9333,9334,9335,9336,9337,9721,9722,9723,9724,9725,9726,
9727,9728,9729,9730,9731,9732,9733,9734,9735,9736,9737,9738,9739,9740,9741,9742,9743,9744,9745,9746,9747,9748,9749,9750,9751,9752,9753,9754,9755,9756,9757,9758,9759,9760,9761,9762,9763,9764,9765,9766,9767,
9768,9769,9770,9771,9772,9773,9774,9775,9776,9777,9778,9871,9872,9873,9874,9875,9876,9877,9878,9879,9880,9881,9882,9883,9884,9885,9886,9887,9888,9889,9890,9891,9892,9893,9894,9895,9896,9897,9898,9899,9900,
9901,9902,9903,9904,9905,9906,9907,9908,9909,9910,12283,12284,12285,12286,12287,12288,12289,12290,12291,12292,12293,12294,12295,12296,12297,12298,12299,12300,12301,12302,12303,12304,12305,12306,12307,12308,
12309,12310,12311,12312,12313,12314,12315,12316,12317,12318,12319,12320,12321,12322,12323,16343,16344,16345,16346,16347,16348,16349,16350,16351,16352,16353,16354,16355,16356,16357,16358,16359,16360,16361,
16362,16363,16364,16365,16366,16367,16368,16369,16370,16371,16372,16373,16374,16375,16376,16377,16378,16379,16380,16381,16382,16383,16384,16385,16386,16756,16757,16758,16759,16760,16761,16762,16763,16764,
16765,16766,16767,16768,16769,16770,16771,16772,16773,16774,16775,16776,16777,16778,16779,16780,16781,16782,16783,16784,16785,16786,16787,16788,16789,16790,16791,16792,16793,16794,16795,16796,16797,16798,
16799,16800,16801,16802,17795,17796,17797,17798,17799,17800,17801,17802,17803,17804,17805,17806,17807,17808,17809,17810,17811,17812,17813,17814,17815,17816,17817,17818,17819,17820,17821,17822,17823,17824,
17825,17826,17827,17828,17829,17830,17831,17832,17833,17834,17835,17836,17837,17838,17839,17840,17841,17842,17843,17912,17913,17914,17915,17916,17917,17918,17919,17920,17921,17922,17923,17924,17925,17926,
17927,17928,17929,17930,17931,17932,17933,17934,17935,17936,17937,17938,17939,17940,17941,17942,17943,17944,17945,17946,17947,17948,17949,17950,17951,17952,17953,17954,17955,17956,17957,17958,17959,17960,
17961,17962,17963,17964,17965,17966,17967,17968,18115,18116,18117,18118,18119,18120,18121,18122,18123,18124,18125,18126,18127,18128,18129,18130,18131,18132,18133,18134,18135,18136,18137,18138,18139,18140,
18141,18142,18143,18144,18145,18146,18147,18148,18149,18150,18151,18152,18153,18154,18155,18156,18157,18158,18159,18160,18161,18162,18163,18164,18165,18166,18167,18168,18169,18170,18171,18172,18173,18174,
18175,18176,18177,18223,18224,18221,18222,18219,18220,18218,18217,18216,18215,18214,18213,18212,18211,18210,18209,18208,18207,18206,18205,18204,18203,18202,18201,18200);
--ACCION
/*se actualizaron por NULL*/

/*No existe id en la tabala element_model necesario para 1050 registros de la tabla desktop_inventory_element*/
select * from element_model where id in ('1000429','1000585','UNID_VPC_10_AWG_¼','1001191','1001399','1001918',
'1000541','B3G_HUAW_16MO_NO_BINDING_21_0CM£9_7CM','1004875','1004911','1005016','1005017','1001100','10027778','10026239');
--ACCION
UPDATE desktop_inventory_element set model = '1000001' where model = '1000429';
UPDATE desktop_inventory_element set model = '1000001' where model = '1000585';
UPDATE desktop_inventory_element set model = '1000001' where model = 'UNID_VPC_10_AWG_¼';
UPDATE desktop_inventory_element set model = '1000001' where model = '1001191';
UPDATE desktop_inventory_element set model = '1000001' where model = '1001399';
UPDATE desktop_inventory_element set model = '1000001' where model = '1001918';
UPDATE desktop_inventory_element set model = '1000001' where model = '1000541';
UPDATE desktop_inventory_element set model = '1000001' where model = 'B3G_HUAW_16MO_NO_BINDING_21_0CM£9_7CM';
UPDATE desktop_inventory_element set model = '1000001' where model = '1004875';
UPDATE desktop_inventory_element set model = '1000001' where model = '1004911';
UPDATE desktop_inventory_element set model = '1000001' where model = '1005016';
UPDATE desktop_inventory_element set model = '1000001' where model = '1005017';
UPDATE desktop_inventory_element set model = '1000001' where model = '1001100';
UPDATE desktop_inventory_element set model = '1000001' where model = '10027778';
UPDATE desktop_inventory_element set model = '1000001' where model = '10026239';



