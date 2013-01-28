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

}