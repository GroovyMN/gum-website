package gum

class NavigationController {
	static int DEFAULT = 5
	static int MAX = DEFAULT * DEFAULT

	def calendar() {
		def max = params.remove('max') ?: DEFAULT
		if (max > MAX) {
			max = MAX
		}

		return [max: max]
	}

	def home() {}

	def archive() {}

	def group() {}

	def location() {}
}
