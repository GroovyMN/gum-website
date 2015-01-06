<!-- start: Row -->
<div class="row">
	<div class="span9">
		<div class="title"><h3>Sponsors</h3></div>

		<div class="row">
			<g:if test="${sponsors?.size == 3}">
				<g:each in="${sponsors}" var="sponsor">
					<g:render template="/sponsor/index" model="${[sponsor: sponsor]}" />
				</g:each>
			</g:if>
			<g:else>
				<g:render template="/sponsor/index" model="${[type: "Space Sponsor", url: "http://smartthings.com", name: "SmartThings", file: "smart-things-logo-text.png"]}" />
				<g:render template="/sponsor/index" model="${[type: "Beverage Sponsor", url: "http://objectpartners.com", name: "Object Partners", file: "opi-logo-text.png"]}" />
				<g:render template="/sponsor/index" model="${[type: "Food Sponsor", url: "http://smartthings.com", name: "SmartThings", file: "smart-things-logo-text.png"]}" />
			</g:else>
		</div>

		<div class="row">
			<g:render template="/sponsor/intellij" />
			<g:render template="/sponsor/index" model="${[type: "Community Sponsor", url: "http://ug.oreilly.com", name: "O'Reilly", file: "oreilly-logo.gif", description: "Buy ebooks at 50% off use the UG Program discount code: DSUG"]}" />
			<g:render template="/sponsor/index" model="${[type: "Hosting Sponsor", url: "http://appfog.com", name: "AppFog", file: "appfog-logo.jpg"]}" />
		</div>
	</div>
	<g:render template="/social/twitter" />
</div>
<!-- end: Row -->
