<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>{{$page_title}} / itube.kaztrk.kz</title>
	<meta name="description" content="{{$page_description|default:"itube.kaztrk.kz"}}"/>
	<meta name="keywords" content="{{$page_keywords|default:"itube.kaztrk.kz"}}"/>
	<meta name="generator" content="kaztrk.kz"/>
	<link href="{{$config.statics_url}}/styles/main.css" rel="stylesheet" type="text/css"/>
	{{if $page_rss!=''}}
		<link href="{{$page_rss}}" rel="alternate" type="application/rss+xml"/>
	{{else}}
		<link href="{{$config.project_url}}/rss/" rel="alternate" type="application/rss+xml"/>
	{{/if}}
	{{if $page_canonical!=''}}
		<link href="{{$page_canonical}}" rel="canonical"/>
	{{/if}}
	{{if $page_prev!=''}}
		<link href="{{$page_prev}}" rel="prev"/>
	{{/if}}
	{{if $page_next!=''}}
		<link href="{{$page_next}}" rel="next"/>
	{{/if}}

	{{$js_includes|smarty:nodefaults}}
	<script type="text/javascript" src="{{$config.statics_url}}/js/KernelTeamImageRotator.js?v={{$config.project_version}}"></script>
	<script type="text/javascript">
		KT_rotationEngineStartup(0.2, 0.5);
	</script>
</head>
<body>
<div id="placenta">
<!--	<div id="top_menu">
		{{if $smarty.session.user_id>0}}
			<span>Привет, {{$smarty.session.display_name}}</span>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="{{$config.project_url}}/members/{{$smarty.session.user_id}}/">Мой профиль</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="{{$config.project_url}}/my_favourite_videos/">Мои закладки</a>
			&nbsp;&nbsp;|&nbsp;&nbsp;
			{{if $smarty.session.unread_messages>0}}<a href="{{$config.project_url}}/my_messages/unread/">Мои сообщения (+{{$smarty.session.unread_messages}})</a>{{else}}<a href="{{$config.project_url}}/my_messages/inbox/">Мои сообщения</a>{{/if}}
			&nbsp;&nbsp;|&nbsp;&nbsp;
			<a href="{{$config.project_url}}/logout.php" class="hl">Выход</a>
		{{else}}
			<a href="{{$config.project_url}}/signup.php" class="hl">Регистрация</a>
			<a href="{{$config.project_url}}/login.php" class="hl">Вход</a>
		{{/if}}
	</div> -->
	<div id="header">
		<div id="advertising">
		</div>
		<div>
			{{if $storage.list_videos_common_videos_list.sort_by=='post_date' && $storage.list_videos_common_videos_list.list_type==''}}
				{{assign var="list_videos_type" value="latest"}}
			{{elseif ($storage.list_videos_common_videos_list.sort_by=='rating' || $storage.list_videos_common_videos_list.sort_by=='rating_today' || $storage.list_videos_common_videos_list.sort_by=='rating_week' || $storage.list_videos_common_videos_list.sort_by=='rating_month') && $storage.list_videos_common_videos_list.list_type==''}}
				{{assign var="list_videos_type" value="rating"}}
			{{elseif ($storage.list_videos_common_videos_list.sort_by=='video_viewed' || $storage.list_videos_common_videos_list.sort_by=='video_viewed_today' || $storage.list_videos_common_videos_list.sort_by=='video_viewed_week' || $storage.list_videos_common_videos_list.sort_by=='video_viewed_month') && $storage.list_videos_common_videos_list.list_type==''}}
				{{assign var="list_videos_type" value="video_viewed"}}
			{{/if}}
			<div id="main_menu">
				<nav>
				<ul>
				<li><a href="{{$config.project_url}}/" title="Главная" {{if $smarty.server.SCRIPT_NAME=='/index.php'}}class="selected"{{/if}}>Главная</a></li>
				<li><a href="{{$config.project_url}}/latest-updates/"  title="Новые видео" {{if $smarty.server.SCRIPT_NAME=='/videos_list.php' && $list_videos_type=='latest'}}class="selected"{{/if}}>Новые видео</a></li>
				<li><a href="{{$config.project_url}}/top-rated/"  title="Самые рейтинговые" {{if $smarty.server.SCRIPT_NAME=='/videos_list.php' && $list_videos_type=='rating'}}class="selected"{{/if}}>Рейтинговые</a></li>
				<li><a href="{{$config.project_url}}/most-popular/"  title="Самые популярные" {{if $smarty.server.SCRIPT_NAME=='/videos_list.php' && $list_videos_type=='video_viewed'}}class="selected"{{/if}}>Популярные</a></li>
				<li><a href="{{$config.project_url}}/categories/"  title="Категории" {{if $smarty.server.SCRIPT_NAME=='/categories.php'}}class="selected"{{/if}}>Категории</a></li>
				<li><a href="{{$config.project_url}}/community/"  title="Сообщество" {{if $smarty.server.SCRIPT_NAME=='/community.php'}}class="selected"{{/if}}>Сообщество</a></li>
				<li><a href="{{if $smarty.session.user_id>0}}{{$config.project_url}}/my_video_upload/{{else}}{{$config.project_url}}/login.php?action=not_allowed{{/if}}" title="Загрузить видео"></a></li>
				</ul>
				</nav>
				<div class="g_clear"></div>
			</div>
<!--			<div id="text_menu">
				<a href="{{$config.project_url}}/invite_friend.php">Пригласить друга</a>
				&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="{{$config.project_url}}/support.php">Поддержка</a>
			</div>
			-->
			<div class="g_clear"></div>
		</div>
	</div>