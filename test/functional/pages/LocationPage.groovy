package pages

import geb.Page

class LocationPage extends Page {
	static url = "location"

	static at = {
		title ==~ /Location/
	}

	static location = {
	}
}