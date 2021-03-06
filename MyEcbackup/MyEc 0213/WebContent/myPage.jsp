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
<link rel="stylesheet" type="text/css" href="./css/table_style.css">
<link rel="stylesheet" type="text/css" href="./css/basis_style.css">

<!-- ファビコン -->
<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
<!-- end of iconj.com favicon code -->

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

  <script>
    $(document).ready(function(){
      $('abc').bxSlider();
    });
  </script>

<title>MyPage画面</title>
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
	<div class="top"></div>
	<h3>MY PAGE</h3>

	<!-- ユーザー情報 -->
	<br><br>
	<span>USER INFORMATION</span>
	<br><br><br>
	<div class="user-table">
	<table>
		<s:form>
		<tr>
				<td>ユーザー名:</td>
				<td><s:property value="session.userName"/></td>
		</tr>
		<tr>
				<td>お届け先住所:</td>
				<td><s:property value="session.userAddress"/></td>
		</tr>
		<tr>
				<td>電話番号:</td>
				<td><s:property value="session.userTell"/></td>
		</tr>
		<tr>
				<td>メールアドレス:</td>
				<td><s:property value="session.userMail"/></td>
		</tr>
		</s:form>
		</table>
	</div>

	<!-- 購入履歴（購入したものがない場合） -->
	<div>
	<s:if test="myPageList == null">
		<br><br>
		<span>PURCHASE HISTORY</span>
		<div class="no-purchase">ご購入情報はありません。</div>
		<br>
	</s:if>

	<!-- 購入したものがある場合 -->
	<s:elseif test="message == null">
		<br><br>
		<span>PURCHASE HISTORY</span>
		<table class="mypage-table">
		<tr>
			<th class="mypage-th">商品名</th>
			<th class="mypage-th">価格</th>
			<th class="mypage-th">購入個数</th>
			<th class="mypage-th">支払方法</th>
			<th class="mypage-th">購入日</th>
		</tr>

			<s:iterator value="myPageList">
			<tr>
				<td class="mypage-td"><s:property value="itemName"/></td>
				<td class="mypage-td"><s:property value="totalPrice"/><span>円</span></td>
				<td class="mypage-td"><s:property value="totalCount"/><span>個</span></td>
				<td class="mypage-td"><s:property value="payment"/></td>
				<td class="mypage-td"><s:property value="insert_date"/></td>
			</tr>
			<br>
			</s:iterator>
		</table>
		<br>

		<!-- 履歴の削除機能 -->

		<s:form action="MyPageAction">
			<input type="hidden" name="deleteFlg" value="1">
			<s:submit class="button" value="履歴の削除" method="delete"/>
		</s:form>
	</s:elseif>
	</div>

	<!-- message(MyPageActionで定義した変数）に値が入っている場合 -->
	<s:if test="message != null">
	<br><br>
		<p class="error-message"><s:property value="message"/></p>
	</s:if>

	<br>
	<br>

		<div id="text-link">
			<p><a href='<s:url action="UserUpdateMovementAction"/>'>ユーザー情報を変更する場合はこちら</a></p>
			<p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a></p>
			<p><a href='<s:url action="LogoutAction"/>'>ログアウトする場合はこちら</a></p>
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

<script type="text/javascript" src="./script/script.js"></script>
</body>
</html>