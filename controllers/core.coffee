router = require('express').Router()

router.get('/', (req, res) ->
	res.render('core/index');
)

module.exports = router
