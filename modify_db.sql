connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';

create table Visits(
ID_CLIENT int not null,
dateOfVisit date
);
alter table Visits add constraint visits_to_clients
foreign key (ID_CLIENT) references Clients (ID_CLIENT);

alter table TypeOfTickets drop priceOfTicket;

alter table Tickets add ticketPrice int not null;

create table AddServices(
ID_SERVICE int primary key,
nameService varchar(255),
priceService int
);
create table ServicesToTypes(
ID_SERVICE int,
ID_TYPEOFTICKET int
);

alter table ServicesToTypes add constraint servicetttypes_to_serv
foreign key (ID_SERVICE) references AddServices (ID_SERVICE);

alter table ServicesToTypes add constraint servicetttypes_to_types
foreign key (ID_TYPEOFTICKET) references TypeOfTickets (ID_TYPEOFTICKET);

create table AccountServices(
ID_CLIENT int not null,
ID_SERVICE int not null,
buyServiceDate date
);

alter table AccountServices add constraint accountservices_to_clients foreign key (ID_CLIENT)
references Clients(ID_CLIENT);

alter table AccountServices add constraint accountservices_to_services foreign key (ID_SERVICE)
references AddServices(ID_SERVICE);

--alter table Tickets drop ticketPrice;

--alter table typeoftickets add ticketPrice int not null;

--alter table classes add nameOfClass varchar(30);

--alter table Tickets drop buyservdate;

--alter table classtoticket add ID_CLASS int not null;

--alter table ClassToTicket add constraint classtoticket_to_typeofclasses
--foreign key (ID_CLASS) references Classes (ID_CLASS);

commit;

