<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>register</title>
</head>
<body>
	<h3>Customer 수정</h3>
	
	<a href="/ch11/">처음으로</a>
	<a href="/ch11/customer/list.do">목록</a>
	
	<form action="/ch11/customer/modify.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="custId" value="${customer.custId}" readonly /></td> <!-- -> 앞에 requestScope가 생략되어있음! -->
			</tr>		
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${customer.name}"/></td>
			</tr>		
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp"  value="${customer.hp}"/></td>
			</tr>		
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr"  value="${customer.addr}"/></td>
			</tr>		
			<tr>
				<td>가입날짜</td>
				<td><input type="date" name="rdate"  value="${customer.rdate}"/></td>
			</tr>		
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="수정하기"/>
				</td>
			</tr>		
		</table>
	</form>
	
</body>
</html>