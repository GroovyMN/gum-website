package gum

class TalkTagLib extends BaseTagLib {
	static namespace = "talk"

	static DEFAULT = "unicorn-ninja-6-colors-final-gray-hair-transparent-bkg-400x400.png"

	def talk = { attrs, body ->
		pageScope.tagName = "talk"
		log.debug "attrs: $attrs"
		log.debug "body: $body"

		def imageFileName = attrs.remove('imageFileName') ?: DEFAULT
		def talkDate = guard(attrs, 'talkDate')
		def presenter = guard(attrs, 'presenter')
		def title = guard(attrs, 'title')
		def url = guard(attrs, 'url')

		out << g.render(template: "/talk", model: [imageFileName: imageFileName, presenter: presenter, talkDate: talkDate, title: title, url: url, presenterUrl: attrs.remove('presenterUrl')], body)
	}
}
