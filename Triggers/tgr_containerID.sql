CREATE TRIGGER container_id
BEFORE INSERT ON CARGO_CONTAINER
FOR EACH ROW
BEGIN
  SELECT containerid_seq.nextval
  INTO :new.ContainerID
  FROM dual;
END;