// TODO: ??? remove
// "/admin/manage/$action?"(controller: "adminManage")
// "/adminManage/$action?"(controller: "errors", action: "urlMapping")
//
// "403"(controller: "errors", action: "accessDenied")
// "404"(controller: "errors", action: "notFound")
// "405"(controller: "errors", action: "notAllowed")
// "500"(controller: "errors", action: "error")

// Ex /products/v1/availability/11-22-9999
//    /products/v1/threshold/11-22-9999
//"/$controller/$version/$action?/$id" {
//	constraints {
//		controller(inList: ['products'])
//		version(inList: ['v1'])
//	}
//}

class UrlMappings {
	static mappings = {
		// Top level
		"/"(controller: "pages", action: "home")
		"/archive"(controller: "pages", action: "archive")
		"/calendar"(controller: "pages", action: "calendar")
		"/location"(controller: "pages", action: "location")
		"/group"(controller: "pages", action: "group")
		"/home"(controller: "pages", action: "home")
		"/index"(controller: "pages", action: "home")
		"/talks"(controller: "pages", action: "archive")

		// Admin
		// TODO: ??? should be secured, also add check for them in a list ["presentation", "speaker"]
		"/admin"(controller: "presentation")
		"/admin/presentation/$action?/$id?"(controller: "presentation")
		"/admin/speaker/$action?/$id?"(controller: "speaker")

		// "/admin/$controller/$action?/$id" {
		// 	constraints {
		//		controller(inList: ['presentation', 'speaker'])
		//	}
		// }

		// Un-map default
		"/presentation/$action?/$id?"(view: '/error')
		"/speaker/$action?/$id?"(view: '/error')

		// General
		"/$controller/$action?/$id?" {
			constraints {
				// Apply constraints here
			}
		}

		"500"(view: '/error')
	}
}
