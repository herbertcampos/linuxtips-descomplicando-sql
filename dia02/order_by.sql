-- Databricks notebook source
-- Ordenação, primeira forma

SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF 2 --o numero 2, dias pra ordenar pela segunda coluna

-- COMMAND ----------

-- Ordenação, segunda forma

SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado  

-- COMMAND ----------

-- Ordenação, terceira forma

SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico) DESC --DESC de decrescente



-- COMMAND ----------

-- Ordenação, terceira forma

SELECT 
    descUF,
    COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico) DESC --DESC de decrescente

LIMIT 1
