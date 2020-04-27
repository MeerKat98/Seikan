--Code for creating tables
CREATE TABLE SHIP(
    ShipID NUMBER PRIMARY KEY,
    ShipName VARCHAR(50) NOT NULL,
    ShipCompany VARCHAR(50) NOT NULL
);

CREATE TABLE DOCKING_STATION(
     DockingID NUMBER PRIMARY KEY,
     DockNo VARCHAR(4)NOT NULL
);

CREATE TABLE CARGO_CONTAINER(
     ContainerID NUMBER PRIMARY KEY,
     ContainerCode VARCHAR(15) NOT NULL
);

CREATE TABLE SPACEPORT_LOCATION(
     LocationID NUMBER PRIMARY KEY,
     LocationName VARCHAR(100) NOT NULL
);

CREATE TABLE SHIP_MANIFEST(
    ManifestID NUMBER PRIMARY KEY,
    ShipID NUMBER NOT NULL,
    LocationID_Origin NUMBER NOT NULL,
    LocationID_Destination NUMBER NOT NULL,
    CONSTRAINT FK_SM_S FOREIGN KEY(ShipID) REFERENCES SHIP(ShipID),
    CONSTRAINT FK_SM_SL_ORIGIN FOREIGN KEY(LocationID_Origin) REFERENCES SPACEPORT_LOCATION(LocationID),
    CONSTRAINT FK_SM_SL_DESTINATION FOREIGN KEY(LocationID_Destination) REFERENCES SPACEPORT_LOCATION(LocationID)
);

CREATE TABLE DOCK_MANIFEST(
    ManifestID NUMBER NOT NULL,
    DockingID NUMBER NOT NULL,
    ArrivalTime DATE NOT NULL,
    DepartureTime DATE NOT NULL,
    CONSTRAINT FK_DM_SM FOREIGN KEY(ManifestID) REFERENCES SHIP_MANIFEST(ManifestID),
    CONSTRAINT FK_DM_DS FOREIGN KEY(DockingID) REFERENCES DOCKING_STATION(DockingID),
    PRIMARY KEY(ManifestID,DockingID)
);

CREATE TABLE MANIFEST_CONTAINER(
    ManifestID NUMBER NOT NULL,
    ContainerID NUMBER NOT NULL,
    CargoType VARCHAR(100) NOT NULL,
    Weight NUMBER(16,3) NOT NULL,
    CONSTRAINT FK_CM_SM FOREIGN KEY(ManifestID) REFERENCES SHIP_MANIFEST(ManifestID),
    CONSTRAINT FK_CM_CONTAINER FOREIGN KEY(ContainerID) REFERENCES CARGO_CONTAINER(ContainerID),
    PRIMARY KEY(ManifestID,ContainerID)
);

--Sequences for auto increment
CREATE SEQUENCE shipid_seq;
CREATE SEQUENCE dockingid_seq;
CREATE SEQUENCE containerid_seq;
CREATE SEQUENCE spaceportid_seq;
CREATE SEQUENCE manifestid_seq;