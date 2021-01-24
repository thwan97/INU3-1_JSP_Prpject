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

<!-- nav -->

	<div class="container text-center">
	   <caption><h3>남부</h3></caption>
	   <table width="100%" border="1">
	       <thead>
	           <tr>
	               <th>교육지원청</th>
	               <th>학교급별</th>
	               <th>학교명</th>
	               <th>매칭</th>
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
	                
	               pstmt = conn.prepareStatement("select * from gym where 교육지원청='남부'");
	                
	               rs = pstmt.executeQuery();
	               
	               int i=0; 
	               while(rs.next()){
	       %>
	            <tr>
	               <td><%=rs.getString("교육지원청")%></td>
	               <td><%=rs.getString("학교급별")%></td>
	               <td><%=rs.getString("학교명")%></td>
	               
	               
	               
	               <form action="Reservation.jsp" method="post">
	               <%
	                String[] SchoolName = new String[300];
	                SchoolName[i] = rs.getString("학교명");
	               %>
	                  <input type="hidden" name="SchoolName" value="<%=SchoolName[i]%>">
	               <td><input type="submit" value="참가"></td>
	               </form>
	            </tr>
	         
	         <% i++;
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