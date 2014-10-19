<!-- start: Map -->
<div>
	<!-- starts: Google Maps -->
	<div id="googlemaps-container-top"></div>

	<div id="googlemaps" class="google-map google-map-full"></div>

	<div id="googlemaps-container-bottom"></div>

	<asset:script type="text/javascript">
		$('#googlemaps').gMap({
			maptype: 'ROADMAP',
			scrollwheel: false,
			zoom: 13,
			markers: [{
					address: '11 Fourth Street NE, Minneapolis MN, 55413',
					html: "<strong>GroovMN</strong><br /><strong>2nd Tuesday of the month at 6:30 pm</strong><br /> 11 Fourth Street NE #300,<br /> Minneapolis MN, 55413<br /> 612.208.7022",
					popup: true
				}]
		});
	</asset:script>
<!-- end: Google Maps -->
</div>
<!-- end: Map -->
