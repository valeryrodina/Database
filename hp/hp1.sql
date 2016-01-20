connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create procedure HP1
returns (
    TYPETICK varchar(255),
    VIRYCHKA integer)
as
declare variable I integer;
declare variable CENAABON integer = 0;
declare variable CHELOVEK integer;
declare variable IDSKIDKI integer;
declare variable SKIDKA integer;
declare variable BUFVIR integer = 0;
declare variable CENA1 integer;
declare variable SERVID integer;
declare variable SERVCENA integer;
declare variable SERVCOUNT integer;
declare variable CENA2 integer;
begin
    for select typeoftickets.id_typeofticket, typeoftickets.nameofticket, typeoftickets.ticketprice
    from typeoftickets into :i , :typetick , :cenaabon
    do
        begin
            for select tickets.id_client from tickets
            where tickets.id_typeofticket = :i into :chelovek
            do
                begin 
                    select clients.id_discount
                        from clients
                        where clients.id_client = :chelovek
                        into :idskidki;
                    select discounts.valueofdiscount
                        from discounts
                        where discounts.id_discount =:idskidki
                        into :skidka;
                    skidka = 100 - skidka;
                    cenaabon = (cenaabon * skidka)/100;
                    bufvir  =  bufvir + cenaabon;
                    cena1 = bufvir;
                end
            for select servicestotypes.id_service
            from servicestotypes where servicestotypes.id_typeofticket = :i into :servid
            do
                begin
                    select addservices.priceservice
                        from addservices
                        where addservices.id_service = :servid
                        into :servcena;
                    select count(accountservices.id_service)
                        from accountservices
                        where  accountservices.id_service = :servid
                        into :servcount;
                    cena2 = servcena * servcount;
                end
            virychka = cena1 + cena2;
        suspend;
    end

