<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String no = request.getParameter("no");
	String sname = null;
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		
		Connection conn = ds.getConnection();
		
		PreparedStatement psmt = conn.prepareStatement("select sname from `filetest` where `no`=?");
		psmt.setString(1, no);
		Statement stmt = conn.createStatement();
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			sname = rs.getString(1);
		}
		
		stmt.executeUpdate("delete from `filetest` where `no`=" + no);
		
		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}	
	
	// 디렉터리 파일 삭제
	String path = application.getRealPath("/uploads");
	File file = new File(path + File.separator + sname); 
	
	file.delete();
	
	response.sendRedirect("/ch07/2.fileDownloadTest.jsp");
%>