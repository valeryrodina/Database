connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';
create procedure delete_typeclasses as
begin
    delete from typeofclasses where ID_TYPEOFCLASS not in (select ID_TYPEOFCLASS from classes);
end;


