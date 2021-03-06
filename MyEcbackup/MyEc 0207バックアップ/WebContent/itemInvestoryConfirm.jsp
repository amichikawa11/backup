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
<link rel="stylesheet" type="text/css" href="./css/table_style.css">

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

<title>ItemInvestoryConfirm画面</title>
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
		<h3>ITEM INVESTORTY CONFIRM</h3>
	</div>
	<div>
	<table>
					<s:form>
					<dl>
					<dd>
					<p>■下記の商品追加してよろしいでしょうか■</p>
					<br>

					<s:iterator value="buyItemDTOList">
					<s:if test="count != 0">

					<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" ><br><br>


					商品名:
					<s:property value="itemName" /><br><br>

					追加個数:
					<s:property value="count"/><span>個</span><br><br>

		</s:if>
			</s:iterator>
					</dd>
					</dl>

				<tr>
					<td>
						<br>
					</td>
				</tr>

				<tr>
					<td><input type="button" class="button" value="戻る" onclick="submitAction('#')" /></td>
					<td><input type="button" class="button" value="完了" onclick="submitAction('ItemInvestoryConfirmAction')" /></td>
				</tr>
			</s:form>
			</table>

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