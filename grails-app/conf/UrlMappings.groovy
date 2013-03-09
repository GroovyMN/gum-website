class UrlMappings {
	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// Apply constraints here
			}
		}

		"/"(controller: "navigation", action: "home")
		"/calendar"(controller: "navigation", action: "calendar")
		"/contact"(controller: "navigation", action: "contact")
		"/group"(controller: "navigation", action: "group")
		"/home"(controller: "navigation", action: "home")
		"/talks"(controller: "navigation", action: "talks")

		"500"(view:'/error')
	}
}
