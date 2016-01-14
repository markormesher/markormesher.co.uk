# prevent browser-default scrolling to anchors
if (window.location.hash) then scroll(0,0)
setTimeout((() -> scroll(0,0)), 1);

$(document).ready(() ->

	# external links
	$('a[href^="http"]').click((e) ->
		e.preventDefault()
		window.open($(this).attr('href'))
	)

	# smooth scrolling to anchors
	if(window.location.hash)
		target = $(window.location.hash)
		if (target.length)
			setTimeout((() -> $('html, body').animate({scrollTop: target.offset().top}, 500, 'swing')), 500);

	$('a[href^="#"]:not([href="#"])').click(() ->
		hash = this.href.split('#')[1]
		target = $('[id=' + hash + ']')
		if (target.length) then $('html, body').animate({scrollTop: target.offset().top}, 500, 'swing')
	)

	# tooltips
	$('[data-toggle = "tooltip"]').tooltip()

	# expanding menu
	nav = $('ul.navigation')
	if (nav.find('li').eq(1).css('display') == 'block')
		nav.find('li.expand').each(() ->
			# get items
			t = $(this)
			msg = t.find('span')

			# show this link and hide others
			t.show()
			links = nav.find('li').not(t).hide()
			hidden = true

			# click
			t.click(() ->
				if hidden
					links.show()
					msg.html(msg.html().replace('Show', 'Hide'))
				else
					links.hide()
					msg.html(msg.html().replace('Hide', 'Show'))

				# swap flag
				hidden = !hidden
			)
		)

	return
)