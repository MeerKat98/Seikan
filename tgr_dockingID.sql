CREATE TRIGGER docking_id
BEFORE INSERT ON DOCKING_STATION
FOR EACH ROW
BEGIN
  SELECT dockingid_seq.nextval
  INTO :new.DockingID
  FROM dual;
END;