$(document).ready(() ->

	# external links
	$('a[href^="http"]').click((e) ->
		e.preventDefault()
		window.open($(this).attr('href'))
	)

	# smooth scrolling to anchors
	$('a[href^=#]:not([href=#])').click(() ->
		hash = this.href.split('#')[1]
		target = $('[id=' + hash + ']')
		if (target.length) then $('html,body').animate({scrollTop: target.offset().top}, 350)
	)

	return
)