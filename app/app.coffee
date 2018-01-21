path = require('path')
express = require('express')
coffeeMiddleware = require('coffee-middleware')
sassMiddleware = require('node-sass-middleware')
rfr = require('rfr')

app = express()

# coffeescript and scss
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

# routes
app.use('/', rfr('./controllers/main-routes'))
app.use('/projects', rfr('./controllers/project-routes'))

# stop favicon requests
app.use('/favicon.ico', (req, res) -> res.end())

# views
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'pug')
app.use(express.static(path.join(__dirname, 'public')))

# catch-all route for 404s
app.use((req, res, next) ->
	err = new Error('Not Found: ' + req.url)
	err.status = 404
	next(err)
)

# general error handler
app.use((error, req, res) ->
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

app.listen(3000, () -> console.log('Listening on port 3000'))
