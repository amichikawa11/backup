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
<link rel="stylesheet" type="text/css" href="./css/style1.css">
<title>Home画面</title>
</head>
<body>

<!-- ヘッダー部分 -->
<header>
	<div id="header">
		<div class="header-logo">MRS DONUT</div>

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
			<li>SIGN UP</li>
			<li>LOG IN</li>
			<li>MY CART</li>
			<li>MAIL</li>
		</ul>
	</div>
	</div>
</div>
</header>

<!-- メイン部分 -->
<div id="main">
<div class="main-contents">
	<div class="top"></div>
	<div class="feature-newItem"></div>
	<div class="feature-pon"></div>
	<div class="feature-choko"></div>
	<div class="news"></div>

</div>
</div>
<br>

<!-- フッター部分 -->
<footer>
<div id="footer">

	<div class="h"></div>

	<div class="footer-message">
		Copyright©2018 MRS DONUT. All Rights Reserved.
	</div>

</div>

</footer>



</body>
</html>