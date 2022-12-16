-- Databricks notebook source
SELECT T1.*, --selecione todas as colunas da tabela pedido
       T2.descUF --traga informaceos uf da tabela cliente

FROM silver_olist.pedido AS T1

LEFT JOIN silver_olist.cliente AS T2
ON T1.idCliente = T2.idCliente
