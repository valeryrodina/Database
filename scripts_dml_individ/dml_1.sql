connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create view top10clients as
select first 10 clients.clientname as name, COUNT (visits.dateofvisit) as visitss from visits, clients
where visits.id_client = clients.id_client group by
    clients.clientname
order by visitss desc
;


