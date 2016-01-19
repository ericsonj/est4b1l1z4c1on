select * from desktop_inventory_partial_inventory where id in (17193,17195,17197,17198,17199,17200,17201,17202,17203,17204,17205,17206,17207,17208,17209,17210,17211,17212,17213,17214,17215,17216,17217,17218,17219,17220,17221,17222,17223,17224,17225,17226,17227,17228,17229,17230,17231,17232,17233,17305,17311,17328,17335,17793,17794,17803,17831,17832,17833,17834,17835,17836,17838,17843,17844,17846,17848,17851,17854,17857,17931,17932,17953,17954,17966,17967,17968);

update desktop_inventory_partial_inventory set partial_download_user = 'RM1140828950' where partial_download_user = 'rm1140828950';
update desktop_inventory_partial_inventory set partial_download_user = 'JM1031122956' where partial_download_user = 'jm1031122956';

select * from users where login like 'jm1031122956';

select * from desktop_inventory_partial_inventory where id in (12,13,14,15,16,17,18,19,20,21,23,24,12,13,14,15,16,17,18,19,20,21,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,61,62,63,65,82,83,86,87,89,102,550,621,3672,6358,6365,9250,9251) and partial_upload_user is null;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11340;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11341;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11342;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11344;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11345;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11346;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11348;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11349;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11351;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11372;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 11376;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 21506;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 21578;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 28278;
update desktop_inventory_partial_inventory set desktop_inventory = 11300 where desktop_inventory = 28279;

select * from desktop_inventory_partial_inventory where id in (22,22,215,244,286,348,367,412,415,424,586,587,687,689,693,1932,1933,2003,2112,2116,2417,2418,2419,2461,2462,2463,2465,2468,5234,5598,6128) order by internal_location asc;

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

select * from users where login = 'EP1026261029';

update desktop_inventory_partial_inventory set partial_download_user = 'EP1026261029' where partial_download_user = 'EP1026261029 ';

select * from element_transfer_order_detail where id in (64764,64765);

select * from element_transfer_order where id = 17552;
select * from element_transfer_order where direction_location = 'MSCCAR01_TRAU';

update element_transfer_order set direction_location = 'MSCCAR01_TRA' where direction_location = 'MSCCAR01_TRAU';

select * from location where code = 'MSCCAR01_TRA';

select * from quality_inventory_element where id in (11939,11937,13146,19669,19682,19695,21468,23884,40276,46552,46562,49119,58872,62414,66533,67609,68447,69671,69685,72617,74047,74059,80241,80501,85959);

select * from element_model where description like '%UNID%';

update quality_inventory_element set model = 1000001 where model = 'UNID_VPC_10_AWG_¼';

select * from quality_inventory_element where id in (29036,5190,6370,6400,6404,6405,9134,9135,9355,13889,23501,31119,31118,31117,31098,29241,33145,33146,33147,33148,33149,33150,33151,33152,33153,33154,33155,33156,33157,33158,33159,33160,35450,51957,60155,64698,64699,66087,71382,71383,71388,71390,71391,71392,71393);

select * from internal_location where id in (2761,3848,2205,2228,2207);

update quality_inventory_element set internal_location_id = 2762 where internal_location_id = 2761;
update quality_inventory_element set internal_location_id = 3849 where internal_location_id = 3848;
update quality_inventory_element set internal_location_id = 2206 where internal_location_id = 2205;
update quality_inventory_element set internal_location_id = 2229 where internal_location_id = 2228;
update quality_inventory_element set internal_location_id = 2208 where internal_location_id = 2207;


select * from quality_inventory_element where id in (55453,55671);

select * from quality_inventory_element where element_category_asset = 0;

update quality_inventory_element set element_category_asset = NULL where element_category_asset = 0;

