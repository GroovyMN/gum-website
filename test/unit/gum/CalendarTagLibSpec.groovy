package gum

import grails.test.mixin.TestFor
import spock.lang.*

@TestFor(CalendarTagLib)
class CalendarTagLibSpec extends Specification {
	def result

	@Ignore
	def "Test no maxResults passed"() {
		given:
			def template = '<calendar:events />'
		when:
			result == applyTemplate(template, [maxResults:maxResults])
		then:
			assert 5 == result.count('<li>')
	}

	@Ignore
	def "Test maxResults of 1 passed"() {
		given:
			def template = """<calendar:events maxResults="${1}" />"""
		when:
			result == applyTemplate(template, [maxResults:maxResults])
		then:
			assert 1 == result.count('<li>')
	}
}
