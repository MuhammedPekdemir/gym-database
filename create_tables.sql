CREATE DATABASE SporSalonDB;
GO

USE SporSalonDB;
GO

CREATE TABLE Uye(
    UyeID int identity(1,1) primary key,
    AdSoyad varchar(100) not null,
    Telefon varchar(20),
    KayitTarihi datetime
);

CREATE TABLE Antrenor(
    AntrenorID int identity(1,1) primary key,
    AdSoyad varchar(100) not null,
    Brans varchar(50),
    AktifMi bit
);

CREATE TABLE Salon(
    SalonID int identity(1,1) primary key,
    SalonAdi varchar(100),
    Konum varchar(100)
);

CREATE TABLE Ders(
    DersID int identity(1,1) primary key,
    DersAdi varchar(100),
    SalonID int,
    AntrenorID int,
    Kontenjan int
);

CREATE TABLE DersKayit(
    DersKayitID int identity(1,1) primary key,
    DersID int,
    UyeID int,
    KayitTarihi datetime
);

CREATE TABLE Odeme(
    OdemeID int identity(1,1) primary key,
    UyeID int,
    Tutar decimal(8,2),
    OdemeTarihi datetime,
    OdemeTipi varchar(50)
);
