$(document).ready(() ->

	# whole-gallery links
	$('a.gallery-link').click(() ->
		# get images
		[rawImages..., path] = window.galleryData[$(this).data('key')]
		images = ({href: path + '/' + img[0], title: img[1]} for img in rawImages)

		# open gallery
		$.fancybox(images)
	)

	# single-image links
	$('a.single-gallery-link').click(() -> $.fancybox(window.galleryImages, {index: $(this).data('start') || 0}));

)