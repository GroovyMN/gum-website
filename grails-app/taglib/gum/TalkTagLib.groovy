package gum

class TalkTagLib {
	static namespace = "talk"

	static DEFAULT = "unicorn-ninja-6-colors-final-gray-hair-transparent-bkg-400x400.png"

	def talk = { attrs, body ->
		attrs.tagName = "${namespace}:talk"
		log.debug "attrs: $attrs"
		log.debug "body: $body"

		def imageFileName = attrs.remove('imageFileName') ?: DEFAULT

		def talkDate = attrs.remove('talkDate')
		if (!talkDate) {
			throwTagError("Tag [${}] is missing required attribute [talkDate]")
		}

		def presenter = attrs.remove('presenter')
		if (!presenter) {
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [presenter]")
		}

		def title = attrs.remove('title')
		if (!title) {
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [title]")
		}

		def url = attrs.remove('url')
		if (!url) {
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [url]")
		}

		out << g.render(template: "/talk", model: [imageFileName: imageFileName, presenter: presenter, talkDate: talkDate, title: title, url: url, presenterUrl: attrs.remove('presenterUrl')], body)
	}
}
