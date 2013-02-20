package gum

class CalendarTagLib {
	static namespace = "calendar"

	def events = { attrs ->
		def maxResults = attrs.remove("maxResults") ?: 5

		out << g.render(template: "/eventsJS")
		out << g.render(template: "/calendar")
		out << g.render(template: "/calendarJS", model: [maxResults: maxResults])
	}
}
