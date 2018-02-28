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

<title>ITEM INSERT</title>

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
	<h3><span class="letter-top">I</span>TEM <span class="letter-top">I</span>NSERT</h3>

	<div class="content-top-push"></div>

	<p>登録する商品情報を入力してください。</p>
	<br>


	<div class="push"></div>

	<s:form action="ItemInsertCompleteAction">
	<table>
		<tr>
			<td><label>NAME:</label></td>
			<td><input type="text" name="itemName" value=""/></td>
		</tr>
		<tr>
			<td><label>PRICE:</label></td>
			<td><input type="text" name="itemPrice" value=""/></td>
		</tr>
		<tr>
			<td><label>STOCK:</label></td>
			<td><input type="text" name="itemStock" value=""/></td>
		</tr>
		<tr>
			<td><label>CATEGORY:</label></td>
			<td><input type="text" name="itemCategory" value=""/></td>
		</tr>
		<tr>
			<td><span>DESCRIPTION:</span></td>
			<td><input type=text name="itemDescription" value=""/></td>
		</tr>
		<tr>
			<td><span>IMAGE:</span></td>
			<td><input type="text" name="imageFilePath" value=""/></td>
		</tr>
		<tr>
			<td><span>RELEASE:</span></td>
			<td><input type="text" name="releaseDate" value=""/></td>
		</tr>
		<tr>
			<td><s:submit class="button" value="INSERT ITEM"/></td>
		</tr>
	</table>
	</s:form>

	<div class="content-push"></div>

	<div class="text-link">
	<p><a href='<s:url action="GoMasterPageAction"/>'>管理画面へ戻る</a></p>
	</div>

	</div>

</div>

<div class="footer-push"></div>


</div>


</body>
</html>