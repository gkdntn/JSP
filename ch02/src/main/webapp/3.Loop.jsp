<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>3.Loop</title>
	<%--
		날짜 : 2024/08/05
		이름 : 하정훈
		내용 : 반복문 실습
	 --%>
</head>
	<style>
	table {
	border : 1px solid black;
	}
	
	tr {
	border : 1px solid black;
	}
	
	tr:nth-of-type(1) {
	font-weight : bold;
	text-align : center;
	}
	
	td {
	border : 1px solid black;
	}
	
	</style>
<body>
	<h3>3. 반복문</h3>

	<h4>for</h4>
	<%
		for(int i = 1; i <= 3; i++){
			out.println("<p>i : " +i+ "</p>");
		}
	%>
	
	<%
		for(int j=1; j<=3; j++){
	%>
		<p>j : <%= j %></p>
	<%		
		}
	%>
	
	<h4>while</h4>
	<%
		int k = 1;
		while(k <= 3){
	%>
		<p>k : <%= k %></p>
	<%	
		k++;	
		}
	
	%>
		
		
	<h4>구구단</h4>
	<table>
		<tr>
			<td>2단</td>
			<td>3단</td>
			<td>4단</td>
			<td>5단</td>
			<td>6단</td>
			<td>7단</td>
			<td>8단</td>
			<td>9단</td>
		</tr>
		<% for(int x=1; x<=9; x++){ %>
		<tr>
			<% for(int y=2; y<=9; y++){ %>
			<td><%= y %> x <%= x %> = <%= x*y %></td>		
			<%} %>
		</tr>
		<%} %>
		
	</table>
	
	
</body>
</html>