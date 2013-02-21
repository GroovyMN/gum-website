package gum

class CalendarTagLib {
	static namespace = "calendar"

	def events = { attrs ->
		def maxResults = attrs.remove("maxResults") ?: 5

		out << g.render(template: "/eventCalendar", model: [maxResults: maxResults])
	}
}
