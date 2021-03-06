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


<title>ItemInsert画面</title>
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
			<li><a href='<s:url action="GoHomeAction"/>'>TOP</a></li>
			<li><a href='<s:url action="HomeAction"/>'>PRODUCT</a></li>
			<li><a href='<s:url action="UserCreateAction"/>'>SIGNUP</a></li>
		</ul>
	</div>

	<div class="right-list">
		<ul>
			<li><a href='<s:url action="LoginMovementAction"/>'>LOGIN</a></li>
			<li><a href='<s:url action="MyPageAction"/>'>MYPAGE</a></li>
			<li><a href='<s:url action="LogoutAction"/>'>LOGOUT</a></li>
			<li><a href='<s:url action="InquiryAction"/>'>MAIL</a></li>
		</ul>
	</div>
	</div>
</div>
</header>

<!-- メイン部分 -->
<div class="top-push content-push"></div>
<div id="main">
<div class="main-contents">
	<div class="top">
		<h3>ITEM INSERT</h3>
		<p>追加する商品の情報を入力してください。</p>
	</div>
	<br>

	<table>
	<s:form method="post" action="ItemInsertAction">
		商品名<br>
		<input type="text" name="ItemName"/><br><br>
		値段<br>
		<input type="text" name="ItemPrice"/><br><br>
		在庫<br>
		<input type="text" name="ItemStock"/><br><br>
		カテゴリ<br>
		<input type="text" name="ItemCategory"/><br><br>
		商品説明<br>
		<input type="text" name="ItemDescription"/><br><br>
		画像パス<br>
		<input type="text" name="ImageFilePath"/><br><br>

		<br><br>

		<s:submit class="button" value="商品を追加する"/>
	</s:form>


	<tr>
		<td><br><br></td>
	</tr>
	<tr>
		<td>管理ページに戻る場合は<a href='<s:url action="MasterMovementAction"/>'>こちら</a></td>
	</tr>
	</table>
</div>
</div>

<div class="push"></div>
<div class="content-downpush"></div>

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