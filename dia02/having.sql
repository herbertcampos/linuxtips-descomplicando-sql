-- Databricks notebook source
SELECT descUF,
    COUNT(idVendedor)
    
FROM silver_olist.vendedor

GROUP BY descUF

HAVING COUNT(idVendedor) >= 100 --HAVING é um filtro depois da agregação, aqui está mostrando os estados com mais de 100 vendedores

-- COMMAND ----------

SELECT descUF,
    COUNT(idVendedor) AS qtVendedorUF
    
FROM silver_olist.vendedor

WHERE descUF in('SP', 'MG', 'RJ', 'ES') --Limita a lista só com os estados do sudeste

GROUP BY descUF

HAVING qtVendedorUF >= 100 --HAVING é um filtro depois da agregação, aqui está mostrando os estados com mais de 100 vendedores

ORDER BY qtVendedorUF DESC --ordena descrescente a lista
