const express = require('express')
const router = express.Router()
const identitiesController = require('../controllers/identitiesController')

router.get('/identities/:sinner_id', identitiesController.buscarPorSinner)
router.post('/usuario-identity', identitiesController.cadastrarIdentity)
router.get('/usuario-identity/:usuario_id', identitiesController.buscarGrafico)
router.get('/minhas-identities/:usuario_id', identitiesController.buscarDoUsuario)
router.get('/skills/:identity_id', identitiesController.buscarSkills)

module.exports = router