package gum

class CalendarTagLib {
	static namespace = "calendar"

	def events = { attrs ->
		log.debug "attrs: $attrs"
		def max = attrs.remove("max") ?: 5

		out << g.render(template: "/calendar/eventCalendar", model: [max: max])
	}
}
