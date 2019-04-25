CREATE OR REPLACE FUNCTION converter_tabela_sequelize(text)
  RETURNS text AS
$BODY$
select  substring(migrations,1,length(migrations)- 1) 
|| '})
  },

  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable(''' || $1 ||''')
  }
}'

from (
select array_to_string(array(
SELECT   case when dados.attnum = 1 then 
'''use strict''

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('''  || table_name ||''', {
' else '' end || '    ' || column_name || ': {
	allowNull:' || case when is_nullable = 'NO' then 'false' else 'true' end || chr(13)|| chr(10) || '        ' ||
	case when data_type ilike 'timestamp%' then 'type: Sequelize.DATE
	' 
	when data_type ilike 'CHARACTE%' then 'type: Sequelize.STRING'
	else 'type: Sequelize.'||upper(data_type) end ||
	case when  dados.attnum = 1 then chr(10) || '
	primaryKey: true' else '' end || chr(13)|| chr(10)|| '    },'

	as migrations

	FROM information_schema.columns,  (SELECT a.attname AS chave_pk,  c.relname, a.attnum
FROM pg_class c
  INNER JOIN pg_attribute a ON (c.oid = a.attrelid)
  INNER JOIN pg_index i ON (c.oid = i.indrelid)) 
  as dados
WHERE table_name = $1 and dados.relname = table_name and dados.chave_pk = column_name group by table_name,  attnum, column_name, is_nullable, data_type order by attnum), chr(13)|| chr(10))  as migrations) as dados;


$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;
