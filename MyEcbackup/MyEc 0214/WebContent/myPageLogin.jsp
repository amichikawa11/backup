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

<!-- ファビコン -->
<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
<!-- end of iconj.com favicon code -->

<title>MyPageLogin画面</title>
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
			<li><a href='<s:url action="ProductPageAction"/>'>PRODUCT</a></li>
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
		<h3>MYPAGE LOGIN</h3>

	<br>

	<img src="./image/donut.png" style="width:40px;">

	<br>
	</div><br>
	<div>

		<p>マイページの確認をする際はログインをお願いします。</p></div>
		<br>

		<s:form action="MyPageLoginAction">
		<table>

				<tr>
			<td>
				<label>ログインID:</label>
			</td>
			<td>
				<input type="text" name="loginUserId" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label>ログインPASS:</label>
			</td>
			<td>
				<input type="password" name="loginPassword" value=""/>
			</td>
		</tr>


		<tr>
			<td>
			<s:submit class="button" value="ログイン"/>
			</td>
		</tr>
		</table>
		</s:form>
		<br/>

		</div>

	<div class="content-downpush"></div>

		<div id="text-link">
			<p><a href='<s:url action="UserCreateAction"/>'>新規ユーザー登録はこちら</a></p>
			<p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a></p>

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