ALTER SESSION SET NLS_DATE_FORMAT='DD-MM-YYYY HH24:MI';


INSERT INTO engineer_mechanic VALUES(1,'James','Smith','AA012345','Engine Repair','02-04-2019','1023 Bluebonnet Ave, Big Spring, Texas',
5094652784);
INSERT INTO engineer_mechanic VALUES(2,'Robert','Johnson','BB123456','Engine Performance','27-07-2019','242 W Hudson St, Long Beach, New York',
1268456398);
INSERT INTO engineer_mechanic VALUES(3,'John','Williams','AB000112','Automatic Transmission/Transaxle','03-04-2019','4815, Highland, Michigan',
2467096387);
INSERT INTO engineer_mechanic VALUES(4,'Michael','Brown','CB001122','Brakes','09-12-2019','511 W Hamlet Ave, Hamlet, North Carolina',
5467309167);
INSERT INTO engineer_mechanic VALUES(5,'Mary','Jones','NN112233','Electrical/Electronic Systems','20-04-2019','161 Cunningham Ave, Cadiz, Kentucky',
1250398654);
INSERT INTO engineer_mechanic VALUES(6,'Jennifer','Garcia','ZX332541','Heating and Air-conditioning','05-09-2019','605 Lamkin Rd, Harlem, Georgia',
1693590645);
INSERT INTO engineer_mechanic VALUES(7,'Elizabeth','Miller','MM665544','Manual Drive Train and Axles','17-05-2019','1237 Circle Cv, Lehi, Utah',
1638409253);
INSERT INTO engineer_mechanic VALUES(8,'William','Davis','NN987456','Suspension and Steering','12-05-2019','8830 SW Avery St, Tualatin, Oregon',
1293087654);
INSERT INTO engineer_mechanic VALUES(9,'Jessica','Rodriguez','LL396852','Engine Repair','03-01-2020','39 Main St, Scottsville, New York',
1093567238);
INSERT INTO engineer_mechanic VALUES(10,'Susan','Taylor','HG741258','Suspension and Steering','14-06-2019','9540 Douglas Ln, Lexington, Oklahoma',
1640923587);


INSERT INTO repair_task_type VALUES(1,'Clutch Replacement',150,'HOUR');
INSERT INTO repair_task_type VALUES(2,'Windshield Replacement',75,'UNIT');
INSERT INTO repair_task_type VALUES(3,'Airbag Service',150,'HOUR');
INSERT INTO repair_task_type VALUES(4,'Wheel Alignment',100,'HOUR');
INSERT INTO repair_task_type VALUES(5,'Oil Change',60,'UNIT');
INSERT INTO repair_task_type VALUES(6,'Brake Repair',200,'HOUR');
INSERT INTO repair_task_type VALUES(7,'Battery Replacement',120,'UNIT');
INSERT INTO repair_task_type VALUES(8,'Windshield Wipers and Fluid',80,'UNIT');


INSERT INTO performs VALUES(3, 1);
INSERT INTO performs VALUES(1, 2);
INSERT INTO performs VALUES(4, 3);
INSERT INTO performs VALUES(6, 4);
INSERT INTO performs VALUES(7, 5);
INSERT INTO performs VALUES(2, 6);
INSERT INTO performs VALUES(1, 7);
INSERT INTO performs VALUES(8, 8);
INSERT INTO performs VALUES(5, 9);
INSERT INTO performs VALUES(3, 10);


