<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
   request.setCharacterEncoding("UTF-8");
   String userID = null;
   String userPassword = null;
   
   if(request.getParameter("userID") != null) {
      userID = (String) request.getParameter("userID");
   }
   if(request.getParameter("userPassword") != null) {
      userPassword = (String) request.getParameter("userPassword");
   }

   if(userID == "" || userPassword == "") {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('입력이 안 된 사항이 있습니다.');");
      script.println("location.href='main.jsp'");
      script.println("</script>");
      script.close();
      
   } else {
	   UserDAO userDAO = new UserDAO();
	   int result = userDAO.Register(new UserDTO(userID, userPassword));
	   
	   if(result == -1) {
	      PrintWriter script = response.getWriter();
	      script.println("<script>");
	      script.println("alert('이미 존재하는 아이디입니다.');");
	      script.println("location.href='main.jsp';");
	      script.println("</script>");
	      script.close();
	      
	   } else {
	      session.setAttribute("userID", userID);
	      PrintWriter script = response.getWriter();
	      script.println("<script>");
	      script.println("alert('회원가입에 성공했습니다.');");
	      script.println("location.href='main.jsp';");
	      script.println("</script>");
	      script.close();
	    
	   }
   }
   
   
%>



















