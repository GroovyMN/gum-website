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

					<g:each var="index" in="${0..<5}">
						<li class="testimonial">
							<div id="tweet${index}" class="testimonials"></div>
							<div class="testimonials-bg"></div>
							<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a></div>
						</li>
					</g:each>

				</ul>

			</div>

		</div>

		<r:script>
			// Rate limit of 150/hr
			$.getJSON("https://api.twitter.com/1/statuses/user_timeline/groovymn.json?count=5&include_rts=1&callback=?", function(data) {
				for(var i=0; i<5; i++) {
					$("#tweet"+i).html(data[i].text);
				}
			});
		</r:script>
		<!-- end: Testimonials-->

	</div>

</div>
<!-- end: Row -->