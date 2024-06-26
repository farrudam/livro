

CREATE TABLE estado (
    id INT PRIMARY KEY NOT NULL,
    sigla CHAR(2),
    nome VARCHAR(100)
);


INSERT INTO estado VALUES(1,'AC','Acre');
INSERT INTO estado VALUES(2,'AL','Alagoas');
INSERT INTO estado VALUES(3,'AP','Amapá');
INSERT INTO estado VALUES(4,'AM','Amazonas');
INSERT INTO estado VALUES(5,'BA','Bahia');
INSERT INTO estado VALUES(6,'CE','Ceará');
INSERT INTO estado VALUES(7,'DF','Distrito Federal');
INSERT INTO estado VALUES(8,'ES','Espírito Santo');
INSERT INTO estado VALUES(9,'GO','Goiás');
INSERT INTO estado VALUES(10,'MA','Maranhão');
INSERT INTO estado VALUES(11,'MT','Mato Grosso');
INSERT INTO estado VALUES(12,'MS','Mato Grosso do Sul');
INSERT INTO estado VALUES(13,'MG','Minas Gerais');
INSERT INTO estado VALUES(14,'PA','Pará');
INSERT INTO estado VALUES(15,'PB','Paraíba');
INSERT INTO estado VALUES(16,'PR','Paraná');
INSERT INTO estado VALUES(17,'PE','Pernambuco');
INSERT INTO estado VALUES(18,'PI','Piauí');
INSERT INTO estado VALUES(19,'RJ','Rio de Janeiro');
INSERT INTO estado VALUES(20,'RN','Rio Grande do Norte');
INSERT INTO estado VALUES(21,'RS','Rio Grande do Sul');
INSERT INTO estado VALUES(22,'RO','Rondônia');
INSERT INTO estado VALUES(23,'RR','Roraima');
INSERT INTO estado VALUES(24,'SC','Santa Catarina');
INSERT INTO estado VALUES(25,'SP','São Paulo');
INSERT INTO estado VALUES(26,'SE','Sergipe');
INSERT INTO estado VALUES(27,'TO','Tocantins');

CREATE TABLE cidade (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100),
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES estado (id)
);

INSERT INTO cidade VALUES(1,'Aracajú',26);
INSERT INTO cidade VALUES(2,'Belém',14);
INSERT INTO cidade VALUES(3,'Belo Horizonte',13);
INSERT INTO cidade VALUES(4,'Boa Vista',23);
INSERT INTO cidade VALUES(5,'Brasília',7);
INSERT INTO cidade VALUES(6,'Campo Grande',12);
INSERT INTO cidade VALUES(7,'Cuiabá',11);
INSERT INTO cidade VALUES(8,'Curitiba',16);
INSERT INTO cidade VALUES(9,'Florianópolis',24);
INSERT INTO cidade VALUES(10,'Fortaleza',6);
INSERT INTO cidade VALUES(11,'Goiânia',9);
INSERT INTO cidade VALUES(12,'João Pessoa',15);
INSERT INTO cidade VALUES(13,'Macap ',3);
INSERT INTO cidade VALUES(14,'Maceió',2);
INSERT INTO cidade VALUES(15,'Manaus',4);
INSERT INTO cidade VALUES(16,'Natal',20);
INSERT INTO cidade VALUES(17,'Palmas',27);
INSERT INTO cidade VALUES(18,'Porto Alegre',21);
INSERT INTO cidade VALUES(19,'Porto Velho',22);
INSERT INTO cidade VALUES(20,'Recife',17);
INSERT INTO cidade VALUES(21,'Rio Branco',1);
INSERT INTO cidade VALUES(22,'Rio de Janeiro',19);
INSERT INTO cidade VALUES(23,'Salvador',5);
INSERT INTO cidade VALUES(24,'São Luis',10);
INSERT INTO cidade VALUES(25,'São Paulo',25);
INSERT INTO cidade VALUES(26,'Teresina',18);
INSERT INTO cidade VALUES(27,'Vitória',8);

CREATE TABLE grupo (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100)
);

