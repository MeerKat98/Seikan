CREATE TRIGGER container_id
BEFORE INSERT ON CARGO_CONTAINER
FOR EACH ROW
BEGIN
  SELECT containerid_seq.nextval
  INTO :new.ContainerID
  FROM dual;
END;

CREATE TRIGGER spaceport_id
BEFORE INSERT ON SPACEPORT_LOCATION
FOR EACH ROW
BEGIN
  SELECT spaceportid_seq.nextval
  INTO :new.LocationID
  FROM dual;
END;

CREATE TRIGGER ship_id
BEFORE INSERT ON SHIP
FOR EACH ROW
BEGIN
  SELECT shipid_seq.nextval
  INTO :new.ShipID
  FROM dual;
END;

CREATE TRIGGER manifest_id
BEFORE INSERT ON SHIP_MANIFEST
FOR EACH ROW
BEGIN
  SELECT manifestid_seq.nextval
  INTO :new.ManifestID
  FROM dual;
END;

CREATE TRIGGER docking_id
BEFORE INSERT ON DOCKING_STATION
FOR EACH ROW
BEGIN
  SELECT dockingid_seq.nextval
  INTO :new.DockingID
  FROM dual;
END;

