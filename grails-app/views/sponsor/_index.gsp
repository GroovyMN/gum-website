<div class="span3">
	<div class="item-description">
		<h4>${sponsor?.type ?: type}</h4>
	</div>

	<div class="picture">
		<a href="${sponsor?.url ?: url}" title="${sponsor?.name ?: name}">
			<r:img dir="images/sponsors/" file="${sponsor?.file ?: file}" alt="${sponsor?.name ?: name} logo" />
			<div class="image-overlay-link"></div>
		</a>
		<g:if test="${sponsor?.description ?: description}">
			${sponsor?.description ?: description}
		</g:if>
	</div>
</div>