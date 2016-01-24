connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';

create procedure sales_ratio(min_date date, max_date date)
returns (new_sales int, ratio_of float)
as
declare variable all_sales int default 0;
declare variable cur_client int default 0;
declare variable cur_count int;
declare variable cur_old int default 0;
declare variable all_sales_period int;

begin
    for select clients.id_client from clients,tickets where   --те,у кого уже есть абон
    tickets.validity < :min_date and                                   -- и те,кто покупает повторно в зад пер
    tickets.id_client = clients.id_client group by clients.id_client
    into :cur_client
     do begin
     all_sales = all_sales + 1;

    select COUNT(tickets.id_ticket) from  tickets where
    tickets.validity between :min_date and :max_date and
    tickets.id_client = :cur_client
    into cur_count;
    if (cur_count!=0) then begin
    cur_old = cur_old + 1;
     end
     end

    select COUNT(clients.id_client) from clients,tickets where  --новые продажи (в зад период)
    tickets.validity between :min_date and :max_date and
    tickets.id_client = clients.id_client
    into :all_sales_period;

    new_sales = all_sales_period - cur_old;

    ratio_of = (new_sales/all_sales)*100;
    end


