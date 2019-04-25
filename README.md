# Converte tabela do Postgres em um arquivo do Sequelize Migrations
Tem como objetivo gerar o arquivo migrations do sequelize apartir de uma tabela do postgres


## Como Utilizar

### Execute o create da função disponivel no arquivo converter_tabela_sequelize
### ARQUIVO DE APENAS UMA TABELA
`SELECT converter_tabela_sequelize('nome_da_tabela'); `

### ARQUIVO DE TODAS AS TABELAS DO BANCO DE DADOS 
 `SELECT converter_tabela_sequelize(tablename) 
  FROM pg_tables
  WHERE schemaname = 'public'  
  ORDER BY tablename; `
