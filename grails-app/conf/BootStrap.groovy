import gum.*

/**

 <talks:talk imageFileName="2011-tednaleid-encryption-grails.jpg" talkDate="2011" title="Grails Encryption" presenter="Ted Naleid" presenterUrl="http://twitter.com/tednaleid" url="http://naleid.com/blog" />
 <talks:talk imageFileName="2011-grails-RDF.jpg" talkDate="2011" title="Grails RDF" presenter="Mike Hugo" presenterUrl="http://github.com/mjhugo" url="http://github.com/mjhugo" />
 <talks:talk imageFileName="201211-grails-db-migrations-josh-steve.jpg" talkDate="Nov 2011" title="Grails DB Migrations" presenter="Josh Reed &amp; Steve Vlaminck" url="http://refactr.com" />
 <talks:talk imageFileName="20100914-zan-thrash-grails-2.jpg" talkDate="Sep 2010" title="Grails 2 Testing" presenter="Zan Thrash" presenterUrl="http://twitter.com/zanthrash" url="http://zanthrash.com" />
 <talks:talk imageFileName="20100914-git-colin-harrington.jpg" talkDate="Sep 2010" title="Git" presenter="Colin Harrington" presenterUrl="http://twitter.com/ColinHarrington" url="http://www.colinharrington.net" />
 <talks:talk imasgeFileName="20111112-chris-bartling-coffeescript.jpg" talkDate="Nov 2010" title="CoffeeScript" presenter="Chris Bartling" presenterUrl="http://bartling.blogspot.com" url="http://bartling.blogspot.com" />

 **/

