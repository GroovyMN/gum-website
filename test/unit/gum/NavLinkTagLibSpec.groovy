package gum

import grails.test.mixin.TestFor
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import spock.lang.Specification

@TestFor(NavLinkTagLib)
class NavLinkTagLibSpec extends Specification {
	def result

	def "Expect no tag error if passed action and href an value [happy path]"() {
		given:
		def template = """<nav:link action="home" href="/home" value="Home" />"""
		when:
		result = applyTemplate(template, [action: "home", href: "/home", value: "Home"])
		then:
		result != null
		result == /<li class=""><a href="\/home">Home<\/a><\/li>/
	}

	def "Expect no tag error if not passed action but has full href"() {
		given:
		def template = """<nav:link href="http://blog.groovy.mn" value="Blog" />"""
		when:
		result = applyTemplate(template, [href: "http://blog.groovy.mn", value: "Blog"])
		then:
		result != null
		result == /<li class=""><a href="http:\/\/blog.groovy.mn">Blog<\/a><\/li>/
	}

	def "Expect tag error if given an action but not passed href"() {
		given:
			def template = """<nav:link value="Home" action="test" />"""
		when:
			result = applyTemplate(template, [action: "test", value: "Home"])
		then:
		def e = thrown(GrailsTagException)
		e.message.contains("is missing required attribute [href]")
	}

	def "Expect tag error if not passed action or href"() {
		given:
		def template = """<nav:link value="Blog" />"""
		when:
		result = applyTemplate(template, [value: "Home"])
		then:
		def e = thrown(GrailsTagException)
		e.message.contains("is missing required attribute [action or href]")
	}

	def "Expect tag error if not passed value"() {
		given:
			def template = """<nav:link href="home" action="test" />"""
		when:
			result = applyTemplate(template, [href: "home", action: "test"])
		then:
		def e = thrown(GrailsTagException)
		e.message.contains("is missing required attribute [value]")
	}
}
