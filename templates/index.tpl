<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" type="text/css" href="style/basic.css" />
<link rel="stylesheet" type="text/css" href="style/index.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><!--{webname}--></title>
<script type="text/javascript" src="js/reg.js"></script>
<script type="text/javascript" src="config/static.php?type=index"></script>
</head>
<body>
{include file="header.tpl"}

<div id="user">
	{if $cache}
		{$member}
	{else}
    	{if $login}
    	<h2>会员登录</h2>
    	<form method="post" action="register.php?action=login" name="login">
            <label>用户名：<input type="text" name="user" class="text"/></label>
            <label>密　码：<input type="password" name="pass" class="text" /></label>
    	    <p><a href="#">忘记密码？</a></p>
            <label>验证码：<input type="text" name="checkcode" class="text code" /></label>
    		<img src="config/code.php" onclick="javascript:this.src='config/code.php?tm='+Math.random();" class="code"/>
    		<p>
    			<input type="submit" name="send" value="登录" class="submit" onclick="return checkLogin();"/>
    		    <a href="register.php?action=reg">注册会员</a>
    		</p>
    	</form>
    	{else}
    	<h2>会员信息</h2>
    	<div class="welcome">您好 <strong>{$userName}</strong>，欢迎光临</div>
    	<div class="userInfo">
    		<img src="images/{$userFace}" alt="{$userName}" />
    		<a href="#">个人中心</a>
    		<a href="#">我的评论</a>
    		<a href="register.php?action=logout">退出登录</a>
    	</div>
    	{/if}
	{/if}
	
	<div class="rec_user">
    	<h3>最近登录的会员<span>---------------------------------------</span></h3>
    	{if $ALLLaterUser}
    	{foreach $ALLLaterUser(key,value)}
    	<dl>
    		<dt><img src="images/{@value->face}" alt="{@value->user}" /></dt>
    		<dd>{@value->user}</dd>
    	</dl>
    	{/foreach}
    	{/if}
	</div>
</div>
<div id="news">
	<h3><a href="#">机油的选择与使用 浅谈汽车机油基础知识</a></h3>
	<p>
		相信很多朋友对于汽车机油并不陌生，知道它是汽车发动机必不可少的润滑剂，但很多朋友可能并不清楚它的真正作用是什么？为什么需要定期更换机油？如何选择机油？今天笔者就简单介绍一下机油的相关知识，让有车一族更好的了解如何选用汽车机油。
	    <a href="#">[查看全文]</a>
	</p>
	<p class="link">
		<a href="#">优酷计划通过增发再融6亿美元</a>　|　 
		<a href="#">网秦上市次日收盘大跌9.68%</a> 
		<a href="#">电子书市场遭遇优质内容缺失之困</a>　|　 
		<a href="#">优酷计划通过增发再融6亿美元</a> 
	</p>
	<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>01-01</span><a href="#">上海两千人为阿迪达斯新鞋连夜排队</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
	</ul>
</div>
<div id="pic">
	<img src="images/adverleft.png" alt="新闻图片" />
</div>
<div id="rec">
	<h2>特别推荐</h2>
	<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>01-01</span><a href="#">上海两千人为阿迪达斯新鞋连夜排队</a></li>
	</ul>
</div>
<div id="sidebar-right">
	<div class="adver"><img src="images/adver2.png" alt="广告图" /></div>
	<div class="hot">
	<h2>本月焦点</h2>
	<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>01-01</span><a href="#">上海两千人为阿迪达斯新鞋连夜排队</a></li>
	</ul>
	</div>
	<div class="comm">
	<h2>本月评论</h2>
	<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
	</ul>
	</div>
	<div class="vote">
	<h2>调查评论</h2>
	<h3>请问您是怎么知道本站的</h3>
	<form>
		<label><input type="radio" name="vote" />门户网站的搜素引擎</label>
		<label><input type="radio" name="vote" />Google百度搜素</label>
		<label><input type="radio" name="vote" />别的网站的链接</label>
		<label><input type="radio" name="vote" />朋友介绍或电视广告</label>
		<p>
		<input type="submit" value="投票" name="send" />
		<input type="button" value="查看" name="" />
		</p>
	</form>
	</div>
</div>

<div id="picnews">
	<h2>图文资讯</h2>
	<dl>
		<dt><a href="#"><img src="images/pic1.png" alt="title" /></a></dt>
		<dd><a href="#">以色列总理出访法国 士兵在迎接仪式上晕倒</a></dd>
	</dl>
	<dl>
		<dt><a href="#"><img src="images/pic2.png" alt="title" /></a></dt>
		<dd><a href="#">江西数百学生操场上给母亲洗脚</a></dd>
	</dl>
	<dl>
		<dt><a href="#"><img src="images/pic3.png" alt="title" /></a></dt>
		<dd><a href="#">歼20照片再现 地勤人员钻入起落架舱</a></dd>
	</dl>
	<dl>
		<dt><a href="#"><img src="images/pic4.png" alt="title" /></a></dt>
		<dd><a href="#">摄影师拍“水下工程”波浪如蘑菇云</a></dd>
	</dl>
</div>

<div id="newslist">
	<div class="list top">
		<h2><a href="#">更多</a>军事动态</h2>
		<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
	</ul>
	</div>
	<div class="list right top">
		<h2><a href="#">更多</a>八卦娱乐</h2>
		<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
	</ul>
	</div>
	<div class="list">
		<h2><a href="#">更多</a>时尚女人</h2>
		<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
	</ul>
	</div>
	<div class="list right">
		<h2><a href="#">更多</a>科技频道</h2>
		<ul  class="list-info">
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>07-22</span><a href="#">印尼警方击毙两名中国籍武装分子</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>03-12</span><a href="#">目击者回应"女子被骂中国猪"</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
		<li><span>04-30</span><a href="#">李克强答问结束 记者:加油</a></li>
		<li><span>02-11</span><a href="#">广东落马领导庭审自辩:女儿收钱坑爹</a></li>
		<li><span>03-07</span><a href="#">李肇星在印度出席会议因"台独"问题离席</a></li>
		<li><span>06-12</span><a href="#">习近平签署第四十三号主席令</a></li>
	</ul>
	</div>
</div>

{include file="footer.tpl"}

</body>
</html>


