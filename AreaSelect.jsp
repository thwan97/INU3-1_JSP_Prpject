<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO"  %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="_head.jsp" />
</head>
<body>
	<jsp:include page="_TopMem.jsp" />

	
	<section class="container">

		<br>
		<div class="container">

			<script>
				today = new Date()
				document.write("오늘 날짜는 ", today.getFullYear(), " 년 ", today.getMonth() + 1, "월", today.getDate(), "일")
				
				switch (today.getDay()) {
				case 0:
					document.write(" (일)")
					break
				case 1:
					document.write(" (월)")
					break
				case 2:
					document.write(" (화)")
					break
				case 3:
					document.write(" (수)")
					break
				case 4:
					document.write(" (목)")
					break
				case 5:
					document.write(" (금)")
					break
				case 6:
					document.write(" (토)")
					break
				}
				document.write(" 입니다. <p>")
			</script>
		</div>
		
		
		<br>	
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h5>지역</h5>
					<ul class="list-group list-group-horizontal">
						<li class="list-group-item"><a href="-East.jsp">동부</a></li>
						<li class="list-group-item"><a href="-West.jsp">서부</a></li>
						<li class="list-group-item"><a href="-South.jsp">남부</a></li>
						<li class="list-group-item"><a href="-North.jsp">북부</a></li>
					</ul>
				</div>
			</div>
		</div>

	</section>

 	<td align="center" width="1000"><jsp:include page="_Bottom.jsp" /></td>

	<!-- 제이쿼리 자바스크립트 추가 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가 -->
	<script src="./js/popper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	
</body>
</html>