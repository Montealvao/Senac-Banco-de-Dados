create database TechStore;
use TechStore;

create table client(
id varchar(36) primary key,
name varchar(50) not null,
email varchar(100) unique,
adress varchar(80) not null
);

create table products(
id varchar(36) primary key,
name varchar(70) not null,
category varchar(30) not null,
price int not null,
stock_amount int
);

create table suppliers(
id varchar(36) primary key,
company_name varchar(70) not null,
company_adress varchar(80) not null,
company_number varchar(20),
productID varchar(36),

foreign key(productID) references products(id)
);

create table orders(
id varchar(36) primary key,
clientID varchar(36),
total_value int,
created_at timestamp,

foreign key(clientID) references client(id)
);

create table cart(
orderID varchar(36),
productID varchar(36),
amount int,
price_itens int,

foreign key(orderID) references orders(id),
foreign key(productID) references products(id)
);

INSERT INTO client (id, name, email, adress) VALUES
(UUID(), 'João Silva', 'joao.silva@example.com', 'Rua A, 123, São Paulo'),
(UUID(), 'Maria Oliveira', 'maria.oliveira@example.com', 'Av. B, 456, Rio de Janeiro'),
(UUID(), 'Carlos Pereira', 'carlos.pereira@example.com', 'Rua C, 789, Belo Horizonte'),
(UUID(), 'Fernanda Souza', 'fernanda.souza@example.com', 'Av. D, 101, Curitiba'),
(UUID(), 'Lucas Almeida', 'lucas.almeida@example.com', 'Rua E, 202, Porto Alegre');

INSERT INTO products (id, name, category, price, stock_amount) VALUES
(UUID(), 'Notebook Gamer', 'Eletrônicos', 5000, 10),
(UUID(), 'Smartphone', 'Eletrônicos', 2000, 20),
(UUID(), 'Monitor 24"', 'Eletrônicos', 1500, 15),
(UUID(), 'Cadeira Ergonômica', 'Móveis', 800, 30),
(UUID(), 'Teclado Mecânico', 'Informática', 350, 50),
(UUID(), 'Mouse Óptico', 'Informática', 100, 100),
(UUID(), 'Cafeteira Elétrica', 'Eletrodomésticos', 250, 40),
(UUID(), 'Geladeira Inox', 'Eletrodomésticos', 3000, 5),
(UUID(), 'Fone de Ouvido Bluetooth', 'Eletrônicos', 350, 60),
(UUID(), 'TV 50" 4K', 'Eletrodomésticos', 2500, 8);

INSERT INTO suppliers (id, company_name, company_adress, company_number, productID) VALUES
(UUID(), 'TechSupplies Ltda.', 'Rua F, 100, São Paulo', '11-987654321', (SELECT id FROM products WHERE name = 'Notebook Gamer')),
(UUID(), 'Eletrônica Pro', 'Av. G, 200, Rio de Janeiro', '21-912345678', (SELECT id FROM products WHERE name = 'Smartphone')),
(UUID(), 'Furniture Co.', 'Rua H, 300, Belo Horizonte', '31-934567890', (SELECT id FROM products WHERE name = 'Cadeira Ergonômica')),
(UUID(), 'Gaming Gear', 'Av. I, 400, Curitiba', '41-965432109', (SELECT id FROM products WHERE name = 'Teclado Mecânico')),
(UUID(), 'Home Appliances', 'Rua J, 500, Porto Alegre', '51-976543210', (SELECT id FROM products WHERE name = 'Cafeteira Elétrica'));

INSERT INTO orders (id, clientID, total_value, created_at) VALUES
(UUID(), (SELECT id FROM client WHERE name = 'João Silva'), 7500, '2024-11-01 14:30:00'),
(UUID(), (SELECT id FROM client WHERE name = 'Maria Oliveira'), 3200, '2024-11-02 15:00:00'),
(UUID(), (SELECT id FROM client WHERE name = 'Carlos Pereira'), 1800, '2024-11-03 16:45:00'),
(UUID(), (SELECT id FROM client WHERE name = 'Fernanda Souza'), 2900, '2024-11-04 09:00:00'),
(UUID(), (SELECT id FROM client WHERE name = 'Lucas Almeida'), 6000, '2024-11-05 18:20:00');

INSERT INTO cart (orderID, productID, amount, price_itens) VALUES
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'João Silva')), (SELECT id FROM products WHERE name = 'Notebook Gamer'), 1, 5000),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'João Silva')), (SELECT id FROM products WHERE name = 'Smartphone'), 1, 2000),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Maria Oliveira')), (SELECT id FROM products WHERE name = 'Monitor 24"'), 2, 3000),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Maria Oliveira')), (SELECT id FROM products WHERE name = 'Cadeira Ergonômica'), 1, 800),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Carlos Pereira')), (SELECT id FROM products WHERE name = 'Teclado Mecânico'), 1, 350),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Carlos Pereira')), (SELECT id FROM products WHERE name = 'Mouse Óptico'), 2, 200),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Fernanda Souza')), (SELECT id FROM products WHERE name = 'Cafeteira Elétrica'), 1, 250),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Fernanda Souza')), (SELECT id FROM products WHERE name = 'Geladeira Inox'), 1, 3000),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Lucas Almeida')), (SELECT id FROM products WHERE name = 'Fone de Ouvido Bluetooth'), 2, 700),
((SELECT id FROM orders WHERE clientID = (SELECT id FROM client WHERE name = 'Lucas Almeida')), (SELECT id FROM products WHERE name = 'TV 50" 4K'), 1, 2500);


select client.name as Nome, products.name as Produtos, cart.amount as Quantidade, orders.created_at as Pedido_Data
from client
inner join orders
on orders.clientID = client.id join cart on cart.orderID = orders.id join products on products.id = cart.productID
where client.name = 'João Silva';

select suppliers.company_name as Empresa, suppliers.company_number as Contato, suppliers.company_adress as Endereço,  products.name as Produtos, products.category as Categoria
from suppliers
inner join products
on products.id = suppliers.productID;

select products.name as Produto, cart.amount as Quantidade, orders.total_value as Valor_Total, orders.created_at as Pedido_Data,client.name as Cliente, client.email as Email, client.adress as Endereço
from products
inner join cart
on cart.productID = products.id join orders on orders.id = cart.orderID join client on client.id = orders.clientID
where products.name = 'Teclado Mecânico';

