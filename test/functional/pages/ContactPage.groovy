package pages

import geb.Page

class ContactPage extends Page {
	static url = "contact"

	static at = {
		title ==~ /Contact/
	}

	static content = {
	}
}