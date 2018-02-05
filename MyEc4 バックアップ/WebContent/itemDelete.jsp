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

<title>ItemDelete画面</title>
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
			<h3>ITEM DELETE CONTROL</h3>
		</div>

		<p>削除したい商品を選択してください。</p>

		<div>

		<table>
				<s:form action="ItemDeleteAction">

			<s:iterator value="buyItemDTOList">

			<dl class="dl-list">
			<dd class="dd-list">

			<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" >

			<br><br>
			<s:property value="itemName" /><br>
			<span>値段:</span>
			<s:property value="itemPrice" /><span>円</span><br>
			<span>現在の在庫:</span>
			<s:property value="item_stock"/><span>個</span><br>


			<input type="checkbox" name="deleteName" value="<s:property value='itemName'/>">


					</dd>
					</dl>


				</s:iterator>

				<tr>
					<td>
					<div class="push h"></div>
						<s:submit class="button" value="商品を削除する"/>
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