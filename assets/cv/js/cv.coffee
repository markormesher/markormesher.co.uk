$(document).ready(() ->

	# expanding sections
	$('a.toggle-section').each((i, e) ->
		e = $(e)

		# get targets
		targets = $(e.data('target'))

		# hide targets
		targets.hide()
		hidden = true

		# click listener
		e.click(() ->
			if hidden
				targets.show()
				e.html(e.html().replace('Show', 'Hide'))
			else
				targets.hide()
				e.html(e.html().replace('Hide', 'Show'))
			hidden = !hidden
		)
	)

)