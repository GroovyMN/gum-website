<!DOCTYPE html>
<html>
<head>
	<title>Grails Runtime Exception</title>
	<meta name="layout" content="main">
	<link rel="stylesheet" href="${asset.assetPath(src: 'errors.css')}" type="text/css">
</head>

<body>
	<g:renderException exception="${exception}" />
</body>
</html>
