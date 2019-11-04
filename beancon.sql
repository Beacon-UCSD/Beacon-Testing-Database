
CREATE TABLE Tags(
	tagID VARCHAR(20) NOT NULL,
	tag TEXT NOT NULL
);
/*insert into Tags (`tagID`, `tag`) VALUEs ('000aaz', 'board game');
insert into Tags (`tagID`, `tag`) VALUEs ('000aaa', 'board game');
insert into Tags (`tagID', 'tag`) VALUEs ('000aaa', '21+');
insert into Tags (`tagID', 'tag`) VALUEs ('000aaa', 'fun');
insert into Tags (`tagID', 'tag`) VALUEs ('001aaa', 'info session');
insert into Tags (`tagID`, `tag`) VALUEs ('000aab', 'career fair');
insert into Tags (`tagID`, `tag`) VALUEs ('001bbb', 'hackathon');
insert into Tags (`tagID`, `tag`) VALUEs ('10086', 'chill');
insert into Tags (`tagID`, `tag`) VALUEs ('95537', 'life changing');
*/


CREATE TABLE Events(
    EventID VARCHAR(50) NOT NULL,
    Eventname TEXT NOT NULL,
    tagID VARCHAR(50) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Date date NOT NULL,
    Starttime time,
    Endtime time,
    Private boolean NOT NULL,
    Description TEXT,
    FlyerURL TEXT,
    Attendees TEXT,
    primary key (Eventname)
);

CREATE TABLE PastEvents(
    EventID VARCHAR(50) NOT NULL,
    Eventname TEXT NOT NULL,
    tagID VARCHAR(50) NOT NULL,
    Host VARCHAR(20) NOT NULL,
    Date date NOT NULL,
    Starttime time,
    Endtime time,
    Private boolean NOT NULL,
    Description TEXT,
    FlyerURL TEXT,
    Attendees TEXT,
    primary key (EventID)
);


CREATE TABLE Users(
    UserID VARCHAR(50) NOT NULL,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    Email VARCHAR(20) NOT NULL,
    Phone VARCHAR(20)
    tagID VARCHAR(20) NOT NULL,
    College TEXT,
    Major VARCHAR(50),
    Year VARCHAR(10),
    Friends TEXT,
    Hostevents TEXT,
    Notification, TEXT,
    PRIMARY KEY (UserID),
);