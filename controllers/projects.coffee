router = require('express').Router()

router.get('/', (req, res) ->
	res.render('projects/index', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Projects'
		}
	});
)

router.get('/titanic', (req, res) ->
	res.render('projects/case-studies/titanic', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Titanic'
		}
	})
)

router.get('/petplan-live', (req, res) ->
	res.render('projects/case-studies/petplan-live', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Petplan Live!'
		}
	})
)

router.get('/unitu-android-app', (req, res) ->
	res.render('projects/case-studies/unitu-android-app', {
		_: {
			currentPage: 'projects'
			pageTitle: 'Case Study: Unitu Android App'
		}
	})
)

module.exports = router
