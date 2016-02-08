$(document).ready(() ->

	# slideshow
	slideshowEnabled = true
	slideshowPosition = -1;

	# get views
	languageLinksBox = $('div.language-cloud')
	languageLinks = $('ul li', languageLinksBox)
	languageSections = $('p.language')
	languageShowAll = $('.language-show-all')

	# hide all language sections and show shuffling links
	languageSections.hide()
	languageLinksBox.show()

	# "show all" link click
	languageShowAll.show().find('a').click(() ->
		# stop slideshow
		slideshowEnabled = false

		languageSections.show()
		languageLinks.addClass('active')
		languageShowAll.hide()
	)

	# individual link clink
	languageLinks.click(() ->
		e = $(this)
		showLanguage(e.data('target'), e)
	)

	# show a given language
	showLanguage = (key, link) ->
		# stop slideshow
		if link then slideshowEnabled = false

		# update link classes
		languageLinks.removeClass('active')
		languageLinks.filter('[data-target = "' + key + '"]').addClass('active')

		# hide/show language sections
		languageShowAll.show()
		languageSections.hide()
		languageSections.filter('[data-key = "' + key + '"]').show()

	# slideshow
	slideshowNext = () ->
		if (!slideshowEnabled) then return
		slideshowPosition = ++slideshowPosition % languageLinks.length
		showLanguage($(languageLinks[slideshowPosition]).data('target'))
		setTimeout((() -> slideshowNext()), 3000)
	slideshowNext()
)
