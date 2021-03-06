<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="keywords" content=""/>

	<link rel="stylesheet" type="text/css" href="./css/style.css">

<title>PRODUCT</title>

</head>
<body>

<div class="content-style">

<!-- ヘッダー -->
<header>
<div id="header">
	<div class="top">
		<div class="site-logo">
		<p>ONLINE</p>
		<p>SHOP</p>
		</div>

		<div class="top-menu-list">
			<ul class="menu-list">
			<li><a href='<s:url action="GoHomeAction"/>'><span class="list-color">H</span>OME</a></li>
			<li><a href='<s:url action="GoItemListAction"/>'><span class="list-color">P</span>RODUCT</a></li>
			<li><a href='<s:url action="GoLoginAction"/>'><span class="list-color">L</span>OGIN</a></li>
			<li><a href='<s:url action="GoMyPageAction"/>'><span class="list-color">M</span>YPAGE</a></li>
			<li><a href='<s:url action="LogoutAction"/>'><span class="list-color">L</span>OGOUT</a></li>
			<li><a href='<s:url action="GoUserCreateAction"/>'><span class="list-color">R</span>EGISTER</a></li>
			</ul>
		</div>
	</div>
</div>
</header>

<div class="clear"></div>
<div class="push"></div>

<!-- メインコンテンツ -->
<div id="main">
	<div class="contents">
	<h3><span class="letter-top">P</span>RODUCT</h3>

	<div class="content-top-push"></div>

	<div class="product-table">
	<s:form action="BuyItemAction">
	<s:iterator value="session.buyItemDTOList">
		<dl>
			<dd class="image">
			<img style="width:200px;" src="<s:property value='imageFilePath'/>">
			</dd>

			<dd class="item-letter">
			<s:property value="itemName"/><br>

			<span>PRICE:</span>
			<s:property value="itemPrice"/><br>

			<span>STOCK:</span>
			<s:if test="itemStock>0">
				<s:property value="itemStock"/><br>
			</s:if>
			<s:else>
				<span>品切れ</span>
			</s:else>

			<span>PURCHASE:</span>
			<s:if test="itemStock>0">
			<select name="count">
				<option value="0" selected="selected">-</option>
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
			<div class="push"></div>

			</dd>
		</dl>
	</s:iterator>

	<div class="push"></div>


	<table class="payment">
	<tr>
		<td>支払方法</td>
		<td>
		<input type="radio" name="pay" value="cash" checked="checked">現金払い
		<input type="radio" name="pay" value="card">クレジットカード
		</td>
	</tr>
	<tr>
	<s:submit class="button" value="BUY"/>
	</tr>
	</table>




	</s:form>

	</div>



	<div class="content-push"></div>

	<div class="text-link">
	<p><a href='<s:url action="GoUserCreateAction"/>'>新規ユーザー登録</a></p>
	<p><a href='<s:url action="GoHomeAction"/>'>HOMEへ戻る</a></p>
	</div>

	</div>

</div>

<div class="footer-push"></div>

</div>


</body>
</html>