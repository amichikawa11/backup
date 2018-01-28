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

<title>商品カタログ画面</title>
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
		<p>PRODUCT LIST</p>
	</div>
	<div>
	<s:form action="BuyItemAction">
		<table>
			<s:iterator value="buyItemDTOList">
			<tr>
				<td>
					<p><s:property value="itemName"/></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><s:property value="itemPrice"/></p>
				</td>
			</tr>
			<tr>
				<td>
					<p><s:property value="imageFilePath"/></p>
				</td>
			</tr>
			</s:iterator>
		</table>
	</s:form>
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