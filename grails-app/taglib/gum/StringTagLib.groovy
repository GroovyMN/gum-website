package gum

class StringTagLib {
	static namespace = "str"

	def shorten = { attrs ->
		log.debug "attrs: $attrs"
		def max = attrs.remove("max") ?: 50
		def value = attrs.remove("value")

		if (value?.length() > max) {
			out << value.substring(0, max).trim() + "..."
		} else {
			out << value
		}
	}
}
