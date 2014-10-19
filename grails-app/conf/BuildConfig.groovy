grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.7
grails.project.source.level = 1.7
// grails.project.war.file = "target/${appName}-${appVersion}.war"

codenarc.properties = {
	// Each property definition is of the form: RULE.PROPERTY-NAME = PROPERTY-VALUE
	CatchException.enabled = false
	NoWildcardImports.enabled = false
}

codenarc.reports = {
	MyXmlReport('xml') {
		outputFile = 'target/test-reports/CodeNarc-Report.xml'
		title = 'Codenar XML Report'
	}
	MyHtmlReport('html') { // Report type is 'html'
		outputFile = 'target/test-reports/CodeNarc-Report.html'
		title = 'Html Report'
	}
}

def gebVersion = "0.9.3"
def seleniumVersion = "2.42.0"

grails.project.dependency.resolver = "maven"

grails.project.dependency.resolution = {
	// legacyResolve true // Wait for Gradle

	// Inherit Grails' default dependencies
	inherits("global") {
		// Specify dependency exclusions here; for example, uncomment this to disable ehcache:
		// excludes 'ehcache'
	}
	log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
	checksums true // Whether to verify checksums on resolve

	repositories {
		inherits true // Whether to inherit repository definitions from plugins

		grailsPlugins()
		grailsHome()
		grailsCentral()

		mavenLocal()
		mavenCentral()

		mavenRepo "https://nexus.codehaus.org/content/repositories/snapshots"
	}

	dependencies {
		test("org.seleniumhq.selenium:selenium-htmlunit-driver:$seleniumVersion")
		test("org.seleniumhq.selenium:selenium-chrome-driver:$seleniumVersion")
		test("org.seleniumhq.selenium:selenium-firefox-driver:$seleniumVersion")

		test "org.gebish:geb-spock:$gebVersion"
		test "org.gebish:geb-junit4:$gebVersion"
	}

	plugins {
		def env = grails.util.Environment.currentEnvironment.name
		def localEnvs = ["development", "test"]

		runtime ':hibernate:3.6.10.6'
		runtime ":jquery:1.11.1"
		compile ":asset-pipeline:1.9.9"
		runtime ":cache-headers:1.1.7"

		compile ":build-info:1.2.6"
		compile ":build-info-tag:0.3.1"
		compile ":build-test-data:2.2.1"
		compile ":codenarc:0.21"

		if (env in localEnvs) {
			compile ":console:1.2"
		}

		build ':tomcat:7.0.47'

		test ":geb:$gebVersion"

		runtime ":database-migration:1.4.0"

		compile ':cache:1.1.1'
	}
}
