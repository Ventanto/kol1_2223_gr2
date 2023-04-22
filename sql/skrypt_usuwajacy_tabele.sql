-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-22 13:51:58.78

-- foreign keys
ALTER TABLE Fuel_Rocket DROP CONSTRAINT Fuel_Rocket_Fuel;

ALTER TABLE Fuel_Rocket DROP CONSTRAINT Fuel_Rocket_Rocket;

ALTER TABLE Rocket DROP CONSTRAINT Rocket_Manufacturer;

ALTER TABLE Spaceship DROP CONSTRAINT Spaceship_Rocket;

ALTER TABLE Spaceship_ScienceInstrument DROP CONSTRAINT Spaceship_ScienceInstrument_ScienceInstrument;

ALTER TABLE Spaceship_ScienceInstrument DROP CONSTRAINT Spaceship_ScienceInstrument_Spaceship;

-- tables
DROP TABLE Fuel;

DROP TABLE Fuel_Rocket;

DROP TABLE Manufacturer;

DROP TABLE Rocket;

DROP TABLE ScienceInstrument;

DROP TABLE Spaceship;

DROP TABLE Spaceship_ScienceInstrument;

-- End of file.

