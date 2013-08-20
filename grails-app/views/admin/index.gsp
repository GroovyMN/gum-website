<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="crud">
	<title><g:message code="default.admin.label" args="[entityName]" /></title>
</head>

<body>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/admin')}"><g:message code="default.admin.label" /></a></li>
	</ul>
</div>

<div style="padding: 1em">
	<ul>
		<li><a href="${createLink(uri: '/admin/presentation')}">Presentations</a></li>
		<li><a href="${createLink(uri: '/admin/speaker')}">Speakers</a></li>
	</ul>
</div>
</body>
</html>
