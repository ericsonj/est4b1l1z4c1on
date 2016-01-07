select * from region where id = 9;

SELECT * FROM laicon34G.invoice where id = 927;

select id,deleted,invoice from laicon34G.element where id = 138549;

select id,deleted,invoice from laicon34G.element where invoice = 1041;

update laicon34G.element set invoice = null where invoice = 927;

select * from supplier where id = 12;

select * from laicon34G.geographic_location where code in ('PLATFORM','WAR98BG','WAR02BG_NAC', 'WAR04BG_NAC');

select * from laicon34G.region;

select * from laicon34G.location where code = 'WAR98BG';

select * from laicon34G.geographic_location where code = 'WAR98BG';

delete from laicon34G.location where code = 'WAR98BG';
delete from  laicon34G.geographic_location where code = 'WAR02BG_NAC';
delete from  laicon34G.geographic_location where code = 'WAR04BG_NAC';

select * from laicon34G.operation_document where id = 108;
  select * from air_waybill where id = 1242;

select id from air_waybill where number = 'FRA188047';  
update laicon34G.operation_document set air_waybill = 1278 where id = 108;

select * from laicon20f.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon') and mic_batch in (6600,6740,6747,6762,6767,6768,6784,6756,6758);
select * from laicon20f.mic_batch where id in (6600,6740,6747,6762,6767,6768,6784,6756,6758);

delete from laicon20f.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon') and mic_batch in (6600,6740,6747,6762,6767,6768,6784,6756,6758);

select * from internal_location where id in (2495,2496);
  select * from location where code like 'BARTRAU01';

select * from infrastructure_element where id in (10015335,10015334);
select * from location where code = 'MWNOR50';

select * from invoice_detail where id in (54,
2587,
4113);

select * from element_model;

delete from invoice_detail where id in (54,
2587,
4113);

select * from model_x_type_asset where element_model = 'CARD_ADLI_COMPACTPCICARD';
select * from element_type_asset where name = 'CARD';
  
update model_x_type_asset set element_type_asset = 228 where element_model = 'CARD_ADLI_COMPACTPCICARD';

select element_model from invoice_template_detail where id = 128;
select * from element_model where id = 1001399;

delete from invoice_template_detail where id = 128;

select * from laicon34G.users where login like 'jhoany.rodriguez';
select * from users where login  = 'david.vanegas';
SELECT * FROM laicon20f.warehouse_keeper where id = '98670475';
