START TRANSACTION;
DROP TABLE IF EXISTS vehicle CASCADE;
DROP TABLE IF EXISTS maintenance_record CASCADE;

CREATE TABLE vehicle (
vehicle_id serial,
vehicle_name varchar (100) NOT NULL,
year int NOT NULL,
make varchar (50) NOT NULL,
model varchar (50) NOT NULL,
mileage int NOT NULL,

CONSTRAINT PK_vehicle PRIMARY KEY (vehicle_id)
);

CREATE TABLE maintenance_record (
maintenance_id serial,
vehicle_id int NOT NULL,
service_date date NOT NULL,
description varchar (1000) NOT NULL,
parts_cost numeric(6,2) NOT NULL,
labor_cost numeric (6,2),

CONSTRAINT PK_maintenance_record PRIMARY KEY (maintenance_id)

);

COMMIT;

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2007 lexus es350', 2007, 'lexus', 'es350', 210000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2009 toyota camry', 2009, 'toyota', 'camry', 200000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2013 lexus gs350', 2013, 'lexus', 'gs350', 190000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2016 toyota rav4', 2016, 'toyota', 'rav4', 100000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2020 honda odyssey', 2020, 'honda', 'odyssey', 35000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2013 honda accord', 2013, 'honda', 'accord', 90000);

INSERT INTO vehicle (vehicle_name, year, make, model, mileage)
VALUES ('2016 lexus rx350', 2016, 'lexus', 'rx350', 20000);



INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2007 lexus es350'), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2009 toyota camry' ), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2013 lexus gs350'), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2016 toyota rav4'), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2020 honda odyssey'), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2013 honda accord'), '01/01/2023', 'x', 1, 1);

INSERT INTO maintenance_record (vehicle_id, service_date, description, parts_cost, labor_cost)
VALUES ((SELECT vehicle_id FROM vehicle WHERE vehicle_name = '2016 lexus rx350'), '01/01/2023', 'x', 1, 1);