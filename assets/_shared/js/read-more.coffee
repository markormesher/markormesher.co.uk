$(document).ready(() ->

	# expandable views
	$('div.read-more').each((i, e) ->
		e = $(e)

		# hide non-first paragraphs
		hiddenParas = e.find('p').not(':eq(0), :eq(1)')
		hiddenParas.hide()
		hiddenOther = e.find('.hr')
		hiddenOther.hide();

		# show "read more" link
		readMoreP = e.find('p.read-more')
		readMoreP.removeClass('hide').show()

		# activate "read more" link
		readMoreP.find('a').click(() ->
			hiddenParas.show()
			hiddenOther.show()
			readMoreP.hide()
			window.gridLayout.masonry('layout')
		)
	)

)