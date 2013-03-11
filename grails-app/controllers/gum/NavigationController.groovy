package gum

class NavigationController {
	def calendar() {
		def max = params.remove('max') ?: 5

		return [max: max]
	}

	def contact() { }

	def group() { }

	def home() { }

	def talks() { }
}
