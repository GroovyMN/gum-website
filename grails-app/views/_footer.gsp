<!-- start: Footer -->
<div id="footer">
	<!-- start: Container -->
	<div class="container">

		<!-- start: Row -->
		<div class="row">
			<!-- start: Location -->
			<div class="span2">
				<div class="title"><h3>Meeting Location</h3></div>
				<p><b>SmartThings Office</b></p>
				<p>11 Fourth Street NE | Suite 300</p>
				<p>Minneapolis, MN 55413</p>
			</div>
			<!-- end: Location -->

			<div class="span5">
				%{--<div><g:link controller="navigation" action="contact" /></div>--}%
				<div id="map-canvas" style="height: 350px;" ></div>
			</div>

			<!-- start: Contact Form -->
			<div class="span3">
				<div class="title"><h3>Join Our Mailing List</h3></div>
				<p>Participate in Google Group discussions and get your questions answered on our mailing list.</p>
				<a class="btn btn-primary btn-large" href="http://groups.google.com/group/groovymn">Join Now &raquo;</a>
			</div>
			<!-- end: Contact Form -->

			<g:render template="/social" />

		</div>
		<!-- end: Row -->

	</div>
	<!-- end: Container -->
</div>
<!-- end: Wrapper -->
<script src="http://maps.google.com/maps/api/js?key=AIzaSyCi-Xx21wep8dFibmC-p1eXtIJctEzDB_o&sensor=true" type="text/javascript" ></script>
<r:script>
	function initialize() {
		var mapOptions = {
			center: new google.maps.LatLng(44.990056, -93.254871),
			zoom: 14,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		
		var map = new google.maps.Map(document.getElementById("map-canvas"),
			mapOptions);
		
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(44.990056, -93.254871),
			map: map,
			title:"11 Fourth Street NE, Minneapolis MN, 55413"
		});

		var infoWindow = new google.maps.InfoWindow({
			content: '<div id="brad-test">11 Fourth Street NE, Minneapolis MN, 55413</div>'
		});

		google.maps.event.addListener(marker, 'click', function() {
			infoWindow.open(map, marker);
		});

		//
		map.panBy(0, -100);
		// To add the marker to the map, call setMap();
		marker.setMap(map);
		google.maps.event.trigger(marker, 'click');
	}

	google.maps.event.addDomListener(window, 'load', initialize);

</r:script>
