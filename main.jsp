<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="_head.jsp" />
</head>
<body>
    <center>
        <table width="100%">
 
            <!-- Top 부분 -->
            <tr height="0" align="center">
                <td align="center" width="1000"><jsp:include page="_Top.jsp" /></td>
            </tr>
 
            <!-- Center 부분 -->
            <tr align="center">
                <td align="center" width="1000"><jsp:include page="_Center.jsp" /></td>
            </tr>
 
            <!-- Bottom 부분 -->
            <tr align="center">
                <td align="center" width="1000"><jsp:include page="_Bottom.jsp" /></td>
            </tr>
 
        </table>
    </center>
    
	<!-- 제이쿼리 자바스크립트 추가 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가 -->
	<script src="./js/popper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	
</body>
<jsp:include page="_picpic.jsp"/>

</html>
