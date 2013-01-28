package pages

import geb.Page


class HomePage extends Page {
	static url = "home"

	static at = {
		title ==~ /Groovy Users of MN/
	}

	static content = {
	}
}