INSERT INTO grupo VALUES(1,'Cliente');
INSERT INTO grupo VALUES(2,'Fornecedor');
INSERT INTO grupo VALUES(3,'Revendedor');
INSERT INTO grupo VALUES(4,'Colaborador');

CREATE TABLE fabricante (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100),
    site VARCHAR(100)
);

INSERT INTO fabricante VALUES(1,'Kingston','www.kingston.com');
INSERT INTO fabricante VALUES(2,'Seagate','www.seagate.com');
INSERT INTO fabricante VALUES(3,'Corsair','www.corsair.com');
INSERT INTO fabricante VALUES(4,'Olimpus','www.olimpus.com');
INSERT INTO fabricante VALUES(5,'Samsung','www.samsung.com');
INSERT INTO fabricante VALUES(6,'Sony','www.sony.com');
INSERT INTO fabricante VALUES(7,'Creative','www.creative.com');
INSERT INTO fabricante VALUES(8,'Intel','www.intel.com');
INSERT INTO fabricante VALUES(9,'HP','www.hp.com');
INSERT INTO fabricante VALUES(10,'Satellite','www.satellite.com');

CREATE TABLE unidade (
    id INT PRIMARY KEY NOT NULL,
    sigla VARCHAR(10),
    nome VARCHAR(100)
);

INSERT INTO unidade VALUES(1,'cm','Centímetro');
INSERT INTO unidade VALUES(2,'m','Metro');
INSERT INTO unidade VALUES(3,'cm2','Centímetro quadrado');
INSERT INTO unidade VALUES(4,'m2','Metro quadrado');
INSERT INTO unidade VALUES(5,'cm3','Centímetro cúbico');
INSERT INTO unidade VALUES(6,'m3','Metro cúbico');
INSERT INTO unidade VALUES(7,'Kg','Kilograma');
INSERT INTO unidade VALUES(8,'Gr','Grama');
INSERT INTO unidade VALUES(9,'L','Litro');
INSERT INTO unidade VALUES(10,'PC','Peça');
INSERT INTO unidade VALUES(11,'PCT','Pacote');
INSERT INTO unidade VALUES(12,'CX','Caixa');
INSERT INTO unidade VALUES(13,'SAC','Saco');
INSERT INTO unidade VALUES(14,'TON','Tonelada');
INSERT INTO unidade VALUES(15,'KIT','Kit');
INSERT INTO unidade VALUES(16,'GL','Galão');
INSERT INTO unidade VALUES(17,'FD','Fardo');
INSERT INTO unidade VALUES(18,'BL','Bloco');

CREATE TABLE tipo (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100)
);
INSERT INTO tipo VALUES(1,'Máquina');
INSERT INTO tipo VALUES(2,'Acessório');
INSERT INTO tipo VALUES(3,'Insumo');
INSERT INTO tipo VALUES(4,'Componente');
INSERT INTO tipo VALUES(5,'Suprimento');

CREATE TABLE produto (
    id INT PRIMARY KEY NOT NULL,
    descricao VARCHAR(255),
    estoque FLOAT,
    preco_custo FLOAT,
    preco_venda FLOAT,
    id_fabricante INT references fabricante(id),
    id_unidade INT references unidade(id),
    id_tipo INT references tipo(id)
);
INSERT INTO produto VALUES(1,'Pendrive 512Mb',10.0,20.0,40.0,1,10,2);
INSERT INTO produto VALUES(2,'HD 120 GB',20.0,100.0,180.0,2,10,4);
INSERT INTO produto VALUES(3,'SD CARD  512MB',4.0,20.0,35.0,3,10,2);
INSERT INTO produto VALUES(4,'SD CARD 1GB MINI',3.0,28.0,40.0,1,10,2);
INSERT INTO produto VALUES(5,'CAM. FOTO I70 PLATA',5.0,600.0,900.0,5,10,1);
INSERT INTO produto VALUES(6,'CAM. FOTO DSC-W50 PLATA',4.0,400.0,700.0,6,10,1);
INSERT INTO produto VALUES(7,'WEBCAM INSTANT VF0040SP',4.0,50.0,80.0,7,10,1);
INSERT INTO produto VALUES(8,'CPU 775 CEL.D 360  3.46 512K 533M',10.0,140.0,300.0,8,10,4);
INSERT INTO produto VALUES(9,'FILMADORA DCR-DVD108',2.0,900.0,1400.0,6,10,1);
INSERT INTO produto VALUES(10,'HD IDE  80G 7.200',8.0,90.0,160.0,5,10,4);
INSERT INTO produto VALUES(11,'IMP LASERJET 1018 USB 2.0',4.0,200.0,300.0,9,10,1);
INSERT INTO produto VALUES(12,'MEM DDR  512MB 400MHZ PC3200',10.0,60.0,100.0,5,10,4);
INSERT INTO produto VALUES(13,'MEM DDR2 1024MB 533MHZ PC4200',5.0,100.0,170.0,3,10,4);
INSERT INTO produto VALUES(14,'MON LCD 19 920N PRETO',2.0,500.0,800.0,5,10,4);
INSERT INTO produto VALUES(15,'MOUSE USB OMC90S OPT.C/LUZ',10.0,20.0,40.0,5,10,2);
INSERT INTO produto VALUES(16,'NB DV6108 CS 1.86/512/80/DVD+RW ',2.0,1400.0,2500.0,9,10,1);
INSERT INTO produto VALUES(17,'NB N220E/B DC 1.6/1/80/DVD+RW ',3.0,1800.0,3400.0,6,10,1);
INSERT INTO produto VALUES(18,'CAM. FOTO DSC-W90 PLATA',5.0,600.0,1200.0,6,10,1);
INSERT INTO produto VALUES(19,'CART. 8767 NEGRO',20.0,30.0,50.0,9,10,3);
INSERT INTO produto VALUES(20,'CD-R TUBO DE 100 52X 700MB',20.0,30.0,60.0,5,10,5);
INSERT INTO produto VALUES(21,'MEM DDR 1024MB 400MHZ PC3200',7.0,80.0,150.0,1,10,4);
INSERT INTO produto VALUES(22,'MOUSE PS2 A7 AZUL/PLATA',20.0,5.0,15.0,10,10,2);
INSERT INTO produto VALUES(23,'SPEAKER AS-5100 HOME PRATA',5.0,100.0,180.0,10,10,2);
INSERT INTO produto VALUES(24,'TEC. USB ABNT AK-806',14.0,20.0,40.0,10,10,2);

CREATE TABLE pessoa (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    bairro VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100),
    id_cidade INTEGER REFERENCES cidade(id)
);

CREATE TABLE venda (
    id INT PRIMARY KEY NOT NULL,
    id_cliente INT REFERENCES pessoa(id),
    data_venda DATE,
    valor_venda FLOAT,
    desconto FLOAT,
    acrescimos FLOAT,
    valor_final FLOAT,
    obs VARCHAR(255)
);

CREATE TABLE item_venda (
    id INT PRIMARY KEY NOT NULL,
    id_produto INT references produto(id),
    id_venda INT references venda(id),
    quantidade FLOAT
, preco FLOAT);

CREATE TABLE conta (
    id INT PRIMARY KEY NOT NULL,
    id_cliente INT REFERENCES pessoa(id),
    dt_emissao DATE,
    dt_vencimento DATE,
    valor FLOAT,
    paga CHAR(1)
);

