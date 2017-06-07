router = require('express').Router()

router.get('/', (req, res) ->
	res.render('index');
)

router.get('/contact', (req, res) ->
	res.render('contact', {
		_: {
			currentPage: 'contact'
			pageTitle: 'Contact Me'
		}
	});
)

router.get('/cv', (req, res) ->
	res.render('cv');
)

router.get('/info', (req, res) ->
	res.render('info', {
		_: {
			currentPage: 'info'
			pageTitle: 'Info & Skills'
		}
	});
)

router.get('/positions', (req, res) ->
	res.render('positions', {
		_: {
			currentPage: 'positions'
			pageTitle: 'Positions'
		}
	});
)

router.get('/references', (req, res) ->
	res.render('references', {
		_: {
			currentPage: 'references'
			pageTitle: 'References'
		}
	});
)

module.exports = router
