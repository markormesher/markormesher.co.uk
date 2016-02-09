$(document).ready(() ->

	# slideshow
	slideshowEnabled = true
	slideshowTimeout = null
	slideshowPosition = -1;

	# views
	linksContainer = $('div.language-list')
	links = $('ul li', linksContainer)
	slides = $('p.language-slide')
	showAllLink = $('.show-all-languages')
	statusMsg = $('.slideshow-status')

	# hide all slides and show list of links
	slides.hide()
	linksContainer.show()

	# handle "show all" link
	showAllLink.show().find('a').click(() ->
		# show all slides
		showLanguage('*', $(this))

		# hide this link
		showAllLink.hide()
	)

	# handle individual links
	links.each((i, e) -> $(e).data('position', i))
	links.click(() ->
		# open individual language
		showLanguage($(this).data('target'), $(this))
	)

	# show a given language
	showLanguage = (key, link) ->
		# stop slideshow and store position if this came from a real link click
		if link
			slideshowToggle(false)
			slideshowPosition = link.data('position') || -1

		# update link classes
		links.removeClass('active')
		(if key == '*' then links else links.filter('[data-target = "' + key + '"]')).addClass('active')

		# show the "show all" link, if this was for one language
		if (key != '*') then showAllLink.show()

		# hide/show slides
		slides.hide()
		(if key == '*' then slides else slides.filter('[data-key = "' + key + '"]')).show()

	# slideshow toggle
	slideshowToggle = (enabled) ->
		# set switch
		slideshowEnabled = enabled

		# set message
		statusMsg.html(if enabled then '' else 'Slideshow paused - click to resume')

		# restart, or kill
		if enabled then slideshowNext() else clearTimeout(slideshowTimeout)
	statusMsg.click(() -> slideshowToggle(true))

	# slideshow
	slideshowNext = () ->
		# nothing, if killed
		if !slideshowEnabled then return

		# advance the pointer
		slideshowPosition = ++slideshowPosition % links.length

		# show the next slide
		showLanguage($(links[slideshowPosition]).data('target'))

		# rinse and repeat
		slideshowTimeout = setTimeout((() -> slideshowNext()), 3000)
	slideshowNext()
)