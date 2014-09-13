package page

import geb.Page

class ArchivePage extends Page {
	static url = "archive"

	static at = {
		title ==~ /Archived Presentations/
	}

	static content = {
	}
}