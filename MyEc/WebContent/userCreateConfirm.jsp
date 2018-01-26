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

<title>ユーザー登録 確認画面</title>
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
<div class="main-contents">
	<div class="top">
		<p>USER CREATE CONFIRM</p>
	</div>

	<div>
		<p>登録する内容は以下でよろしいですか。</p>
		<table>
			<s:form action="UserCreateCompleteAction">
			<tr id="box">
				<td>
					<label>ログインID:</label>
				</td>
				<td>
					<s:property value="loginUserId" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<s:property value="loginPassword" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>名前（漢字）:</label>
				</td>
				<td>
					<s:property value="userName" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>なまえ（ふりがな）</label>
				</td>
				<td>
					<s:property value="userKana" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>性別</label>
				</td>
				<td>
					<s:property value="sex" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>TEL番号</label>
				</td>
				<td>
					<s:property value="tellNumber" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>メールアドレス</label>
				</td>
				<td>
					<s:property value="address" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<s:submit value="この情報で登録する"/>
				</td>
			</tr>
			</s:form>

		</table>


	<p>Homeへ戻る場合は
				<a href='<s:url action="GohomeAction"/>'>こちら</a>（入力した情報は保存されません）


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