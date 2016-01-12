select distinct functional_unit_description_id from functional_unit_x_invoice;

select * from functional_unit_description;

select * from location where code in ('WAR02BG_NAC', 
'WAR04BG_NAC', 
'CUN389', 
'BOG01236');

select * from geographic_location where code in ('WAR02BG_NAC', 
'WAR04BG_NAC', 
'CUN389', 
'BOG01236');

delete from location where code = 'WAR04BG_NAC';
delete from location where code = 'WAR02BG_NAC';

select * from geographic_location where code in ('BOG1236', 'CUN0389');

update laicon34G.location set geographic_location = 'BOG1236' where geographic_location = 'BOG01236';
update laicon34G.location set geographic_location = 'CUN0389' where geographic_location = 'CUN389';

select * from nationalization_place;
select * from geographic_location where code in ('WAR02BG_NAC', 
'WAR04BG_NAC');

update nationalization_place set geographic_location = null where geographic_location = 'WAR02BG_NAC';
update nationalization_place set geographic_location = null where geographic_location = 'WAR04BG_NAC';
