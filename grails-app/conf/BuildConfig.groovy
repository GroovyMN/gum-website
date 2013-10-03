grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
// grails.project.war.file = "target/${appName}-${appVersion}.war"

def gebVersion = "0.9.0"
def seleniumVersion = "2.21.0"

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
		test("org.seleniumhq.selenium:selenium-htmlunit-driver:$seleniumVersion") {
			exclude "xml-apis"
		}
		test("org.seleniumhq.selenium:selenium-chrome-driver:$seleniumVersion")
		test("org.seleniumhq.selenium:selenium-firefox-driver:$seleniumVersion")

		test "org.gebish:geb-spock:$gebVersion"
		test "org.gebish:geb-junit4:$gebVersion"

		test "org.spockframework:spock-grails-support:0.7-groovy-2.0"
	}

	plugins {
		compile ":codenarc:0.19"

		runtime ":hibernate:$grailsVersion"
		runtime ":jquery:1.8.0"
		runtime ":resources:1.1.6"

		// Additional resources capabilities
		runtime ":zipped-resources:1.0"
		runtime ":cache-headers:1.1.5"
		runtime ":cached-resources:1.0"
		runtime ":yui-minify-resources:0.1.4"

		build ":tomcat:$grailsVersion"

		test ":geb:$gebVersion"
		test(":spock:0.7") {
			exclude "spock-grails-support"
		}

		runtime ":database-migration:1.1"

		compile ':cache:1.0.1'
	}
}
