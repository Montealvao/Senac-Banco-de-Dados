create database TechStore;
use TechStore;


create table client(
id INT AUTO_INCREMENT primary key,
name varchar(50) not null,
email varchar(100) unique,
adress varchar(80) not null,
birthday date not null
);

create table products(
id INT AUTO_INCREMENT primary key,
name varchar(70) not null,
category varchar(60) not null,
price decimal(10,2) not null,
stock_amount int,
supplier_id int,

FOREIGN KEY (supplier_id) REFERENCES suppliers(id)
);

create table suppliers(
id INT AUTO_INCREMENT primary key,
company_name varchar(70) not null,
contact varchar(80) not null,
company_adress varchar(80) not null,
company_number varchar(20)

);

create table orders(
id INT AUTO_INCREMENT primary key,
client_id int,
total_value decimal(10,2) not null,
created_at timestamp,

foreign key(client_id) references client(id)
);

create table cart(
id INT AUTO_INCREMENT primary key,
order_id int,
product_id int,
amount int,
price_itens decimal(10,2),

foreign key(order_id) references orders(id),
foreign key(product_id) references products(id)
);

-- Adicionar clientes na tabela Clientes.
INSERT INTO Client (name, email, adress, birthday) VALUES
('Ateobaldo Souza', 'Rua das Flores, 100', 'ateobaldo.souza@exemplo.com', '1980-01-15'),
('Maria Luzinete Silva', 'Avenida Brasil, 101', 'maria.luzinete@exemplo.com', '1975-07-20'),
('Carlos Alberto dos Santos', 'Rua do Campo, 102', 'carlos.santos@exemplo.com', '1985-05-10'),
('Joaquim Pereira', 'Rua Nova, 103', 'joaquim.pereira@exemplo.com', '1990-02-12'),
('Ana Beatriz Oliveira', 'Rua Central, 104', 'ana.oliveira@exemplo.com', '1988-11-25'),
('Francisco das Chagas', 'Rua da Paz, 105', 'francisco.chagas@exemplo.com', '1978-06-30'),
('Elisa Machado', 'Rua do Sol, 106', 'elisa.machado@exemplo.com', '1992-09-14'),
('Roberto da Costa', 'Travessa Santa Luzia, 107', 'roberto.costa@exemplo.com', '1983-03-22'),
('Gabriela Moura', 'Alameda das Acácias, 108', 'gabriela.moura@exemplo.com', '1987-10-18'),
('Fernanda Ribeiro', 'Avenida Paulista, 109', 'fernanda.ribeiro@exemplo.com', '1991-08-08'),
('Lucas Almeida', 'Rua do Comércio, 110', 'lucas.almeida@exemplo.com', '1986-12-05'),
('Carmen Lucia Barros', 'Rua das Palmeiras, 111', 'carmen.barros@exemplo.com', '1979-04-17'),
('Eduardo Sampaio', 'Rua Esperança, 112', 'eduardo.sampaio@exemplo.com', '1982-07-11'),
('Amanda de Souza', 'Rua Santa Maria, 113', 'amanda.souza@exemplo.com', '1989-05-19'),
('Fernando Rocha', 'Rua São José, 114', 'fernando.rocha@exemplo.com', '1993-03-09'),
('Patrícia Campos', 'Rua da Liberdade, 115', 'patricia.campos@exemplo.com', '1984-02-22'),
('Thiago Gomes', 'Rua Floriano, 116', 'thiago.gomes@exemplo.com', '1990-12-31'),
('Beatriz Fernandes', 'Rua Bonfim, 117', 'beatriz.fernandes@exemplo.com', '1981-08-13'),
('Leonardo Cardoso', 'Avenida Santana, 118', 'leonardo.cardoso@exemplo.com', '1977-10-03'),
('Débora Martins', 'Rua São Pedro, 119', 'debora.martins@exemplo.com', '1983-11-16'),
('Ricardo Moreira', 'Rua Principal, 120', 'ricardo.moreira@exemplo.com', '1995-05-24'),
('Paula Araújo', 'Rua 7 de Setembro, 121', 'paula.araujo@exemplo.com', '1987-04-12'),
('Diego Andrade', 'Rua Dom Pedro, 122', 'diego.andrade@exemplo.com', '1992-01-28'),
('Juliana Neves', 'Rua das Palmeiras, 123', 'juliana.neves@exemplo.com', '1994-03-05'),
('Vinícius Freitas', 'Avenida Rio Branco, 124', 'vinicius.freitas@exemplo.com', '1985-06-14'),
('Sara Lima', 'Rua 15 de Novembro, 125', 'sara.lima@exemplo.com', '1978-08-09'),
('Fábio Nogueira', 'Rua dos Pássaros, 126', 'fabio.nogueira@exemplo.com', '1980-10-19'),
('Juliana Alves', 'Rua Minas Gerais, 127', 'juliana.alves@exemplo.com', '1983-09-02'),
('Robson Batista', 'Rua Alegria, 128', 'robson.batista@exemplo.com', '1989-07-23'),
('Inês Carvalho', 'Rua da Praia, 129', 'ines.carvalho@exemplo.com', '1991-11-30'),
('Paulo Cezar', 'Rua São Paulo, 130', 'paulo.cezar@exemplo.com', '1986-01-17'),
('Larissa Moura', 'Rua da Estação, 131', 'larissa.moura@exemplo.com', '1993-06-26'),
('José Augusto', 'Avenida das Nações, 132', 'jose.augusto@exemplo.com', '1979-02-08'),
('Tânia Regina', 'Rua Esperança, 133', 'tania.regina@exemplo.com', '1988-12-15'),
('Rodrigo Teixeira', 'Rua Bento Gonçalves, 134', 'rodrigo.teixeira@exemplo.com', '1992-04-21'),
('Simone Figueiredo', 'Rua das Rosas, 135', 'simone.figueiredo@exemplo.com', '1981-09-25'),
('Pedro Silva', 'Avenida Brasil, 136', 'pedro.silva@exemplo.com', '1987-05-06'),
('Marta Lima', 'Rua das Orquídeas, 137', 'marta.lima@exemplo.com', '1985-07-11'),
('Victor Santana', 'Rua Bela Vista, 138', 'victor.santana@exemplo.com', '1975-08-14'),
('Fernanda Costa', 'Rua das Hortências, 139', 'fernanda.costa@exemplo.com', '1994-10-21'),
('Marcos Vinícius', 'Rua do Contorno, 140', 'marcos.vinicius@exemplo.com', '1980-03-27'),
('Elaine Ramos', 'Rua dos Lírios, 141', 'elaine.ramos@exemplo.com', '1991-06-05'),
('Luciana Araújo', 'Rua das Pedras, 142', 'luciana.araujo@exemplo.com', '1982-08-02'),
('Bruno Mendonça', 'Rua Rio Grande, 143', 'bruno.mendonca@exemplo.com', '1988-12-07'),
('Talita Nunes', 'Rua dos Cajueiros, 144', 'talita.nunes@exemplo.com', '1986-09-19'),
('Alessandro Duarte', 'Rua Boa Vista, 145', 'alessandro.duarte@exemplo.com', '1990-11-12'),
('Flávia Mendes', 'Rua Verde, 146', 'flavia.mendes@exemplo.com', '1978-01-30'),
('Renato Barbosa', 'Rua São Jorge, 147', 'renato.barbosa@exemplo.com', '1985-05-17'),
('Sandra Campos', 'Rua Azul, 148', 'sandra.campos@exemplo.com', '1977-02-28'),
('Daniela Ferreira', 'Rua Nova, 149', 'daniela.ferreira@exemplo.com', '1992-10-01'),
('Alexandre Souza', 'Rua Central, 150', 'alexandre.souza@exemplo.com', '1989-04-13');

