

CREATE TABLE Accident_Type (
	accident_type_ID int NOT NULL,
	accident_type_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Type PRIMARY KEY (
		accident_type_ID
	)
);

CREATE TABLE Accident_Light_Condition (
	accident_light_condition_ID int NOT NULL,
	accident_light_condition_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Light_Condition PRIMARY KEY (
		accident_light_condition_ID
	)
);

CREATE TABLE Road (
	road_ID int NOT NULL,
	road_geometry varchar NOT NULL,
	CONSTRAINT pk_Road PRIMARY KEY (
		road_ID
	)
);

CREATE TABLE Road_Speed (
	road_ID int NOT NULL,
	road_speed_zone varchar NOT NULL,
	CONSTRAINT pk_Road_Speed PRIMARY KEY (
		road_ID, road_speed_zone
	)
);

CREATE TABLE State_Div (
	State_Div_ID int NOT NULL,
	State_Div_name varchar NOT NULL,
	CONSTRAINT pk_State_Div PRIMARY KEY (
		State_Div_ID
	)
);

CREATE TABLE Degree_Urban (
	Degree_Urban_ID int NOT NULL,
	Degree_Urban_description varchar NOT NULL,
	State_Div_ID int NOT NULL,
	CONSTRAINT pk_Degree_Urban PRIMARY KEY (
		Degree_Urban_ID
	)
);

CREATE TABLE Region (
	Region_ID int NOT NULL,
	Region_name varchar NOT NULL,
	Degree_Urban_ID int NOT NULL,
	CONSTRAINT pk_Region PRIMARY KEY (
		Region_ID
	)
);

CREATE TABLE LGA (
	LGA_ID int NOT NULL,
	LGA_name varchar NOT NULL,
	Region_ID int NOT NULL,
	CONSTRAINT pk_LGA PRIMARY KEY (
		LGA_ID
	)
);

CREATE TABLE Accident_Severity (
	accident_severity_ID int NOT NULL,
	accident_severity_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Severity_description PRIMARY KEY (
		accident_severity_ID
	)
);

CREATE TABLE Accident (
	accident_no varchar NOT NULL,
	accident_datetime date NOT NULL,
	accident_type_ID int NOT NULL,
	accident_alchol_time BOOLEAN NOT NULL,
	accident_day_of_week varchar NOT NULL,
	accident_DCA_code varchar NOT NULL,
	accident_light_condition_ID int NOT NULL,
	accident_hit_run_flag BOOLEAN NOT NULL,
	accident_run_offroad BOOLEAN NOT NULL,
	accident_severity_ID int NOT NULL,
	accident_latitude decimal NOT NULL,
	accident_longtitude decimal NOT NULL,
	accident_total_people_involved_count int NOT NULL,
	accident_total_vehicle_involved_count int NOT NULL,
	accident_alcohol_related BOOLEAN NOT NULL,
	accident_without_license BOOLEAN NOT NULL,
	Road_ID int NOT NULL,
	LGA_ID int NOT NULL,
	
	CONSTRAINT pk_Accident PRIMARY KEY (
		accident_no
	)
);

CREATE TABLE Accident_person_involved_count (
	accident_no varchar NOT NULL,
	accident_fatality_count int,
	accident_serious_injury_count int,
	accident_other_injury_count int,
	accident_non_injury_count int,
	accident_male_count int,
	accident_female_count int,
	accident_bicyclist_count int,
	accident_passenger_count int,
	accident_driver_count int,
	accident_pedestrian_count int,
	accident_pillion_count int,
	accident_motorist_count int,
	accident_ped_cyclist_5to12_count int,
	accident_ped_cyclist_13to18_count int,
	accident_old_pedestrian_count int,
	accident_old_driver_count int,
	accident_young_driver_count int,
	CONSTRAINT pk_Accident_person_count PRIMARY KEY (
		accident_no
	)
);

CREATE TABLE Accident_vehicle_involved_count (
	accident_no varchar NOT NULL,
	accident_heavy_vehicle_count int,
	accident_passenger_vehicle_count int,
	accident_motorcycle_count int,
	accident_public_vehicle_count int,
	CONSTRAINT pk_Accident_vehicle_count PRIMARY KEY (
		accident_no
	)
);

ALTER TABLE Road_Speed ADD CONSTRAINT fk_road_ID FOREIGN KEY(road_ID)
REFERENCES Road (road_ID);

ALTER TABLE Degree_Urban ADD CONSTRAINT fk_State_Div_ID FOREIGN KEY(State_Div_ID)
REFERENCES State_Div (State_Div_ID);

ALTER TABLE Region ADD CONSTRAINT fk_Degree_Urban_ID FOREIGN KEY(Degree_Urban_ID)
REFERENCES Degree_Urban (Degree_Urban_ID);

ALTER TABLE LGA ADD CONSTRAINT fk_Region_ID FOREIGN KEY(Region_ID)
REFERENCES Region (Region_ID);

ALTER TABLE Accident ADD CONSTRAINT fk_accident_type_ID FOREIGN KEY(accident_type_ID)
REFERENCES Accident_Type (accident_type_ID);

ALTER TABLE Accident ADD CONSTRAINT fk_accident_light_condition_ID FOREIGN KEY(accident_light_condition_ID)
REFERENCES Accident_Light_Condition (accident_light_condition_ID);

ALTER TABLE Accident ADD CONSTRAINT fk_accident_severity_ID_asfk FOREIGN KEY(accident_severity_ID)
REFERENCES Accident_Severity (accident_severity_ID);

ALTER TABLE Accident ADD CONSTRAINT fk_Road_ID FOREIGN KEY(Road_ID)
REFERENCES Road (Road_ID);

ALTER TABLE Accident ADD CONSTRAINT fk_LGA_ID FOREIGN KEY(LGA_ID)
REFERENCES LGA (LGA_ID);

ALTER TABLE Accident_person_involved_count ADD CONSTRAINT fk_accident_no_person_count FOREIGN KEY(accident_no)
REFERENCES Accident (accident_no);

ALTER TABLE Accident_vehicle_involved_count ADD CONSTRAINT fk_accident_no_vehicle_count FOREIGN KEY(accident_no)
REFERENCES Accident (accident_no);

