-- Queries
use oficina;

-- inserindo clientes
insert into clients(Fname,lastname,CPF,Adress,Telephone,Cellphone) values
	('Carlos','Shiro','59784631895','Rua Conseição, 124, Odim',null,'1987563169'),
    ('Matheus','Ostra','59787411895','Rua Conseição, 125, Odim','1989663169',null),
    ('Gustavo','Quourão','59712331895','Rua Conseição, 126, Odim',null,'1983563169'),
    ('Leonardo','Amendoin','59784458895','Rua Conseição, 127, Odim',null,'1914763169'),
    ('Gabriel','Dasipodio','59797531895','Rua Conseição, 128, Odim',null,'1987598169'),
    ('Julio','Paulista','59784616795','Rua Conseição, 129, Odim','1698536147','1987563789');
   -- select * from clients;
-- inserindo veiculos
insert into vehicle(idV_Client,V_Model,V_Year) values
	(1,'C. onix','2015'),
    (2,'C. onix plus','2020'),
    (3,'C. spin','2008'),
    (4,'C. spin activ','2021'),
    (5,'C. equinox','2022'),
    (6,'C. trailblazer','2018');
  -- select * from vehicle;
  
-- inserindo times
insert into team(T_Name,Number_Mechanics) values
	('Mobile Sui',1),
    ('Fencer',2);
  -- select * from team;

-- inserindo mecanicos
insert into mechanics(idM_team,M_name,Wage,Speciality) values
	(1,'Juliana',1000.00,'Luxury Cars'),
    (2,'Eduardo',8000.56,'Custom Car'),
    (2,'Fabiola',8965.87,'Everyday Car');

-- inserindo peças
insert into piece(p_price,p_name,p_model) values
	(152.78,'volante','custom'),
    (56.7,'câmbio','azul c.');

-- inserindo consertos
insert into repair(rp_price,rp_name) values
	(861.78,'troca volante');
    


-- inserindo revisão
insert into revision(rv_price,rv_name) values
	(800.00,'alinhamento');

-- inserindo ordem
insert into orders(idO_team,idO_revision,Full_Price,Conclusion_date,authorization,issue_date) values
	(1,1,800,10/15/2022,true,10/05/2022);
 

 -- Quantas ordens de serviço tem na oficina?
 select count(*) from orders;

 
    

    
