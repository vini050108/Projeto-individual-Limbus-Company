const database = require('../database/config')

function buscarPorSinner(sinner_id) {
  const instrucaoSql = `SELECT * FROM identities i WHERE i.sinner_id = ${sinner_id} AND NOT EXISTS ( SELECT 1 FROM usuario_identity ui WHERE ui.identity_id = i.identity_id );`
  return database.executar(instrucaoSql)
}

function cadastrarIdentity(usuario_id, identity_id) {
  const instrucaoSql = `INSERT INTO usuario_identity (usuario_id, identity_id) VALUES (${usuario_id}, ${identity_id})`
  return database.executar(instrucaoSql)
}

function buscarGrafico(usuario_id) {
  const instrucaoSql = `
    SELECT s.name, COUNT(ui.identity_id) as total
    FROM usuario_identity ui
    JOIN identities i ON ui.identity_id = i.identity_id
    JOIN sinners s ON i.sinner_id = s.sinner_id
    WHERE ui.usuario_id = ${usuario_id}
    GROUP BY s.name
  `
  return database.executar(instrucaoSql)
}

function buscarDoUsuario(usuario_id) {
  const instrucaoSql = `
    SELECT i.identity_id, i.name, s.name as sinner_name
    FROM usuario_identity ui
    JOIN identities i ON ui.identity_id = i.identity_id
    JOIN sinners s ON i.sinner_id = s.sinner_id
    JOIN skills sk ON sk.identity_id = i.identity_id
    WHERE ui.usuario_id = ${usuario_id}
  `
  return database.executar(instrucaoSql)
}

function buscarSkills(identity_id) {
  const instrucaoSql = `SELECT * FROM skills WHERE identity_id = ${identity_id}`
  return database.executar(instrucaoSql)
}

mo