SELECT 
    distinct mic_batch
FROM
    mic_batch_responsible
        LEFT JOIN
    mic_batch ON mic_batch_responsible.mic_batch = mic_batch.id
WHERE
    login IN ('JC16076088' , 'JV1012329034',
        'LS53105920',
        'JC16076088',
        'JV1012329034',
        'LS53105920',
        'JC16076088',
        'julian.castrillon',
        'julian.castrillon',
        'JC16076088',
        'JC16076088',
        'JC16076088',
        'LS53105920',
        'JC16076088',
        'LS53105920') AND mic_batch.id IS NULL;
        
SELECT 
    *
FROM
    mic_batch_responsible
WHERE
    login IN ('JC16076088' , 'JV1012329034',
        'LS53105920',
        'JC16076088',
        'JV1012329034',
        'LS53105920',
        'JC16076088',
        'julian.castrillon',
        'julian.castrillon',
        'JC16076088',
        'JC16076088',
        'JC16076088',
        'LS53105920',
        'JC16076088',
        'LS53105920') ;
        
select * from laicon34G.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon') and mic_batch = 6600 or mic_batch = 6740 or mic_batch = 6747 or mic_batch = 6762 or mic_batch = 6767 or mic_batch = 6768 or mic_batch = 6784 or mic_batch = 6756 or mic_batch = 6758;
        
        
select * from (select * from laicon34G.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon')) AS table1 where table1.mic_batch in (6600,6740,6747,6762,6767,6768,6784,6756,6758);

select * from (select * from laicon34G.mic_batch_responsible where login in ('JC16076088','JV1012329034','LS53105920','julian.castrillon')) AS table1 where table1.mic_batch in (6600,6740,6747,6762,6767,6768,6784,6756,6758);

delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6600 ;
delete from mic_batch_responsible where login = 'JV1012329034' and mic_batch = 6600 ;
delete from mic_batch_responsible where login = 'LS53105920' and mic_batch = 6600 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6740 ;
delete from mic_batch_responsible where login = 'JV1012329034' and mic_batch = 6740 ;
delete from mic_batch_responsible where login = 'LS53105920' and mic_batch = 6740 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6747 ;
delete from mic_batch_responsible where login = 'julian.castrillon' and mic_batch = 6756 ;
delete from mic_batch_responsible where login = 'julian.castrillon' and mic_batch = 6758 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6762 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6767 ;
delete from mic_batch_responsible where login = 'LS53105920' and mic_batch = 6767 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6768 ;
delete from mic_batch_responsible where login = 'JC16076088' and mic_batch = 6784 ;
delete from mic_batch_responsible where login = 'LS53105920' and mic_batch = 6784 ;




select * from laicon20f.mic_batch where id in (6600,6740,6747,6762,6767,6768,6784,6756,6758);