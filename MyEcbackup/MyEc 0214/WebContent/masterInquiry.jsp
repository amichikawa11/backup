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

<!-- ファビコン -->
<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
<!-- end of iconj.com favicon code -->

<title>MasterInquiry画面</title>
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
			<li><a href='<s:url action="ProductPageAction"/>'>PRODUCT</a></li>
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
	<s:if test="#session.inquiryDTOList == null">
		<br><br>
		<span>INQUIRY MESSAGE</span>
		<br><br><br>
		<div class="error-message">お問合せメッセージはありません。</div>
		<br>
	</s:if>


	<!-- 問合せがある場合 -->
	<s:elseif test="#session.inquiryDTOList != null">
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
	<br>

	<!-- 履歴の削除機能 -->

	<s:form action="InquiryAllDeleteAction">
		<input type="hidden" name="deleteFlg" value="1">
		<s:submit class="button" value="一覧の削除" method="delete"/>
	</s:form>
	</s:elseif>



	<!-- messageに値が入っている場合は表示 -->
	<s:if test="message != null">
	<br><br>
		<p class="error-message"><s:property value="message"/></p>
	</s:if>

	<br><br>
	<div id="text-link">
		<p><a href='<s:url action="HomeAction"/>'>前画面へ戻る場合はこちら</a></p>
		<p><a href='<s:url action="LogoutAction"/>'>ログアウトする場合はこちら</a></p>
	</div>

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