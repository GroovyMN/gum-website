<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>GUM Calendar</title>
	<script>
		function insertAgenda(data) {
			var content = '';

			if (data.feed.entry.length > 0) {
				content += "<h2>Next Upcoming Event</h2>" + "<div class='event first-event'>" + data.feed.entry[0].content.$t + "</div>";
			}

			if (data.feed.entry.length > 2) {
				content += "<h3>Future Upcoming Events</h3>";

				for (var i = 1; i < data.feed.entry.length; i++) {
					content += "<div class='event'>" + data.feed.entry[i].content.$t + "</div>";
				}
			}
			content = content.replace(/Replaces event originally scheduled for.*>/gi, '');
			content = content.replace(/<.*Who: Groovy Minnesota/gi, '');
			content = content.replace(/<.*Where: 11 NE Fourth Street, Suite 300, Minneapolis, MN 55413/gi, '');
			content = content.replace(/<.*Event Status: confirmed/gi, '');

			$("#events").append(content);
		}
	</script>
</head>

<body>
	<div class="container calendar">
		<div id="events"></div>
	</div>

	<script src="http://www.google.com/calendar/feeds/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic?alt=json-in-script&callback=insertAgenda&orderby=starttime&max-results=5&singleevents=true&sortorder=ascending&futureevents=true" type="text/javascript"></script>
</body>
</html>