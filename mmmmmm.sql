


select pm publicationname,
(select count(scanid) 
from fullscandetail as fsd1 

where fsd1.=fsd) 
from fullscandetail fsd ,publicationmaster pm
where active='Y'


select publicationid,count(*)as count
from fullscandetail where active='Y'
group by publicationid;

select * from (select TO_CHAR(fsd.workdate,'dd/MM/yyyy') workdate,pm.publicationname,cm.cityname,count(*)as count
from fullscandetail fsd,publicationmaster pm,citymaster  cm
 where 
fsd.PUBLICATIONID=pm.PUBLICATIONID
and fsd.active='Y'
and pm.isactive='Y'
and cm.isactive='Y'
and pm.cityid=cm.cityid
and fsd.cityid=cm.cityid
group by pm.publicationname,cm.cityname,workdate)where 1=1


select * from (select TO_CHAR(fsd.ARTICLEDATE,'dd/MM/yyyy') workdate,pm.publicationname,cm.cityname,count(*)as count,fsd.cityid ,row_number() OVER (order by workdate asc) AS r 
 from fullscandetail fsd,publicationmaster pm,citymaster  cm  
 where fsd.PUBLICATIONID=pm.PUBLICATIONID 
  and fsd.active='Y'  
  and pm.isactive='Y'  
 and cm.isactive='Y' 
  and pm.cityid=cm.cityid  
  and fsd.cityid=cm.cityid   
 group by pm.publicationname,cm.cityname,workdate )  where 1=1 
 
 
 select * from (select TO_CHAR(fsd.workdate,'dd/MM/yyyy') workdate,pm.publicationname,cm.cityname,count(*)as count,fsd.cityid,
   row_number() OVER (order by fsd.workdate asc) AS r
   from fullscandetail fsd,publicationmaster pm,citymaster  cm  
   where fsd.PUBLICATIONID=pm.PUBLICATIONID  
   and fsd.active='Y' 
    and pm.isactive='Y'  
   and cm.isactive='Y'  
   and pm.cityid=cm.cityid  
   and fsd.cityid=cm.cityid   
 group by pm.publicationname,cm.cityname,workdate ,fsd.cityid)  where 1=1 
 
 select cityid,cityname  from CITYMASTER  where isactive='Y' and cityid =283  ;
 
 select * from (select TO_CHAR(fsd.workdate,'dd/MM/yyyy') 
 workdate,pm.publicationname,cm.cityname,count(*)as count  ,row_number() OVER (order by workdate asc) AS r from 
 fullscandetail fsd,publicationmaster pm,citymaster  cm   
 where fsd.PUBLICATIONID=pm.PUBLICATIONID  and fsd.active='Y' 
  and pm.isactive='Y'  and cm.isactive='Y'  and pm.cityid=cm.cityid 
   and fsd.cityid=cm.cityid   and cm.cityid  like '%24%'   group by pm.publicationname,cm.cityname,workdate )  where 1=1    and r between 1 and 10    order by workdate asc
   
   
   
   select * from (select TO_CHAR(fsd.workdate,'dd/MM/yyyy') workdate,pm.publicationname,cm.cityname,count(*)as count  ,row_number() OVER (order by workdate asc) AS r from fullscandetail fsd,publicationmaster pm,citymaster  cm   where fsd.PUBLICATIONID=pm.PUBLICATIONID  and fsd.active='Y'  and pm.isactive='Y'  and cm.isactive='Y'  and pm.cityid=cm.cityid  and fsd.cityid=cm.cityid   AND workdatenumber LIKE '%20180417%'   and cm.cityid  like '%24%'   group by pm.publicationname,cm.cityname,workdate )  where 1=1    and r between 1 and 10    order by workdate asc
   
   
   
   
   
   
   select * from localusermaster where active=1
   and locationid=4
   
   select * from (select TO_CHAR(fsd.workdate,'dd/MM/yyyy') workdate,pm.publicationname,cm.cityname,count(*)as count
     
  ,row_number() OVER (order by workdate asc) AS r 
  from fullscandetail fsd,publicationmaster pm,citymaster  cm   
  where fsd.PUBLICATIONID=pm.PUBLICATIONID  and fsd.active='Y'  
  and pm.isactive='Y'  and cm.isactive='YARTICLEDATEARTICLEDATEARTICLEDATE' 
  and pm.cityid=cm.cityid  
  and fsd.createdby IN (5,3,9,1)
  and pm.cityid=cm.cityid  
  and fsd.cityid=cm.cityid   
  group by pm.publicationname,cm.cityname,workdate )  
  where 1=1    
  and r between 1 and 10    order by workdate asc
  
  
  select * from (select TO_CHAR(fsd.ARTICLEDATE,'dd/MM/yyyy')as articaledate,pm.publicationname,cm.cityname,count(*)as count  ,row_number() OVER (order by ARTICLEDATE asc) AS r 
  from fullscandetail fsd,publicationmaster pm,citymaster  cm   
  where fsd.PUBLICATIONID=pm.PUBLICATIONID  
  and fsd.active='Y'  and pm.isactive='Y'  and cm.isactive='Y'  
  and pm.cityid=cm.cityid  and fsd.createdby IN (5,3,9,1) 
  and pm.cityid=cm.cityid  and fsd.cityid=cm.cityid   
  AND workdatenumber LIKE '%20180417%'  
   group by pm.publicationname,cm.cityname,fsd.ARTICLEDATE )  where 1=1
   
   
   TEMP_FILESTORAGESPLIT 
   
   truncate table HISTORY_FULLSCANDETAILSPLIT
   
   
    truncate table TEMP_FILESTORAGESPLIT  ;  
    
    select * from TEMP_FILESTORAGESPLIT  ;  
   
   
   
   
   select * from ( select fsd.scanid, TO_CHAR(fsd.articledate,'DD-MM-YYYY') as date1,pam.PUBLICATIONNAME,cm.cityname,fsd.languageid,fsd.pagenumber,row_number() OVER (order by fsd.scanid asc) AS r,cm.cityid,pam.publicationid,IMGPATH,TO_CHAR(fsd.workdate,'dd/MM/yyyy') as workdate    from FULLSCANDETAIL  fsd ,PUBLICATIONMASTER pam,  citymaster cm   where fsd.PUBLICATIONID=pam.PUBLICATIONID  and fsd.cityid=cm.cityid  and pam.isactive='Y'  and fsd.active='Y'   AND TO_CHAR (fsd.workdate, 'yyyymmdd') LIKE '%20180418%'   )  where 1=1    and r between 1 and 10    order by scanid asc
   
   
   select * from ( select fsd.scanid, TO_CHAR(fsd.articledate,'DD-MM-YYYY') as date1,pam.PUBLICATIONNAME,cm.cityname,fsd.languageid,fsd.pagenumber,row_number() OVER (order by fsd.scanid asc) AS r,cm.cityid,pam.publicationid,IMGPATH,TO_CHAR(fsd.workdate,'dd/MM/yyyy') as workdate    from FULLSCANDETAIL  fsd ,PUBLICATIONMASTER pam,  citymaster cm   where fsd.PUBLICATIONID=pam.PUBLICATIONID  and fsd.cityid=cm.cityid  and pam.isactive='Y'  and fsd.active='Y'   AND TO_CHAR (fsd.workdate, 'yyyymmdd') LIKE '%20180418%'   )  where 1=1    and r between 1 and 10    order by scanid asc
   
   
   
   
   select * from ( select fsd.scanid, TO_CHAR(fsd.articledate,'DD-MM-YYYY') as date1,pam.PUBLICATIONNAME,cm.cityname,fsd.languageid,fsd.pagenumber,row_number() OVER (order by fsd.scanid asc) AS r,cm.cityid,pam.publicationid,IMGPATH,TO_CHAR(fsd.workdate,'dd/MM/yyyy') as workdate,fsd.locationid    from FULLSCANDETAIL  fsd ,PUBLICATIONMASTER pam,  citymaster cm   where fsd.PUBLICATIONID=pam.PUBLICATIONID  and fsd.cityid=cm.cityid  and pam.isactive='Y'  and fsd.active='Y'   AND TO_CHAR (fsd.workdate, 'yyyymmdd') LIKE '%20180418%'   )  where 1=1    and r between 1 and 10    order by scanid asc
   
   
   
   
   
   select imgpath   
   from FULLSCANDETAIL  
   where  scanid = 1  
   and  locationid =4
   and active='Y'  
    
    update FULLSCANDETAIL set active='Y' 
    where  scanid = 1  
    and  locationid =4
    
    EMP_FILESTORAGE
    FTPMASTER 
    
    
    truncate table FULLSCANDETAILSPLIT   
    
    truncate table TEMP_FILESTORAGESPLIT  
    
    
    truncate table FULLSCANDETAIL    
    
    truncate table TEMP_FILESTORAGE   
    
    
    truncate table FULLSCANDETAIL 
    truncate table HISTORY_FULLSCANDETAIL  
    truncate table HISTORY_FULLSCANDETAILSPLIT   
    
    
    select * from ( select fsd.scanid, TO_CHAR(fsd.articledate,'DD-MM-YYYY') as date1,pam.PUBLICATIONNAME,cm.cityname,fsd.languageid, fsd.pagenumber,row_number() OVER (order by fsd.scanid asc) AS r,  cm.cityid,pam.publicationid,TO_CHAR(fsd.workdate,'dd/MM/yyyy') as workdate , AIMGPATH,BIMGPATH,AIMAGEUPLOADID ,BIMAGEUPLOADID,fsd.locationid    from FULLSCANDETAILSPLIT  fsd ,PUBLICATIONMASTER pam,  citymaster cm   where fsd.PUBLICATIONID=pam.PUBLICATIONID  and fsd.cityid=cm.cityid  and pam.isactive='Y'  and fsd.active='Y'   AND TO_CHAR (fsd.workdate, 'yyyymmdd') LIKE '%20180418%'   )  where 1=1    and r between 1 and 10    order by scanid asc
    
    
    
    select scanid,publicationgroupid,publicationid,Aimgpath,Bimgpath,TO_CHAR(articledate,'DD/MM/YYYY') as date1, pagenumber,cityid,languageid,pagenumber from FULLSCANDETAILSPLIT  where scanid=1 and locationid=4  and active='Y'
    
    
    
    
    select * from ( select fsd.scanid, TO_CHAR(fsd.articledate,'DD-MM-YYYY') as date1,pam.PUBLICATIONNAME,cm.cityname,fsd.languageid, fsd.pagenumber,row_number() OVER (order by fsd.scanid asc) AS r,  cm.cityid,pam.publicationid,TO_CHAR(fsd.workdate,'dd/MM/yyyy') as workdate , AIMGPATH,BIMGPATH,AIMAGEUPLOADID ,BIMAGEUPLOADID,fsd.locationid    from FULLSCANDETAILSPLIT  fsd ,PUBLICATIONMASTER pam,  citymaster cm   where fsd.PUBLICATIONID=pam.PUBLICATIONID  and fsd.cityid=cm.cityid  and pam.isactive='Y'  and fsd.active='Y'   AND TO_CHAR (fsd.workdate, 'yyyymmdd') LIKE '%20180418%'   )  where 1=1    and r between 1 and 10    order by scanid asc
    
    
    
    
    
    
    