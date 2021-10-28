CREATE TABLE Accident_Type (
	accident_type_ID int NOT NULL,
	accident_type_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Type PRIMARY KEY (
		accident_type_ID
	)
);

CREATE TABLE Accident_Light_Condition (
	acident_light_condition_ID int NOT NULL,
	acident_light_condition_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Light_Condition PRIMARY KEY (
		acident_light_condition_ID
	)
);

CREATE TABLE Road (
	road_ID int NOT NULL,
	road_name varchar NOT NULL,
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
	RLGA_name varchar NOT NULL,
	Region_ID int NOT NULL,
	CONSTRAINT pk_LGA PRIMARY KEY (
		LGA_ID
	)
);

CREATE TABLE Accident_Severity (
	accident_severity_ID int NOT NULL,
	accident_severity_description varchar NOT NULL,
	CONSTRAINT pk_Accident_Severity PRIMARY KEY (
		accident_severity_ID
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