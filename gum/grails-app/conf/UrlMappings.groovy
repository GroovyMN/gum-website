class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller: "navigation", action: "home")
		"/home"(controller: "navigation", action: "home")
		"/about"(controller: "navigation", action: "about")
		"/contact"(controller: "navigation", action: "contact")

		"500"(view:'/error')
	}
}
