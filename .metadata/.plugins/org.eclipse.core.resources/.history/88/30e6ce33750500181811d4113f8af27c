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

<title>ItemList画面</title>
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
<div id="top">
			<p>BuyItem</p>
		</div>
		<div>

		<s:form action="BuyItemAction">
			<table>
				<s:iterator value="buyItemDTOList">

				<tr>
					<td>
						<h3><s:property value="itemName"/></h3>
					</td>
				</tr>



				<tr>
					<td>
						<span>値段</span>
					</td>
					<td>
						<s:property value="itemPrice" /><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>在庫</span>
					</td>
					<td>
					<s:if test="item_stock>0">
						<s:property value="item_stock"/>
					</s:if>
					<s:else>
						<span>品切れ</span>
					</s:else>
					</td>
				</tr>

				<tr>
					<td>
						<span>購入個数</span>
					</td>
					<td>
					<s:if test="item_stock>0">
						<select name="count">
							<option value="0" selected="selected">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</s:if>
					<s:else>
						<select name="count">
							<option value="0" selected="selected">0</option>
						</select>
					</s:else>
					</td>
				</tr>
				<tr>
					<td>
						<br>
					</td>
				</tr>
				</s:iterator>
				<tr>

					<td>
						<span>支払い方法</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>
				</tr>

				<tr>
					<td>
						<s:submit value="購入"/>
					</td>
				</tr>

			</table>
		</s:form>
			<div>
				<p>前画面に戻る場合はこちら</p>
				<p>マイぺージはこちら</p>
			</div>
	</div>


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