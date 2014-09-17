package gum

class PageController {
	static int DEFAULT = 5
	static int MAX = DEFAULT * DEFAULT
	static int MAX_SPONSORS = 3

	def archive() {
		log.debug "params: $params"
	}

	def archived() {
		render view: "/page/archived", model: [presentations: Presentation.list(params), presentationTotal: Presentation.count()]
	}

	def calendar() {
		log.debug "params: $params"
		def max = params.remove('max') ?: DEFAULT
		if (max > MAX) {
			max = MAX
		}

		[max: max]
	}

	def group() {
		log.debug "params: $params"
	}

	def home() {
		log.debug "params: $params"

		def sponsors
		if (params.toggle) {
			sponsors = Sponsor.listOrderBySortOrder(max: MAX_SPONSORS)
		}

		render view: "/page/home", model: [sponsors: sponsors]
	}

	def location() {
		log.debug "params: $params"
	}
}
