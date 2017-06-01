router = require('express').Router()

router.get('/', (req, res) ->
	res.render('contact/index', {
		_: {
			currentPage: 'contact'
			pageTitle: 'Contact Me'
		}
	});
)

module.exports = router
