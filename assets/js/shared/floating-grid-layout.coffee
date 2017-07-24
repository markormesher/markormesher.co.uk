$(document).ready(() ->

	# masonry layout
	grid = $('.floating-grid')
	grid.imagesLoaded(() ->
		window.gridLayout = grid.masonry({
			itemSelector: '.floating-grid-item'
			columnWidth: '.floating-grid-item'
		})
	);

	# fading grids
	###
	fadeBackIn = null
	allGridItems = $('.floating-grid-item')
	allGridItems.hover(
		() ->
			clearTimeout(fadeBackIn)
			allGridItems.not(this).fadeTo(100, 0.6)
			$(this).fadeTo(0, 1)
		() -> fadeBackIn = setTimeout((() -> allGridItems.fadeTo(100, 1)), 1)
	);
    ###

);