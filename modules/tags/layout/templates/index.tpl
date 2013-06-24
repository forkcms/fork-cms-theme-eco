{*
	variables that are available:
	- {$tags}: contains an array with all tags that are used on the site, each element contains data about the tag
*}

<div id="tagsIndex">
	{option:!tags}<p>{$msgTagsNoItems}</p>{/option:!tags}
	{option:tags}
		<ul class="tags">
			<li class="firstChild">{$lblTags}</li>
			{iteration:tags}
				<li><a href="{$var|geturlforblock:'tags':'detail'}/{$tags.url}">{$tags.name}</a></li>
			{/iteration:tags}
		</ul>
	{/option:tags}
</div>