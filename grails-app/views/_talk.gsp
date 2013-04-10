<div class="span4 portfolio-item nature people">
	<div class="picture"><a href="${url}" title="${title}"><r:img dir="images/gum/presentation" file="${imageFileName}" alt="${title}" class="rounded-corners" /><div class="image-overlay-link"></div></a>
		<div class="item-description alt">
			<h5><a href="${url}">${title}</a></h5>
			<p>
				${body()}
			</p>
		</div>
		<div class="post-meta">
			<span><i class="mini-ico-calendar"></i>${talkDate}</span>
			<span><i class="mini-ico-user"></i>
				<g:if test="${presenterUrl}">
					<a href="${presenterUrl}" target="_blank">${presenter}</a>
				</g:if>
				<g:else>
					${presenter}
				</g:else>
			</span>
		</div>
	</div>
</div>
