##################
#  Dependencies  #
##################

express = require('express')

##############
#  Mappings  #
##############

router = express.Router()

router.get('/', (req, res) ->
	res.render('info/index', {
		_: {
			currentPage: 'info'
			pageTitle: 'Info & Skills'
		}
	});
)

module.exports = router