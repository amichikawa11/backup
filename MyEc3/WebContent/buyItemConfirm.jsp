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

<script type="text/javascript">
	function submitAction(url){
		$('form').attr('action',url);
		$('form').submit();
	}
	</script>

<title>BuyItemConfirm画面</title>
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
		<p>BUY ITEM CONFIRM</p>
	</div>
	<div>
		<s:form>
		<s:iterator value="buyItemDTOList">
		<s:if test="count != 0">
		<tr>
			<td>商品名</td>
			<td><s:property value="itemName"/></td>
		</tr>
		<tr>
			<td>値段</td>
			<td><s:property value="itemPrice"/></td>
		</tr>
		<tr>
			<td>購入個数</td>
			<td><s:property value="count"/></td>
		</tr>
		<tr>
			<td>支払方法</td>
			<td><s:property value="pay"/></td>
		</tr>
		<tr>
			<td>
				<br>
			</td>
		</tr>
		</s:if>
	</s:iterator>

	<tr>
		<td>お届け先</td>
		<td><s:property value="#session.userAddress"/></td>
	</tr>
	<s:if test="buyItemDTOList.size();>1">
	<tr>
		<td><p>合計：</p></td>
		<td>
			<p><s:property value="#session.totalPrice"/><span>円</span></p>
		</td>
	</tr>
	</s:if>
	<tr>
		<td>
			<br>
		</td>
	</tr>

	<tr>
		<td><input type="button" value="戻る" onclick="submitAction('HomeAction')"/></td>
		<td><input type="button" value="完了" onclick="submitAction('BuyItemConfirmAction')"/></td>
	</tr>
</s:form>

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