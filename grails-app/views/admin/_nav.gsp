<div class="nav" role="navigation">
	<ul>
		<li><h3 style="color: green">GroovyMN Admin</h3></li>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label" /></a></li>
		<li><a class="list" href="${createLink(uri: '/admin')}"><g:message code="default.admin.label" /></a></li>
		${body()}
	</ul>
</div>
