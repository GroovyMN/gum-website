package gum

class PagesController {
	static int DEFAULT = 5
	static int MAX = DEFAULT * DEFAULT

	def archive() {
		log.debug "params: $params"
	}

	def archived() {
		render view: "/pages/archived", model: [presentations: Presentation.list(params), presentationTotal: Presentation.count()]
	}

	def calendar() {
		log.debug "params: $params"

		def max = params.remove('max') ?: DEFAULT
		if (max > MAX) {
			max = MAX
		}

		return [max: max]
	}

	def group() {
		log.debug "params: $params"
	}

	def home() {
		log.debug "params: $params"
	}

	def home2() {
		log.debug "params: $params"
		def sponsors = Sponsor.listOrderBySortOrder(max: 3)

		render view: "/pages/home2", model: [space: sponsors[0], beverage: sponsors[1], food: sponsors[2]]
	}

	def location() {
		log.debug "params: $params"
	}
}
