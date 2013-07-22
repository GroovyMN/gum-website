import gum.*

class BootStrap {
	def init = { servletContext ->
		def ryan = new Speaker([name:"Ryan Applegate", twitterId: "rappleg", githubId: "rappleg", company:"SmartThings", about:"Seems like a nice guy."]).save()
		def vertx = new Presentation([title:"vert.x", description: "Async 4 Life!" , sourceUrl: "http://groovy.mn", slidesUrl:"http://groovy.mn", presentationDate:new Date()]).save()

		ryan.addToPresentations(vertx)

		vertx.addToSpeakers(ryan)
	}

	def destroy = {
		// All humans
	}
}
