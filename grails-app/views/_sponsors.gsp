<!-- start: Row -->
<div class="row">

	<div class="span9">

		<div class="title"><h3>Sponsors</h3></div>

		<!-- start: Row -->
		<div class="row">

			<div class="span3">
				<div class="item-description">
					<h4>Space Sponsor</h4>
				</div>

				<div class="picture">
					<a href="http://refactr.com" title="Refactr">
						<r:img dir="images/sponsors/" file="refactr.png" alt="Refactr logo" />
						<div class="image-overlay-link"></div>
					</a>
				</div>

			</div>

			<div class="span3">

				<div class="item-description">
					<h4>Food Sponsor</h4>
				</div>
				<div class="picture">
					<a href="http://target.com" title="Target">
						<r:img dir="images/sponsors/" file="target-logo-300x150.jpg" alt="Target logo" />
						<div class="image-overlay-link"></div>
					</a>
				</div>

			</div>

			<div class="span3">

				<div class="item-description">
					<h4>Beverage Sponsor</h4>
				</div>
				<div class="picture">
					<a href="http://reachlocal.com" title="ReachLocal">
						<r:img dir="images/sponsors/" file="reachlocal.jpg" alt="ReachLocal logo" />
						<div class="image-overlay-link"></div>
					</a>
				</div>

			</div>

		</div>
		<!-- end: Row -->

	</div>

	<div class="span3">

		<!-- start: Testimonials-->

		<div class="testimonial-container">

			<div class="title"><h3>Twitter</h3></div>

			<div class="testimonials-carousel" data-autorotate="3000">

				<ul class="carousel">

					<li class="testimonial">
						<div id="tweet0" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
					</li>

					<li class="testimonial">
						<div id="tweet1" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
					</li>

					<li class="testimonial">
						<div id="tweet2" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
					</li>

					<li class="testimonial">
						<div id="tweet3" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
					</li>

					<li class="testimonial">
						<div id="tweet4" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
					</li>

				</ul>

			</div>

		</div>

		<r:script>
			$.getJSON("https://api.twitter.com/1/statuses/user_timeline/groovymn.json?count=5&include_rts=1&callback=?", function(data) {
				$("#tweet0").html(data[0].text);
				$("#tweet1").html(data[1].text);
				$("#tweet2").html(data[2].text);
				$("#tweet3").html(data[3].text);
				$("#tweet4").html(data[4].text);
			});
		</r:script>
		<!-- end: Testimonials-->

	</div>

</div>
<!-- end: Row -->

<!-- start Clients List -->
<div class="clients-carousel">

	<ul class="slides clients">
		<li><a href="http://groovy.codehaus.org"><r:img dir="images/groovy/" file="groovy-lang.png" alt="groovy" /></a></li>
		<li><a href="http://grails.org"><r:img dir="images/groovy/" file="grails-campaign-btn.png" alt="grails" /></a></li>
		<li><a href="http://hudson.grails.org"><r:img dir="images/groovy/" file="grails-hudson-builds.png" alt="hudson" /></a></li>
		<li><a href="http://grails.org/download/ubuntu"><r:img dir="images/groovy/" file="grails-ubuntu.png" alt="ubuntu" /></a></li>
		<li><a href=""><r:img dir="images/groovy/" file="gvm.png" alt="gvm" /></a></li>
		%{--<li><a href="#"><r:img dir="images/logos/" file="5.png" alt="ratpack" /></a></li>--}%
		<li><a href="http://gradle.org"><r:img dir="images/groovy/" file="gradle-logo_sign.jpg" alt="gradle" /></a></li>
		%{--<li><a href="#"><r:img dir="images/logos/" file="7.png" alt="spock" /></a></li>--}%
		%{--<li><a href="#"><r:img dir="images/logos/" file="8.png" alt="geb" /></a></li>--}%
		<li><a href="http://gaelyk.appspot.com"><r:img dir="images/groovy/" file="google-app-engine-groovy.png" alt="gaelyk" /></a></li>
		<li><a href="http://griffon.codehaus.org"><r:img dir="images/groovy/" file="griffion-64x64.jpg" alt="griffon" /></a></li>
	</ul>

</div>
<!-- end Clients List -->