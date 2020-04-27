CREATE TRIGGER spaceport_id
BEFORE INSERT ON SPACEPORT_LOCATION
FOR EACH ROW
BEGIN
  SELECT spaceportid_seq.nextval
  INTO :new.LocationID
  FROM dual;
END;