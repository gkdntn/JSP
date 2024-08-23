<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String hp = request.getParameter("hp");
	String addr = request.getParameter("addr");

	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "root";
	String pass = "1234";
	
	try{
	// 1단계
	Class.forName("com.mysql.cj.jdbc.Driver");
	// 2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	// 3단계
	String sql = "update `user3` set `name`=?, `birth`=?, `hp`=?, `addr`=? where `uid`=?";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, name);
	psmt.setString(2, birth);
	psmt.setString(3, hp);
	psmt.setString(4, addr);
	psmt.setString(5, uid);
	// 4단계
	psmt.executeUpdate();
	// 5단계
	// 6단계
	psmt.close();
	conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}

	response.sendRedirect("/ch06/user3/list.jsp");

%>