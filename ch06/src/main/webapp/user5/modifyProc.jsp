<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String seq = request.getParameter("seq");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String age = request.getParameter("age");
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
	String sql ="update `user5` set `name`=?, `gender`=?, `age`=?, `addr`=? where `seq`=?";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, name);
	psmt.setString(2, gender);
	psmt.setString(3, age);
	psmt.setString(4, addr);
	psmt.setString(5, seq);
	// 4단계
	psmt.executeUpdate();
	// 5단계
	// 6단계
	psmt.close();
	conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}

	response.sendRedirect("/ch06/user5/list.jsp");

%>