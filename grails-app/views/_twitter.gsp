<div class="span3">

	<!-- start: Testimonials-->
	<div class="testimonial-container">

		<div class="title"><h3>Twitter</h3></div>

		<div class="testimonials-carousel" data-autorotate="3000">

			<ul class="carousel">

				<g:each var="index" in="${4..0}">
					<li class="testimonial">
						<div id="tweet${index}" class="testimonials"></div>
						<div class="testimonials-bg"></div>
						<div class="testimonials-author"><a href="http://twitter.com/groovymn">@GroovyMN</a> <span id="time${index}"></span></div>
					</li>
				</g:each>

			</ul>

		</div>

	</div>

	<r:require module="timeago" />

	<r:script>
		// Rate limit of 150/hr
		$.getJSON("https://api.twitter.com/1/statuses/user_timeline/groovymn.json?count=5&include_rts=1&callback=?", function(data) {
			for(var i=0; i<5; i++) {
				$("#tweet"+i).html(processTweetLinks(data[i].text));
				$("#time"+i).html($.timeago((data[i].created_at)));
			}
		});

		// http://stackoverflow.com/questions/8020739/regex-how-to-replace-twitter-links
		function processTweetLinks(text) {
			var exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/i;
			text = text.replace(exp, "<a href='$1' target='_blank'>$1</a>");
			exp = /(^|\s)#(\w+)/g;
			text = text.replace(exp, "$1<a href='http://search.twitter.com/search?q=%23$2' target='_blank'>#$2</a>");
			exp = /(^|\s)@(\w+)/g;
			text = text.replace(exp, "$1<a href='http://www.twitter.com/$2' target='_blank'>@$2</a>");
			return text;
		}
	</r:script>
	<!-- end: Testimonials-->

</div>
