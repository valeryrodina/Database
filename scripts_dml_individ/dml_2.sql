connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create view top5types as select first 5 typeoftickets.nameofticket, typeoftickets.nameofticket as Name,
    COUNT(tickets.id_typeofticket) as Sell from typeoftickets, tickets
    where tickets.id_typeofticket = typeoftickets.id_typeofticket group by
    typeoftickets.nameofticket order by Sell desc;


