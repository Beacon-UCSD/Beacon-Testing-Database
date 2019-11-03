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

CREATE TABLE Attendee(
    Eventname TEXT NOT NULL,
    Participant VARCHAR (20) NOT NULL
);


/*
CREATE TABLE Event(
	Eventname TEXT NOT NULL,
    tagID VARCHAR(50) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Date date NOT NULL,
    Starttime time,
    Endtime time,
    Private boolean,
    Description TEXT,
    Flyer TEXT,
    QRcode TEXT,
    primary key (Eventname),
    foreign key (tagID) references Tags(tagID)
);*/

