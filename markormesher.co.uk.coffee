##################
#  Dependencies  #
##################

path = require('path')
express = require('express')
bodyParser = require('body-parser')
coffeeMiddleware = require('coffee-middleware')
sassMiddleware = require('node-sass-middleware')
cookieParser = require('cookie-parser')
session = require('express-session')
flash = require('express-flash')
rfr = require('rfr')
secrets = rfr('./helpers/secrets.coffee')

############
#  Routes  #
############

# start app
app = express()

# middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(coffeeMiddleware({
	src: __dirname + '/assets'
	encodeSrc: false
	bare: true
}))
app.use(sassMiddleware({
	src: __dirname + '/assets/'
	dest: __dirname + '/public'
	outputStyle: 'compressed'
}))
app.use(cookieParser('markormesher.co.uk'))
app.use(session({
	secret: secrets.COOKIE_SECRET
	resave: false
	saveUninitialized: true
}))
app.use(flash())

# pull routes from routes folder
routes = {
	'': rfr('./controllers/core')
	'cv': rfr('./controllers/cv')
	'contact': rfr('./controllers/contact')
	'info': rfr('./controllers/info')
	'positions': rfr('./controllers/positions')
	'projects': rfr('./controllers/projects')
	'references': rfr('./controllers/references')
};

for stem, file of routes
	app.use('/' + stem, file)

# stop favicon requests
app.use('/favicon.ico', (req, res) -> res.end())

###########
#  Views  #
###########

app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'jade')
app.use(express.static(path.join(__dirname, 'public')))

####################
#  Error handlers  #
####################

# catch 404 and forward to error handler
app.use((req, res, next) ->
	err = new Error('Not Found')
	err.status = 404
	next(err)
)

# general error handler
app.use((error, req, res, next) ->
	res.status(error.status || 500)
	res.render('core/error', {
		_: {
			title: error.status + ': ' + error.message
		}
		message: error.message
		status: error.status || 500
		error: if app.get('env') == 'development' then error
	})
)

############
#  Start!  #
############

app.listen(3001)