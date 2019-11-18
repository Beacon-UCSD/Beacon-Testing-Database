
--Populated 

CREATE TABLE Tags(
    tagID VARCHAR(20) NOT NULL,
    tag TEXT NOT NULL
);

insert into Tags (`tagID`, `tag`) VALUEs ('000aaz', 'board game');
insert into Tags (`tagID`, `tag`) VALUEs ('000aaa', 'drinking game');
insert into Tags (`tagID`, `tag`) VALUEs ('000aaf', '21+');
insert into Tags (`tagID`, `tag`) VALUEs ('000aga', 'fun');
insert into Tags (`tagID`, `tag`) VALUEs ('001aaa', 'info session');
insert into Tags (`tagID`, `tag`) VALUEs ('000aab', 'career fair');
insert into Tags (`tagID`, `tag`) VALUEs ('001bbb', 'hackathon');
insert into Tags (`tagID`, `tag`) VALUEs ('002las', 'chill');
insert into Tags (`tagID`, `tag`) VALUEs ('951acs', 'life changing');
insert into Tags (`tagID`, `tag`) VALUEs ('097ghj', 'Cry');
insert into Tags (`tagID`, `tag`) VALUEs ('155qas', 'pumpkin drop');
insert into Tags (`tagID`, `tag`) VALUEs ('000aps', '18+');
insert into Tags (`tagID`, `tag`) VALUEs ('000zpp', 'stargaze');
insert into Tags (`tagID`, `tag`) VALUEs ('001fck', 'midterm');
insert into Tags (`tagID`, `tag`) VALUEs ('000fic', 'final exam');
insert into Tags (`tagID`, `tag`) VALUEs ('001dic', 'daily stand up');
insert into Tags (`tagID`, `tag`) VALUEs ('100ppd', 'Uno');


CREATE TABLE Events(
    EventID VARCHAR(50) NOT NULL,
    Eventname TEXT NOT NULL,
    tagID VARCHAR(20) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Startdate date NOT NULL,
    Enddate date,
    Private boolean NOT NULL,
    Description TEXT,
    FlyerURL TEXT,
    Attendees TEXT,
    primary key (EventID)
);

insert into Events VALUEs ('000','Hard Hack', '001bbb,000zpp', 'korkmaz', '2020-02-02', NULL, false, 'Come out and build awesome projects over 24 hours using Hardware we provide (You can bring your own parts if you want just make sure they are not complete projects)! Participation is free and food will be provided!!', NULL, 'korkmaz');
insert into Events VALUEs ('001','John Birthday', '000aaz', 'john21', '2019-11-02 17:00:00', '2019-11-02 23:00:00', True, 'Happy birthday to John!', 'www.facebook.com', NULL);
insert into Events VALUEs ('002','Appfolio', '001aaa', 'KHesung', '2020-01-02 13:30:00', NULL, false, NULL, 'http://appfolio.com/', NULL);
insert into Events VALUEs ('003','Spring Career', '000aab', 'khosla', '2020-02-15', NULL, false, 'Annual Career Fair in the Srping', NULL, NULL);
insert into Events VALUEs ('004','National Coockie Day', '155qas', 'UCSD', '2020-12-04', NULL, false, NULL, NULL, NULL);
insert into Events VALUEs ('005','Triple Delta', '000aaa,000aaz,002las,000aps', 'DDD', '2019-11-05', NULL, false, 'alsjd aodfuh diviwe ivebf oeefbiwend ifvn qofn sdionousb odbehf ovniwuhof odfivn 0fnjh nh iu dfjv i v h', NULL, NULL);
insert into Events VALUEs ('006','OMNIA', '000aaa,000aaf,000aps', 'poiuq023', '2020-01-01', NULL, false, 'DANCE DANCE DANCE', NULL, NULL);
insert into Events VALUES ('007','BEACON Daily Meeting', '001dic', 'dlam002', '2019-11-10 10:00:00', '2019-11-10 12:00:00', True, 'Code', 'https://github.com/Beacon-UCSD', NULL);
insert into Events VALUES ('010','AWS RDS Test', '001dic', 'danlam01', '2019-11-11 10:00:00', '2019-11-17 10:00:00', False, 'Code', 'https://github.com/Beacon-UCSD', NULL);


CREATE TABLE PastEvents(
    EventID VARCHAR(50) NOT NULL,
    Eventname TEXT NOT NULL,
    tagID VARCHAR(20) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Startdate date NOT NULL,
    Enddate date,
    Private boolean NOT NULL,
    Description TEXT,
    FlyerURL TEXT,
    Attendees TEXT,
    primary key (EventID)
);

insert into PastEvents VALUES ('aaa','AWS Account Test', '001dic', 'danlam01', '2018-11-11 10:00:00', '2018-11-17 10:00:00', False, 'Code', 'https://github.com/Beacon-UCSD', NULL);

CREATE TABLE Users(
    UserID VARCHAR(50) NOT NULL,
    GoogleUID VARCHAR(50) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    Email VARCHAR(20) NOT NULL,
    Phone VARCHAR(20),
    tagID VARCHAR(20) NOT NULL,
    College TEXT,
    Major VARCHAR(50),
    Year VARCHAR(10),
    Friends TEXT,
    Hostevents TEXT,
    Notification TEXT,
    PRIMARY KEY (UserID)
);

Insert into Users VALUEs ("khosla", "---","pkucsd", "BEACONPSWDUCSD", "khosla@ieng6.ucsd.edu", NULL, "001bbb,000fic", NULL, NULL, NULL, NULL, "003", NULL);
Insert into Users VALUEs ("UCSD", "---", "UCSD2020", "BEACONPSWD4", "ucsd@ucsd.edu", "858-858-8585", "951acs", "UCSD", NULL, NULL , "UCSD", "004", "No Notification");
Insert into Users VALUEs ("korkmaz", "---", "korkmaz123", "BEACONPSWD", "kk123@ucsd.edu", NULL, "097ghj, 000aga", "Sixth", "Neuroscience", "2020" , "korkmaz", "000", "You have created event Hard Hack");
Insert into Users VALUEs ("khosla1", "---1","pkucsd1", "BEACONPSWDUCSD1", "khosla@ieng6.ucsd.edu", NULL, "001bbb,000fic", NULL, NULL, NULL, NULL, "003", NULL);
Insert into Users VALUEs ("UCSD1", "---1", "UCSD20201", "BEACONPSWD41", "ucsd@ucsd.edu", "858-858-8585", "951acs", "UCSD", NULL, NULL , "UCSD", "004", "No Notification");
Insert into Users VALUEs ("korkmaz1", "---1", "korkmaz1231", "BEACONPSWD1", "kk123@ucsd.edu", NULL, "097ghj, 000aga", "Sixth", "Neuroscience", "2020" , "korkmaz", "000", "You have created event Hard Hack");
Insert into Users VALUEs ("khosla2", "---2","pkucsd2", "BEACONPSWDUCSD", "khosla@ieng6.ucsd.edu", NULL, "001bbb,000fic", NULL, NULL, NULL, NULL, "003", NULL);
Insert into Users VALUEs ("UCSD2", "---2", "UCSD20202", "BEACONPSWD4", "ucsd@ucsd.edu", "858-858-8585", "951acs", "UCSD", NULL, NULL , "UCSD", "004", "No Notification");
Insert into Users VALUEs ("korkmaz2", "---2", "korkmaz1232", "BEACONPSWD", "kk123@ucsd.edu", NULL, "097ghj, 000aga", "Sixth", "Neuroscience", "2020" , "korkmaz", "000", "You have created event Hard Hack");
