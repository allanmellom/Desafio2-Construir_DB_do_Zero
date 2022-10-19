-- Criação do Banco de dados para o cenário de oficina

create database oficina;
use oficina;

-- criar tabela cliente
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    lastname varchar(20),
    CPF char(11) not null, 
    Adress varchar(30),
    Telephone varchar(10),
    Cellphone varchar(10),
    constraint unique_cpf_client unique (CPF)
);

-- criar tabela veículo
create table vehicle(
	idVehicle int auto_increment primary key,
    idV_Client int,
    V_Model varchar(100),
    V_Year varchar(4),
	constraint fk_vehicle_client foreign key (idV_Client) references clients(idClient)
    );

-- criar tabela equipe
create table team(
	idTeam int auto_increment primary key,
    T_Name varchar(10),
    Number_Mechanics int
);
-- criar tabela mecanicos
create table mechanics(
	idMechanic int auto_increment primary key,
    idM_team int,
    M_Name varchar(10),
    Wage float,
    Speciality enum('Custom Car','Luxury Cars','Sports Car','Everyday Car'),
    constraint fk_mechanics_team foreign key (idM_team) references team(idTeam)
);
-- criar tabela peças
create table piece(
	id_Piece int auto_increment primary key,
    p_price float,
    p_name varchar(20),
    p_model varchar(20)
);
-- tabela conserto e revisão
create table repair(
	id_repair int auto_increment primary key,
    rp_price float,
    rp_name varchar(20)
);
create table revision(
	id_revision int auto_increment primary key,
    rv_price float,
    rv_name varchar(20)
);
-- criar ordem de serviço
create table orders(
	idOrder int auto_increment primary key,
    idO_team int,
    idO_piece int,
    idO_repair int,
    idO_revision int,
    Full_Price float,
    Conclusion_date date,
    authorization bool default false,
    issue_date date,
    constraint fk_order_team foreign key (idO_team) references team(idTeam),
	constraint fk_order_piece foreign key (idO_piece) references piece(id_Piece),
    constraint fk_order_repair foreign key (idO_repair) references repair(id_repair),
    constraint fk_order_revision foreign key (idO_revision) references revision(id_revision)
);







    
    
    
    
    
    
    
    
    
    
    