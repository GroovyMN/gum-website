class UrlMappings {
	static mappings = {
		"/$controller/$action?/$id?" {
			constraints {
				// Apply constraints here
			}
		}

		"/"(controller: "navigation", action: "home")
		"/calendar"(controller: "navigation", action: "calendar")
		"/location"(controller: "navigation", action: "location")
		"/group"(controller: "navigation", action: "group")
		"/home"(controller: "navigation", action: "home")
		"/archive"(controller: "navigation", action: "archive")

		"500"(view: '/error')
	}
}
