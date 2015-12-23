##################
#  Dependencies  #
##################

express = require('express')

##############
#  Mappings  #
##############

router = express.Router()

router.get('/', (req, res) ->
	res.render('projects/index', {
		_: {
			currentPage: 'projects'
			pageTitle: 'My Projects'
		}
	});
)

module.exports = router