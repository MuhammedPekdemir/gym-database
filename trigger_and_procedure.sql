CREATE TRIGGER KontenjanAyarlama
ON DersKayit
AFTER INSERT
AS
BEGIN
    DECLARE @DersID INT
    SELECT @DersID = DersID FROM inserted
    UPDATE Ders SET Kontenjan = Kontenjan - 1 WHERE DersID = @DersID 
END


CREATE PROCEDURE UyeOdenenMiktar
AS
BEGIN
    SELECT U.AdSoyad AS UyeAdi ,COUNT(DK.DersID) AS AldigiDersSayisi, SUM(O.Tutar) AS OdemeMiktari FROM Uye U
    INNER JOIN DersKayit DK ON U.UyeID = DK.UyeID
    INNER JOIN Odeme O ON U.UyeID = O.UyeID
    GROUP BY U.AdSoyad
END

