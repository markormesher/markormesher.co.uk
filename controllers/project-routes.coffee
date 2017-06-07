router = require('express').Router()

# base: /projects

router.get('/', (req, res) ->
	res.render('projects', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Projects'
		}
	});
)

router.get('/titanic', (req, res) ->
	res.render('projects/titanic', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Titanic'
		}
	})
)

router.get('/petplan-live', (req, res) ->
	res.render('projects/petplan-live', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Petplan Live!'
		}
	})
)

router.get('/unitu-android-app', (req, res) ->
	res.render('projects/unitu-android-app', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Unitu Android App'
		}
	})
)

module.exports = router
