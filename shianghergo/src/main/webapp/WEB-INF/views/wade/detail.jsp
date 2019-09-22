<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
<meta charset="UTF-8">
<title>detail</title>
<style>
table {
	margin: 10px;
	padding: 10px;
	border-collapse: collapse;
}

tr{ 
	margin:10px;
 	padding:10px; 
 } 

td{  
 	margin:10px; 
 	padding:10px; 
 } 
span{
 	padding:5px;
 }
</style>
</head>
<body>
<h2>您的訂單明細，編號${order_id}</h2>
<h2><a href="order/${order_id}">立刻結帳</a></h2>
<h4><a href="http://localhost:8080/shianghergo/orderlist">回訂單列表</a></h4>
<table border="1">
<tr>
	<td>商品名稱</td>
	<td>單價</td>
	<td>數量</td>
	
</tr>
	<c:forEach var="bean" items="${details}">
		<tr>
			<td>${bean.name}</td>
			<td>${bean.price}</td>
			<td>${bean.amount}</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>