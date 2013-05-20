class UrlMappings {
	static mappings = {
		"/$controller/$action?/$id?" {
			constraints {
				// Apply constraints here
			}
		}

		"/"(controller: "pages", action: "index")
		"/archive"(controller: "pages", action: "archive")
		"/calendar"(controller: "pages", action: "calendar")
		"/location"(controller: "pages", action: "location")
		"/group"(controller: "pages", action: "group")
		"/home"(controller: "pages", action: "index")
		"/index"(controller: "pages", action: "index")
		"/talks"(controller: "pages", action: "archive")

		"500"(view: '/error')
	}
}
