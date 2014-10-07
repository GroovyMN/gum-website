package gum

abstract class BaseTagLib {
	static namespace = 'base'

	/**
	 * Helper
	 */
	protected def guard = { attrs, attrName ->
		def name = "${namespace}:${pageScope?.tagName ?: 'guard'}"

		def value = attrs.remove(attrName)
		if (value == null) {
			def msg = g.message(code: 'taglib.attr.nullable.error', args: [name, attrName])
			throwTagError(msg)
		}

		value
	}
}
