-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação

-- 1)
    INSERT INTO clientes
  (nome, lealdade)
  VALUES
	('Georgia',0);



-- 2)

INSERT INTO pedidos
  (status, cliente_id)
  VALUES
	('Recebido',6);


-- 3)

INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
  VALUES
	(3,1);
INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
  VALUES
	(3,2);
INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
  VALUES
	(3,6);
INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
  VALUES
	(3,8);
INSERT INTO produtos_pedidos
  (pedido_id, produto_id)
  VALUES
	(3,8);

-- Leitura

-- 1)
SELECT
	c.id,
    c.nome,
    c.lealdade,
	p.id,
    p.status,
    p.cliente_id,
    pr.id,
    pr.nome,
    pr.tipo,
    pr."preço",
    pr.pts_de_lealdade
FROM
  produtos_pedidos pe
JOIN pedidos p
	ON pe.pedido_id = p.id
JOIN produtos pr
	ON pe.produto_id = pr.id
JOIN clientes c
	ON p.cliente_id = c.id
WHERE c.nome LIKE 'Georgia';



-- Atualização

-- 1)
UPDATE clientes SET lealdade = 48 WHERE clientes.nome LIKE 'Georgia';


-- Deleção

-- 1)
DELETE FROM clientes WHERE clientes.nome LIKE 'Marcelo';


