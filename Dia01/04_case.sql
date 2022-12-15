-- Databricks notebook source
SELECT *,
        CASE 
             WHEN descUF = 'SP' THEN 'Paulista'
             WHEN descUF = 'RJ' THEN 'Fluminense'
             WHEN descUF = 'PR' THEN 'Paranaense'
             ELSE 'Outros'
        END AS descNacionalidade

                
FROM silver_olist.cliente


-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SP'
