CREATE DATABASE IF NOT EXISTS momentos;

USE momentos;

Drop table if EXISTS VIDEOS;
Create table VIDEOS (
    liens varchar(80) PRIMARY KEY
);

Drop table if EXISTS Users;
Create table Users (
    username varchar(20) PRIMARY KEY,
    mdp      varchar(20) NOT NULL
);

Drop table if EXISTS Fav;
Create table Fav (
    username varchar(20) references Users(username),
    liens    varchar(80) references VIDEOS(liens),
    PRIMARY KEY (username, liens)
);


Insert into VIDEOS VALUES ('https://www.youtube.com/embed/duwL7PbJXbk');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/XabEY5X-Bg4');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/2RIScMW53F0');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/UNNZ8L2J9uI');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/ikmp_akyXW4');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/WAeqwwWxq_k');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/mnOiSQdf8J0');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/kiDRr1Ud22I');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/1khS_mu9rmQ');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/56Xd69XRAsk');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/epA8V_YTdQs');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/nz2aKBW4H1E');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/1fueZCTYkpA');
Insert into VIDEOS VALUES ('https://www.youtube.com/embed/dP95z1QgnXk');

Insert into Users VALUES ('admin', 'mdp');
Insert into Users VALUES ('lorenzo', 'mdp');
Insert into Users VALUES ('killian', 'mdp');
Insert into Users VALUES ('damien', 'mdp');

Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/2RIScMW53F0');
Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/1khS_mu9rmQ');
Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/dP95z1QgnXk');
Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/duwL7PbJXbk');
Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/nz2aKBW4H1E');
Insert into Fav VALUES ('admin'  ,'https://www.youtube.com/embed/XabEY5X-Bg4');
Insert into Fav VALUES ('lorenzo','https://www.youtube.com/embed/2RIScMW53F0');
Insert into Fav VALUES ('lorenzo','https://www.youtube.com/embed/1khS_mu9rmQ');
Insert into Fav VALUES ('killian','https://www.youtube.com/embed/duwL7PbJXbk');
Insert into Fav VALUES ('killian','https://www.youtube.com/embed/1fueZCTYkpA');
Insert into Fav VALUES ('killian','https://www.youtube.com/embed/nz2aKBW4H1E');
Insert into Fav VALUES ('damien' ,'https://www.youtube.com/embed/1khS_mu9rmQ');

GRANT ALL PRIVILEGES ON momentos.* to review_site@localhost IDENTIFIED BY 'password';