import geb.spock.GebReportingSpec
import pages.*
import spock.lang.Stepwise

@Stepwise
class PagesSpec extends GebReportingSpec {
	def "can get to home"() {
		when:
			to HomePage
		then:
			at HomePage
	}

	def "can get to contact"() {
		when:
			to ContactPage
		then:
			at ContactPage
	}

	def "can get to calendar"() {
		when:
			to CalendarPage
		then:
			at CalendarPage
	}

	def "can get to group"() {
		when:
			to GroupPage
		then:
			at GroupPage
	}

	def "can get to talks"() {
		when:
			to TalksPage
		then:
			at TalksPage
	}
}