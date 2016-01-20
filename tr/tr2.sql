connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
CREATE TRIGGER TR2 FOR VISITS
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable bufdatstart date;
begin

    for select tickets.validity
        from tickets
        where tickets.id_client = new.id_client into :bufdatstart
        do
        begin
            if(new.dateofvisit<bufdatstart)
            then
            begin
            exception notacttick;
            end
        end
end

