<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>GUM Calendar</title>
</head>

<body>
	<div id="wrapper">
		<calendar:events max="${max}" />
		<br />

		<div class="container">
			<h2><g:link action="archive">Archived Talks</g:link></h2>
		</div>
	</div>
</body>
</html>