INSERT INTO Suppliers (company_name, contact, company_adress, company_number) VALUES
('Eletrônicos Brasil LTDA', 'Carlos Eduardo', 'Avenida Principal, 100', '11999998888'),
('Inova Tech Distribuidora', 'Juliana Alves', 'Rua Nova Esperança, 101', '11988887777'),
('Mundo Digital SA', 'Fernando Sousa', 'Rua dos Ipês, 102', '11977776666'),
('Tech Solutions', 'Amanda Ribeiro', 'Rua das Orquídeas, 103', '11966665555'),
('Global Parts', 'Roberto Lima', 'Avenida Brasil, 104', '11955554444'),
('Infinity Supply', 'Paulo Cezar', 'Rua Santa Clara, 105', '11944443333'),
('Distribuidora Conexão', 'Luciana Rocha', 'Rua Bela Vista, 106', '11933332222'),
('Tecno Hub', 'Ricardo Mendes', 'Avenida Central, 107', '11922221111'),
('Smart Distribuidora', 'Beatriz Santana', 'Rua do Comércio, 108', '11911110000'),
('Central Eletrônica', 'Marcos Vinícius', 'Avenida Paulista, 109', '11888889999'),
('Eletro Supply', 'Julio Ramos', 'Rua das Palmeiras, 110', '11877778888'),
('Universal Distribuidora', 'Tatiane Souza', 'Rua Principal, 111', '11866667777'),
('Futurize', 'Fabiano Costa', 'Rua do Sol, 112', '11855556666'),
('Conect Mais', 'Gabriela Moura', 'Rua do Sol Nascente, 113', '11844445555'),
('Global Distribuição', 'Rafael Silva', 'Avenida Horizonte, 114', '11833334444'),
('Distribuidora Digital', 'Patrícia Campos', 'Rua dos Pássaros, 115', '11822223333'),
('Mercado Tech', 'Diego Freitas', 'Rua da Paz, 116', '11811112222'),
('Digi Trade', 'Débora Martins', 'Rua da Felicidade, 117', '11800001111'),
('Fast Distribuidora', 'Lucas Almeida', 'Avenida das Nações, 118', '11899990000'),
('Nova Eletrônicos', 'Elaine Mendes', 'Rua Esperança, 119', '11888880000'),
('Alta Tecnologia SA', 'Mauro Rodrigues', 'Rua das Andorinhas, 120', '11877770000'),
('Tech Plus', 'Renata Diniz', 'Rua do Parque, 121', '11866668888'),
('Distribuidora de Valor', 'Edson Oliveira', 'Avenida Santos Dumont, 122', '11855557777'),
('Eletrônicos Global', 'Lívia Fonseca', 'Rua Jardim das Flores, 123', '11844446666'),
('Tecnologia de Ponta', 'Jorge Figueiredo', 'Avenida Central, 124', '11833335555'),
('Conexão Digital', 'Larissa Mendes', 'Rua das Américas, 125', '11822224444'),
('Distribuidora Vip', 'Marcelo Tavares', 'Rua da Aurora, 126', '11811113333'),
('Norte Distribuidora', 'Carolina Prado', 'Rua Horizonte Azul, 127', '11800002222'),
('Super Tech', 'Paulo Andrade', 'Rua das Palmeiras, 128', '11899993333'),
('Top Distribuidora', 'Letícia Martins', 'Avenida dos Estados, 129', '11888884444'),
('Mundo Eletrônico', 'André Ribeiro', 'Rua da Liberdade, 130', '11877775555'),
('Smart Solutions', 'Marina Dias', 'Rua São José, 131', '11866666666'),
('Fornecedora Prime', 'Carlos Pereira', 'Avenida da Paz, 132', '11855554444'),
('Tecnologia em Rede', 'Tatiana Gomes', 'Rua das Violetas, 133', '11844443333'),
('Digital Brasil', 'Vinícius Almeida', 'Rua Horizonte, 134', '11833332222'),
('Eletronic Supply', 'Rita Moreira', 'Rua da Alegria, 135', '11822221111'),
('Distribuição Max', 'Cláudio Vieira', 'Avenida Boa Vista, 136', '11811110000'),
('Fábrica Tech', 'Sara Souza', 'Rua do Bosque, 137', '11800009999'),
('Distribuidora Atual', 'Fernando Oliveira', 'Rua Central, 138', '11799998888'),
('Inova Eletrônica', 'Vivian Teixeira', 'Rua das Estrelas, 139', '11788887777'),
('Conexão Express', 'Bruno Castro', 'Rua Harmonia, 140', '11777776666'),
('Alta Conexão', 'Brenda Lima', 'Avenida Rio Branco, 141', '11766665555'),
('Distribuidora Nacional', 'Lucio Rezende', 'Rua São Paulo, 142', '11755554444'),
('Digital Eletrônicos', 'Tânia Vieira', 'Avenida Verde, 143', '11744443333'),
('Infinity Comércio', 'Guilherme Rocha', 'Rua Amarela, 144', '11733332222'),
('Premium Distribuição', 'Flávia Santos', 'Rua Azul, 145', '11722221111'),
('Foco Digital', 'Murilo Costa', 'Rua das Rosas, 146', '11711110000'),
('Avançada SA', 'Beatriz Lopes', 'Avenida dos Girassóis, 147', '11700001111'),
('Inovação Distribuição', 'Fábio Pereira', 'Rua Primavera, 148', '11799992222'),
('Excelência Tech', 'Roberta Garcia', 'Rua Atlântica, 149', '11788883333'),
('Tech Distribuição', 'Cláudia Ribeiro', 'Rua Nova Horizonte, 150', '11555553333');