INSERT INTO pessoa VALUES(1,'Penelope Terry','Penelope Terry Street, 1','Centro','(88) 1234-5678','naoenvie@email.com',18);
INSERT INTO pessoa VALUES(2,'James White','James White Street, 2','Centro','(88) 1234-5678','naoenvie@email.com',3);
INSERT INTO pessoa VALUES(3,'Anne Walsh','Anne Walsh Street, 3','Centro','(88) 1234-5678','naoenvie@email.com',19);
INSERT INTO pessoa VALUES(4,'Oliver Dowd','Oliver Dowd Street, 4','Centro','(88) 1234-5678','naoenvie@email.com',23);
INSERT INTO pessoa VALUES(5,'Lily Sutherland','Lily Sutherland Street, 5','Centro','(88) 1234-5678','naoenvie@email.com',26);
INSERT INTO pessoa VALUES(6,'Lily Oliver','Lily Oliver Street, 6','Centro','(88) 1234-5678','naoenvie@email.com',10);
INSERT INTO pessoa VALUES(7,'Amelia Thomson','Amelia Thomson Street, 7','Centro','(88) 1234-5678','naoenvie@email.com',4);
INSERT INTO pessoa VALUES(8,'Lily Pullman','Lily Pullman Street, 8','Centro','(88) 1234-5678','naoenvie@email.com',8);
INSERT INTO pessoa VALUES(9,'Justin Edmunds','Justin Edmunds Street, 9','Centro','(88) 1234-5678','naoenvie@email.com',25);
INSERT INTO pessoa VALUES(10,'Julia Turner','Julia Turner Street, 10','Centro','(88) 1234-5678','naoenvie@email.com',12);
INSERT INTO pessoa VALUES(11,'Julia White','Julia White Street, 11','Centro','(88) 1234-5678','naoenvie@email.com',1);
INSERT INTO pessoa VALUES(12,'Isaac Morrison','Isaac Morrison Street, 12','Centro','(88) 1234-5678','naoenvie@email.com',20);
INSERT INTO pessoa VALUES(13,'Frank Wallace','Frank Wallace Street, 13','Centro','(88) 1234-5678','naoenvie@email.com',21);
INSERT INTO pessoa VALUES(14,'Phil Ogden','Phil Ogden Street, 14','Centro','(88) 1234-5678','naoenvie@email.com',9);
INSERT INTO pessoa VALUES(15,'Gordon Murray','Gordon Murray Street, 15','Centro','(88) 1234-5678','naoenvie@email.com',22);
INSERT INTO pessoa VALUES(16,'Caroline Churchill','Caroline Churchill Street, 16','Centro','(88) 1234-5678','naoenvie@email.com',23);
INSERT INTO pessoa VALUES(17,'Sally Glover','Sally Glover Street, 17','Centro','(88) 1234-5678','naoenvie@email.com',6);
INSERT INTO pessoa VALUES(18,'Christopher Brown','Christopher Brown Street, 18','Centro','(88) 1234-5678','naoenvie@email.com',21);
INSERT INTO pessoa VALUES(19,'Owen Stewart','Owen Stewart Street, 19','Centro','(88) 1234-5678','naoenvie@email.com',22);
INSERT INTO pessoa VALUES(20,'Robert Peters','Robert Peters Street, 20','Centro','(88) 1234-5678','naoenvie@email.com',20);
INSERT INTO pessoa VALUES(21,'Nicola Ellison','Nicola Ellison Street, 21','Centro','(88) 1234-5678','naoenvie@email.com',27);
INSERT INTO pessoa VALUES(22,'Virginia Hill','Virginia Hill Street, 22','Centro','(88) 1234-5678','naoenvie@email.com',2);
INSERT INTO pessoa VALUES(23,'Edward Sutherland','Edward Sutherland Street, 23','Centro','(88) 1234-5678','naoenvie@email.com',9);
INSERT INTO pessoa VALUES(24,'Gordon Terry','Gordon Terry Street, 24','Centro','(88) 1234-5678','naoenvie@email.com',18);
INSERT INTO pessoa VALUES(25,'Michael Clark','Michael Clark Street, 25','Centro','(88) 1234-5678','naoenvie@email.com',18);

CREATE TABLE pessoa_grupo (
    id INT PRIMARY KEY NOT NULL,
    id_pessoa INT references pessoa(id),
    id_grupo INT references grupo(id)
);

INSERT INTO pessoa_grupo VALUES(15,2,3);
INSERT INTO pessoa_grupo VALUES(16,2,4);
INSERT INTO pessoa_grupo VALUES(17,3,2);
INSERT INTO pessoa_grupo VALUES(18,3,4);
INSERT INTO pessoa_grupo VALUES(19,1,1);
INSERT INTO pessoa_grupo VALUES(20,1,3);

