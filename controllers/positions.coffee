##################
#  Dependencies  #
##################

express = require('express')

##############
#  Mappings  #
##############

router = express.Router()

router.get('/', (req, res) ->
	res.render('positions/index', {
		_: {
			currentPage: 'positions'
			pageTitle: 'Positions'
		}
	});
)

module.exports = router