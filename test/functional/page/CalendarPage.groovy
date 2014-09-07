package page

import geb.Page

class CalendarPage extends Page {
	static url = "calendar"

	static at = {
		title ==~ /GUM Calendar/
	}

	static content = {
	}
}