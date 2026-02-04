-- Relacionamento de tabelas usando JOIN
-- estou juntando várias tabelas que têm ligação entre si pelas chaves (ids)

select 
T1.id as Id_vendas, -- id da venda para identificar cada venda -- quantidade de produtos vendidos
T1.total_price as Valor, -- valor total da venda

T2.created_at as data_pedido, -- data que o pedido foi criado (vem da tabela de ordens)
T2.status, -- status do pedido (pago, enviado, etc)

T3.name as produto, -- nome do produto vendido
T4.name as categotia_produto, -- nome da categoria do produto

T5.first_name as nome_cliente, -- nome do cliente
T5.cell_phone as contato, -- telefone do cliente
T5.state as estado -- estado do cliente

From Ecommece.dbo.Vendas as T1 -- tabela principal de vendas

-- ligando vendas com ordens
-- usei order_id porque ele guarda o id do pedido
-- e esse id existe na tabela Ordens
left join Ecommece.dbo.Ordens as T2 on T1.order_id = T2.id

-- ligando vendas com produto
-- product_id é o id do produto vendido
-- ele corresponde ao id da tabela Produto
left join Ecommece.dbo.Produto as T3 on T1.product_id = T3.id

-- ligando produto com categoria
-- category_id mostra a categoria do produto
-- esse id existe na tabela Categoria
left join Ecommece.dbo.Categoria as T4 on T3.category_id = T4.id

-- ligando ordem com cliente
-- customer_id mostra quem comprou
-- ele corresponde ao id da tabela Clientes
left join Ecommece.dbo.Clientes as T5 on T2.customer_id = T5.id
