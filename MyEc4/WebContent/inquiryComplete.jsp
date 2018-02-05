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

<title>InquiryComplete画面</title>
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
	<div class="top">
		<h3>INQUIRY COMPLETE</h3>
		<p>お問い合わせを受け付けました。</p>
	</div>

	<table>

	<!-- InquiryCompleteActionで定義したsessionの
		"inquiryDTOList"を使用して値を取得 -->
	<tr>
		<td>
			<span>名前:</span>
		</td>
		<td><s:property value="inquiry_name"/></td>
	</tr>
	<tr>
		<td>
			<span>メールアドレス:</span>
		</td>
		<td>
			<s:property value="inquiry_mail"/>
		</td>
	</tr>
	<tr>
		<td>
			<span>問い合わせの種類:</span>
		<s:if test='qtype=="company"'>
		<td>会社について</td>
		</s:if>

		<s:if test='qtype=="product"'>
		<td>商品について</td>
		</s:if>

		<s:if test='qtype=="order"'>
		<td>注文について</td>
		</s:if>

		<s:if test='qtype=="support"'>
		<td>アフターサポートについて</td>
		</s:if>

		<s:if test='qtype=="another"'>
		<td>その他のお問い合わせ</td>
		</s:if>
	</tr>
	<tr>
		<td>
			<span>問い合わせ内容:</span>
		</td>
		<td>
			<s:property value="body"/>
		</td>
	</tr>

	</table>
	<br><br>
	<div>
		<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
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