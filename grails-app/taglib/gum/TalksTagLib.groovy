package gum

class TalksTagLib {
	static namespace = "talks"

	static DEFAULT_IMG = "unicorn-ninja-6-colors-final-gray-hair-transparent-bkg-400x400.png"

	def talk = { attrs, body ->
		log.debug "attrs: $attrs"
		log.debug "body: $body"

		def imageFileName = attrs.remove('imageFileName') ?: DEFAULT_IMG

		def talkDate = attrs.remove('talkDate')
		if (!talkDate) {
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [talkDate]")
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
