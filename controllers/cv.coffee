router = require('express').Router()

router.get('/', (req, res) ->
	res.render('cv/index');
)

module.exports = router
