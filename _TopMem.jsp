<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width", initial-scale=1, shrink-to-fit=no">
	<title>��õ �б� ��� �뿩 & ��� ��Ī</title>
	<!-- ��Ʈ��Ʈ�� css �߰� -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- Ŀ���� css �߰� -->
	<link rel="stylesheet" href="./css/custom.css">
</head>
<body>

<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
		
	}
	if(userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�α����� ���ּ���.');");
		script.println("location.href = 'userLogin.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">With Soccer</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="main.jsp">����</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="AreaSelect.jsp">��Ī�ϱ�</a>
				</li>

<%
if(userID != null && userID.equals("admin")){ 
%>
				<li class="nav-item active">
					<a class="nav-link" href="__AdminMatchInfo.jsp">ȸ����Ī��������</a>
				</li>
<%    }    %> 					
				
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">�˻�</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="MapApi.jsp">�����˻�</a>
						<a class="dropdown-item" href="SearchApi.jsp">�౸������˻�</a>			
						<a class="dropdown-item" href="NaverSearch.jsp">�౸��ǰ�˻�</a>				
					</div>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">ȸ������</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
<%
	if(userID == null) {
%>
						<a class="dropdown-item" href="userLogin.jsp">�α���</a>
						<a class="dropdown-item" href="userRegister.jsp">ȸ������</a>
<%
	} else {
%>						
						<a class="dropdown-item" href="userLogout.jsp">�α׾ƿ�</a>
						<a class="dropdown-item" href="MatchInfo.jsp">��Ī��������</a>
<%
	}
%>						
					</div>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search" placeholder="������ �Է��ϼ���." aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">�˻�</button>
			</form>
		</div>
	</nav>


	<!-- �������� �ڹٽ�ũ��Ʈ �߰� -->
	<script src="./js/jquery.min.js"></script>
	<!-- ���� �ڹٽ�ũ��Ʈ �߰� -->
	<script src="./js/popper.js"></script>
	<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰� -->
	<script src="./js/bootstrap.min.js"></script>
	
</body>
</html>