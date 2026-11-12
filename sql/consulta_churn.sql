-- Verificação preliminar --

SELECT
	*
FROM 
	db_churn.fato_churn
LIMIT 5

SELECT
	*
FROM 
	db_churn.dim_clientes
LIMIT 5

SELECT
	count(*) AS linhas,
	count("ClientId") AS linhas_nao_nulas
FROM 
	db_churn.fato_churn
	
SELECT
	count(*) AS linhas,
	count("ClientId") AS linhas_nao_nulas
FROM 
	db_churn.dim_clientes

SELECT
	*
FROM 
	db_churn.dim_clientes
LIMIT 5

	-- Query para selecinonar a tabela --

SELECT 
	d."ClientId",
	d."DataExtracao",
	d."Score_Credito",
	d."Estado",
	d."Gênero",
	d."Idade",
	d."Tempo_Cliente",
	ROUND(CAST(d."Limite_Credito_Mercado" AS numeric), 2) AS "Limite_Credito_Mercado",
	d."Qte_Categorias",
	d."Usa_Cartao_Credito",
	d."Programa_Fidelidade",
	ROUND(CAST(d."Sum_Pedidos_Acumulados" AS numeric), 2) AS "Soma_Pedidos_Acumulados",
	f."DataUltimaTransacao",
	CAST('2019-10-30' AS date) AS "Data_Referencia",
	CAST('2019-10-30' AS date) - f."DataUltimaTransacao" AS "Dias_sem_Atividade",
	CASE 
		WHEN CAST('2019-10-30' AS date) - f."DataUltimaTransacao" <=30 THEN 0
		ELSE 1
	END AS "Churn"
	
FROM 
	db_churn.dim_clientes d
	JOIN db_churn.fato_churn f
		ON d."ClientId" = f."ClientId"
		