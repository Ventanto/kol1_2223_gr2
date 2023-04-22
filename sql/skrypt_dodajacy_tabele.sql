-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-22 13:51:58.78

-- tables
-- Table: Fuel
CREATE TABLE Fuel (
    Id int  NOT NULL IDENTITY,
    Name varchar(100)  NOT NULL,
    CONSTRAINT Fuel_pk PRIMARY KEY  (Id)
);

-- Table: Fuel_Rocket
CREATE TABLE Fuel_Rocket (
    Fuel_Id int  NOT NULL,
    Rocket_Id int  NOT NULL,
    Amount int  NOT NULL,
    CONSTRAINT Fuel_Rocket_pk PRIMARY KEY  (Fuel_Id,Rocket_Id)
);

-- Table: Manufacturer
CREATE TABLE Manufacturer (
    Id int  NOT NULL IDENTITY,
    Name varchar(100)  NOT NULL,
    CONSTRAINT Manufacturer_pk PRIMARY KEY  (Id)
);

-- Table: Rocket
CREATE TABLE Rocket (
    Id int  NOT NULL IDENTITY,
    Name varchar(100)  NOT NULL,
    Manufacturer_Id int  NOT NULL,
    CONSTRAINT Rocket_pk PRIMARY KEY  (Id)
);

-- Table: ScienceInstrument
CREATE TABLE ScienceInstrument (
    Id int  NOT NULL IDENTITY,
    Name varchar(100)  NOT NULL,
    EnergyConsumption int  NOT NULL,
    CONSTRAINT ScienceInstrument_pk PRIMARY KEY  (Id)
);

-- Table: Spaceship
CREATE TABLE Spaceship (
    Id int  NOT NULL IDENTITY,
    Name varchar(100)  NOT NULL,
    SemiMajorAxis decimal(18,10)  NOT NULL,
    Eccentricity decimal(18,17)  NOT NULL,
    ArgumentOfPeriapsis decimal(18,15)  NOT NULL,
    Inclination decimal(18,15)  NOT NULL,
    LongitudeOfAscendingNode decimal(18,15)  NOT NULL,
    MeanAnomaly decimal(18,15)  NOT NULL,
    Rocket_Id int  NOT NULL,
    IsLaunched bit  NOT NULL,
    CONSTRAINT Spaceship_pk PRIMARY KEY  (Id)
);

-- Table: Spaceship_ScienceInstrument
CREATE TABLE Spaceship_ScienceInstrument (
    Spaceship_Id int  NOT NULL,
    ScienceInstrument_Id int  NOT NULL,
    DateOfDeactivation datetime  NULL,
    CONSTRAINT Spaceship_ScienceInstrument_pk PRIMARY KEY  (Spaceship_Id,ScienceInstrument_Id)
);

-- foreign keys
-- Reference: Fuel_Rocket_Fuel (table: Fuel_Rocket)
ALTER TABLE Fuel_Rocket ADD CONSTRAINT Fuel_Rocket_Fuel
    FOREIGN KEY (Fuel_Id)
    REFERENCES Fuel (Id);

-- Reference: Fuel_Rocket_Rocket (table: Fuel_Rocket)
ALTER TABLE Fuel_Rocket ADD CONSTRAINT Fuel_Rocket_Rocket
    FOREIGN KEY (Rocket_Id)
    REFERENCES Rocket (Id);

-- Reference: Rocket_Manufacturer (table: Rocket)
ALTER TABLE Rocket ADD CONSTRAINT Rocket_Manufacturer
    FOREIGN KEY (Manufacturer_Id)
    REFERENCES Manufacturer (Id);

-- Reference: Spaceship_Rocket (table: Spaceship)
ALTER TABLE Spaceship ADD CONSTRAINT Spaceship_Rocket
    FOREIGN KEY (Rocket_Id)
    REFERENCES Rocket (Id);

-- Reference: Spaceship_ScienceInstrument_ScienceInstrument (table: Spaceship_ScienceInstrument)
ALTER TABLE Spaceship_ScienceInstrument ADD CONSTRAINT Spaceship_ScienceInstrument_ScienceInstrument
    FOREIGN KEY (ScienceInstrument_Id)
    REFERENCES ScienceInstrument (Id);

-- Reference: Spaceship_ScienceInstrument_Spaceship (table: Spaceship_ScienceInstrument)
ALTER TABLE Spaceship_ScienceInstrument ADD CONSTRAINT Spaceship_ScienceInstrument_Spaceship
    FOREIGN KEY (Spaceship_Id)
    REFERENCES Spaceship (Id);

-- End of file.