class BootStrap {
	def init = { servletContext ->
		def groovyMn = new Speaker([name: "GroovyMN", twitterId: "groovymn", githubId: "groovymn", company: "GroovyMN", about: "Groovy Users Group of Minnesota"]).save()

		def applegate = new Speaker([name: "Ryan Applegate", twitterId: "rappleg", githubId: "rappleg", company: "SmartThings"]).save()
		def atkinson = new Speaker([name: "Craig Atkinson", twitterId: "craigatk1", githubId: "craigatk", company: "OPI"]).save()
		def bartling = new Speaker([name: "Chris Bartling", twitterId: "cbartling", githubId: "cbartling", website: "http://bartling.blogspot.com"]).save()
		def beck = new Speaker([name: "Jeff Beck", twitterId: "beckje01", githubId: "beckje01", company: "ReachLocal"]).save()
		def boon = new Speaker([name: "Kyle Boon", twitterId: "kyleboon", githubId: "kyleboon", company: "Bloom Health"]).save()
		def hanson = new Speaker([name: "Aaron Hanson", twitterId: "aaronhanson", company: "ReachLocal"]).save()
		def harrington = new Speaker([name: "Colin Harrington", twitterId: "ColinHarrington", githubId: "ColinHarrington", website: "http://colinharrington.net", company: "OPI"]).save()
		def hugo = new Speaker([name: "Mike Hugo", twitterId: "mjhugo", githubId: "mjhugo", website: "http://colinharrington.net", company: "OPI"]).save()
		def jurgemeyer = new Speaker([name: "Shaun Jurgemeyer", twitterId: "sjurgemeyer", githubId: "sjurgemeyer", company: "OPI"]).save()
		def kinsella = new Speaker([name: "Eric Kinsella", twitterId: "staticnull", githubId: "staticnull", website: "http://surlylabs.com", company: "Surly Labs"]).save()
		def marsh = new Speaker([name: "Brad Marsh", twitterId: "bbqhacker", githubId: "dottertrotter", company: "ReachLocal"]).save()
		def naleid = new Speaker([name: "Ted Naleid", twitterId: "tednaleid", githubId: "tednaleid", website: "http://naleid.com/blog"]).save()
		def oestreich = new Speaker([name: "Christian Oestreich", twitterId: "ctoestreich", githubId: "ctoestreich"]).save()
		def sabers = new Speaker([name: "Doug Sabers", twitterId: "lightsabersd", githubId: "sabersd", company: "OPI"]).save()
		def warner = new Speaker([name: "Bobby Warner", twitterId: "bobbywarner", githubId: "bobbywarner", company: "Target"]).save()
		def zirbes = new Speaker([name: "Aaron Zirbes", twitterId: "aaronzirbes", githubId: "aaronzirbes", company: "OPI"]).save()

		def _2011encryption = new Presentation([title: "Grails Encryption", sourceUrl: "http://slid.es/rappleg/upgrading-to-grails-2", presentationDate: new Date("2011")]).save()
		naleid.addToPresentations(_2011encryption)
		_2011encryption.addToSpeakers(naleid)

		def _201201 = new Presentation([title: "There and back again: A story of of a simple HTTP request", sourceUrl: "http://www.slideshare.net/laelfrog/there-and-back-again-a-story-of-a-s", presentationDate: new Date("2012/01/10"),
			description: """<strong>Presentation:</strong> <a href="http://www.slideshare.net/laelfrog/there-and-back-again-a-story-of-a-s">http://www.slideshare.net/laelfrog/there-and-back-again-a-story-of-a-swww</a>"""]).save()
		harrington.addToPresentations(_201201)
		_201201.addToSpeakers(harrington)

		def _201203 = new Presentation([title: "Tropo", sourceUrl: "http://bitbucket.org/cebartling/tropo-presentations", presentationDate: new Date("2012/03/13"),
			description: """<strong>Presentation:</strong> <a href="https://bitbucket.org/cebartling/tropo-presentations">https://bitbucket.org/cebartling/tropo-presentations</a><br />"""]).save()
		bartling.addToPresentations(_201203)
		_201203.addToSpeakers(bartling)

		// 20120410-jesque-grails.jpg
		def _201204 = new Presentation([title: "GPref using Jesque", sourceUrl: "http://www.slideshare.net/ctoestreich/gperf-using-jesque", presentationDate: new Date("2012/04/10"),
			description: """<strong>PDF Slides:</strong> <a href="http://www.slideshare.net/ctoestreich/gperf-using-jesque">http://www.slideshare.net/ctoestreich/gperf-using-jesque</a><br />
			<strong>GitHub:</strong> <a href="http://github.com/ctoestreich/gperf">http://github.com/ctoestreich/gperf</a>"""]).save()
		oestreich.addToPresentations(_201204)
		_201204.addToSpeakers(oestreich)

		def _201205 = new Presentation([title: "Spring Security", sourceUrl: "http://prezi.com/mczbfzjyvczl/grails-spring-security-core/", presentationDate: new Date("2012/05/08"),
			description: """<strong>Slides:</strong> <a href="http://prezi.com/mczbfzjyvczl/grails-spring-security-core/">http://prezi.com/mczbfzjyvczl/grails-spring-security-core/</a>
			<strong>Source Code - Demo App:</strong> <a href="https://github.com/aaronzirbes/gum-may2012-custom-spring-sec">https://github.com/aaronzirbes/gum-may2012-custom-spring-sec</a>"""]).save()
		zirbes.addToPresentations(_201205)
		_201205.addToSpeakers(zirbes)

		def _201208 = new Presentation([title: "Continuous Integration", sourceUrl: "http://speakerdeck.com/mjhugo/continuous-integration-with-jenkins-grails-and-git", presentationDate: new Date("2012/08/14"),
			description: """<strong>PDF Slides:</strong> <a href="https://speakerdeck.com/mjhugo/continuous-integration-with-jenkins-grails-and-git">https://speakerdeck.com/mjhugo/continuous-integration-with-jenkins-grails-and-git</a><br />"""]).save()
		hugo.addToPresentations(_201208)
		_201208.addToSpeakers(hugo)

		def _201209 = new Presentation([title: "Contributing Back to Grails", sourceUrl: "http://www.slideshare.net/bobbywarner/gr8conf-contributing-back-to-grails", presentationDate: new Date("2012/09/11"),
		description: """<strong>Slideshare:</strong> <a href="http://www.slideshare.net/bobbywarner/gr8conf-contributing-back-to-grails">http://www.slideshare.net/bobbywarner/gr8conf-contributing-back-to-grails</a>"""]).save()
		warner.addToPresentations(_201209)
		_201209.addToSpeakers(warner)

		def _201210 = new Presentation([title: "Ember.js", sourceUrl: "http://slid.es/rappleg/upgrading-to-grails-2", presentationDate: new Date("2012/10/09")]).save()
		marsh.addToPresentations(_201210)
		_201210.addToSpeakers(marsh)

		def _201211 = new Presentation([title: "Upgrading to Grails 2.0", sourceUrl: "http://slid.es/rappleg/upgrading-to-grails-2", presentationDate: new Date("2012/11/13"),
			description: """<strong>Slides:</strong> <a href="http://slid.es/rappleg/upgrading-to-grails-2">http://slid.es/rappleg/upgrading-to-grails-2</a>"""]).save()
		applegate.addToPresentations(_201211)
		_201211.addToSpeakers(applegate)

		// "20130212-dropwizard.jpg"
		def _201302 = new Presentation([title: "Dropwizard", sourceUrl: "http://speakerdeck.com/kyleboon/webservices-with-dropwizard-and-groovy", presentationDate: new Date("2013/03/12"),
		description: """<strong>PDF Slides:</strong> <a href="http://speakerdeck.com/kyleboon/webservices-with-dropwizard-and-groovy">http://speakerdeck.com/kyleboon/webservices-with-dropwizard-and-groovy</a><br />
			<strong>GitHub slide source:</strong> <a href="http://github.com/kyleboon/dropwizard_gum_2013_2_12">http://github.com/kyleboon/dropwizard_gum_2013_2_12</a><br />
			<strong>GitHub source, example project:</strong> <a href="http://github.com/kyleboon/contact_dropwizard">http://github.com/kyleboon/contact_dropwizard</a>"""]).save()
		boon.addToPresentations(_201302)
		_201302.addToSpeakers(boon)

		// "20130312-gradle.jpg"
		def _201303 = new Presentation([title: "Gradle", sourceUrl: "http://github.com/sjurgemeyer/gradlePresentation/tree/master/slides", presentationDate: new Date("2013/03/12"),
		description: """<strong>GitHub slide source:</strong> <a href="http://github.com/sjurgemeyer/gradlePresentation/tree/master/slides">htts://github.com/sjurgemeyer/gradlePresentation/tree/master/slides</a><br />
			<strong>GitHub source, example project:</strong> <a href="http://github.com/sjurgemeyer/gradlePresentation/tree/master/code">http://github.com/sjurgemeyer/gradlePresentation/tree/master/code</a>"""]).save()
		jurgemeyer.addToPresentations(_201303)
		_201303.addToSpeakers(jurgemeyer)

		def _201303gvm = new Presentation([title: "GVM Intro", sourceUrl: "http://www.rvl.io/beckje01/gvm-lightning-talk", presentationDate: new Date("2013/03/12"),
		description: """<strong>Link:</strong> <a href="http://gvmtool.net">GVM Tool</a>"""]).save()
		beck.addToPresentations(_201303gvm)
		_201303gvm.addToSpeakers(beck)

		// "20130412-json-view-layer-colin-harrington.jpg"
		def _201304 = new Presentation([title: "JSON View Layer", sourceUrl: "http://colinharrington.net/blog/2010/02/grails-the-view-layer-gum", presentationDate: new Date("2013/04/09")]).save()
		harrington.addToPresentations(_201304)
		_201304.addToSpeakers(harrington)

		def _201304social = new Presentation([title: "Spring Social Plugin", sourceUrl: "http://grails.org/plugin/spring-social-core", presentationDate: new Date("2013/04/09")]).save()
		sabers.addToPresentations(_201304social)
		_201304social.addToSpeakers(sabers)

		def _201305 = new Presentation([title: "Hack Session", sourceUrl: "http://groovy.mn", presentationDate: new Date("2013/05/14"),
		description: """Groovy.MN Archive Page - Lead: <a href="http://twitter.com/lightsabersd">Doug Sabers</a><br />
			Sonar pom plugin - Lead: <a href="http://twitter.com/beckje01">Jeff Beck</a><br />
			Contributing back to Grails - Lead: <a href="http://twitter.com/bobbywarner">Bobby Warner</a>"""]).save()
		kinsella.addToPresentations(_201305)
		_201305.addToSpeakers(kinsella)

		def _201306gr8 = new Presentation([title: "GR8 Conf EU Breakdown", sourceUrl: "http://gr8conf.org", presentationDate: new Date("2013/06/11")]).save()
		beck.addToPresentations(_201306gr8)
		harrington.addToPresentations(_201306gr8)
		_201306gr8.addToSpeakers(beck)
		_201306gr8.addToSpeakers(harrington)

		def _201306 = new Presentation([title: "Geb Testing", sourceUrl: "http://gebish.org", presentationDate: new Date("2013/06/11")]).save()
		atkinson.addToPresentations(_201306)
		_201306.addToSpeakers(atkinson)

		def _201307lazy = new Presentation([title: "Lazybones", sourceUrl: "http://github.com/pledbrook/lazybones", presentationDate: new Date("2013/07/09")]).save()
		boon.addToPresentations(_201307lazy)
		_201307lazy.addToSpeakers(boon)

		def _201307 = new Presentation([title: "vert.x", description: "Groovy + Vert.x", presentationDate: new Date("2013/07/09")]).save()
		applegate.addToPresentations(_201307)
		_201307.addToSpeakers(applegate)

		def _201308 = new Presentation([title: "There be Dragons!", sourceUrl: "http://groovy.mn", slidesUrl: "http://groovy.mn", presentationDate: new Date("2013/08/13")]).save()
		_201308.addToSpeakers(hanson)
		groovyMn.addToPresentations(_201308)

		def _201309 = new Presentation([title: "FishBowl", sourceUrl: "http://groovy.mn", slidesUrl: "http://groovy.mn", presentationDate: new Date("2013/09/10")]).save()
		_201309.addToSpeakers(groovyMn)
		groovyMn.addToPresentations(_201309)
	}

	def destroy = {
		// All humans
	}
}
