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

<!-- CSSとSCRIPTの読み込み -->
	<link rel="stylesheet" type="text/css" href="./css/basis_style.css">
	<link rel="stylesheet" type="text/css" href="./css/table_style.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>

<!-- ファビコン -->
	<link rel="shortcut icon" href="http://www.iconj.com/icon.php?pid=eh53o8d8gl" type="image/x-icon" />
	<link rel="shortcut icon" href="http://www.iconj.com/gif_icon.php?pid=eh53o8d8gl" type="image/gif" />
	<!-- end of iconj.com favicon code -->

<title>ItemInventoryControl画面</title>
</head>


<body>

<!-- フッター固定の為のdiv(container) -->
<div class="container">

<!-- ヘッダー部分 -->
<header>
	<div id="header">
		<div class="header-logo">SWEETOPIA</div>

		<div class="top-menu">

			<div class="left-list">
			<ul class="top-li">
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

<div class="main-push"></div>

<!-- メイン部分 -->
<div id="main">
	<h3>ITEM INVENTORY CONTROL</h3>
	<div class="main-content">

		<p>変更したい数をプルダウンから選択してください。</p>
		<div class="push"></div>

		<table>
		<s:form>
		<s:iterator value="buyItemDTOList">

			<dl class="dl-list">
				<dd class="dd-list">

				<img class="image" style="width:150px; height:100px;" src="<s:property value='image_file_path'/>" >

				<div class="push"></div>

				<s:property value="itemName" /><br>

				<span>値段:</span>

				<s:property value="itemPrice" /><span>円</span><br>

				<span>在庫:</span>

				<s:property value="item_stock"/><span>個</span><br>

				<span>変更する数:</span>


				<script>
					document.write("<select name='count'>");
					document.write("<option value='0' selected='selected'>-</option>");
					for(i=1; i<11 ;i++){
						document.write("<option value='");
						document.write(i);
						document.write("'>");
						document.write(i);
						document.write("</option>");
					};

					document.write("</select>");
				</script>


				</dd>
			</dl>

		</s:iterator>
		<div class="clear"></div>

			<tr>
				<td>
				<div class="push"></div>
				<input type="button" class="button" value="在庫数の変更" onclick="submitAction('ItemInventoryControlAction')" /></td>
			</tr>

		</s:form>
		</table>

	<div class="push"></div>

		<div id="text-link">
			<p><a href='<s:url action="GoHomeAction" />'>前画面に戻る場合はこちら</a></p>
			<p><a href='<s:url action="LogoutAction"/>'>ログアウトする場合はこちら</a></p>
		</div>
	</div>

</div>

<!-- メインとフッターの間隔調整用div -->
<div class="footer-push"></div>


<!-- フッター部分 -->
<footer>

	<div class="footer-height"></div>

	<div class="footer-message">
		Copyright©2018 SWEETOPIA. All Rights Reserved.
	</div>

</footer>
</div>

</body>
</html>