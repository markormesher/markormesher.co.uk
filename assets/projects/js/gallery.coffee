$(document).ready(() ->

	# find links
	$('a.gallery-link').click(() ->
		# get images
		[rawImages..., path] = window.galleryData[$(this).data('key')]
		images = ({href: path + '/' + img[0], title: img[1]} for img in rawImages)

		# open gallery
		$.fancybox(images)
	)

)