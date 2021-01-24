<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<!doctype html>

<html>

  <head>
<jsp:include page="_head.jsp" />
  </head>

  <body>
<jsp:include page="_TopMemLogin.jsp"/>

    <div class="container mt-3" style="max-width: 560px;">

      <form method="post" action="./userLoginAction.jsp">

        <div class="form-group">

          <label>아이디</label>

          <input type="text" name="userID" class="form-control">

        </div>

        <div class="form-group">

          <label>비밀번호</label>

          <input type="password" name="userPassword" class="form-control">

        </div>

        <button type="submit" class="btn btn-primary">로그인</button>

      </form>

    </div>

<jsp:include page="_Bottom.jsp" />

    <!-- 제이쿼리 자바스크립트 추가하기 -->

    <script src="./js/jquery.min.js"></script>

    <!-- Popper 자바스크립트 추가하기 -->

    <script src="./js/popper.min.js"></script>

    <!-- 부트스트랩 자바스크립트 추가하기 -->

    <script src="./js/bootstrap.min.js"></script>

  </body>

</html>