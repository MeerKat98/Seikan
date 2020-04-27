CREATE TRIGGER manifest_id
BEFORE INSERT ON SHIP_MANIFEST
FOR EACH ROW
BEGIN
  SELECT manifestid_seq.nextval
  INTO :new.ManifestID
  FROM dual;
END;