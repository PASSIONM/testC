<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/w3.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jquery.fullPage.css" />

</head>
<body>
	<div id="fullpage">
		<div class="section w3-display-container" style="background-image:url(resources/imgs/back.jpg);background-size: 100% 100%;">
			<div class="w3-display-middle" >
			<font style="font-size:70px">API기반 관광정보 사이트</font><br/>
			<div align="center" style="padding:10px" >
			
			<button id="p_button" class="w3-btn w3-round w3-border w3-border-aqua" style="padding:15px; margin-top:20px;"><b>소개글/사이트로 이동</b></button>
			<div id="p_button_items">
			<p>이 사이트는 Daum 지도 api를 기반으로 만든</p>
			<p>관광정보 사이트입니다(간략한 소개내용)</p>
			<input type="button" id="move_site"class="w3-btn w3-round w3-border w3-border-blue p_button_item" style="padding:15px;width:200px;font-size:17px" value="사이트로 이동"/>
			<br/>
			</div>
			</div>
			</div>
		</div>
		<div class="section w3-display-container" style="background-image:url(resources/imgs/member_back.jpg);background-size: 100% 100%;">
			<div class="w3-display-middle">
				<div align="center">
					<font style="font-size:64px;color:#ffffff">이 웹사이트는 다음의 기능을 넣었습니다</font>
				</div>
				<div class="col-md-3">기능1</div>
				<div class="col-md-3">기능2</div>
				<div class="col-md-3">기능3</div>
				<div class="col-md-3">기능4</div>
			</div>
		</div>
		</div>
	
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

	<script type="text/javascript" src="js/jquery.fullPage.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//홈페이지 접속시 글들을 해당 아이디, 클래스의 내용을 숨김
			$("#p_button_items").toggle();
			$(".p_button_item").toggle();
			//fullpage 라이브러리 실팽 코드
			$('#fullpage').fullpage({
				//페이지가 전환될때의 이름
				anchors: ['firstPage', 'secondPage'],
				//페이지 전환 속도
				scrollingSpeed: 1000
			});
			//move_site id의 버튼이클릭되었을때 main.do 페이지로 전환
			$('#move_site').click(function(){
				location.replace("main.do");
			});
			//p_button id의 버튼이 클릭되었을때
			 $("#p_button").click(function(){
				 //p_button 삭제
				 $("#p_button").remove();
				 //p_button_items 가 500밀리 세컨드의 속도로 나옴
			        $("#p_button_items").toggle(500);
				 //1000 밀리세컨드 시간 뒤에
			        setTimeout(function(){
			        	//p_button_item이 1000밀리 세컨드의 속도로 나옴
			        	$(".p_button_item").toggle(1000);	
			        },1000);
			    });
		});
	</script>
</body>
</html>
