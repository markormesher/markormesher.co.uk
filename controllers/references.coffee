##################
#  Dependencies  #
##################

express = require('express')

##############
#  Mappings  #
##############

router = express.Router()

router.get('/', (req, res) ->
	res.render('references/index', {
		_: {
			currentPage: 'references'
			pageTitle: 'References'
		}
	});
)

module.exports = router