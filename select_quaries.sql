SELECT * FROM Uye;

SELECT DersAdi,SalonID FROM Ders;

SELECT D.DersAdi, S.SalonAdi, A.AdSoyad
FROM Ders D
INNER JOIN Salon S ON D.SalonID=S.SalonID
INNER JOIN Antrenor A ON D.AntrenorID=A.AntrenorID;

SELECT AdSoyad FROM Antrenor;

SELECT U.AdSoyad, D.DersAdi, DK.KayitTarihi
FROM DersKayit DK
INNER JOIN Uye U ON DK.UyeID=U.UyeID
INNER JOIN Ders D ON DK.DersID=D.DersID;

SELECT S.SalonAdi, SUM(D.Kontenjan) AS ToplamKontenjan
FROM Salon S
INNER JOIN Ders D ON S.SalonID = D.SalonID 
GROUP BY S.SalonAdi;
