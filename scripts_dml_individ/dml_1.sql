connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create view top10clients as
select first 10 clients.clientname as name, clients.visitnumbers as visitss from clients
order by clients.visitnumbers desc;


