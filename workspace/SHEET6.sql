select * from desktop_inventory where id in  (22150, 22151, 22152, 22153, 22974, 22908, 22909, 22910, 23323, 23022, 23320, 23024, 23109, 23224, 23619, 23242, 23243, 23244, 23373, 23374, 23429, 23430, 23526, 23527, 23573, 23574, 23620, 23937, 23936, 24021, 24020, 23790, 23809, 23810, 23812, 24433, 24432, 24017, 24524, 24605, 24606, 24607, 24694, 24727, 24728, 24729, 24832, 24833, 25372, 25373, 25374, 25376, 25378, 25405, 25406, 25407, 26029, 26457, 26476, 26477, 26565, 26595, 26656, 26857, 26858, 26961, 26962, 26963, 27385, 27033, 27035, 27061, 27063, 27133, 27170, 27179, 27180, 27181, 27239, 27240, 27268, 27269, 27328, 27508, 27396, 27507, 27422, 27423, 27449, 27450, 27562, 27605, 27606, 27625, 27626, 27659, 27660, 28347, 28378, 28398, 28424, 28425) order by login desc;

select login from users where login in ('wM1037622561',  'Javier.Espinosa',  'Dc1037610423',  'ak71738921',  'kg55313440',  'wt80126241',  'fr1143425033',  'jm1031122956') order by login desc;

update desktop_inventory set login = 'WT80126241' where login = 'wt80126241'; 
update desktop_inventory set login = 'WM1037622561' where login = 'wM1037622561'; 
update desktop_inventory set login = 'KG55313440' where login = 'kg55313440'; 
update desktop_inventory set login = 'JM1031122956' where login = 'jm1031122956'; 
update desktop_inventory set login = 'javier.espinosa' where login = 'Javier.Espinosa'; 
update desktop_inventory set login = 'FR1143425033' where login = 'fr1143425033'; 
update desktop_inventory set login = 'DC1037610423' where login = 'Dc1037610423'; 
update desktop_inventory set login = 'AK71738921' where login = 'ak71738921';

select * from Sislog_PedidoSalida where id = 19065 ;
select * from location where code like '%RBOG1453_CUS%';

update Sislog_PedidoSalida set CodigoDestinatario = 'RBOG1453_CUSTOMER' where CodigoDestinatario = 'RBOG1453_CUS';

select * from element_transfer_order where id = 17552;
select * from location where code = 'MSCCAR01_TRAU';

Select * from Sislog_PedidoEntrada where id in (1691, 1692, 1693, 1694);
Select * from Sislog_PedidoEntrada where UsuarioCreacion = 'null';
update Sislog_PedidoEntrada set UsuarioCreacion = 'rollout' where UsuarioCreacion = 'null';

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


