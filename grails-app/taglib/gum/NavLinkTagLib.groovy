package gum

class NavLinkTagLib extends BaseTagLib {
	static namespace = "nav"

	def admin = { attrs, body ->
		out << g.render(template: "/admin/nav", body)
	}

	def link = { attrs ->
		pageScope.tagName = "link"
		log.debug "attrs: $attrs"

		// Action not required for external links, use full href url.
		def action = attrs.remove('action')
		def href = attrs.remove('href')
		if (!action && !href) {
			throwTagError("Tag [$namespace:${pageScope.tagName}] is missing required attribute [action or href]")
		}

		// Href must exists with either full url or relative action path.
		if (!href) {
			throwTagError("Tag [$namespace:${pageScope.tagName}] is missing required attribute [href]")
		}

		def value = guard(attrs, 'value')

		if (href == "group") {
			out << """<li class="hidden-phone${action == href ? ' active' : ''}"><a href="${href}">${value}</a></li>"""
			out << """<li class="visible-phone${action == href ? ' active' : ''}"><a href="http://groups.google.com/forum/?fromgroups#!forum/groovymn" target="_blank">Google Group</a></li>"""
		} else {
			out << """<li class="${action == href ? 'active' : ''}"><a href="${href}">${value}</a></li>"""
		}
	}
}
