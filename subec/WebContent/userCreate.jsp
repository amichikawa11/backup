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

<title>USER CREATE</title>

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
	<h3><span class="letter-top">U</span>SER <span class="letter-top">C</span>REATE</h3>

	<div class="content-top-push"></div>

	<p>新規登録をされる方は、下記を入力してください。</p>
	<br>

	<div class="error-message">
	<s:if test="createErrorMessage != null">
	<p><s:property value="createErrorMessage" escape="false"/></p>
	</s:if>
	</div>

	<div class="push"></div>

	<s:form action="UserCreateConfirmAction">
	<table>
		<tr>
			<td><label>ID:</label></td>
			<td><input type="text" name="loginUserId" value=""/></td>
		</tr>
		<tr>
			<td><label>PASS:</label></td>
			<td><input type="password" name="loginPassword" value=""/></td>
		</tr>
		<tr>
			<td><label>NAME:</label></td>
			<td><input type="text" name="userName" value=""/></td>
		</tr>
		<tr>
			<td><label>SEX:</label></td>
			<td><input type="radio" name="userSex" value="男" checked="checked">男
				<input type="radio" name="userSex" value="女">女
			</td>
		</tr>
		<tr>
			<td><span>ADDRESS:</span></td>
			<td><input type=text name="userAddress" value=""/></td>
		</tr>
		<tr>
			<td><span>TELL:</span></td>
			<td><input type="text" name="userTell" value=""/></td>
		</tr>
		<tr>
			<td><span>MAIL:</span></td>
			<td><input type="text" name="userMail" value=""/></td>
		</tr>
		<tr>
			<td><s:submit class="button" value="CREATE USER"/></td>
		</tr>
	</table>
	</s:form>

	<div class="content-push"></div>

	<div class="text-link">
	<p><a href='<s:url action="GoHomeAction"/>'>HOMEへ戻る</a></p>
	</div>

	</div>

</div>

<div class="footer-push"></div>


</div>


</body>
</html>