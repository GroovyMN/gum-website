grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
// grails.project.war.file = "target/${appName}-${appVersion}.war"

// def gebVersion = "0.9.2"
// def seleniumVersion = "2.27.0" // The data necessary to complete this operation is not yet available.]
// def seleniumVersion = "2.32.0"

def gebVersion = "0.9.3"
def seleniumVersion = "2.41.0"

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

		// For Geb snapshot
		mavenRepo "http://oss.sonatype.org/content/repositories/snapshots"
    }

	dependencies {
		test("org.seleniumhq.selenium:selenium-htmlunit-driver:$seleniumVersion") {
			exclude "xml-apis"
		}
		test("org.seleniumhq.selenium:selenium-chrome-driver:$seleniumVersion")
		test("org.seleniumhq.selenium:selenium-firefox-driver:$seleniumVersion")

		// You usually only need one of these, but this project uses both
		test "org.gebish:geb-spock:$gebVersion"
		test "org.gebish:geb-junit4:$gebVersion"
	}

	plugins {
		build ':tomcat:7.0.47'

		compile ":codenarc:0.19"
        compile ':cache:1.0.1'

		runtime ':hibernate:3.6.10.6'
        runtime ":database-migration:1.4.0"

		runtime ":jquery:1.10.2.2"
		runtime ":resources:1.2.1"

		// Additional resources capabilities
		runtime ":zipped-resources:1.0"
		runtime ":cache-headers:1.1.5"
		runtime ":cached-resources:1.0"
		runtime ":yui-minify-resources:0.1.5"

		test ":geb:$gebVersion"
	}
}
