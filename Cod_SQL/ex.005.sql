CREATE TABLE cliente
(
	id_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(150) not null,
	cpf VARCHAR(14) not null
	
);

INSERT INTO cliente (nome, cpf)
VALUES ('João Silva', '123.456.789-00');

CREATE TABLE pedidos
(
	id_pedido SERIAL PRIMARY KEY,
	dataPedido DATE,
	ValorTotalCompra FLOAT,
	cliente_idfk int, FOREIGN KEY (cliente_idfk) REFERENCES cliente(id_cliente)
);
INSERT INTO pedidos (dataPedido, ValorTotalCompra)
VALUES ('2026-02-11', 362.22);


CREATE TABLE produto
(
	id_produto SERIAL PRIMARY KEY,
	descricaoProduto VARCHAR(200),
	preco FLOAT
)

insert into produto (descricaoProduto, preco) values
('Bola', '125.66'), ('Chuteira', '236.56'), ('Luvas', '99.99')


CREATE TABLE pedido_produto
(
	quantidade int,
	pedido_idfk int, FOREIGN KEY (pedido_idfk) REFERENCES pedidos(id_pedido),
	produto_idfk int, FOREIGN KEY (produto_idfk) REFERENCES produto(id_produto)
);


select * from cliente;
select * from produto;
SELECT * FROM pedidos;
select * from pedido_produto;

SELECT 
    c.nome AS cliente,
    c.cpf,
    p.id_pedido,
    p.dataPedido,
    pr.descricaoProduto,
    pp.quantidade,
    pr.preco,
    (pp.quantidade * pr.preco) AS subtotal
FROM cliente c
INNER JOIN pedidos p ON p.cliente_idfk = c.id_cliente
INNER JOIN pedido_produto pp ON pp.pedido_idfk = p.id_pedido
INNER JOIN produto pr ON pr.id_produto = pp.produto_idfk;