INSERT INTO repair_station VALUES (1,'Chop Shop Xpress',9146942222,'307 Boston Post Road
Port Chester, NY 10573, United States', '01-04-2019');


INSERT INTO repair_platform VALUES (1,01234567,NULL,2,1);
INSERT INTO repair_platform VALUES (2,12345678,NULL,4,1);
INSERT INTO repair_platform VALUES (3,23456789,NULL,4,1);
INSERT INTO repair_platform VALUES (4,34567890,NULL,8,1);
INSERT INTO repair_platform VALUES (5,45678901,NULL,10,1);


INSERT INTO repair_parts VALUES(1,'Transmission','Spare Part',2000,4,1);
INSERT INTO repair_parts VALUES(2,'Battery','Consumable',150,23,1);
INSERT INTO repair_parts VALUES(3,'Brakes','Spare Part',200,16,1);
INSERT INTO repair_parts VALUES(4,'Alternator','Spare Part',750,11,1);
INSERT INTO repair_parts VALUES(5,'Radiator','Spare Part',1500,3,1);
INSERT INTO repair_parts VALUES(6,'Oil Filter','Consumable',10,45,1);
INSERT INTO repair_parts VALUES(7,'Air Filter','Consumable',40,39,1);
INSERT INTO repair_parts VALUES(8,'Piston','Spare Part',3200,18,1);
INSERT INTO repair_parts VALUES(9,'Axle','Spare Part',850,2,1);
INSERT INTO repair_parts VALUES(10,'Engine Fan','Spare Part',300,4,1);


INSERT INTO works_on VALUES(1, 2);
INSERT INTO works_on VALUES(1, 4);
INSERT INTO works_on VALUES(2, 1);
INSERT INTO works_on VALUES(2, 6);
INSERT INTO works_on VALUES(3, 3);
INSERT INTO works_on VALUES(3, 5);
INSERT INTO works_on VALUES(4, 10);
INSERT INTO works_on VALUES(4, 9);
INSERT INTO works_on VALUES(5, 8);
INSERT INTO works_on VALUES(5, 7);


INSERT INTO vehicle VALUES('Coupe','POP8767','KIA','Pro_Ceed',2008,84869,1592,'05-02-2021',338215,126);
INSERT INTO vehicle VALUES('Coupe','8CEU156','Ford','Mustang',1969,166410,5200,'03-03-2020',205252,720);
INSERT INTO vehicle VALUES('Convertible','627H38','Porsche','911',2008,62172,3000,'15-05-2021',347542,379);
INSERT INTO vehicle VALUES('Sedan','5GVP269','Hyundai','Elantra',2012,90406,2000,'03-05-2020',343070,147);
INSERT INTO vehicle VALUES('Sedan','EPS186','Nissan','Sentra',2006,176478,2000,'04-07-2021',280708,149);
INSERT INTO vehicle VALUES('Coupe','8DXZ456','Dodge','Challenger',1973,150971,3600,'22-01-2020',258641,304);
INSERT INTO vehicle VALUES('Sports Car','6AKE902','McLaren','720S',2016,137399,4000,'27-07-2021',236401,710);
INSERT INTO vehicle VALUES('Coupe','33267C','Chevrolet','Camaro',1971,176194,2000,'31-01-2020',224113,275);
INSERT INTO vehicle VALUES('Sports Car','4MAV409','Nissan','GT-R',2002,126150,3800,'16-02-2021',352574,565);
INSERT INTO vehicle VALUES('Convertible','CLS4813','Jaguar','F-Type',2007,49830,5000,'19-11-2021',294512,444);


INSERT INTO executes VALUES('NO', '06-04-2019 09:00',1,'Wheels were not aligned',4,'POP8767');
INSERT INTO executes VALUES('YES','22-01-2020 11:45',1,'Battery replacement due to deterioration',7,'8DXZ456');
INSERT INTO executes VALUES('YES','31-01-2020 13:20',2,'Routine airbag maintenance',3,'33267C');
INSERT INTO executes VALUES('YES','03-03-2020 10:00',1,'Oil change after 5000 miles recommended limit',5,'8CEU156');
INSERT INTO executes VALUES('YES','15-05-2021 11:35',3,'Clutch replacement because clutch linkage was bent',1,'627H38');
INSERT INTO executes VALUES('YES','27-07-2021 11:10',1,'Windshield wiper fluid refill',8,'6AKE902');


INSERT INTO hosts VALUES('06-04-2019 09:00', 2, 'POP8767');
INSERT INTO hosts VALUES('22-01-2020 11:45', 4, '8DXZ456');
INSERT INTO hosts VALUES('31-01-2020 13:20', 5, '33267C');
INSERT INTO hosts VALUES('03-03-2020 10:00', 2, '8CEU156');
INSERT INTO hosts VALUES('15-05-2021 11:35', 3, '627H38');
INSERT INTO hosts VALUES('27-07-2021 11:10', 1, '6AKE902');