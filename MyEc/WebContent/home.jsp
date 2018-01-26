<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="./css/home_style.css">
<link rel="stylesheet" type="text/css" href="./css/basis_style.css">
<title>Home画面</title>
</head>
<body>

<!-- ヘッダー部分 -->
<div class="container">
<header>
	<div id="header">
		<div class="header-logo">SWEETS PIA</div>

	<div class="top-menu">

	<div class="left-list">
		<ul>
			<li><a href='<s:url action="HomeAction"/>'>PAGE TOP</a></li>

			<li>GUIDE</li>
			<li>PRODUCT</li>
		</ul>
	</div>

	<div class="right-list">
		<ul>
			<li><a href='<s:url action="UserCreateAction"/>'>SIGNUP</a></li>
			<li>LOGIN</li>
			<li>CART</li>
			<li>MAIL</li>
		</ul>
	</div>
	</div>
</div>
</header>

<!-- メイン部分 -->
<div id="main">
<img src="./image/donut.jpg" class="top-image" >
<div class="main-contents">
	<div class="top"></div>

	<div class="feature-newItem">
		<p>新商品の紹介</p>
	</div>

	<div class="feature-pickUpItem">
		<p>おすすめの商品</p>
	</div>

	<div class="feature-seasonItem">
		<p>季節の商品</p>
	</div>
	<div class="news">
		<p>更新情報</p>
	</div>

</div>
</div>

<div class="push"></div>

<!-- フッター部分 -->
<footer>

	<div class="h"></div>

	<div class="footer-message">
		Copyright©2018 SWEETS PIA. All Rights Reserved.
	</div>

</footer>
</div>


</body>
</html>