INSERT INTO Products (name, category, price, stock_amount, supplier_id) VALUES
('Smartphone Galaxy S21', 'Eletrônicos', 2500.00, 50, 1),
('Notebook Dell Inspiron', 'Computadores', 4200.00, 30, 2),
('Smart TV Samsung 55"', 'Eletrônicos', 3200.00, 20, 3),
('Tablet Apple iPad', 'Tablets', 3500.00, 25, 4),
('Mouse Logitech MX', 'Acessórios', 250.00, 80, 5),
('Teclado Gamer RGB', 'Acessórios', 350.00, 100, 6),
('Fone de Ouvido Bose', 'Áudio', 1200.00, 60, 7),
('Impressora Canon LBP', 'Periféricos', 800.00, 15, 8),
('Câmera Sony Alpha', 'Fotografia', 5500.00, 10, 9),
('Caixa de Som JBL', 'Áudio', 400.00, 70, 10),
('Monitor LG Ultrawide', 'Periféricos', 1500.00, 25, 11),
('SSD Kingston 1TB', 'Armazenamento', 500.00, 200, 12),
('HD Externo Seagate', 'Armazenamento', 600.00, 150, 13),
('Router TP-Link', 'Redes', 250.00, 75, 14),
('Smartwatch Apple Watch', 'Wearables', 2500.00, 30, 15),
('Câmera GoPro HERO9', 'Fotografia', 3000.00, 12, 16),
('Notebook Lenovo ThinkPad', 'Computadores', 4500.00, 22, 17),
('Tablet Samsung Galaxy Tab', 'Tablets', 1800.00, 35, 18),
('Mouse Razer DeathAdder', 'Acessórios', 280.00, 85, 19),
('Teclado Mecânico Corsair', 'Acessórios', 500.00, 60, 20),
('HD Interno WD Blue', 'Armazenamento', 350.00, 120, 21),
('Pen Drive SanDisk 64GB', 'Armazenamento', 50.00, 300, 22),
('Fone de Ouvido Sony', 'Áudio', 220.00, 65, 23),
('Smartphone iPhone 12', 'Eletrônicos', 5000.00, 40, 24),
('Smart TV LG 65"', 'Eletrônicos', 4500.00, 18, 25),
('Caixa de Som Anker', 'Áudio', 300.00, 50, 26),
('SSD Samsung 500GB', 'Armazenamento', 600.00, 130, 27),
('HD Externo Toshiba 1TB', 'Armazenamento', 450.00, 140, 28),
('Roteador D-Link', 'Redes', 180.00, 80, 29),
('Teclado Logitech K380', 'Acessórios', 180.00, 90, 30),
('Monitor Dell 24"', 'Periféricos', 1100.00, 20, 31),
('Tablet Amazon Fire', 'Tablets', 900.00, 50, 32),
('Impressora Epson EcoTank', 'Periféricos', 1200.00, 18, 33),
('Pen Drive Kingston 32GB', 'Armazenamento', 40.00, 280, 34),
('Fone de Ouvido Xiaomi', 'Áudio', 120.00, 85, 35),
('Câmera Canon EOS Rebel', 'Fotografia', 2800.00, 15, 36),
('Notebook HP Pavilion', 'Computadores', 3800.00, 28, 37),
('Smartphone Motorola Edge', 'Eletrônicos', 2800.00, 45, 38),
('Smart TV Sony Bravia', 'Eletrônicos', 5200.00, 12, 39),
('SSD Crucial 250GB', 'Armazenamento', 350.00, 150, 40),
('Roteador ASUS AC1900', 'Redes', 400.00, 70, 41),
('Tablet Lenovo Tab M10', 'Tablets', 950.00, 40, 42),
('Câmera Nikon D5600', 'Fotografia', 4500.00, 10, 43),
('Mouse Microsoft Arc', 'Acessórios', 300.00, 85, 44),
('Teclado Apple Magic', 'Acessórios', 450.00, 65, 45),
('Monitor Samsung 4K', 'Periféricos', 2000.00, 15, 46),
('Smartphone Xiaomi Mi 11', 'Eletrônicos', 2700.00, 55, 47),
('SSD Western Digital 1TB', 'Armazenamento', 700.00, 110, 48),
('Impressora HP DeskJet', 'Periféricos', 600.00, 30, 49),
('Fone de Ouvido Skullcandy', 'Áudio', 180.00, 90, 50);


