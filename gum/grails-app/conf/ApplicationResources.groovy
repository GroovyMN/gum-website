modules = {
	jquery {
		resource url:'js/jquery-1.8.2.js'
	}
	bootstrap {
		resource url:"css/bootstrap.css"
		resource url:"css/bootstrap-responsive.css"
		resource url:"js/bootstrap.js"
	}
	common {
		resource url:"css/hover.css"
		resource url:"css/icons-color.css"
		resource url:"css/icons.css"
		resource url:"css/social-icons.css"
		resource url:"css/style.css"
		resource url:"css/style-overrides.css"
	}
	fancybox {
		resource url:"css/fancybox.css"
		resource url:"js/fancybox.js"
	}
	isotope {
		resource url:"js/isotope.js"
	}
	slider {
		dependsOn 'common'
		dependsOn 'jquery'
		dependsOn 'fancybox'
		dependsOn 'bootstrap'
		dependsOn 'isotope'

		resource url:"css/parallax-slider.css"

		resource url:"js/jquery.cslider.js"
		resource url:"js/jquery.imagesloaded.js"
		resource url:"js/slider.js"
		resource url:"js/flexslider.js"
		resource url:"js/carousel.js"
		resource url:"js/custom.js"
	}
}