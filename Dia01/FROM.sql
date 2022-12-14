-- Databricks notebook source
  SELECT * FROM silver_olist.pedido
-- leia-se selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido       
FROM silver_olist.pedido

-- selecione a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, 
       descSituacao
FROM silver_olist.pedido

-- selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, 
       descSituacao
       
FROM silver_olist.pedido

LIMIT 5
-- selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido e exibe 5 itens aleatórios

-- COMMAND ----------

SELECT *, 
        DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido
