<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>test</title>
	<link rel="stylesheet" href="css/w3.css" />
</head>

<body>
		<form action="v2_custominsert.do" method="post">
			아이디 : <input type="text" name="id" id="id" />
			<label id="chk_id">중복확인</label> <br />
			
			암호 : <input type="password" name="pw" id="pw" />
			<input type="password" id="pw1" /><br />
			
			이름 : <input type="text" name="name" id="name" /><br />
			휴대폰 : <input type="text" name="tel" id="tel" /><br />
			
			<input type="submit" id="btn_join" value="회원가입" />
		</form>
	
	
	
	
	
<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/sweetalert.min.js"></script>
<script>

		

	
	$(function(){
		
		$('#id').keyup(function(event){
			var a = $('#id').val();
			if(a != ''){
				
				
				//get은 두개 sdfsdf&sdfsdf&sdfsd 이렇게 보낸다.
				//여러개 보내려면 {'id':a,'pw':b}
				//get은 글자수 한계잇어서 포스트로 보내본다.
				//get보다는 포스트 권장 데이터가 안전하게 들어간다.
				//서버에 포스트 지원안되면 의미없다.
				$.post('v2_idcheckjson.do',{'id':a},function(data){
				
				//$.get('v2_idcheckjson.do?id='+a,function(data){
					if(data.ret == 0){
						$('#chk_id').text('사용가능');
					}	
					else if(data.ret == 1){
						$('#chk_id').text('사용불가');
					}
				},'json');
			}
			else{
				$('#chk_id').text('중복확인');
			}
		});
		
		$('#btn_join').click(function(){
			var a = $('#id').val(); //input type인 경우

			if(a == ''){
				swal({
					title:'아이디확인',
					text:'아이디를 입력하세요.',
					icon: "info",
					button: "확인"
				}) //경고창 표시
				.then((value) => {
				$('#id').focus(); //커서를 이동함.
				});
				return false; //form action이 동작하지 않음
			}
/* 			var b = $('#chk_id').text(); //태그와 태그사이
			if(b != '사용가능'){
				swal('아이디 중복확인 해주세요.');
				return false;
			} */
			
			var p1 = $('#pw').val();
			if(p1 == ''){
				swal({
					title:'암호확인',
					text:'암호를 입력하세요.',
					icon: "info",
					button: "확인"
				}).then((value) => {
					$('#pw').focus(); //커서를 이동함.
				}); 
				return false;
			}
			
			
			var p2 = $('#pw1').val();
			if(p2 == ''){
				swal({
					title:'암호확인',
					text:'암호를 다시 입력하세요.',
					icon: "info",
					button: "확인"
				}).then((value) => {
					$('#pw1').focus(); //커서를 이동함.
				}); 
				return false;
			}
			
			if(p1 != p2){
				swal({
					title:'암호확인',
					text:'암호가 일치하지 않습니다',
					icon:"info",
					button:"확인"
				})
				.then((value) => {
					$('#pw').focus(); // 커서를 이동함
				});
				return false;	
			}
			
			var n = $('#name').val();
			if(n == ''){
				swal({
					title:'이름확인',
					text:'이름을 입력하세요.',
					icon: "info",
					button: "확인"
				}).then((value) => {
					$('#name').focus();
				}); 
				return false;
			}
			
			var t = $('#tel').val();
			if(t == ''){
				swal({
					title:'전화번호확인',
					text:'전화번호를 입력하세요.',
					icon: "info",
					button: "확인"
				}).then((value) => {
					$('#tel').focus();
				}); 
				return false;
			}

		});

	});

</script>
</body>
</html>