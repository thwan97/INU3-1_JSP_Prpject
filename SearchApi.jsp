<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<html>

<head>
<jsp:include page="_head.jsp" />
</head>

<body>
<jsp:include page="_Top.jsp" />

	<div class="text-center">
		<img src="https://www.youtube.com/yts/img/yt_1200-vflhSIVnY.png" alt="" width="400" class="img-responsive center-block">
	    <input id="name" value="" type="text">
	    <button id="search">검색</button>
	    <button id="reset">초기화</button>
	    <p></p>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script>
        var br = document.createElement("br");
        document.body.appendChild(br);

        $(document).ready(function() {

            $("#search").click(function() {

                $.ajax({
                        method: "GET",
                        url: "https://dapi.kakao.com/v2/search/vclip",
                        data: {
                            query: $("#name").val()
                        },
                        headers: {
                            Authorization: "KakaoAK a722a93ab7387f61363475df44faec1d"
                        }
                    })
                    .done(function(msg) { //요청이 성공적으로 이루어져서 done뒤에있는 함수 실행(안에는 응답함수가 여기로 들어옴)
                        for (var i = 0; i < 15; i++) {
                        	$("p").append("<img src='" + msg.documents[i].thumbnail + "'/>" + "<br>");
                            $("p").append("<a href=" + msg.documents[i].url + ">" + msg.documents[i].title + "</a><br>");
                        
                        }

                    })

            })
            $("#reset").click(function() {
                window.location.reload(true)
            })

        });
    </script>
    
<jsp:include page="_Bottom.jsp" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>