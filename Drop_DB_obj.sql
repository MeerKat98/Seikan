--Code for dropping objects
--Only drop if already created
--Drop tables
DROP TABLE MANIFEST_CONTAINER;
DROP TABLE DOCK_MANIFEST;
DROP TABLE SHIP_MANIFEST;
DROP TABLE SPACEPORT_LOCATION;
DROP TABLE CARGO_CONTAINER;
DROP TABLE DOCKING_STATION;
DROP TABLE SHIP;
--Drop Sequences
DROP SEQUENCE shipid_seq;
DROP SEQUENCE dockingid_seq;
DROP SEQUENCE containerid_seq;
DROP SEQUENCE spaceportid_seq;
DROP SEQUENCE manifestid_seq;
--Drop triggers
--PLEASE NOTE: No need to drop triggers if sequences already dropped
DROP TRIGGER ship_id;
DROP TRIGGER docking_id;
DROP TRIGGER container_id;
DROP TRIGGER spaceport_id;
DROP TRIGGER manifest_id;