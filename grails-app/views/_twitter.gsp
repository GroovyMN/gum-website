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

	<r:script>
		// Rate limit of 150/hr
		$.getJSON("https://api.twitter.com/1/statuses/user_timeline/groovymn.json?count=5&include_rts=1&callback=?", function(data) {
			for(var i=0; i<5; i++) {
				$("#tweet"+i).html(processTweetLinks(data[i].text));
				$("#time"+i).html(parseTwitterDate(data[i].created_at));
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

		// http://stackoverflow.com/questions/6549223/javascript-code-to-display-twitter-created-at-as-xxxx-ago
		function parseTwitterDate(tdate) {
			var system_date = new Date(Date.parse(tdate));
			var user_date = new Date();
			if (K.ie) {
				system_date = Date.parse(tdate.replace(/( \+)/, ' UTC$1'))
			}
			var diff = Math.floor((user_date - system_date) / 1000);
			if (diff <= 1) { return "just now"; }
			if (diff < 20) { return diff + " seconds ago"; }
			if (diff < 40) { return "half a minute ago"; }
			if (diff < 60) { return "less than a minute ago"; }
			if (diff <= 90) { return "one minute ago"; }
			if (diff <= 3540) { return Math.round(diff / 60) + " minutes ago"; }
			if (diff <= 5400) { return "1 hour ago"; }
			if (diff <= 86400) { return Math.round(diff / 3600) + " hours ago"; }
			if (diff <= 129600) { return "1 day ago"; }
			if (diff < 604800) { return Math.round(diff / 86400) + " days ago"; }
			if (diff <= 777600) { return "1 week ago"; }
			return "on " + system_date;
		}

		// from http://widgets.twimg.com/j/1/widget.js
		var K = function () {
			var a = navigator.userAgent;
			return {
				ie: a.match(/MSIE\s([^;]*)/)
			}
		}();
	</r:script>
	<!-- end: Testimonials-->

</div>