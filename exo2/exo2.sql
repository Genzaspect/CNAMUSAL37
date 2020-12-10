use usal37_agence;

create table clients
(
	client_id int auto_increment primary key,
    client_lastname varchar(32) not null,
    client_firstname varchar(32) not null,
    client_email varchar(128) not null,
    client_phone varchar(16) not null,
    client_added date not null,
    client_password varchar(60) not null,
    com_code varchar(5)
);

create table sales
(
	com_code varchar(5) primary key,
    com_name varchar(64),
    com_password varchar(60)
);

insert into clients
(client_lastname, client_firstname, client_email, client_phone, client_added, client_password, com_code)
values
('Monet', 'Jeanne', 'jeannemonet@gmail.com', '0684953278', '2019-05-15', 'jesuisunenoobe6', '01'),
('Lefebvre', 'Antoine', 'lefebvreantoine@gmail.com', '0765423287', '2018-08-30', 'macuisineestlameilleure68', '02'),
('Kaplan', 'Jeff', 'jeffkaplan@gmail.com', '0745122963', '2018-04-12', 'Overwatchestlemeilleurjeudumonde', '03'),
('Depp', 'Johnny', 'johnnydepp@gmail.com', '0637954267', '2016-01-11', 'IamthebestGrindelwald1', '04'),
('Windrunner', 'Sylvanas', 'sylvanaswindrunner@gmail.com', '0768812463', '2004-06-05', 'Azerothseraàmoi!', '05');

insert into sales
(com_code, com_name, com_password)
values
('01', 'Chanel voyages', 'ChanelXOXOXO'),
('02', 'Air France', 'Tricolordanslesairs'),
('03', 'Club Med', 'Toujoursplusloin'),
('04', 'Ikéa voyages', 'meublesdumonde'),
('05', 'Ubisoft voyage', 'voyagevirtuels');

alter table clients
	add constraint com_clients
	foreign key (com_code) references sales (com_code);
    
select * from clients
join sales on sales.com_code = clients.com_code;