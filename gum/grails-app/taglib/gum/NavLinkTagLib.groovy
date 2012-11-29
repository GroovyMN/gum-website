package gum

class NavLinkTagLib {
	static namespace = "nav"

	def link = { attrs ->
		def href = attrs.remove('href')
		def value = attrs.remove('value')
		def action = attrs.remove('action')

		if (!href)
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [href]")
		if (!value)
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [value]")
		if (!action)
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [action]")

		if (href == "googleGroup") {
			out << """<li class="hidden-phone${action == href ? ' active' : ''}"><a href="${href}">${value}</a></li>"""
			out << """<li class="visible-phone${action == href ? ' active' : ''}"><a href="https://groups.google.com/forum/?fromgroups#!forum/groovymn" target="_blank">Google Group</a></li>"""
		} else {
			out << """<li class="${action == href ? 'active' : ''}"><a href="${href}">${value}</a></li>"""
		}
	}
}
