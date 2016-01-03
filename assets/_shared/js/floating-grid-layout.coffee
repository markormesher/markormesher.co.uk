$(document).ready(() ->

	# masonry layout
	grid = $('.floating-grid')
	grid.imagesLoaded(() ->
		grid.masonry({
			itemSelector: '.floating-grid-item'
			columnWidth: '.floating-grid-item'
		})
	);

);