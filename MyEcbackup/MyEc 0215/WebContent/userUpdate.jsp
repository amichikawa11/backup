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

<!-- ファビコン -->
<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
<!-- end of iconj.com favicon code -->

<title>UserUpdate画面</title>
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
		<h3>USER UPDATE</h3>

	<br>

	<img src="./image/pudding.png" style="width:40px;">

	<br>

	</div>
	<div>
		<p>変更情報を入力してください。</p></div>

		<!-- errorMassageに文章が入っていれば警告文を表示 -->
		<div class="error-message">
		<s:if test="errorMassage != ''">
			<s:property value="errorMassage" escape="false"/>
		</s:if>
		</div>
		<br>

		<table>
		<s:form action="UserUpdateAction">
		<tr>
			<td>
				<label>ログインID:</label>
			</td>
			<td>
				<input type="text" name="loginUserId" value="<s:property value="session.loginUserId"/>"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>ログインPASS:</label>
			</td>
			<td>
				<input type="password" name="loginPassword" value="<s:property value='session.loginPassword'/>"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>名前:</label>
			</td>
			<td>
				<input type="text" name="userName" value="<s:property value='session.userName'/>"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>性別:</label>
			</td>
			<td>
			<s:if test='session.userSex == "男"'>
				<input type="radio" name="userSex" value="男" checked="checked">男
				<input type="radio" name="userSex" value="女">女
			</s:if>
			<s:else>
				<input type="radio" name="userSex" value="男">男
				<input type="radio" name="userSex" value="女" checked="checked">女
			</s:else>
			</td>
		</tr>
		<tr>
			<td>
				<label>住所:</label>
			</td>
			<td>
				<input type="text" name="userAddress" value="<s:property value='session.userAddress'/>"/>
			</td>
		</tr>

		<tr>
			<td>
				<label>TEL番号（ハイフン必須）:</label>
			</td>
			<td>
				<input type="text" name="userTell" value="<s:property value='session.userTell'/>"/>
			</td>
		</tr>
		<tr>
			<td>
				<label>メールアドレス:</label>
			</td>
			<td>
				<input type="text" name="userMail" value="<s:property value='session.userMail'/>"/>
			</td>
		</tr>
		<tr>
			<td>
				<s:submit class="button" value="登録する"/>
			</td>
		</tr>
		</s:form>
		</table>


			<!-- GoHomeAction未作成 -->

			<p><a href='<s:url action="MyPageAction"/>'>マイページへ戻る場合はこちら</a></p>
			<p><a href='<s:url action="GoHomeAction"/>'>Homeへ戻る場合はこちら</a></p>

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