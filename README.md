# Análise de Churn de Clientes – ToComFome

## Problema analisado

Identificar quais características dos clientes estão associadas ao churn em um aplicativo de delivery, buscando compreender os fatores de risco e identificar oportunidades para ações de retenção de clientes.

## Fonte de dados

Base de dados fictícia de clientes de um aplicativo de delivery, contendo uma amostra de 10 mil clientes.

- Período de referência: 30/06/2019 a 30/10/2019.
- Dados disponíveis no repositório: [Pasta dados](inserir-link).

## Ferramentas utilizadas

- PostgreSQL.
- DBeaver.
- Python (Pandas, Matplotlib, Seaborn, Statsmodels e woe_iv_bin).
- Jupyter Notebook.

## Metodologia

- Consulta e integração das tabelas utilizando SQL.
- Análise exploratória e estatística descritiva.
- Tratamento e transformação dos dados.
- Criação de variáveis.
- Análise de associação por meio do Information Value (IV).
- Cruzamento das variáveis.

## Principais resultados

- A taxa de churn observada na amostra foi de 20,13%.
- Clientes que realizaram pedidos em apenas uma categoria apresentaram taxa de churn de 27,44%, enquanto aqueles que utilizaram duas categorias apresentaram 7,47%.
- Clientes entre 45 e 55 anos apresentaram taxa de churn de 47,19%.
- Minas Gerais apresentou taxa de churn de 32,04%, superior às observadas em São Paulo e Rio de Janeiro.
- Clientes participantes do programa de fidelidade apresentaram menor taxa de churn (14,11%) em comparação aos não participantes (26,52%).
- O limite de crédito de mercado não apresentou um padrão suficientemente consistente de associação com o churn.

## Análise completa

A análise detalhada, com tabelas, cálculos, insights e recomendações de negócio, está disponível no artigo publicado no Medium.

Artigo: [Leia a análise completa](https://medium.com/@ewerton_lemes/an%C3%A1lise-de-churn-de-clientes-no-aplicativo-de-delivery-tocomfome-431d672ed99f)

A documentação do projeto, elaborada seguindo a metodologia CRISP-DM, também está disponível neste repositório.
