    connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';

create table Discounts(
ID_DISCOUNT int primary key,
nameOfDiscount varchar(255),
valueOfDiscount int
);

create table Clients(
ID_CLIENT int primary key,
clientName varchar(255),
visitNumbers int,
ID_DISCOUNT int not null
);

create table Trainers(
ID_TRAINER int primary key,
nameOfTrainer varchar(255),
callNumberOfTrainer int,
workingTimeOfTrainer int
);

create table TypeOfClasses(
ID_TYPEOFCLASS int primary key,
typeClass int
);

create table Place(
ID_PLACE int primary key,
nameOfPlace varchar(255)
);

create table Classes(
ID_CLASS int primary key,
ID_TYPEOFCLASS int not null,
durationOfClass int,
ID_TRAINER int not null,
ID_PLACE int not null
);

create table TypeOfTickets(
ID_TYPEOFTICKET int primary key,
nameOfTicket varchar(255),
priceOfTicket int
);

create table Tickets(
ID_TICKET int primary key,
ID_TYPEOFTICKET int not null,
validity data,
ID_CLIENT int not null
);

create table ClientToClass(
ID_CLASS int not null,
ID_CLIENT int not null
);

create table ClassToTicket(
ID_TYPEOFTICKET int not null,
ID_TYPEOFCLASS int not null
);


alter table Clients add constraint clients_to_discounts
foreign key (ID_DISCOUNT) references Discounts (ID_DISCOUNT);


alter table Classes add constraint classes_to_place
foreign key (ID_PLACE) references Place (ID_PLACE);


alter table Classes add constraint classes_to_typeofclasses
foreign key (ID_TYPEOFCLASS) references TypeOfClasses (ID_TYPEOFCLASS);


alter table Tickets add constraint tickets_to_typeoftickets
foreign key (ID_TYPEOFTICKET) references TypeOfTickets (ID_TYPEOFTICKET);


alter table Tickets add constraint tickets_to_clients
foreign key (ID_CLIENT) references Clients (ID_CLIENT);


alter table Classes add constraint classes_to_trainers
foreign key (ID_TRAINER) references Trainers (ID_TRAINER);


alter table ClientToClass add constraint clienttoticket_to_classes
foreign key (ID_CLASS) references Classes (ID_CLASS);


alter table ClientToClass add constraint clienttoticket_to_clients
foreign key (ID_CLIENT) references Clients (ID_CLIENT);


alter table ClassToTicket add constraint classtoticket_to_typeoftickets
foreign key (ID_TYPEOFTICKET) references TypeOfTickets (ID_TYPEOFTICKET);


alter table ClassToTicket add constraint classtoticket_to_typeofclasses
foreign key (ID_CLASS) references Classes (ID_CLASS);

commit;

