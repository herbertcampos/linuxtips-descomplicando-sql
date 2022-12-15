-- Databricks notebook source
SELECT COUNT(*) AS nrLinhas, -- conta linhas nao nulas
       COUNT(idCliente) AS nrIdClienteNaoNulo,  --conta id de clientes nao nulos
       COUNT(DISTINCT idCliente) AS nrIdClienteDistintos, --conta id de clientes distintos
       
       COUNT(idClienteUnico) AS nrIdCleinteUnico, 
       COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos --conta id de clientes unicos distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *
FROM silver_olist.cliente


-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT(distinct idCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos
  
  FROM silver_olist.cliente
  
  WHERE descCidade IN ('franca')

-- COMMAND ----------

SELECT
      AVG(vlPreco) AS avgPreco, --media da coluna vlPreco (preço medio dos produtos)
      
      PERCENTILE(vlPreco, 0,5) as medianPreco,
      
      MAX(vlPreco) AS maxPreco, --maximo da coluna vlPreco 
      AVG(vlFrete) AS avgFrete, --media da coluna vlfrete
      MAX(vlFrete) AS maxFrete,
      MIN(vlFrete) AS minFrete
             
FROM silver_olist.item_pedido
