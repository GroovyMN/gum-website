// Locations to search for config files that get merged into the main config;
// Config files can be ConfigSlurper scripts, Java properties files, or classes in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // Change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // Enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [
	all: '*/*',
	atom: 'application/atom+xml',
	css: 'text/css',
	csv: 'text/csv',
	form: 'application/x-www-form-urlencoded',
	html: ['text/html', 'application/xhtml+xml'],
	js: 'text/javascript',
	json: ['application/json', 'text/json'],
	multipartForm: 'multipart/form-data',
	rss: 'application/rss+xml',
	text: 'text/plain',
	xml: ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
// grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// Enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// Scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// Enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// Packages to include in Spring bean scanning
grails.spring.bean.packages = []
// Whether to disable processing of multi part requests
grails.web.disable.multipart = false

// Request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// Configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

environments {
	development {
		grails.resources.debug = false
		grails.logging.jul.usebridge = true
	}
	production {
		grails.logging.jul.usebridge = false
		grails.serverURL = "http://groovy.mn"
	}
}

// log4j configuration
log4j = {
	def env = grails.util.Environment.currentEnvironment.name

	appenders {
		def logPattern = ""
		if (env in ["development", "test"]) {
			logPattern += '[%d{HH:mm:ss.SSS}]'
		} else {
			logPattern += '[%d{yyyy-MM-dd HH:mm:ss.SSS}]'
		}

		logPattern += ' %5p [%t] %c{2} - %m%n'
		logPattern = pattern(conversionPattern: logPattern)

		console name: 'stdout', layout: logPattern

		trace 'grails.app.filters'

		debug 'grails.app.conf',
			'grails.app.services',
			'grails.app.domain',
			'grails.app.taglib',
			'grails.app.controllers'

		info 'grails.app.tagLib.org.grails.plugin.resource'

		error 'org.codehaus.groovy.grails.web.servlet',    // Controllers
			'org.codehaus.groovy.grails.web.pages',          // GSP
			'org.codehaus.groovy.grails.web.sitemesh',       // Layouts
			'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
			'org.codehaus.groovy.grails.web.mapping',        // URL mapping
			'org.codehaus.groovy.grails.commons',            // Core / Classloading
			'org.codehaus.groovy.grails.plugins',            // Plugins
			'org.codehaus.groovy.grails.orm.hibernate',      // Hibernate integration
			'org.springframework',
			'org.hibernate'
	}
}

// Uncomment and edit the following lines to start using Grails encoding & escaping improvements

/* remove this line 
// GSP settings
grails {
    views {
        gsp {
            encoding = 'UTF-8'
            htmlcodec = 'xml' // use xml escaping instead of HTML4 escaping
            codecs {
                expression = 'html' // escapes values inside null
                scriptlet = 'none' // escapes output from scriptlets in GSPs
                taglib = 'none' // escapes output from taglibs
                staticparts = 'none' // escapes output from static template parts
            }
        }
        // escapes all not-encoded output at final stage of outputting
        filteringCodecForContentType {
            //'text/html' = 'html'
        }
    }
}
remove this line */
