<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO"  %>
<html>
<head>
<jsp:include page="_head.jsp" />
</head>
<body>
<%request.setCharacterEncoding("UTF-8");
String schoolName = request.getParameter("SchoolName");%>
<jsp:include page="_TopMem.jsp" />

      <div class="container text-center">
         <form method="post" action="ReservationAction.jsp">
         <input type="hidden" name="schoolName" value="<%=schoolName%>">
            <table width="1000">
               <tr height="100">
                  <td align="center" colspan="3"><font size="6" color="gray">
                        옵션 선택 </font></td>
               </tr>
               

               <tr>
              
                  <td width="250" align="center">매칭시간</td>
                  <td width="250" align="center"><select name="time">
                        <option value="1">10:00~12:00</option>
                        <option value="2">12:00~14:00</option>
                        <option value="3">14:00~16:00</option>
                        <option value="4">16:00~18:00</option>
                  </select></td>
               </tr>
               <tr>
                  <td width="250" align="center">매칭일</td>
                  <td width="250" align="center"><input type="date" name="day"
                     size="15"></td>
               </tr>
               
               <tr>
                  <td align="center" colspan="3"><input type="submit" value="매칭하기"></td>
               </tr>
              
            </table>
         </form>
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