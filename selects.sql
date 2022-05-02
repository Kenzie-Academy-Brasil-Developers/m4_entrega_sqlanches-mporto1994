-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
    SELECT
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
	ON pe.produto_id = pr.id;
-- 2)
    SELECT
	pe.id
FROM
  produtos_pedidos pp
JOIN pedidos pe
	ON pp.pedido_id = pe.id
JOIN produtos pr
	ON pp.produto_id = pr.id
    WHERE pr.nome LIKE 'Fritas';
-- 3)
SELECT
	c.nome Gostam_de_Fritas
FROM
  produtos_pedidos pp
JOIN pedidos pe
	ON pp.pedido_id = pe.id
JOIN produtos pr
	ON pp.produto_id = pr.id
JOIN clientes c
	ON pe.cliente_id = c.id
WHERE pr.nome LIKE 'Fritas';
-- 4)
SELECT
	SUM(pr."preço")
FROM
  produtos_pedidos pp
JOIN pedidos pe
	ON pp.pedido_id = pe.id
JOIN produtos pr
	ON pp.produto_id = pr.id
JOIN clientes c
	ON pe.cliente_id = c.id
WHERE c.nome LIKE 'Laura';
-- 5)
SELECT
	pr.nome, 
    COUNT(pr.nome)
FROM
  produtos_pedidos pp
JOIN pedidos pe
	ON pp.pedido_id = pe.id
JOIN produtos pr
	ON pp.produto_id = pr.id
GROUP BY pr.nome
	ORDER BY pr.nome;