const identitiesModel = require('../models/identitiesModel')

function buscarPorSinner(req, res) {
  const { sinner_id } = req.params
  identitiesModel.buscarPorSinner(sinner_id)
    .then(resultado => res.json(resultado))
    .catch(err => res.status(500).json({ erro: 'Erro ao buscar identidades' }))
}

function cadastrarIdentity(req, res) {
  const { usuario_id, identity_id } = req.body
  identitiesModel.cadastrarIdentity(usuario_id, identity_id)
    .then(resultado => res.json(resultado))
    .catch(err => res.status(500).json({ erro: 'Erro ao cadastrar identidade' }))
}

function buscarGrafico(req, res) {
  const { usuario_id } = req.params
  identitiesModel.buscarGrafico(usuario_id)
    .then(resultado => res.json(resultado))
    .catch(err => res.status(500).json({ erro: 'Erro ao buscar dados do gráfico' }))
}

function buscarDoUsuario(req, res) {
  const { usuario_id } = req.params
  identitiesModel.buscarDoUsuario(usuario_id)
    .then(resultado => res.json(resultado))
    .catch(err => res.status(500).json({ erro: 'Erro ao buscar identidades do usuário' }))
}

function buscarSkills(req, res) {
  const { identity_id } = req.params
  identitiesModel.buscarSkills(identity_id)
    .then(resultado => res.json(resultado))
    .catch(err => res.status(500).json({ erro: 'Erro ao buscar skills' }))
}

module.exports = { buscarPorSinner, cadastrarIdentity, buscarGrafico, buscarDoUsuario, buscarSkills }