INSERT INTO conta VALUES(1,1,'2018-03-10','2018-03-12',360.0,'N');
INSERT INTO conta VALUES(2,2,'2018-03-10','2018-03-12',324.0,'N');
INSERT INTO conta VALUES(3,3,'2018-03-10','2018-03-12',315.0,'N');
INSERT INTO conta VALUES(4,4,'2018-03-10','2018-03-12',360.0,'N');
INSERT INTO conta VALUES(5,5,'2018-03-10','2018-03-12',810.0,'N');
INSERT INTO conta VALUES(6,6,'2018-03-10','2018-03-12',630.0,'N');
INSERT INTO conta VALUES(7,7,'2018-03-10','2018-03-12',720.0,'N');
INSERT INTO conta VALUES(8,8,'2018-03-10','2018-03-12',540.0,'N');
INSERT INTO conta VALUES(9,9,'2018-03-10','2018-03-12',1260.0,'N');
INSERT INTO conta VALUES(10,10,'2018-03-10','2018-03-12',720.0,'N');
INSERT INTO conta VALUES(11,11,'2018-03-10','2018-03-12',1080.0,'N');
INSERT INTO conta VALUES(12,12,'2018-03-10','2018-03-12',1100.0,'N');

INSERT INTO venda VALUES(1,1,'2018-01-10',800.0,40.0,NULL,360.0,NULL);
INSERT INTO venda VALUES(2,2,'2018-02-10',720.0,36.0,NULL,324.0,NULL);
INSERT INTO venda VALUES(3,3,'2018-03-10',700.0,35.0,NULL,315.0,NULL);
INSERT INTO venda VALUES(4,4,'2018-04-10',800.0,40.0,NULL,360.0,NULL);
INSERT INTO venda VALUES(5,5,'2018-05-10',1800.0,90.0,NULL,810.0,NULL);
INSERT INTO venda VALUES(6,6,'2018-06-10',1400.0,70.0,NULL,630.0,NULL);
INSERT INTO venda VALUES(7,7,'2018-07-10',1600.0,80.0,NULL,720.0,NULL);
INSERT INTO venda VALUES(8,8,'2018-08-10',1200.0,60.0,NULL,540.0,NULL);
INSERT INTO venda VALUES(9,9,'2018-09-10',2800.0,140.0,NULL,1260.0,NULL);
INSERT INTO venda VALUES(10,10,'2018-10-10',1600.0,80.0,NULL,720.0,NULL);
INSERT INTO venda VALUES(11,11,'2018-11-10',2400.0,120.0,NULL,1080.0,NULL);
INSERT INTO venda VALUES(12,12,'2018-12-10',2400.0,100.0,NULL,1100.0,NULL);

INSERT INTO item_venda VALUES(1,1,1,10.0,40.0);
INSERT INTO item_venda VALUES(2,2,2,2.0,180.0);
INSERT INTO item_venda VALUES(3,3,3,10.0,35.0);
INSERT INTO item_venda VALUES(4,4,4,10.0,40.0);
INSERT INTO item_venda VALUES(5,5,5,1.0,900.0);
INSERT INTO item_venda VALUES(6,6,6,1.0,700.0);
INSERT INTO item_venda VALUES(7,7,7,10.0,80.0);
INSERT INTO item_venda VALUES(8,8,8,2.0,300.0);
INSERT INTO item_venda VALUES(9,9,9,1.0,1400.0);
INSERT INTO item_venda VALUES(10,10,10,5.0,160.0);
INSERT INTO item_venda VALUES(11,11,11,4.0,300.0);
INSERT INTO item_venda VALUES(12,12,12,12.0,100.0);




CREATE TABLE funcionario ( id INT PRIMARY KEY NOT NULL,
                           nome VARCHAR(255),
                           endereco VARCHAR(255),
                           email VARCHAR(100),
                           departamento INT,
                           idiomas VARCHAR(255),
                           contratacao INT);




CREATE VIEW view_saldo_pessoa as
    SELECT 
        id,
        nome,
        endereco,
        bairro,
        telefone,
        email,
        (select sum(valor) from conta where id_cliente=pessoa.id) as total,
        (select sum(valor) from conta where id_cliente=pessoa.id and paga='N') as aberto
    FROM pessoa
    ORDER by 8 desc;

