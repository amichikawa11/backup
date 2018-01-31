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

<link rel="stylesheet" type="text/css" href="./css/basis_style.css">

<title>Inquiry画面</title>
</head>
<body>

<!-- ヘッダー部分 -->
<div class="container">
<header>
	<div id="header">
		<div class="header-logo">SWEETOPIA</div>

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
			<li><a href='<s:url action="LoginPageAction"/>'>LOGIN</a></li>
			<li><a href='<s:url action="LogoutAction"/>'>LOGOUT</a></li>
			<li><a href='<s:url action="InquiryAction"/>'>MAIL</a></li>
		</ul>
	</div>
	</div>
</div>
</header>

<!-- メイン部分 -->
<div class="top-push"></div>
<div id="main">
<div class="main-contents">
	<div class="top">
		<p>INQUIRY</p>
		<p>お問い合わせがある方は、下記よりご連絡をお願いいたします。</p>
	</div>
	<br>

	<table>
	<s:form method="post" action="InquiryCompleteAction">
		名前<br>
		<input type="text" name="inquiry_name"/><br><br>
		メールアドレス<br>
		<input type="text" name="inquiry_mail"/><br><br>
		お問い合わせの種類<br>
		<select name="qtype">
			<option value="company">会社について</option>
			<option value="product">商品について</option>
			<option value="order">注文について</option>
			<option value="support">アフターサポートについて</option>
			<option value="another">その他のお問い合わせ</option>
		</select>
		<br><br>

		お問い合わせ内容<br>
		<s:textarea cols="30" rows="5" name="body"/>
		<br>
		<s:submit class="button" value="送信"/>
	</s:form>
	</table>

</div>
</div>

<div class="push"></div>

<!-- フッター部分 -->
<footer>

	<div class="h"></div>

	<div class="footer-message">
		Copyright©2018 SWEETOPIA. All Rights Reserved.
	</div>

</footer>
</div>



</body>
</html>