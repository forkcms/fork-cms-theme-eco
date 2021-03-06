{*
	variables that are available:
	- {$widgetBlogArchive}:
*}

{cache:{$LANGUAGE}_blogWidgetArchiveCache}
	{option:widgetBlogArchive}
		<aside class="widget blogArchiveWidget">
			<header class="hd">
				<h3>{$lblArchive|ucfirst}</h3>
			</header>
			<div class="bd">
				<ul>
					{iteration:widgetBlogArchive}
						<li class="icon archiveIcon">
							<p class="year">
								{option:widgetBlogArchive.url}<a href="{$widgetBlogArchive.url}">{/option:widgetBlogArchive.url}
								{$widgetBlogArchive.label}{option:widgetBlogArchive.url}</a>{/option:widgetBlogArchive.url}
								<span class="count">({$widgetBlogArchive.total})</span>
							</p>

							{option:widgetBlogArchive.months}
								<ul>
									{iteration:widgetBlogArchive.months}
										<li>
											{option:widgetBlogArchive.months.url}<a href="{$widgetBlogArchive.months.url}">{/option:widgetBlogArchive.months.url}
												{$widgetBlogArchive.months.label|date:'F':{$LANGUAGE}}{option:widgetBlogArchive.months.url}</a>{/option:widgetBlogArchive.months.url} <span>({$widgetBlogArchive.months.total})</span>
										</li>
									{/iteration:widgetBlogArchive.months}
								</ul>
							{/option:widgetBlogArchive.months}
						</li>
					{/iteration:widgetBlogArchive}
				</ul>
			</div>
		</aside>
	{/option:widgetBlogArchive}
{/cache:{$LANGUAGE}_blogWidgetArchiveCache}