CREATE TABLE Users (
    username varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    profile_image_url varchar(255)
);

INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('ramu24', 'RamuK', 'Ramu Kothapalli', 'ram.k@relevel.com', 'https://i.pickadummy.com/300x100');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('sureshV', 'clubHouse123', 'Suresh Vellore', 'suresh.v@relevel.com', 'https://i.pickadummy.com/300');
INSERT INTO Users (username, password, name, email)  
   VALUES ('someshRocz', 'somuclubHouse', 'Somesh V', 'somu.v@relevel.com');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('rakeshM', 'rakiclubHouse5', 'Rakesh Maralle', 'raki.m@relevel.com', 'https://i.pickadummy.com/300x150?border=2&bordercolor=000000');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('adityaB', 'adiclubHouse', 'Aditya B', 'adi.B@relevel.com', 'https://i.pickadummy.com/300x150?border=20&bordercolor=97abe5');
INSERT INTO Users (username, password, name, email, profile_image_url)  
   VALUES ('flyingbeast', 'flbclubHouse', 'Gaurav Taneja', 'gaurav.t@relevel.com', 'https://i.pickadummy.com/index.php?imgsize=300x150&text=FlyingBeast');

   
CREATE TABLE Clubs (
    clubname varchar(255) PRIMARY KEY,
    username varchar(255) references Users(username),
    profile_image_url varchar(255),
    topics varchar(255),
    description varchar(2000)
);

INSERT INTO Clubs (clubname, username, topics, description)  
   VALUES ('The Black Comedy Club', 'someshRocz', 'Comedy', 'Some cool vibes and comedy');
INSERT INTO Clubs (clubname, username, profile_image_url, topics, description)  
   VALUES ('Telugu Comedy Club', 'rakeshM', 'https://i.pickadummy.com/300x150?border=2&bordercolor=000000',
   'Comedy, Horror Stories', 'Comedy and Horror stories');
INSERT INTO Clubs (clubname, username, profile_image_url, topics, description)  
   VALUES ('Comedy Courts', 'adityaB', 'https://i.pickadummy.com/300x150?border=20&bordercolor=97abe5',
   'Comedy', 'Comedy, Comedy, Comedy All it iss!!');
INSERT INTO Clubs (clubname, username, profile_image_url, topics, description)  
   VALUES ('Comedy Club', 'flyingbeast', 'https://i.pickadummy.com/index.php?imgsize=300x150&text=FlyingBeast', 
   'Comedy, Rap Battle', 'This group is all about learning the comedy and rap battles!');
   
CREATE TABLE Following (
    following_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) references Users(username),
    following varchar(255) references Users(username)
);

INSERT INTO Following (username, following)  
   VALUES ('ramu24', 'flyingbeast');
INSERT INTO Following (username, following)
   VALUES ('sureshV', 'flyingbeast');
INSERT INTO Following (username, following)  
    VALUES ('someshRocz', 'flyingbeast');
INSERT INTO Following (username, following)  
     VALUES ('rakeshM', 'flyingbeast');
   
CREATE TABLE Clubs_Following (
    clubs_following_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) references Users(username),
    clubname varchar(255) references Clubs(clubname),
    status varchar(255)
);

INSERT INTO Clubs_Following (username, clubname, status)  
   VALUES ('someshRocz', 'The Black Comedy Club', 'yes');
INSERT INTO Clubs_Following (username, clubname, status)
   VALUES ('rakeshM', 'Telugu Comedy Club', 'yes');
INSERT INTO Clubs_Following (username, clubname, status)
    VALUES ('adityaB', 'Comedy Courts', 'yes');
INSERT INTO Clubs_Following (username, clubname, status)
     VALUES ('flyingbeast', 'Comedy Club', 'yes');
INSERT INTO Clubs_Following (username, clubname, status)
     VALUES ('someshRocz', 'Comedy Club', 'yes');
INSERT INTO Clubs_Following (username, clubname, status)
     VALUES ('ramu24', 'Comedy Club', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
     VALUES ('sureshV', 'Comedy Club', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
     VALUES ('rakeshM', 'Comedy Club', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
    VALUES ('sureshV', 'Comedy Courts', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
    VALUES ('someshRocz', 'Comedy Courts', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
    VALUES ('flyingbeast', 'Comedy Courts', 'no');
INSERT INTO Clubs_Following (username, clubname, status)
    VALUES ('rakeshM', 'Comedy Courts', 'no');
     
     
CREATE TABLE Events (
    event_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    event_name varchar(255),
    username varchar(255) references Users(username),
    clubname varchar(255) references Clubs(clubname),
    event_timestamp timestamp
);

INSERT INTO Events (event_name, username, clubname, event_timestamp)  
   VALUES ('Relax and Chill', 'flyingbeast', 'Comedy Club', '2021-09-19 10:30:00');
INSERT INTO Events (event_name, username, clubname, event_timestamp) 
      VALUES ('Rap Monologues RERUN ACT OUT RAP', 'flyingbeast', 'Comedy Club', '2021-09-19 10:30:00');

   
