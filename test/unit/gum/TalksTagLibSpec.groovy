package gum

import grails.test.mixin.TestFor
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException

@TestFor(CalendarTagLib)
class TalksTagLibSpec {
	def result

	def "Expect tag error if not passed imageFileName"() {
		given:
			def template = """<talks:talk talkDate="2013" title="title" presenter="you" url="http://groovy.mn">"""
		when:
			result == applyTemplate(template, [talkDate: "2013", title: "title", presenter: "you", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [imageFileName]")
	}

	def "Expect tag error if not passed talkDate"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" title="title" presenter="you" url="http://groovy.mn">"""
		when:
			result == applyTemplate(template, [imageFileName: "test.jpg", title: "title", presenter: "you", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [talkDate]")
	}

	def "Expect tag error if not passed presenter"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" title="title" url="http://groovy.mn">"""
		when:
			result == applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", title: "title", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [presenter]")
	}

	def "Expect tag error if not passed title"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" presenter="you" url="http://groovy.mn">"""
		when:
			result == applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", presenter: "you", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [title]")
	}

	def "Expect tag error if not passed url"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" title="title" presenter="you">"""
		when:
			result == applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", title: "title", presenter: "you"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [url]")
	}
}