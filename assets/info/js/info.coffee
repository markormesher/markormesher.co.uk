$(document).ready(() ->

	languageSections = $('p.language')
	languageExpandLabel = $('.language-expand')

	languageSections.hide()
	languageExpandLabel.show().find('a').click((e) ->
		e.preventDefault()
		languageSections.show()
		languageExpandLabel.hide()
	)

)