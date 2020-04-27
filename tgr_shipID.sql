CREATE TRIGGER ship_id
BEFORE INSERT ON SHIP
FOR EACH ROW
BEGIN
  SELECT shipid_seq.nextval
  INTO :new.ShipID
  FROM dual;
END;