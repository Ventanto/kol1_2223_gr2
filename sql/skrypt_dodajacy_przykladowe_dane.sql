INSERT INTO Manufacturer VALUES ('SpaceX'),('NASA'), ('ESA'),('Roscosmos');
INSERT INTO Fuel VALUES ('Solid'),('Methane'),('LOX'),('Hydrazine'),('RP-1');
INSERT INTO Rocket VALUES ('Starship',1),('Saturn V',2),('Falcon 1',1),('Ariane 5',3),('Ariane 64',3),('Vega',3),('Soyuz 2',4);
INSERT INTO Fuel_Rocket VALUES (2,1,1170626),(3,1,1807900),(5,2,777000),(3,2,1200000),(5,3,12345),(3,3,43211),(2,4,12345),(3,4,31213),(4,4,12312),(1,5,10320),(2,5,73230),(3,5,12034),(2,6,1003231),(3,6,7032131),(2,7,112300),(3,7,732103),(1,7,131234);

INSERT INTO Spaceship (Name, SemiMajorAxis, Eccentricity, ArgumentOfPeriapsis, Inclination, LongitudeOfAscendingNode, MeanAnomaly, IsLaunched, Rocket_Id) VALUES
('GOES-16', 42164, 0.00015, 270, 0, 0, 83.5,1,4),
('Aqua', 7033.16, 0.00045, 98, 98.2, 1.2, 108.5,1,5),
('GRACE-FO 1 and 2', 489.5, 0.00106, 89.2, 89, 180, 136.5,1,5),
('ISS', 6678.14, 0.00016, 51.64, 51.6, 225.2, 62.45,1,4),
('Landsat 8', 7073.28, 0.00019, 178.7, 98.2, 3.14, 73.45,1,7),
('Terra', 7057.8, 0.00012, 178.3, 98.2, 98.4, 104.2,1,6),
('TDRS 1', 42165.7, 0.00056, 236.4, 6.4, 145.2, 221.6,1,5),
('TDRS 2', 42164.8, 0.00046, 245.6, 6.1, 324.2, 193.7,1,4),
('Hubble Space Telescope', 6872.5, 0.00016, 59, 28.5, 194.3, 200.5,1,3),
('LRO', 2032.1, 0.00154, 34.8, 89.5, 41.2, 171.6,1,2),
('Starlink1', 1032.1, 0.00559, 31.8, 85.5, 42.2, 111.6,0,1),
('Starlink2', 3032.1, 0.00458, 32.8, 86.5, 43.2, 161.6,0,1),
('Starlink3', 4032.1, 0.00357, 33.8, 87.5, 44.2, 181.6,0,1),
('Starlink4', 5032.1, 0.00256, 35.8, 88.5, 45.2, 179.6,0,1);


INSERT INTO ScienceInstrument VALUES ('Thermometer',23), ('Gravitation detector',17), ('X-RAY detector',30);

INSERT INTO Spaceship_ScienceInstrument (Spaceship_Id, ScienceInstrument_Id, DateOfDeactivation)
VALUES (1,1,NULL),(2,1,NULL),(3,1,NULL),(4,1,NULL),(6,3,NULL),(1,2,CURRENT_TIMESTAMP),(2,3,CURRENT_TIMESTAMP),(4,2,CURRENT_TIMESTAMP);
