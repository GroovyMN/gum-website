<!-- start: Map -->
<div>
	<!-- starts: Google Maps -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<div id="googlemaps-container-top"></div>
	<div id="googlemaps" class="google-map google-map-full"></div>
	<div id="googlemaps-container-bottom"></div>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/jquery.gmap.min.js"></script>
	<script type="text/javascript">
		$('#googlemaps').gMap({
			maptype: 'ROADMAP',
			scrollwheel: false,
			zoom: 13,
			markers: [
				{
					address: '11 Fourth Street NE, Minneapolis MN, 55413',
					html: '',
					popup: false
				}
			]
		});
	</script>
	<!-- end: Google Maps -->
</div>
<!-- end: Map -->