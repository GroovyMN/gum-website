package gum

import grails.test.mixin.TestFor
import spock.lang.*

@TestFor(CalendarTagLib)
class CalendarTagLibSpec extends Specification {
	def result

	def "Test no maxResults passed"() {
		given:
			def template = "<calendar:events />"
		when:
			result = applyTemplate(template)
		then:
			result.contains("max-results=5")
	}

	def "Test maxResults of 1 passed"() {
		given:
			def template = """<calendar:events maxResults="${1}" />"""
		when:
			result = applyTemplate(template, [maxResults: 1])
		then:
			result.contains("max-results=1")
	}
}
