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

<title>新規登録 画面</title>
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
<div class="top-push"></div>
<div id="main">
<div class="main-contents">
	<div class="top">
		<p>USER CREATE</p>
	</div>
	<div>
		<p>はじめてご利用される方は新規登録をお願いします。</p></div>
		<s:if test="errorMassage != ''">
			<s:property value="errorMassage" escape="false"/>
		</s:if>
		<table>
		<s:form action="UserCreateConfirmAction">
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
				<input type="text" name="loginPassword" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label>名前（漢字）:</label>
			</td>
			<td>
				<input type="text" name="userName" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label>なまえ（ふりがな）:</label>
			</td>
			<td>
				<input type="text" name="userKana" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label>性別</label>
			</td>
			<td>
				<input type="radio" name="sex" value="0" checked="checked">男
				<input type="radio" name="sex" value="1">女
			</td>
		</tr>
		<tr>
			<td>
				<label>住所</label>
			</td>
			<td>
				<input type="text" name="address" value=""/>
			</td>
		</tr>

		<tr>
			<td>
				<label>TEL番号（ハイフン必須）</label>
			</td>
			<td>
				<input type="text" name="tellNumber" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label>メールアドレス</label>
			</td>
			<td>
				<input type="text" name="mail" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<s:submit value="登録する"/>
			</td>
		</tr>
		</s:form>
		</table>


			<!-- GoHomeAction未作成 -->

			<p>Homeへ戻る場合は
				<a href='<s:url action="GohomeAction"/>'>こちら</a>


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