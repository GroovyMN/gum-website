package gum

import grails.test.mixin.TestFor
import spock.lang.*
import org.codehaus.groovy.grails.web.taglib.exceptions.*

@TestFor(NavLinkTagLib)
class NavLinkTagLibSpec extends Specification {
	def result

	def "Expect tag error if not passed action"() {
		given:
			def template = """<nav:link href="home" value="Home" />"""
		when:
			result == applyTemplate(template, [href: "home", value: "Home"])
		then:
			thrown GrailsTagException
	}

	def "Expect tag error if not passed href"() {
		given:
			def template = """<nav:link value="Home" action="test" />"""
		when:
			result == applyTemplate(template, [action: "test", value: "Home"])
		then:
			thrown GrailsTagException
	}

	def "Expect tag error if not passed value"() {
		given:
			def template = """<nav:link href="home" action="test" />"""
		when:
			result == applyTemplate(template, [href: "home", action: "test"])
		then:
			thrown GrailsTagException
	}
}
