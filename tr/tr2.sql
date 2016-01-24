connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
CREATE TRIGGER TR2 FOR VISITS
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable bufdatstart date;
declare variable bufdatend date;
begin

    for select tickets.validity,tickets.finish_date
        from tickets
        where tickets.id_client = new.id_client into :bufdatstart,:bufdatend
        do
        begin
            if((new.dateofvisit<bufdatstart) or (new.dateofvisit > bufdatend))
            then
            begin
            exception notacttick;
            end
        end
end

