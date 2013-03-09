package pages

import geb.Page

class TalksPage extends Page {
	static url = "talks"

	static at = {
		title ==~ /Archived Presentations/
	}

	static content = {
	}
}