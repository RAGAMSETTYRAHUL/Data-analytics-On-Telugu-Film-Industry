CREATE DATABASE TFI;
USE TFI;

CREATE TABLE Heroes (
    HeroID INT PRIMARY KEY AUTO_INCREMENT,
    HeroName VARCHAR(100) NOT NULL,
    BirthDate DATE,
    DebutYear YEAR,
    AwardsWon INT,
    Nationality VARCHAR(50)
);

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    MovieName VARCHAR(150) NOT NULL,
    ReleaseDate DATE,
    Genre VARCHAR(50),
    Director VARCHAR(100),
    Producer VARCHAR(100),
    Budget DECIMAL(15, 2)
);

CREATE TABLE Cast (
    CastID INT PRIMARY KEY AUTO_INCREMENT,
    HeroID INT,
    MovieID INT,
    Role VARCHAR(100),
    FOREIGN KEY (HeroID) REFERENCES Heroes(HeroID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

CREATE TABLE Collections (
    CollectionID INT PRIMARY KEY AUTO_INCREMENT,
    MovieID INT,
    BoxOfficeCollection DECIMAL(15, 2),
    OpeningWeekCollection DECIMAL(15, 2),
    OverseasCollection DECIMAL(15, 2),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);


INSERT INTO Heroes (HeroName, BirthDate, DebutYear, AwardsWon, Nationality)
VALUES
('Chiranjeevi', '1955-08-22', 1978, 10, 'Indian'),
('Mahesh Babu', '1975-08-09', 1999, 12, 'Indian'),
('Prabhas', '1979-10-23', 2002, 8, 'Indian'),
('Pawan Kalyan', '1971-09-02', 1996, 7, 'Indian'),
('Allu Arjun', '1983-04-08', 2003, 11, 'Indian'),
('Ram Charan', '1985-03-27', 2007, 9, 'Indian'),
('Jr. NTR', '1983-05-20', 2001, 13, 'Indian'),
('Venkatesh', '1960-12-13', 1986, 15, 'Indian'),
('Nagarjuna', '1959-08-29', 1986, 14, 'Indian'),
('Ravi Teja', '1968-01-26', 1999, 6, 'Indian'),
('Nani', '1984-02-24', 2008, 5, 'Indian'),
('Nithiin', '1983-03-30', 2002, 4, 'Indian'),
('Balakrishna', '1960-06-10', 1974, 16, 'Indian'),
('Varun Tej', '1990-01-19', 2014, 3, 'Indian'),
('Vijay Deverakonda', '1989-05-09', 2011, 7, 'Indian');


INSERT INTO Movies (MovieName, ReleaseDate, Genre, Director, Producer, Budget)
VALUES
('Baahubali: The Beginning', '2015-07-10', 'Epic Action', 'S.S. Rajamouli', 'Shobu Yarlagadda', 1800000000),
('Baahubali: The Conclusion', '2017-04-28', 'Epic Action', 'S.S. Rajamouli', 'Shobu Yarlagadda', 2500000000),
('Srimanthudu', '2015-08-07', 'Action Drama', 'Koratala Siva', 'Y. Naveen', 700000000),
('Ala Vaikunthapurramuloo', '2020-01-12', 'Action Drama', 'Trivikram Srinivas', 'Allu Aravind', 1000000000),
('Sye Raa Narasimha Reddy', '2019-10-02', 'Historical Action', 'Surender Reddy', 'Ram Charan', 270000000),
('Rangasthalam', '2018-03-30', 'Action Drama', 'Sukumar', 'Mythri Movie Makers', 600000000),
('Bharat Ane Nenu', '2018-04-20', 'Political Drama', 'Koratala Siva', 'DVV Danayya', 650000000),
('Aravinda Sametha Veera Raghava', '2018-10-11', 'Action Drama', 'Trivikram Srinivas', 'S. Radha Krishna', 600000000),
('Geetha Govindam', '2018-08-15', 'Romantic Comedy', 'Parasuram', 'Bunny Vasu', 150000000),
('Maharshi', '2019-05-09', 'Action Drama', 'Vamshi Paidipally', 'Dil Raju', 1000000000),
('Gabbar Singh', '2012-05-11', 'Action Comedy', 'Harish Shankar', 'Bandla Ganesh', 400000000),
('Temper', '2015-02-13', 'Action', 'Puri Jagannadh', 'Bandla Ganesh', 350000000),
('Magadheera', '2009-07-31', 'Fantasy Action', 'S.S. Rajamouli', 'Allu Aravind', 350000000),
('F2: Fun and Frustration', '2019-01-12', 'Comedy', 'Anil Ravipudi', 'Dil Raju', 300000000),
('Sarileru Neekevvaru', '2020-01-11', 'Action Comedy', 'Anil Ravipudi', 'Anil Sunkara', 750000000);

INSERT INTO Cast (HeroID, MovieID, Role)
VALUES
(3, 1, 'Baahubali / Shivudu'),
(3, 2, 'Baahubali / Shivudu'),
(2, 3, 'Harsha Vardhan'),
(5, 4, 'Bantu'),
(1, 5, 'Uyyalawada Narasimha Reddy'),
(6, 6, 'Chitti Babu'),
(2, 7, 'Bharat Ram'),
(7, 8, 'Veera Raghava Reddy'),
(15, 9, 'Vijay Govind'),
(2, 10, 'Rishi'),
(4, 11, 'Gabbar Singh'),
(7, 12, 'Daya'),
(6, 13, 'Kala Bhairava'),
(8, 14, 'Venky'),
(2, 15, 'Ajay Krishna');


INSERT INTO Collections (MovieID, BoxOfficeCollection, OpeningWeekCollection, OverseasCollection)
VALUES
(1, 6500000000, 500000000, 1000000000),
(2, 9000000000, 700000000, 1500000000),
(3, 2100000000, 100000000, 350000000),
(4, 2800000000, 150000000, 450000000),
(5, 2400000000, 120000000, 400000000),
(6, 2160000000, 100000000, 380000000),
(7, 2250000000, 110000000, 390000000),
(8, 1900000000, 95000000, 360000000),
(9, 1300000000, 70000000, 250000000),
(10, 2500000000, 125000000, 400000000),
(11, 1600000000, 85000000, 200000000),
(12, 1700000000, 90000000, 210000000),
(13, 2800000000, 150000000, 450000000),
(14, 1900000000, 95000000, 200000000),
(15, 2700000000, 135000000, 370000000);






