-- Databricks notebook source
-- 01 selecionar todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 Selecione todos os clientes paulistas

SELECT * 
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 Selecione todos os clientes cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'


-- COMMAND ----------

-- 04 selecione todos os produtos de bebe e perfumaria altura maior que 5cm

SELECT *
FROM silver_olist.produto 
WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

-- Exercicio 01 Tempo de foco

SELECT *
FROM silver_olist.item_pedido
WHEN idPedido > 1
