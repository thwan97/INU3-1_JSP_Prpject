<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
   <jsp:include page="_head.jsp" />
</head>
<body>
<jsp:include page="_TopMem.jsp" />

<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
	   userID = (String) session.getAttribute("userID");
	}
%>

	<div class="container text=center">
	   <caption>매칭정보</caption>
	   <table width="100%" border="1">
	       <thead>
	           <tr>
	               <th>회원ID</th>
	               <th>학교명</th>
	               <th>날짜</th>
	               <th>시간파트</th>
	     
	           </tr>
	       </thead>
	       <tbody>
	       <%
	           Class.forName("com.mysql.jdbc.Driver");
	           Connection conn = null;
	           PreparedStatement pstmt = null;
	           ResultSet rs = null;
	            
	           try{
	               String jdbcDriver = "jdbc:mysql://localhost:3306/tutorial?&serverTimezone=UTC";
	               String dbUser = "root";
	               String dbPwd = "root";
	                
	               conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
	                
	               pstmt = conn.prepareStatement("select * from reserve where userID = ?");
	               
	               pstmt.setString(1,userID);
	               rs = pstmt.executeQuery();
	               
	            
	               while(rs.next()){
	       %>
	            <tr>
	               <td><%=rs.getString("userID")%></td>
	               <td><%=rs.getString("schoolName")%></td>
	               <td><%=rs.getString("day")%></td>
	               <td><%=rs.getString("time")%></td>
	            </tr>
	         
	         <%
	            }
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
	       </tbody>
	   </table>
   </div>

<jsp:include page="_Bottom.jsp" />

   <!-- 제이쿼리 자바스크립트 추가 -->
   <script src="./js/jquery.min.js"></script>
   <!-- 파퍼 자바스크립트 추가 -->
   <script src="./js/popper.js"></script>
   <!-- 부트스트랩 자바스크립트 추가 -->
   <script src="./js/bootstrap.min.js"></script>

</body>

</html>