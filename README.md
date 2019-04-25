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


# EXEMPLO

Caso no seu banco de dados Postgres SQL exista uma tabela appointments com os campos :
- id (Integer, Not Null, Primary Key)
- date(Timestamp...)
- review(Character Varying, Not Null)
- ...

a Função proposta vai converter essa tabela em um arquivo com a seguinte estrutura.

` 'use strict'`

`module.exports = {`
`  up: (queryInterface, Sequelize) => {`
`    return queryInterface.createTable('appointments', {`
    id: {
       	allowNull:false
        type: Sequelize.INTEGER
       	primaryKey: true
    },
        date: {
       	allowNull:true
        type: Sequelize.DATE
	    },
        review: {
	       allowNull:true
        type: Sequelize.STRING
    },
        user_id: {
	       allowNull:false
        type: Sequelize.INTEGER
    },
        provider_id: {
	       allowNull:false
        type: Sequelize.INTEGER
    },
        created_at: {
	       allowNull:false
        type: Sequelize.DATE
    },
        updated_at: {
	       allowNull:false
        type: Sequelize.DATE
    }})
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('appointments')
  }
} `
