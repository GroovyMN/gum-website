<div class="da-slide">
	<h2>${title}</h2>
	<p class="slider-text">${body()}</p>
	<g:if test="${url}">
		<g:link url="${url}" class="da-link">Read more</g:link>
	</g:if>
	<g:else>
		<g:link controller="page" action="${action}" class="da-link">Read more</g:link>
	</g:else>
	<div class="da-img"><r:img dir="${dir}" file="${file}" alt="${alt}" height="${height}" width="${width}" class="${clazz}" /></div>
</div>