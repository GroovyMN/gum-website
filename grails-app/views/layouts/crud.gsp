<!DOCTYPE html>
<html>
<g:render template="/ifIE" />
<head>
	<g:render template="/meta" />
	<title><g:layoutTitle default="${message(code: 'groovyMn.admin.label')}" /></title>

	<g:render template="/mobileViewport" />
	<g:render template="/fbOpenGraph" />
	<g:render template="/fonts" />

	<g:external file="/favicon.ico" />

	<g:layoutHead />

	<r:require module="common" />
	<r:require module="crud" />

	<r:layoutResources />
</head>

<body>
	<g:layoutBody />

	<r:layoutResources />
</body>
</html>
