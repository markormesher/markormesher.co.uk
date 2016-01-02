$(document).ready(() ->

	# masonry layout
	grid = $('.project-grid')
	grid.imagesLoaded(() ->
		grid.masonry({
			itemSelector: '.project-item'
			columnWidth: '.project-item'
		})
	);

);