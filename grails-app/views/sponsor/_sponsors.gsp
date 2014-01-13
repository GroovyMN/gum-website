<!-- start: Row -->
<div class="row">
	<div class="span9">
		<div class="title"><h3>Sponsors</h3></div>
		<div class="row">
			<g:render template="/sponsor/index" model="${[type: "Space Sponsor", url: "http://smartthings.com", title: "SmartThings", file: "smart-things-logo-text.png"]}" />
			<g:render template="/sponsor/index" model="${[type: "Beverage Sponsor", url: "http://agileorbit.com", title: "Agile Orbit", file: "agileorbit-logo.jpg"]}" />
			<g:render template="/sponsor/index" model="${[type: "Food Sponsor", url: "http://reachlocal.com", title:"OPI", file:"reachlocal.jpg"]}" />
		</div>
		<div class="row">
			<g:render template="/sponsor/intellij" />
			<g:render template="/sponsor/index" model="${[type: "Community Sponsor", url: "http://ug.oreilly.com", title: "O'Reilly", file: "oreilly-logo.gif", description: "Buy ebooks at 50% off use the UG Program discount code: DSUG"]}" />
			<g:render template="/sponsor/index" model="${[type: "Hosting Sponsor", url: "http://appfog.com", title: "AppFog", file: "appfog-logo.jpg"]}" />
		</div>
	</div>
	<g:render template="/social/twitter" />
</div>
<!-- end: Row -->
