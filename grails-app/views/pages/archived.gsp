<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>Archived Presentations</title>
</head>

<body>
<div id="wrapper">
	<!-- start: Container -->
	<div class="container">
		<p>
			<strong>Attention:</strong> Presenters if you've given a talk, please send us a pull request to this page on
			<a href="https://github.com/GroovyMN/gum-website">GitHub</a> for inclusion.
		</p>

		<!-- start: Portfolio -->
		<div class="row">
			<div id="portfolio-wrapper">
				<div class="row">

				<g:each in="${presentations}" status="i" var="presentation">

					<g:if test="${(i != 0) && (i != presentationTotal) && ((i % 3) == 0)}">
						</div>
						<div class="row">
					</g:if>

					<g:set var="speakerName" value="${presentation?.speakers?.first()?.name}" />
					<g:set var="speakerUrl" value="${presentation?.speakers?.first()?.website}" />

					<talks:talk talkDate="${presentation.presentationDate}" title="${presentation.title}" presenter="${speakerName}" presenterUrl="${speakerUrl}" url="${presentation.slidesUrl ?: presentation.sourceUrl ?: "http://groovy.mn"}">
						<g:if test="${presentation.description}">
							${presentation.description}
						</g:if>
					</talks:talk>

				</g:each>

				</div>

				</div>
			</div>
			<!-- end: Portfolio -->

		</div>
		<!-- end: Container -->
	</div>
	<!-- end: Wrapper -->
</body>
</html>
