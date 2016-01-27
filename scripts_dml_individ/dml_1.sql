connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create view top10clients as
select first 10 clients.id_client as number_of_client, COUNT (visits.dateofvisit) as visitss from visits, clients
where visits.id_client = clients.id_client group by
    clients.id_client
order by visitss desc
;


