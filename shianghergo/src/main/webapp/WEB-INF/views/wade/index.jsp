<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<li> <a href="productfile.do">下載訂購單</a> </li>
<li> <a href="showitem">商品列表</a> </li>
<li> <a href="cart">進購物車</a> </li>
<li> <a href="showgroups">團購列表</a> </li>
<li> <a href="showmap">Google Map</a> </li>

</ul>
<form action="uploadimg" method="post" enctype="multipart/form-data">
	name:<input type = text name ="name"><br>
	age:<input type = text name ="age"><br>
	address:<input type = text name ="address"><br>
	category:<input type = text name ="category"><br>
	file:<input type ="file" name = "image" ><br>
	<input type = "submit" value="送出" >
</form>
<img src="showimg" style="width:80px;height:80">
<hr>
<h3>浩瑜</h3>
<hr>
<h1 style="text-align:center">Products</h1>
	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left"/>
				<a href='products/add'>新增產品資料</a><BR>
			</td>
			<td width="350"><p align="left"/>
				<a href="products">所有產品資料</a><BR>
			</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left"/>
				<a href='buildStore'>開立商家</a><BR>
			</td>
			<td width="350"><p align="left"/>
				<a href="stores">所有商家資料</a><BR>
			</td>
		</tr>
	</table>
	
</body>
</html>