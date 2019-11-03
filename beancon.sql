CREATE TABLE Tags(
	tagID VARCHAR(50) NOT NULL,
	tag TEXT NOT NULL
);
insert into Tags (`tagID`, `tag`) VALUEs ('000aaz', 'board game');
insert into Tags (`tagID`, `tag`) VALUEs ('000aaa', 'board game');
insert into Tags (`tagID', 'tag`) VALUEs ('000aaa', '21+');
insert into Tags (`tagID', 'tag`) VALUEs ('000aaa', 'fun');
insert into Tags (`tagID', 'tag`) VALUEs ('001aaa', 'info session');
insert into Tags (`tagID`, `tag`) VALUEs ('000aab', 'career fair');
insert into Tags (`tagID`, `tag`) VALUEs ('001bbb', 'hackathon');
insert into Tags (`tagID`, `tag`) VALUEs ('10086', 'chill');
insert into Tags (`tagID`, `tag`) VALUEs ('95537', 'life changing');

CREATE TABLE Attendee(
    Eventname TEXT NOT NULL,
    Username VARCHAR (20) NOT NULL
);

insert into Attendee (`Eventname`, `Username`) VALUEs ('Hard Hack', 'whl005');
insert into Attendee (`Eventname`, `Username`) VALUEs ('National Coockie Day', 'd4kay');
insert into Attendee (`Eventname`, `Username`) VALUEs ('National Coockie Day', 'mlamking');
insert into Attendee (`Eventname`, `Username`) VALUEs ('Tiple Delta', 'cleque');
insert into Attendee (`Eventname`, `Username`) VALUEs ('Chance Concert', 'whl005');
insert into Attendee (`Eventname`, `Username`) VALUEs ('Chance Concert', 'mlamking');



CREATE TABLE Event(
    Eventname TEXT NOT NULL,
    tagID VARCHAR(50) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Date date NOT NULL,
    Starttime time,
    Endtime time,
    Private boolean NOT NULL,
    Description TEXT,
    Flyer TEXT,
    QRcode TEXT,
    primary key (Eventname),
    foreign key (tagID) references Tags(tagID)
);

insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('Hard Hack', '001bbb', 'korkmaz', '2020-02-02', NULL, NULL, false, 'Come out and build awesome projects over 24 hours using Hardware we provide (You can bring your own parts if you want just make sure they are not complete projects)! Participation is free and food will be provided!!', NULL, NULL);
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('John Birthday', '000aaz', 'john21', '2019-11-02', '17:00:00', '23:00:00', True, 'Happy birthday to John!', 'www.facebook.com', NULL);
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('Appfolio', '001aaa', 'KHesung', '2020-01-02', '13:30:00', NULL, false, NULL, 'http://appfolio.com/', 'http://appfolio.com/');
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('Spring Career', '00aab', 'khosla', '2020-02-15', NULL, NULL, false, 'Annual Career Fair in the Srping', NULL, NULL);
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('National Coockie Day', '000ccc', 'UCSD', '2020-12-04', NULL, NULL, false, NULL, NULL, NULL);
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('Triple Delta', '000aaa', 'DDD', '2019-11-05', NULL, NULL, false, 'alsjd aodfuh diviwe ivebf oeefbiwend ifvn qofn sdionousb odbehf ovniwuhof odfivn 0fnjh nh iu dfjv i v h', NULL, NULL);
insert into Event (`Eventname`, `tagID`, `Host`, `Date`, `Starttime`, `Endtime`, `Private`, `Description`, `Flyer`, `QRcode`) 
VALUEs ('OMNIA', '000aaa', 'poiuq023', '2020-01-01', NULL, NULL, false, 'DANCE DANCE DANCE', NULL, NULL);


CREATE TABLE Friend(
    Username VARCHAR(50) NOT NULL,
    friend VARCHAR(50) NOT NULL
);

CREATE TABLE HostEvent(
    Username VARCHAR(50) NOT NULL,
    Eventname TEXT NOT NULL
);

CREATE TABLE Notification(
    Username VARCHAR(50) NOT NULL,
    Message TEXT NOT NULL
);

Insert into Friend (`Username`, `friend`) VALUEs ("David", "Michael");
Insert into Friend (`Username`, `friend`) VALUEs ("David", "KHesung");
Insert into Friend (`Username`, `friend`) VALUEs ("David", "korkmaz");
Insert into Friend (`Username`, `friend`) VALUEs ("David", "DDD");
Insert into Friend (`Username`, `friend`) VALUEs ("DDD", "john21");
Insert into Friend (`Username`, `friend`) VALUEs ("john21", "KHesung");
Insert into Friend (`Username`, `friend`) VALUEs ("khosla", "korkmaz");
Insert into Friend (`Username`, `friend`) VALUEs ("poiuq023", "whl005");
Insert into Friend (`Username`, `friend`) VALUEs ("whl005", "poiuq023");
Insert into Friend (`Username`, `friend`) VALUEs ("whl005", "Michael");
Insert into Friend (`Username`, `friend`) VALUEs ("poiuq023", "DDD");

Insert into HostEvent (`Username`, `Eventname`) VALUEs ("David", "Disneyland");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("korkmaz", "Hard Hack");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("john21", "John Birthday");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("KHesung", "Appfolio");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("khosla", "Spring Career");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("UCSD", "National Coockie Day");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("DDD", "Tiple Delta");
Insert into HostEvent (`Username`, `Eventname`) VALUEs ("poiuq023", "OMNIA");

Insert into Notification(`Username`, `Message`) VALUEs ("David", "Hi there");
Insert into Notification(`Username`, `Message`) VALUEs ("CUSD", "Seventh College");
Insert into Notification(`Username`, `Message`) VALUEs ("poiuq023", "OMINIA is created");
Insert into Notification(`Username`, `Message`) VALUEs ("khosla", "Tessa says hi");
Insert into Notification(`Username`, `Message`) VALUEs ("KHesung", "You are hosting Appfolio event");

CREATE TABLE User(
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    tagID VARCHAR(50) NOT NULL,
    College TEXT,
    Major VARCHAR(50),
    Year VARCHAR(10),
    FUsername VARCHAR(50) NOT NULL,
    HUsername VARCHAR(50) NOT NULL,
    NUsername VARCHAR(50) NOT NULL,
    PRIMARY KEY (Username),
    Foreign key (FUsername) references Friend(Username),
    Foreign key (HUsername) references HostEvent(Username),
    Foreign key (NUsername) references Notification(Username)
);

Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("UCSD", "BEACONPSWD4", "10086", "UCSD", NULL, NULL , "UCSD", "UCSD", "UCSD");
Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("korkmaz", "BEACONPSWD", "10086", "Sixth", "Neuroscience", "2020" , "korkmaz", "korkmaz", "korkmaz");
Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("khosla", "BEACONPSWD1", "10086", "ERC", "CSE", "2022" , "khosla", "khosla", "khosla");
Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("KHesung", "BEACONPSWD2", "95537", "Warren", "EE", "2020" , "KHesung", "KHesung", "KHesung");
Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("john21", "BEACONPSWD3", "95537", "Revelle", "Math", "2020" , "john21", "john21", "john21");
Insert into User (`Username`, `Password`, `tagID`, `College`, `Major`, `Year`, 'FUsername', 'HUsername', 'NUsername') VALUEs ("DDD", "BEACONPSWD4", "10086", "Muir", "Cog Sci", "2050" , "DDD", "DDD", "DDD");


