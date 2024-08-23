<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="user.User1VO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	
	// 데이터 수신
	String uid = request.getParameter("uid");

	//데이터베이스 처리
	String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	String user = "root";
	String pass = "1234";
	
	try{
	// 드라이버 접속
	Class.forName("com.mysql.cj.jdbc.Driver");
	// 1단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	// 2단계
	String sql = "delete from `user1` where `uid`=?";
	PreparedStatement psmt = conn.prepareStatement(sql);
	psmt.setString(1, uid);
	// 3단계
	psmt.executeUpdate();
	// 4단계

	// 5단계
	psmt.close();
	conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("/ch06/user1/list.jsp");
%>