{*
	variables that are available:
	- {$questions}: contains all questions inside this category
*}

<div id="faqCategory">
	<header class="pageTitle">
		<h1>{$category.title}</h1>
	</div>
	<div class="bd">
		{option:questions}
			<div class="content">
				<ul>
					{iteration:questions}
						<li><a href="{$questions.full_url}">{$questions.question}</a></li>
					{/iteration:questions}
				</ul>
			</div>
		{/option:questions}

		{option:!questions}
			<p>{$msgNoQuestionsInCategory|ucfirst}</p>
		{/option:!questions}

		<p><a href="{$var|geturlforblock:'Faq'}" title="{$lblToFaqOverview|ucfirst}">{$lblToFaqOverview|ucfirst}</a></p>
	</div>
</div>