INSERT INTO Orders (client_id, created_at, total_value) VALUES
(1, '2024-10-01', 5300.00),
(2, '2024-10-02', 3400.00),
(3, '2024-10-03', 4700.00),
(4, '2024-10-04', 1200.00),
(5, '2024-10-05', 2100.00),
(6, '2024-10-06', 4600.00),
(7, '2024-10-07', 3800.00),
(8, '2024-10-08', 2100.00),
(9, '2024-10-09', 6700.00),
(10, '2024-10-10', 5200.00),
(11, '2024-10-11', 2900.00),
(12, '2024-10-12', 4400.00),
(13, '2024-10-13', 2500.00),
(14, '2024-10-14', 2100.00),
(15, '2024-10-15', 4800.00),
(16, '2024-10-16', 3000.00),
(17, '2024-10-17', 5300.00),
(18, '2024-10-18', 4000.00),
(19, '2024-10-19', 3400.00),
(20, '2024-10-20', 3700.00),
(21, '2024-10-21', 2600.00),
(22, '2024-10-22', 4100.00),
(23, '2024-10-23', 3200.00),
(24, '2024-10-24', 6200.00),
(25, '2024-10-25', 5800.00),
(26, '2024-10-26', 4500.00),
(27, '2024-10-27', 3900.00),
(28, '2024-10-28', 5100.00),
(29, '2024-10-29', 3300.00),
(30, '2024-10-30', 2700.00),
(31, '2024-10-31', 5600.00),
(32, '2024-11-01', 4100.00),
(33, '2024-11-02', 3300.00),
(34, '2024-11-03', 3200.00),
(35, '2024-11-04', 4500.00),
(36, '2024-11-05', 3800.00),
(37, '2024-11-06', 4800.00),
(38, '2024-11-07', 2700.00),
(39, '2024-11-08', 6200.00),
(40, '2024-11-09', 5400.00),
(41, '2024-11-10', 3300.00),
(42, '2024-11-11', 4100.00),
(43, '2024-11-12', 5500.00),
(44, '2024-11-13', 4900.00),
(45, '2024-11-14', 4300.00),
(46, '2024-11-15', 5100.00),
(47, '2024-11-16', 5300.00),
(48, '2024-11-17', 4600.00),
(49, '2024-11-18', 2800.00),
(50, '2024-11-19', 5400.00);


