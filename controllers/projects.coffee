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
			pageTitle: 'Projects'
		}
	});
)

module.exports = router