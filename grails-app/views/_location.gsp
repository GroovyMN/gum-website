<!-- start: Location -->
<div class="span2">
	<div class="title"><h3>Meeting Location</h3></div>
	<p><b>SmartThings Office</b></p>
	<p>11 Fourth Street NE #300</p>
	<p>Minneapolis, MN 55413</p>
	<p>Google Voice: 612.208.7022</p>
</div>
<!-- end: Location -->

<div class="span5">
	<div id="map-canvas" style="height: 200px;"></div>
</div>

<g:render template="/map/googleMapJS" />
<r:script>
	function initialize() {
		var addr = "11 Fourth Street NE, Minneapolis MN, 55413";
		var latlng = new google.maps.LatLng(44.990056, -93.254871);

		var mapOptions = {
			center: latlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			zoom: 14
		};

		var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

		var marker = new google.maps.Marker({
			map: map,
			position: latlng,
			title: addr
		});

		var infoWindow = new google.maps.InfoWindow({
			content: '<div>' + addr + '</div>'
		});

		google.maps.event.addListener(marker, 'click', function () {
			infoWindow.open(map, marker);
		});

		marker.setMap(map);
	}

	google.maps.event.addDomListener(window, 'load', initialize);
</r:script>
