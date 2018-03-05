<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5>인증번호</h5>
	<div class="container">
		<form method="post" name="authenform" onSubmit="return check();">
			<input type="text" name="authnum"><br /><br />
			<input type="submit" class="btn btn-info" value="submt">
		</form>
	</div>
	
	<script src="resources/js/jquery-1.11.1.js"></script>
	<script>
	function check(){
		var form = document.authenform;
		var authNum = ${authNum};
		
		if (!form.authnum.value){
			alert("인증번호를 입력하세요");
			return false;
		}
		if(form.authnum.value!=authNum){
			alert("틀린 인증번호 입니다. 인증번호를 다시 입력해주세요");
			form.authnum.value="";
			return false;
		}
		if(form.authnum.value==authNum){
			alert("인증완료");
			opener.document.auth.emailauth.value="인증완료";
			/* window.opener.document.getElementById("au").value ="인증완료"; */
			window.close();
		}
	}
	</script>
</body>
</html>