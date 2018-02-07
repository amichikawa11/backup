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
<div class="top-push content-push"></div>
<div id="main">
<div class="main-contents">
	<div class="top">
		<h3>MASTER INQUIRY</h3>
	</div>

	<!-- 問合せがない場合 -->
	<div>
	<s:if test="inquiryDTOList == null">
		<br><br>
		<span>INQUIRY MESSAGE</span>
		<br><br><br>
		<div class="error-message">お問合せメッセージはありません。</div>
		<br>
	</s:if>


	<!-- 問合せがある場合 -->
	<s:elseif test="inquiryDTOList != null">
		<br><br>
		<span>INQUIRY MESSAGE</span>

	<table class="inquiry-table">
	<tbody>
		<tr>
			<th class="inquiry-th">名前</th>
			<th class="inquiry-th">メールアドレス</th>
			<th class="inquiry-th">お問い合わせの種類</th>
			<th class="inquiry-th">お問い合わせ内容</th>
		</tr>

	<!-- InquiryCompleteActionで定義したsessionの
		"inquiryDTOList"を使用して値を取得 -->
	<s:iterator value="#session.inquiryDTOList">
	<tr>
		<td class="inquiry-td"><s:property value="inquiry_name"/></td>

		<td class="inquiry-td">
			<s:property value="inquiry_mail"/>
		</td>


		<s:if test='qtype=="company"'>
		<td class="inquiry-td">会社について</td>
		</s:if>

		<s:if test='qtype=="product"'>
		<td class="inquiry-td">商品について</td>
		</s:if>

		<s:if test='qtype=="order"'>
		<td class="inquiry-td">注文について</td>
		</s:if>

		<s:if test='qtype=="support"'>
		<td class="inquiry-td">アフターサポートについて</td>
		</s:if>

		<s:if test='qtype=="another"'>
		<td class="inquiry-td">その他のお問い合わせ</td>
		</s:if>

		<td class="inquiry-td">
			<s:property value="body"/>
		</td>
	</tr>
	</s:iterator>

	</tbody>
	</table>
	</s:elseif>


	<br><br>
	<div>
		<p>Homeへ戻る場合は<a href='<s:url action="HomeAction"/>'>こちら</a></p>
		<p>ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a></p>
	</div>


</div>
</div>

<div class="push"></div>
<div class="content-downpush"></div>

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