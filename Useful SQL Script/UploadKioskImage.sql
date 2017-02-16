select * from shopper where shusername like '%jianhu%'

select * from cart where shopperid = 3032515
select * from cartitems where cartid = 9135079

select * from CartItemsImagesRel where cartitemid in( 378285667,378285671)

--update cartitems  set MediaClipID = '3032515-20161019040949066'  where cartitemid =  378285669
select top 10 * from abarrel where aarfnbr = 97517626
select top 10 * from archive where arrfnbr = 103292250

--update CartItemsImagesRel set imageid=97517626, OriginalImageID=97517626 where cartitemid =  378285668


--select top 10 * from abarrel where aarfnbr = 97517422
--select top 10 * from archive where arrfnbr = 103292046


--select * from ImageDefaults where id = 13
--select * from ImageDefaults where id = 7

\\lpdb\qa2\san2lr\3032515\medhigh
\\lpdb\qa2\san2hr\3032515\full




update abarrel set aathumbpath = null,aamhpath = null,aatitle='1b79457c84b9951559d64f8082c3c19c.jpg', EditStatus='UPLOADED' ,AAMHPATHID = 13
where aarfnbr = 97517626

update archive set arfullpath = null , ARFULLPATHID = 7, UploadSource=41
where arrfnbr = 103292250


update abarrel 
set aathumbpath = 'http://localhost/images/97517626.jpg',
	aamhpath = 'http://localhost/images/103292250.jpg',
	aatitle=null, 
	EditStatus='TOUPLOAD' ,
	AAMHPATHID = null
where aarfnbr = 97517626

update archive
set arfullpath = 'http://localhost/images/103292250.jpg', 
	ARFULLPATHID = null, 
	UploadSource=null
where arrfnbr = 103292250
