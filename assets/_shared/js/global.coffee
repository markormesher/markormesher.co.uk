$(document).ready(() ->

	# external links
	$('a[href^="http"]').click((e) ->
		e.preventDefault()
		window.open($(this).attr('href'))
	);

)