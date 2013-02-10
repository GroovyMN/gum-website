package pages

import geb.Page

class GroupPage extends Page {
	static url = "group"

	static at = {
		title ==~ /GUM Google Group/
	}

	static content = {
	}
}