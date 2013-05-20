package pages

import geb.Page

class IndexPage extends Page {
	static url = "index"

	static at = {
		title ==~ /Groovy Users of MN/
	}

	static content = {
	}
}