
CREATE TABLE Cities (
	cityID INTEGER,
	cityName TEXT,
	PRIMARY KEY(cityID)
);

CREATE TABLE Games (
	gamesID INTEGER,
	cityID INTEGER,
	year INTEGER, 
	PRIMARY KEY (gamesID), 
	FOREIGN KEY (cityID) REFERENCES Cities (cityID)
);

CREATE TABLE Sports (
	sportID INTEGER,
	sportName TEXT, 
	PRIMARY KEY (sportID)
);

CREATE TABLE Disciplines (
	disciplineID INTEGER,
	sportID INTEGER, 
	disciplineName TEXT,
	PRIMARY KEY (disciplineID),
	FOREIGN KEY (sportID) REFERENCES Sports (sportID)
);

CREATE TABLE Events (
	eventID INTEGER, 
	eventName TEXT,
	eventGender TEXT,
	disciplineID INTEGER,
	PRIMARY KEY (eventID),
	FOREIGN KEY (disciplineID) REFERENCES Disciplines (disciplineID)
);

CREATE TABLE Athletes (
	athleteID INTEGER,
	athleteName TEXT,
	athleteGender TEXT,
	PRIMARY KEY (athleteID)
);

CREATE TABLE Awards (
	awardID INTEGER,
	gamesID INTEGER,
	eventID INTEGER,
	medal TEXT,
	PRIMARY KEY (awardID),
	FOREIGN KEY (eventID) REFERENCES Events (eventID),
	FOREIGN KEY (gamesID) REFERENCES Games (gamesID)
);

CREATE TABLE Winners (
	awardID INTEGER,
	athleteID INTEGER,
	PRIMARY KEY (awardID, athleteID),
	FOREIGN KEY (awardID) REFERENCES Awards (awardID),
	FOREIGN KEY (athleteID) REFERENCES ATHLETES (athleteID)
);

.read Homework1/test1.sql
.separator ,
.mode column

.import Homework1/Data/Cities.csv Cities
.import Homework1/Data/Games.csv Games
.import Homework1/Data/Sports.csv Sports
.import Homework1/Data/Disciplines.csv Disciplines
.import Homework1/Data/Events.csv Events
.import Homework1/Data/Athletes.csv Athletes
.import Homework1/Data/Awards.csv Awards
.import Homework1/Data/Winners.csv Winners

