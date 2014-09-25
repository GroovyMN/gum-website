grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
// grails.project.war.file = "target/${appName}-${appVersion}.war"

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
		runtime ":jquery:1.10.2.2"
		runtime ":resources:1.2.8"

		// Additional resources capabilities
		runtime ":zipped-resources:1.0"
		runtime ":cache-headers:1.1.7"
		runtime ":cached-resources:1.0"
		runtime ":yui-minify-resources:0.1.5"

		// User installed plugins
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
