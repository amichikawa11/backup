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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


<link rel="stylesheet" type="text/css" href="./css/basis_style.css">

<!-- ファビコン -->
<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
<!-- end of iconj.com favicon code -->

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

<title>UserCreateConfirm画面</title>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

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
		<h3>USER CREATE CONFIRM</h3>

	<br>

	<img src="./image/cup1.png" style="width:40px;">

	<br>
	</div>

<div><br></div>

	<div>
		<p>登録する内容は以下でよろしいですか。</p>
		<p class="error-message">※「戻る」を選択すると入力した情報は消去されます。</p>

		<br>

		<table>
			<s:form action="UserCreateCompleteAction">
			<tr id="box">
				<td>
					<label>ログインID:</label>
				</td>
				<td>
					<s:property value="loginUserId" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<s:property value="loginPassword" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>名前:</label>
				</td>
				<td>
					<s:property value="userName" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>性別:</label>
				</td>
				<td>
					<s:property value="userSex" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>住所:</label>
				</td>
				<td>
					<s:property value="userAddress" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>TEL番号:</label>
				</td>
				<td>
					<s:property value="userTell" escape="false"/>
				</td>
			</tr>
			<tr>
				<td>
					<label>メールアドレス:</label>
				</td>
				<td>
					<s:property value="userMail" escape="false"/>
				</td>
			</tr>

				<tr>
					<td>
						<br><br>
					</td>
				</tr>

			<tr>
					<td><input type="button" class="button" value="戻る" onclick="submitAction('UserCreateAction')" /></td>
					<td><input type="button" class="button" value="完了" onclick="submitAction('UserCreateCompleteAction')" /></td>

			</tr>
			</s:form>

		</table>

		<div class="push"></div>
		<div>

			<p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a>
			<p><a href='<s:url action="LoginMovementAction"/>'>すでにIDをお持ちの場合はこちら</a></p>

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