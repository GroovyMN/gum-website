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