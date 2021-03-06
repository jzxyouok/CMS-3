<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link rel="stylesheet" type="text/css" href="style/basic.css" />
<link rel="stylesheet" type="text/css" href="style/reg.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><!--{webname}--></title>
<script type="text/javascript" src="js/reg.js"></script>
</head>
<body>
{include file="header.tpl"}
{if $reg}
<div id="reg">
	<h2>会员注册</h2>
	<form action="?action=reg" method="post" name="reg">
		<dl>
			<dd>用  户  名 ：<input type="text" name="user" class="text"> <span class="red">[必填]</span> (*用户名在2到20位之间)</dd>
			<dd>密 　   码 ：<input type="password" name="pass" class="text"> <span class="red">[必填]</span> (*密码不得小于6位)</dd>
			<dd>确认密码：<input type="password" name="repass" class="text"> <span class="red">[必填]</span> (*同上)</dd>
			<dd>电子邮件：<input type="text" name="email" class="text"> <span class="red">[必填]</span> (*每个电子邮件只能注册一个ID)</dd>
			<dd>选择头像：<select name="face" onchange="sface()">
							{foreach $optionFaceOne(key,value)}
							<option value="0{@value}.gif">0{@value}.gif</option>
							{/foreach}
							{foreach $optionFaceTwo(key,value)}
							<option value="{@value}.gif">{@value}.gif</option>
							{/foreach}
						</select>
			</dd>
			<dd><img src="images/01.gif" class="face" alt="gif" name="faceimg"/></dd>
			<dd>安全问题：<select name="question">
							<option value="">没有任何安全问题</option>
							<option>您父亲的姓名</option>
							<option>您母亲的职业</option>
							<option>您配偶的出生地</option>
						</select>			
			</dd>
			<dd>问题答案：<input type="text" name="answer" class="text" /></dd>
			<dd>验 证 码 ：<input type="text" name="checkcode" class="text" /> <span class="red">[必填]</span></dd>
			<dd><img src="config/code.php" onclick="javascript:this.src='config/code.php?tm='+Math.random();" class="code"/></dd>
			<dd><input type="submit" name="send" value="注册会员" class="submit" onclick="return checkReg();" /></dd>
		</dl>
	</form>
</div>
{/if}
{if $login}
<div id="reg">
	<h2>会员登录</h2>
	<form action="?action=login" method="post" name="login">
		<dl>
			<dd>用  户  名 ：<input type="text" name="user" class="text"></dd>
			<dd>密 　   码 ：<input type="password" name="pass" class="text"></dd>
			<dd>记住密码？：<input type="radio" name="remember" value="1"/>是 <input type="radio" name="remember" value="0"/>否</dd>
			<dd>验 证 码 ：<input type="text" name="checkcode" class="text" /></dd>
			<dd><img src="config/code.php" onclick="javascript:this.src='config/code.php?tm='+Math.random();" class="code"/></dd>
			<dd><input type="submit" name="send" value="登录" class="submit" onclick="return checkLogin();" /></dd>
		</dl>
	</form>
</div>
{/if}
{include file="footer.tpl"}
</body>
</html>