INSERT INTO cart (order_id, product_id, amount, price_itens) VALUES
(1, 1, 2, 2500.00),    -- Pedido 1: 2 unidades do Smartphone Galaxy S21
(1, 3, 1, 3200.00),    -- Pedido 1: 1 unidade da Smart TV Samsung 55"
(2, 2, 1, 4200.00),    -- Pedido 2: 1 unidade do Notebook Dell Inspiron
(2, 5, 3, 250.00),     -- Pedido 2: 3 unidades do Mouse Logitech MX
(3, 4, 2, 3500.00),    -- Pedido 3: 2 unidades do Tablet Apple iPad
(3, 6, 1, 1200.00),    -- Pedido 3: 1 unidade do Teclado Gamer RGB
(4, 7, 1, 800.00),     -- Pedido 4: 1 unidade do Fone de Ouvido Bose
(5, 8, 2, 400.00),     -- Pedido 5: 2 unidades da Caixa de Som JBL
(6, 9, 1, 5500.00),    -- Pedido 6: 1 unidade da Câmera Sony Alpha
(7, 10, 3, 120.00),    -- Pedido 7: 3 unidades da Impressora Canon LBP
(8, 2, 1, 4500.00),    -- Pedido 8: 1 unidade do Notebook Dell Inspiron
(9, 4, 1, 3400.00),    -- Pedido 9: 1 unidade do Tablet Apple iPad
(10, 1, 2, 2200.00),   -- Pedido 10: 2 unidades do Smartphone Galaxy S21
(11, 5, 4, 220.00),    -- Pedido 11: 4 unidades do Mouse Logitech MX
(12, 7, 1, 800.00),    -- Pedido 12: 1 unidade do Fone de Ouvido Bose
(13, 6, 2, 1000.00),   -- Pedido 13: 2 unidades do Teclado Gamer RGB
(14, 10, 1, 400.00),   -- Pedido 14: 1 unidade da Caixa de Som JBL
(15, 8, 1, 5500.00),   -- Pedido 15: 1 unidade da Câmera Sony Alpha
(16, 9, 3, 850.00),    -- Pedido 16: 3 unidades da Impressora Canon LBP
(17, 7, 2, 1200.00),   -- Pedido 17: 2 unidades do Fone de Ouvido Bose
(18, 2, 1, 4000.00),   -- Pedido 18: 1 unidade do Notebook Dell Inspiron
(19, 4, 3, 3100.00),   -- Pedido 19: 3 unidades do Tablet Apple iPad
(20, 1, 1, 2600.00),   -- Pedido 20: 1 unidade do Smartphone Galaxy S21
(21, 6, 2, 1100.00),   -- Pedido 21: 2 unidades do Teclado Gamer RGB
(22, 10, 2, 450.00),   -- Pedido 22: 2 unidades da Caixa de Som JBL
(23, 3, 1, 3500.00),   -- Pedido 23: 1 unidade da Smart TV Samsung 55"
(24, 7, 1, 800.00),    -- Pedido 24: 1 unidade do Fone de Ouvido Bose
(25, 5, 2, 250.00),    -- Pedido 25: 2 unidades do Mouse Logitech MX
(26, 8, 1, 400.00),    -- Pedido 26: 1 unidade da Impressora Canon LBP
(27, 9, 2, 5000.00),   -- Pedido 27: 2 unidades da Câmera Sony Alpha
(28, 10, 3, 120.00),   -- Pedido 28: 3 unidades da Caixa de Som JBL
(29, 4, 2, 3400.00),   -- Pedido 29: 2 unidades do Tablet Apple iPad
(30, 1, 2, 2200.00),   -- Pedido 30: 2 unidades do Smartphone Galaxy S21
(31, 2, 1, 4200.00),   -- Pedido 31: 1 unidade do Notebook Dell Inspiron
(32, 6, 2, 1100.00),   -- Pedido 32: 2 unidades do Teclado Gamer RGB
(33, 3, 1, 3200.00),   -- Pedido 33: 1 unidade da Smart TV Samsung 55"
(34, 7, 1, 800.00),    -- Pedido 34: 1 unidade do Fone de Ouvido Bose
(35, 8, 1, 5500.00),   -- Pedido 35: 1 unidade da Câmera Sony Alpha
(36, 5, 1, 250.00),    -- Pedido 36: 1 unidade do Mouse Logitech MX
(37, 9, 2, 5000.00),   -- Pedido 37: 2 unidades da Câmera Sony Alpha
(38, 4, 2, 3400.00),   -- Pedido 38: 2 unidades do Tablet Apple iPad
(39, 10, 3, 120.00),   -- Pedido 39: 3 unidades da Caixa de Som JBL
(40, 1, 1, 2500.00),   -- Pedido 40: 1 unidade do Smartphone Galaxy S21
(41, 3, 1, 3500.00),   -- Pedido 41: 1 unidade da Smart TV Samsung 55"
(42, 6, 1, 1200.00),   -- Pedido 42: 1 unidade do Teclado Gamer RGB
(43, 5, 3, 250.00),    -- Pedido 43: 3 unidades do Mouse Logitech MX
(44, 8, 1, 400.00),    -- Pedido 44: 1 unidade da Impressora Canon LBP
(45, 4, 1, 3400.00),   -- Pedido 45: 1 unidade do Tablet Apple iPad
(46, 9, 1, 5500.00),   -- Pedido 46: 1 unidade da Câmera Sony Alpha
(47, 7, 1, 1200.00),   -- Pedido 47: 1 unidade do Fone de Ouvido Bose
(48, 2, 1, 4200.00),   -- Pedido 48: 1 unidade do Notebook Dell Inspiron
(49, 3, 2, 6400.00),   -- Pedido 49: 2 unidades da Smart TV Samsung 55"
(50, 5, 4, 220.00);    -- Pedido 50: 4 unidades do Mouse Logitech MX



select client.name as Nome, products.name as Produtos, cart.amount as Quantidade, orders.created_at as Pedido_Data
from client
inner join orders
on orders.client_id = client.id join cart on cart.order_id = orders.id join products on products.id = cart.product_id
where client.id = 3;

select suppliers.company_name as Empresa, suppliers.company_number as Contato, suppliers.company_adress as Endereço,  products.name as Produtos, products.category as Categoria
from suppliers
inner join products
on suppliers.id = products.supplier_id;

select products.name as Produto, cart.amount as Quantidade, orders.total_value as Valor_Total, orders.created_at as Pedido_Data,client.name as Cliente, client.email as Email, client.adress as Endereço
from products
inner join cart
on cart.product_id = products.id join orders on orders.id = cart.order_id join client on client.id = orders.client_id
where products.id = 1;

