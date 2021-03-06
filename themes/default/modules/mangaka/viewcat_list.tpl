<!-- BEGIN: main -->

<!-- BEGIN: facebookjssdk -->
<div id="fb-root"></div>
<script type="text/javascript">
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/{FACEBOOK_LANG}/all.js#xfbml=1&appId={FACEBOOK_APPID}";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<!-- END: facebookjssdk -->
<!-- BEGIN: facebook_pubsdk -->
<div id="fb-root"></div>
<script>
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/{FACEBOOK_LANG}/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<!-- END: facebook_pubsdk -->

<div class="news_content clearfix">
	<!-- BEGIN: viewdescription -->
	<table class="table">
		<colgroup>
			<col span="3" />
			<col class="w250" />
		</colgroup>
		<thead>
			<tr>
				<th class="text-center w250"><h3 class="text-center">{CONTENT.title}</h3></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<div class="info clearfix">
						<div class="col-lg-8 col-md-8 col-xs-24">
							<!-- BEGIN: image -->
							<img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail imghome center-block" />
							<!-- END: image -->
						</div>
						<div class="col-lg-16 col-md-16 col-xs-24">
						<h4>{LANG.titlesite} : {CONTENT.titlesite}</h4>
						<p class="text-justify">{CONTENT.description}</p>
						
						</div>
					</div>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr class="active">
				<td>
					<div class="col-lg-16 col-md-16 col-xs-24">
						<!-- BEGIN: authors -->
						{LANG.authors} :{AUTHOR}
						<!-- END: authors -->
					</div>
					<div class="col-lg-8 col-md-8 col-xs-24 pull-right">
					<!-- BEGIN: translators -->
						{LANG.translator} : {TRANSLATOR}
					<!-- END: translators -->
					</div>
				</td>
			</tr>
			<tr class="active">
				<td>
					<div class="col-lg-16 col-md-16 col-xs-24">
					{LANG.genre} :
						<!-- BEGIN: genre -->
						<a title="{GENRE.title}" href="{GENRE.link}" class="label label-success">{GENRE.title}</a>
						<!-- END: genre -->
					</div>
					<div class="col-lg-8 col-md-8 col-xs-24 pull-right">
					<!-- BEGIN: last_update -->
						<i class="fa fa-clock-o"></i>&nbsp;{LAST_UPDATE}
					<!-- END: last_update -->
					</div>
				</td>
			</tr>
		</tfoot>
	</table>
	<!-- END: viewdescription -->
	<table class="table table-bordered table-hover">
		<colgroup>
			<col span="3" />
			<col class="w250" />
		</colgroup>
		<thead>
			<tr>
				<th class="text-center w250">{LANG.chapter}</th>
				<th class="text-center">{LANG.last_update}</th>
				<!-- BEGIN: adminlink -->	
				<th>&nbsp;</th>
				<!-- END: adminlink -->	
			</tr>
		</thead>
		<tbody>
		<!-- BEGIN: viewcatloop -->
			<tr>
				<td class="text-center col-md-14">
					<a href="{CONTENT.link}">{LANG.chapter} {CONTENT.chapter}</a>
					<a target="_blank" href="{CONTENT.link}"><i class="fa fa-external-link">&nbsp;</i></a>
				</td>
				<td class="text-center col-md-6">{CONTENT.publtime}</td>
			<!-- BEGIN: adminlink -->	
				<td class="text-center">{ADMINLINK}</td>
			<!-- END: adminlink -->
			</tr>
		<!-- END: viewcatloop -->
		</tbody>
	</table>
	<div id="tabs" class="tabs">
		<nav>
			<ul>
				<!-- BEGIN: disqus_tab -->
				<li>
					<a href="#section-1"><em class="fa fa-comment-o">&nbsp;</em><span>{LANG.disqus_comment}</span></a>
				</li>
				<!-- END: disqus_tab -->

				<!-- BEGIN: fb_comment_tab -->
				<li>
					<a href="#section-2"><i class="fa fa-facebook-square"></i>&nbsp;</em><span>{LANG.fb_comment}</span></a>
				</li>
				<!-- END: fb_comment_tab -->

				<!-- BEGIN: comment_tab -->
				<li>
					<a href="#section-3"><em class="fa fa-comments-o">&nbsp;</em><span>{LANG.comment}</span></a>
				</li>
				<!-- END: comment_tab -->
			</ul>
		</nav>
		<div class="content">
			<!-- BEGIN: disqus -->
			<section id="section-1">
				<div id="disqus_thread"></div>
					<script type="text/javascript">
						/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
						var disqus_shortname = '{DISQUS_SHORTNAME}'; // required: replace example with your forum shortname

						/* * * DON'T EDIT BELOW THIS LINE * * */
						(function() {
							var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
							dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
							(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
						})();
					</script>
			<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
			</section>
			<!-- END: disqus -->
			<!-- BEGIN: fb_comment -->
			<section id="section-2">
				<div class="fb-comments" data-href="{SELFURL}" data-width="100%" data-numposts="5" data-colorscheme="light"></div>
				<style>.fb-comments, .fb-comments iframe[style], .fb-like-box, .fb-like-box iframe[style] {width: 100% !important;}
				.fb-comments span, .fb-comments iframe span[style], .fb-like-box span, .fb-like-box iframe span[style] {width: 100% !important;}
				</style>
			</section>
			<!-- END: fb_comment -->
			<!-- BEGIN: comment -->
			<section id="section-3">
				{CONTENT_COMMENT}
			</section>
			<!-- END: comment -->
		</div>
	</div>
	<!-- BEGIN: generate_page -->
	<div class="text-center">
		{GENERATE_PAGE}
	</div>
	<!-- END: generate_page -->
</div>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
	$(document).ready(function() {$("[data-rel='tooltip'][data-content!='']").tooltip({
		placement: "{TOOLTIP_POSITION}",
		html: true,
		title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
	});});
</script>
<!-- END: tooltip -->
<script type="text/javascript" src="{NV_BASE_SITEURL}modules/{MODULE_FILE}/js/tabresponsive.js"></script>
<script type="text/javascript">
	var detail_error_group = '{LANG.detail_error_group}';
	new CBPFWTabs(document.getElementById('tabs'));
</script>
<!-- END: main -->