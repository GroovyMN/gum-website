<r:require module="slider" />

<!-- start: Slider -->
<div class="slider-wrapper">
	<div id="da-slider" class="da-slider">

		<g:render template="/slider/slide" model="${[title: "Grails Community", action: "group", alt: "Grails logo", dir: "images/parallax-slider", file: "grails-logo.png"]}">
			Come join the Minnesota tech community in Minneapolis and see why Grails is one of the most exciting web frameworks running on the JVM.
		</g:render>
		<g:render template="/slider/slide" model="${[title: "GR8Conf US", url: "http://gr8conf.us", alt: "GR8Conf US", clazz: "rounded-corners", dir: "images/parallax-slider", file: "gr8-logo.png"]}">
			<a href="http://gr8conf.us">GR8Conf US</a> is a conference held in Minneapolis, MN dedicated to Groovy, Grails, Griffon and other GR8 technologies.
			<a href="http://gr8conf.us">GR8Conf US</a> is part of the <a href="http://gr8conf.org">GR8Conf family</a>, running in Europe, Australia and the US.
		</g:render>
		<g:render template="/slider/slide" model="${[title: "Monthly Presentations", action: "calendar", alt: "Presentations", height: "80%", width: "80%", clazz: "rounded-corners", dir: "images/parallax-slider", file: "gum-talk.jpg"]}">
			Leaders in the Twin Cities Grails community deliver highly engaging technical talks once a month on all things Groovy & Grails related.
		</g:render>
		<g:render template="/slider/slide" model="${[title: "Join Our Mailing List", action: "group", alt: "Groovy logo", dir: "images/parallax-slider", file: "groovy-logo.png"]}">
			Keep up to date with info on upcoming talks and get answers to your Groovy & Grails questions from our community. Only your email is needed and best of all it's free!
		</g:render>
		<g:render template="/slider/slide" model="${[title: "Want to Present?", action: "group", alt: "GUM logo", dir: "images/gum/logos", file: "unicorn-logo-with-text-400x400.png"]}">
			Have a Groovy/Grails topic and want to present at an upcoming meeting.  Submit your topic and we will contact you with upcoming openings in our presentation schedule.
		</g:render>

		<nav class="da-arrows">
			<span class="da-arrows-prev"></span>
			<span class="da-arrows-next"></span>
		</nav>
	</div>
</div>
<!-- end: Slider -->
