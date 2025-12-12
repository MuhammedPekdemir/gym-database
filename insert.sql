INSERT INTO Uye (AdSoyad,Telefon,KayitTarihi) VALUES
('Ahmet Yilmaz','xxx', GETDATE()),
('Mehmet Kaya','xxx', GETDATE()),
('Ayse Demir','xxx', GETDATE());

INSERT INTO Antrenor (AdSoyad,Brans,AktifMi) VALUES
('Ali Demir','Fitness', 1),
('Burcu Aydin','Body Building', 1),
('Mahmut Pek','Crossfit', 0);

INSERT INTO Salon (SalonAdi,Konum) VALUES
('Merkez Salon','Istanbul'),
('Gelisim Salon','Ankara'),
('Istanbul Salon','Istanbul');

INSERT INTO Ders (DersAdi,SalonID,AntrenorID,Kontenjan) VALUES
('Fitness Giris',1, 1, 20),
('Body Building Giris',2, 2, 15),
('Crossfit Pro',3, 3, 10);

INSERT INTO DersKayit (DersID,UyeID,KayitTarihi) VALUES
(1, 1, GETDATE()),
(2, 2, GETDATE()),
(3, 3, GETDATE());

INSERT INTO Odeme (UyeID,Tutar,OdemeTarihi,OdemeTipi) VALUES
(1, 1500, GETDATE(),'Kredi Karti'),
(2, 1200, GETDATE(),'Nakit'),
(3, 1800, GETDATE(),'Nakit');
