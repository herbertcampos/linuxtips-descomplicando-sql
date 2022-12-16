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

-- Exercicio 01 Tempo de foco - Lista de Pedidos com mais de um item

SELECT *
FROM silver_olist.item_pedido
WHERE idPedidoItem > 1

-- COMMAND ----------

-- Exercicio 2 -- Lista de pedidos que o frete é mais caro que o item

SELECT *
FROM silver_olist.item_pedido
WHERE vlFrete > vlPreco

-- COMMAND ----------

-- Exercicio 3 -- Pedidos que ainda não foram enviados

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'invoiced'

-- COMMAND ----------

-- Exercicio 4 -- Pedidos entregues com atraso

SELECT *
FROM silver_olist.pedido

WHERE dtEntregue > dtEstimativaEntrega


-- COMMAND ----------

-- Exercicio 5 -- Pedidos entregues com 2 dias antecedencia

SELECT *,
datediff(dtEstimativaEntrega,dtEntregue) 
FROM silver_olist.pedido

WHERE DATEDIFF(dtEstimativaEntrega,dtEntregue) = 2

-- COMMAND ----------

-- Exercicio 6 -- Pedidos em dez 2017 entregues com atraso

SELECT *
FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017
AND MONTH(dtPedido) = 12
AND descSituacao = 'delivered'
AND date(dtEntregue) > date(dtEstimativaEntrega)

-- COMMAND ----------

-- 08 
    SELECT *,
        ROUND(vlPagamento / nrPacelas,2) AS vlParcela

    FROM silver_olist.pagamento_pedido

WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------

-- CASE 02
SELECT *,
        vlPreco + vlFrete AS vlTotal,
        vlFrete / (vlPreco + vlFrete) AS pctFrete,
        
        CASE
          WHEN  vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
          WHEN  vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% A 25%'
          WHEN  vlFrete / (vlPreco + vlFrete) <= 0.50 THEN '25% A 50%'
          ELSE '+50%'
        END AS descFretePct  

    FROM silver_olist.item_pedido

