<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>BuyItem画面</title>
	<style type="text/css">
	/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:'arial black';
		   font-size:15px;
		   color:#333;
		   background:#ffffcc;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

	/* ========ID LAYOUT======== */
		#top {
		   width:780px;
		   margin:50px auto;
		   border:1px solid #333;
		}

		#header {
		   width: 100%;
		   height: 100px;
		   background-color: black;
		}

		#main {
		   width: 100%;
		   height: 550px;
		   text-align: center;
		}

		.button{
			width:80px;
			font-family:'arial black';
			font-size:20px;
			color: #fff;
			background-color: #248;
			border-style: none;
			font-weight: bold;
			}
		.button:hover{
			background-color:#007fff;
		}


		#footer {
			width: 100%;
			height: 100px;
			background-color: black;
			clear:both;
		}
	</style>
</head>
<body>
	<div id="header">
	 	<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>BuyItem</p>
		</div>
		<div>
		<s:form action="BuyItemAction">
			<table>
				<tr>
					<td>
						<span>商品名</span>
					</td>
					<td>
						<s:property value="session.buyItem_name" />
					</td>
				</tr>
				<tr>
					<td>
						<span>値段</span>
					</td>
					<td>
						<s:property value="session.buyItem_price" /><span>円</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>在庫</span>
					</td>
					<td>
						<select name="stock">
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<span>支払い方法</span>
					</td>
					<td>
						<input type="radio" name="pay" value="1" checked="checked">現金払い
						<input type="radio" name="pay" value="2">クレジットカード
					</td>
				</tr>
				<tr>
					<td>
				<td colspan="2"><div align="center"><input type="submit" value="購入" id="BuyItemAction_0" class="button">
</div></td>

				</tr>
			</table>
		</s:form>
			<div>
				<span>前画面に戻る場合は</span><a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
		</div>
	</div>
	<div id="footer">
	 	<div id="pr">
		</div>
	</div>
</body>
</html>