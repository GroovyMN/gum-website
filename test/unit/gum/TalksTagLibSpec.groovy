package gum

import grails.test.mixin.TestFor
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import spock.lang.*

@TestFor(TalksTagLib)
class TalksTagLibSpec extends Specification {
	def result

	def "Expect default image if not passed imageFileName"() {
		given:
			def template = """<talks:talk talkDate="2013" title="title" presenter="you" url="http://groovy.mn"></talks:talk>"""
		when:
			result = applyTemplate(template, [talkDate: "2013", title: "title", presenter: "you", url:" http://groovy.mn"])
		then:
			result.contains("GUM-unicorn-ninja-6-colors-final-gray-hair-transparent-bkg-400x400.png")
	}

	def "Expect tag error if not passed talkDate"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" title="title" presenter="you" url="http://groovy.mn"></talks:talk>"""
		when:
			result = applyTemplate(template, [imageFileName: "test.jpg", title: "title", presenter: "you", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [talkDate]")
	}

	def "Expect tag error if not passed presenter"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" title="title" url="http://groovy.mn"></talks:talk>"""
		when:
			result = applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", title: "title", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [presenter]")
	}

	def "Expect tag error if not passed title"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" presenter="you" url="http://groovy.mn"></talks:talk>"""
		when:
			result = applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", presenter: "you", url:" http://groovy.mn"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [title]")
	}

	def "Expect tag error if not passed url"() {
		given:
			def template = """<talks:talk imageFileName="test.jpg" talkDate="2013" title="title" presenter="you"></talks:talk>"""
		when:
			result = applyTemplate(template, [imageFileName: "test.jpg", talkDate: "2013", title: "title", presenter: "you"])
		then:
			def e = thrown(GrailsTagException)
			e.message.contains("is missing required attribute [url]")
	}
}