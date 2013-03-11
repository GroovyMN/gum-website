package gum

class TalksTagLib {
	static namespace = "talks"

	def talk = { attrs, body ->
		def imageFileName = attrs.remove('imageFileName')
		if (!imageFileName) {
			throwTagError("Tag [${attrs.tagName}] is missing required attribute [imageFileName]")
		}

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

		out << g.render(template: "/talk", model: [imageFileName:imageFileName, presenter:presenter, talkDate:talkDate, title:title, url:url], body)
	}
}
