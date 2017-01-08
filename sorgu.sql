
insert into ogrenci(ogno,ad)
values('01','ali kara')

UPDATE ogrenci
SET ogno = '02'
WHERE ad = 'ayşe kara'

DELETE FROM ogrenci
WHERE ogno='01'

***************************************

insert into ders(kod,ad)
values('201601','fizik')

UPDATE ders
SET kod = '201602'
WHERE ad = 'kimya'

DELETE FROM ders
WHERE kod='201601'

***************************************

insert into kayit(dersKod,ogrenciNo,gNo,notu)
values('201601','fizik','50','60')

UPDATE kayit
SET dersKod = '201602', ogrenciNo = '01', gNo='50', notu='70'
WHERE dersKod = '201601'

DELETE FROM kayit
WHERE dersKod='201601'

***************************************
  
insert into dersgrubu(dersKod,gNo,yer,gun,sure,bSaati,donem,yil)
values('201601','50','derslik1','pazartesi','50','09:30','guz','2016')

UPDATE dersgrubu
SET dersKod = '201602', gNo = '50', yer='derslik2', gun='sali', sure='50',bSaati='10.40',donem='guz',yil='2016'
WHERE dersKod = '201601' 

DELETE FROM dersgrubu
WHERE dersKod='201601'
  
***************************************
  