package gum

import grails.test.mixin.TestFor
import spock.lang.*

@TestFor(CalendarTagLib)
class CalendarTagLibSpec extends Specification {
	def result

	def "Expect default max-results when no maxResults passed"() {
		given:
			def template = "<calendar:events />"
		when:
			result = applyTemplate(template)
		then:
			result.contains("max-results=5")
	}

	def "Expect maxResults of 1 if passed 1"() {
		given:
			def template = """<calendar:events max="${1}" />"""
		when:
			result = applyTemplate(template, [max: 1])
		then:
			result.contains("max-results=1")
	}
}
