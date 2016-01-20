connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create procedure SALES_RATIO (
    MIN_DATE date,
    MAX_DATE date)
returns (
    NEW_SALES integer,
    RATIO_OF float)
as
declare variable ALL_SALES integer = 0;
declare variable CUR_CLIENT integer = 0;
declare variable CUR_COUNT integer;
declare variable CUR_OLD integer = 0;
declare variable ALL_SALES_PERIOD integer;
begin
    for select clients.id_client from clients,tickets where
    tickets.validity < :min_date and
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

    select COUNT(clients.id_client) from clients,tickets where
    tickets.validity between :min_date and :max_date and
    tickets.id_client = clients.id_client
    into :all_sales_period;

    new_sales = all_sales_period - cur_old;

    ratio_of = (new_sales/all_sales)*100;

