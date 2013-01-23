package gum

class CalendarTagLib {
	static namespace = "calendar"

	def events = { attrs ->
		def maxResults = attrs.remove('maxResults') ?: 5

		out << g.render(template: "/eventsJS")

		out << """
<div class="container calendar">
	<div id="events"></div>
</div>\n"""

		out << """<script src="http://www.google.com/calendar/feeds/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic?alt=json-in-script&callback=insertAgenda&orderby=starttime&max-results=$maxResults&singleevents=true&sortorder=ascending&futureevents=true" type="text/javascript"></script>"""
	}
}
