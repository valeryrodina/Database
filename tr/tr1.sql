connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
CREATE TRIGGER TR1 FOR TICKETS
ACTIVE BEFORE INSERT POSITION 0
AS
declare variable bufdatstart date;
declare variable bufdatend date;
declare variable i date;
begin
    i =  new.validity;
    for select tickets.validity,tickets.finish_date
        from tickets
        where tickets.id_client = new.id_client into :bufdatstart,:bufdatend
        do
            begin
            if(bufdatstart<= i and i<= bufdatend)
            then
                begin
                exception deisttick;
                end
            end

