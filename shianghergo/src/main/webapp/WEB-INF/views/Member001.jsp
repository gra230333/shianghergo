<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<head>
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>
</head>
<body>
	<input type="hidden" name="id" value="${loginOK.id}" />
	<table border="1" class="table1">
		<tbody>
			<tr>
				<td width="300">帳號</td>
				<td align="center">${loginOK.account}</td>
			</tr>
			<tr>
				<td width="300">密碼</td>
				<td align="center">${loginOK.password}</td>
			</tr>
			<tr>
				<td width="300">姓名</td>
				<td align="center">${loginOK.name}</td>
			</tr>
			<tr>
				<td width="300">手機</td>
				<td align="center">${loginOK.phone}</td>
			</tr>
			<tr>
				<td width="300">Email</td>
				<td align="center">${loginOK.email}</td>
			</tr>
			<tr>
				<td width="300">生日</td>
				<td align="center">${loginOK.birthday}</td>
			</tr>
			<tr>
				<td width="300">地址</td>
				<td align="center">${loginOK.address}</td>
			</tr>
			<tr>
				<td width="300">修改</td>
				<td align="center">
				<a href="Practice/../doupdate?account=${loginOK.account}"><img
						src="images/01.jpg" width="30"></a></td>
			</tr>
		</tbody>
	</table>
	<br />
</body>
</html>