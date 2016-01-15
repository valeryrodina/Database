connect 'C:\BD\FITNESSCLUB.FDB' user 'SYSDBA' password 'masterkey';

insert into  discounts (ID_DISCOUNT, nameOfDiscount, valueOfDiscount)
       values (1, 'one friend', 10);
insert into  discounts (ID_DISCOUNT, nameOfDiscount, valueOfDiscount)
       values (2, 'VIP', 30);
insert into  discounts (ID_DISCOUNT, nameOfDiscount, valueOfDiscount)
       values (3, 'your birthday', 20);
insert into  discounts (ID_DISCOUNT, nameOfDiscount, valueOfDiscount)
       values (4, 'no any discounts', 0);

insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (1, 'lev', 3, 2);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (2, 'maks', 2, 4);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (3, 'lera', 3, 1);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (4, 'vladmir', 10, 3);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (5, 'jay', 20, 4);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (6, 'katya', 75, 2);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (7, 'john', 29, 4);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (8, 'marina', 33, 1);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (9, 'sasha', 0, 3);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (10, 'peter', 50, 4);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (11, 'nastya', 35, 2);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (12, 'matvey', 20, 1);
insert into Clients (ID_CLIENT, clientName, visitNumbers, ID_DISCOUNT) values (13, 'galina', 100, 4);



insert into Trainers (ID_TRAINER, nameOfTrainer, callNumberOfTrainer, workingTimeOfTrainer)
            values (1, 'Aleks', 892189, 1);
insert into Trainers (ID_TRAINER, nameOfTrainer, callNumberOfTrainer, workingTimeOfTrainer)
            values (2, 'Lena', 891187, 1);
insert into Trainers (ID_TRAINER, nameOfTrainer, callNumberOfTrainer, workingTimeOfTrainer)
            values (3, 'Rustam', 4558910, 5);
insert into Trainers (ID_TRAINER, nameOfTrainer, callNumberOfTrainer, workingTimeOfTrainer)
            values (4, 'Mariya', 890456, 10);
insert into Trainers (ID_TRAINER, nameOfTrainer, callNumberOfTrainer, workingTimeOfTrainer)
            values (5, 'Mike', 8922156, 3);


insert into Place (ID_PLACE, nameofPlace) values (1, 'gym');
insert into Place (ID_PLACE, nameofPlace) values (2, 'small hall');
insert into Place (ID_PLACE, nameofPlace) values (3, 'big hall');

insert into typeofclasses (ID_TYPEOFCLASS, typeclass) values (1, 'hard');
insert into typeofclasses (ID_TYPEOFCLASS, typeclass) values (2, 'cardio');
insert into typeofclasses (ID_TYPEOFCLASS, typeclass) values (3, 'stretch');


insert into classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (1, 1, 60, 3, 1, 'crossfit');
insert into classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (2, 3, 90, 1, 3, 'yoga');
insert into classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (3, 2, 75, 2, 3, 'aerobica');
insert into  classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (4, 2, 60, 3, 2, 'dancemix');
insert into  classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (5, 3, 90, 2, 2, 'pilates');
insert into  classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (6, 1, 60, 4, 1, 'tabata');
insert  into classes (ID_CLASS, ID_TYPEOFCLASS, durationOfClass, ID_TRAINER, ID_PLACE, nameofclass)
       values (7, 2, 45, 5, 3, 'step');



insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (1, 'unlimited 1 year', 15000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (2, 'unlimited 1 year only gym', 12000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (3, 'unlimited half of year', 9000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (4, 'yoga', 6000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (5, 'aerobica', 5000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (6, 'dancemix', 4000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (7, 'pilates', 6000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (8, 'tabata', 7000 );
insert into  typeoftickets (ID_TYPEOFTICKET, nameOfTicket, ticketprice)
       values (9, 'step', 8000 );



insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (1, 1, '2015-09-21', 1);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (2, 3, '2016-01-10', 2);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (3, 2, '2015-12-14', 3);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (4, 6, '2015-06-05', 4);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (5, 9, '2015-11-27', 5);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (6, 4, '2015-09-21', 6);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (7, 8, '2015-10-17', 7);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (8, 5, '2065-01-12', 8);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (9, 7, '2015-06-26', 9);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (10, 6, '2015-11-01', 10);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (11, 9, '2016-01-04', 11);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (12, 1, '2015-07-15', 12);
insert into  tickets (ID_TICKET, ID_TYPEOFTICKET, validity, ID_CLIENT)
       values (13, 4, '2015-12-07', 13);



insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 1);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 2);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 3);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 4);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 5);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 6);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (1, 7);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (2, 1);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (3, 1);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (4, 2);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (5, 3);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (6, 4);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (7, 5);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (8, 6);
insert into  classtoticket (ID_TYPEOFTICKET, ID_CLASS) values (9, 7);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 2);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 3);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 5);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 10);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 6);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (1, 12);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 1);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 2);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 4);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 8);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 13);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 10);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 5);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (2, 7);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (3, 3);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (3, 13);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 1);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 3);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 4);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 5);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 10);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 9);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 7);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 12);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 8);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (4, 11);



insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (5, 1);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (5, 2);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (5, 6);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (6, 2);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (6, 4);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (6, 10);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (6, 8);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (6, 13);


insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 1);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 2);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 3);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 4);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 5);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 6);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 12);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 11);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 9);
insert into  clienttoclass (ID_CLASS, ID_CLIENT) values (7, 10);

