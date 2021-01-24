<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
</head>
<body>
	       <%
	       
	       	   String schoolName = request.getParameter("schoolName");
	       	   System.out.println(schoolName);
	           Class.forName("com.mysql.jdbc.Driver");
	           Connection conn = null;
	           PreparedStatement pstmt = null;
	           ResultSet rs = null;
	            
	           try{
	               String jdbcDriver = "jdbc:mysql://localhost:3306/tutorial?&serverTimezone=UTC";
	               String dbUser = "root";
	               String dbPwd = "root";
	                
	               conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
	                
	               pstmt = conn.prepareStatement("delete from reserve where schoolName=? ");
	               pstmt.setString(1, schoolName);
	               
	               pstmt.executeUpdate();
	               
	               PrintWriter script = response.getWriter();
	               script.println("<script>");
	               script.println("alert('삭제 되었습니다.');");
	               script.println("location.href='__AdminMatchInfo.jsp'");
	               script.println("</script>");
	               script.close();
	               
	         } catch (SQLException se) {
	            se.printStackTrace();
	         } finally {
	            if (rs != null)
	               rs.close();
	            if (pstmt != null)
	               pstmt.close();
	            if (conn != null)
	               conn.close();
	         }
	         %>


   <!-- 제이쿼리 자바스크립트 추가 -->
   <script src="./js/jquery.min.js"></script>
   <!-- 파퍼 자바스크립트 추가 -->
   <script src="./js/popper.js"></script>
   <!-- 부트스트랩 자바스크립트 추가 -->
   <script src="./js/bootstrap.min.js"></script>

</body>

</html>