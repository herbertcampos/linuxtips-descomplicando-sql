-- Databricks notebook source
SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'delivered' 

-- -> LIMIT 100 <- limita a 100 linhas 
-- leia-se: selecione todas linhas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao = 'canceled' 
AND year(dtPedido) = '2018'

-- -> LIMIT 100 <- limita a 100 linhas 
-- leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja cancelado 'canceled' e o ano do pedido seja 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- -> LIMIT 100 <- limita a 100 linhas 
-- leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja cancelado 'canceled' e o ano do pedido seja 2018

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- -> LIMIT 100 <- limita a 100 linhas 
-- leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja cancelado 'canceled' e o ano do pedido seja 2018

-- COMMAND ----------

SELECT *,
datediff(dtEstimativaEntrega,dtAprovado) 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega,dtAprovado) > 30
-- -> LIMIT 100 <- limita a 100 linhas 
-- leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido esteja em situação shipped ou canceled, no ano de 2018 e a estimativa de entrega seja maior que 30 dias
