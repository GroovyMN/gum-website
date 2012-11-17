class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "navigation", action: "home")
		"/home"(controller: "navigation", action: "home")
		"/contact"(controller: "navigation", action: "contact")
		"/googleGroup"(controller: "navigation", action: "googleGroup")
		"/calendar"(controller: "navigation", action: "calendar")

		"500"(view:'/error')
	}
}
