CREATE TABLE pedidos
(
	id_pedido SERIAL PRIMARY KEY,
	dataPedido DATE,
	ValorTotalCompra FLOAT
);

CREATE TABLE produto
(
	id_produto SERIAL PRIMARY KEY,
	descricaoProduto VARCHAR(200),
	preco FLOAT
);

CREATE TABLE cliente
(
	id_cliente SERIAL PRIMARY KEY,
	nome VARCHAR(150) not null,
	cpf VARCHAR(14) not null,
	pedido_idfk int, FOREIGN KEY (pedido_idfk) REFERENCES pedidos(id_pedido)
);

CREATE TABLE pedido_produto
(
	quantidade int,
	pedido_idfk int, FOREIGN KEY (pedido_idfk) REFERENCES pedidos(id_pedido),
	produto_idfk int, FOREIGN KEY (produto_idfk) REFERENCES produto(id_produto)
)