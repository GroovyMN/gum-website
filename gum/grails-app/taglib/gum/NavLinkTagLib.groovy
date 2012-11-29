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

		out << """<li class="${action == href ? 'active' : ''}"><a href="${href}">${value}</a></li>"""
	}
}
