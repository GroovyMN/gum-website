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
					html: "<strong>GroovMN</strong><br /><b>2nd Tuesday of the month at 6:00 pm</b><br /> 11 Fourth Street NE, Suite 300, Minneapolis MN, 55413",
					popup: true
				}
			]
		});
	</script>
	<!-- end: Google Maps -->
</div>
<!-- end: Map -->