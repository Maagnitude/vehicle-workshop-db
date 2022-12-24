CREATE TABLE repair_station(
    repair_station_id       NUMBER(8),
    station_name            VARCHAR2(30) NOT NULL,
    phone_number            NUMBER(20) UNIQUE NOT NULL,
    address                 VARCHAR2(80) NOT NULL,
    opening_date            DATE,
    CONSTRAINT pk_station PRIMARY KEY (repair_station_id)
);


CREATE TABLE engineer_mechanic(
    mechanic_id             NUMBER(8),
    fname                   VARCHAR2(20) NOT NULL,
    surname                 VARCHAR2(30) NOT NULL,
    id_card                 VARCHAR2(8) UNIQUE NOT NULL,
    speciality              VARCHAR2(60) NOT NULL,
    hire_date               DATE CHECK(hire_date > TO_DATE ('01-04-2019', 'DD-MM-YYYY'))NOT NULL,
    address                 VARCHAR2(80) NOT NULL,
    phone_number            NUMBER(20) UNIQUE NOT NULL,
    CONSTRAINT pk_engineer_mechanic PRIMARY KEY (mechanic_id)
);


CREATE TABLE repair_platform(
    platform_id             NUMBER(8),
    validation_num          NUMBER(8) UNIQUE NOT NULL,
    photo                   BLOB,
    chief_engineer_id       NUMBER(8) NOT NULL,
    station_id              NUMBER(8) NOT NULL,
    CONSTRAINT pk_platform PRIMARY KEY (platform_id),
    CONSTRAINT fk_platform_mechanic FOREIGN KEY (chief_engineer_id) REFERENCES engineer_mechanic (mechanic_id),
    CONSTRAINT fk_platform_station FOREIGN KEY (station_id) REFERENCES repair_station (repair_station_id)
);


CREATE TABLE repair_parts(
    part_id                 NUMBER(20),
    title                   VARCHAR2(20) NOT NULL,
    is_spare_part           CHAR(10) CHECK(is_spare_part IN('Spare Part', 'Consumable')) NOT NULL,
    unit_cost               NUMBER(5) NOT NULL,
    stock_num               NUMBER(10) NOT NULL,
    station_id              NUMBER(8) NOT NULL,
    CONSTRAINT pk_parts PRIMARY KEY (part_id),
    CONSTRAINT fk_parts_station FOREIGN KEY (station_id) REFERENCES repair_station (repair_station_id)
);


CREATE TABLE repair_task_type(
    task_id                 NUMBER(8),
    title                   VARCHAR2(40) NOT NULL,
    unit_cost               NUMBER(5) NOT NULL,
    unit_metric             CHAR(4) CHECK (unit_metric IN('UNIT','HOUR')),
    CONSTRAINT pk_task_type PRIMARY KEY (task_id)
);


CREATE TABLE vehicle(
    vehicle_type            VARCHAR2(40) NOT NULL,
    license_plate           VARCHAR2(10),
    brand                   VARCHAR2(20) NOT NULL,
    vehicle_model           VARCHAR2(20) NOT NULL,
    release_date            NUMBER(4) NOT NULL,
    km                      NUMBER(10) NOT NULL,
    engine_size             NUMBER(4) NOT NULL,
    last_check_date         DATE CHECK(last_check_date > TO_DATE ('01-04-2019', 'DD-MM-YYYY')),
    last_check_km           NUMBER(10),
    horse_power             NUMBER(4) NOT NULL,
    CONSTRAINT pk_vehicle PRIMARY KEY (license_plate)
);

--M:N TABLES
CREATE TABLE hosts(
    date_time               DATE CHECK(date_time > TO_DATE ('01-04-2019', 'DD-MM-YYYY')),
    repair_platform_id      NUMBER(8),
    vehicle_id              VARCHAR2(10),
    CONSTRAINT pk_hosts PRIMARY KEY (repair_platform_id, vehicle_id, date_time),
    CONSTRAINT fk_hosts_vehicle FOREIGN KEY (vehicle_id) REFERENCES vehicle (license_plate),
    CONSTRAINT fk_hosts_platfrom FOREIGN KEY (repair_platform_id) REFERENCES repair_platform (platform_id)
);


CREATE TABLE executes(
    use_spareparts          CHAR(3) CHECK (use_spareparts IN('YES','NO')),
    date_time               DATE CHECK(date_time > TO_DATE ('01-04-2019', 'DD-MM-YYYY')),
    task_units              NUMBER(2) NOT NULL,
    tech_description        VARCHAR2(100),
    task_type               NUMBER(8),
    vehicle_plate           VARCHAR2(10),
    CONSTRAINT pk_executes PRIMARY KEY (task_type, vehicle_plate, date_time),
    CONSTRAINT fk_executes_tasktype FOREIGN KEY (task_type) REFERENCES repair_task_type (task_id),
    CONSTRAINT fk_executes_vehicle FOREIGN KEY (vehicle_plate) REFERENCES vehicle (license_plate)
);


CREATE TABLE performs(
    task_type                NUMBER(8),
    mechanic                 NUMBER(8),
    CONSTRAINT pk_performs PRIMARY KEY (task_type, mechanic),
    CONSTRAINT fk_performs_tasktype FOREIGN KEY (task_type) REFERENCES repair_task_type (task_id),
    CONSTRAINT fk_performs_engineer FOREIGN KEY (mechanic) REFERENCES engineer_mechanic (mechanic_id)   
);


CREATE TABLE works_on(
    repair_platform         NUMBER(8),
    mechanic                NUMBER(8),
    CONSTRAINT pk_works_on PRIMARY KEY(repair_platform, mechanic),
    CONSTRAINT fk_works_on_platform FOREIGN KEY(repair_platform) REFERENCES REPAIR_PLATFORM(platform_id),
    CONSTRAINT fk_works_on_mechanic FOREIGN KEY(mechanic) REFERENCES ENGINEER_MECHANIC(mechanic_id)
);
