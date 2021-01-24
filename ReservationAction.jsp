<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<jsp:include page="_head.jsp" />
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");

   String userID = null;
   if (session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
   }
   if(userID == null) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('로그인을 해주세요.');");
      script.println("location.href = 'userLogin.jsp';");
      script.println("</script>");
      script.close();
      return;
   }
   
   String schoolName = request.getParameter("schoolName");
   String day = request.getParameter("day");
   int time = Integer.parseInt(request.getParameter("time"));
   

   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;

   try {
      String jdbcDriver = "jdbc:mysql://localhost:3306/tutorial?&serverTimezone=UTC";
      String dbUser = "root";
      String dbPwd = "root";

      conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);

      pstmt = conn.prepareStatement("INSERT INTO reserve VALUES (?,?,?,?)");
      
      
      
      pstmt.setString(1,userID);
      pstmt.setString(2,schoolName);
      pstmt.setString(3,day);
      pstmt.setInt(4, time);
      

      pstmt.executeUpdate();
      
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('매칭 되었습니다.');");
      script.println("location.href = 'main.jsp';");
      script.println("</script>");
      script.close();


   } catch (SQLException se) {
      se.printStackTrace();
      
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('db에 안들어감.');");
      script.println("location.href = 'main.jsp';");
      script.println("</script>");
      script.close();
      
   } finally {
      if (rs != null)
         rs.close();
      if (pstmt != null)
         pstmt.close();
      if (conn != null)
         conn.close();
   }
   
   
%>

<jsp:include page="_Bottom.jsp" />

   <!-- 제이쿼리 자바스크립트 추가 -->
   <script src="./js/jquery.min.js"></script>
   <!-- 파퍼 자바스크립트 추가 -->
   <script src="./js/popper.js"></script>
   <!-- 부트스트랩 자바스크립트 추가 -->
   <script src="./js/bootstrap.min.js"></script>

</body>
