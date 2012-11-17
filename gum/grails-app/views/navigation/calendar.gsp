<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>GUM Calendar</title>
</head>
<body>
	<div class="container">
		<p>
			Calendar Links:
			<a href="http://www.google.com/calendar/hosted/refactr.com/embed?src=refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com">HTML</a>,
			<a href="http://www.google.com/calendar/ical/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic.ics">iCal</a>,
			<a href="http://www.google.com/calendar/feeds/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic">XML</a>
		</p>
		<iframe id="calendar_embed"
			src="javascript:void(0)"
			scrolling="no"
			frameborder="0"
			width="100%"
			height="700">
		</iframe>

	</div>
	<script type="text/javascript">
		document.getElementById("calendar_embed").src =
			"https://www.google.com/calendar/embed?src=refactr.com_eusenb5e3tksvr3881v8mpg7t8@group.calendar.google.com&gsessionid=OK";
	</script>
</body>
</html>