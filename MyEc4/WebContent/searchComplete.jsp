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
<link rel="stylesheet" type="text/css" href="./css/table_style.css">

<title>BuyItem画面</title>
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
<div class="top-push"></div>
<div id="main">
<div class="main-contents">
<div id="top">
			<h3>BUY ITEM</h3>
		</div>

		<!-- カテゴリ表示機能 -->

		<!-- 商品検索機能 -->
		<div>
		<s:form action="SearchAction">
		<tr>
		<td><s:textfield name="searchWord" value=""/></td>
		<td><s:submit class="button" value="検索"/></td>
		</tr>
		</s:form>

		</div>


		<div>
		<table>
				<s:form action="BuyItemAction">


			<s:iterator value="buyItemDTOList">

			<dl class="dl-list">
			<dd class="dd-list">

			<div class="item_description">
			<a href="#">

			<span class="remark"><s:property value="item_description"/></span>
			<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" >

			<br><br>
			<s:property value="itemName" /><br>
			<span>値段:</span>
			<s:property value="itemPrice" /><span>円</span><br>
			<span>在庫:</span>

				<s:if test="item_stock>0">
					<s:property value="item_stock"/>
				</s:if>
				<s:else>
					<span>品切れ</span>
				</s:else>
				<br>
			<span>購入個数:</span>

					<s:if test="item_stock>0">
					<div class="select-box">
						<select name="count">
							<option value="0" selected="selected">-</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
						</div>
					</s:if>
					<s:else>
						<select name="count">
							<option value="0" selected="selected">0</option>
						</select>
					</s:else>

			</a>
			</div>
					</dd>
					</dl>


				</s:iterator>

				<!-- 繰り返し処理ここまで、以下は支払方法選択 -->

				<div class="clear"></div>

				<tr>
					<td>
						<span>支払方法:</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>
				</tr>
				<tr>
					<td>
						<s:submit class="button" value="購入"/>
					</td>
				</tr>

		</s:form>
					</table>
			<div>
				<p>前画面に戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				<p>マイぺージは<a href='<s:url action="MyPageMovementAction" />'>こちら</a></p>
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