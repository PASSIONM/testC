<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
	</head>
	
	<body>
		<div class="container">
		
		<div class="box600">
			<h3 align="center">회원가입</h3>
		
		<hr />
		
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px">아이디</label>
				<input type="text" class="form-control" placeholder="아이디를 입력하세요." autofocus style="width:300px" />
				<label style="width:50px"></label>
				<input type="button" class="btn btn-info" value="중복확인" />
			</div>
	
			<div class="form-inline" style="margin-bottom:5px">
				<label style="width:100px">비밀번호</label>
				<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." autofocus style="width:300px" />
			</div>
				
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px"></label>
				<input type="password" class="form-control" placeholder="비밀번호를 다시 입력하세요." autofocus style="width:300px" />
			</div>
							
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px">이름</label>
				<input type="text" class="form-control" placeholder="이름를 입력하세요." style="width:300px" />
			</div>
			
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px">성별</label>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
				    남자
				  </label>
				</div>
				
				<label style="width:50px"></label>
				
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    여자
				  </label>
				</div>
			</div>
			
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px">이메일주소</label>
				<input type="text" class="form-control" style="width:150px" />
				<label style="padding:0 5px">@</label>
				<select class="form-control">
					<option>계정선택</option>
					<option>naver.com</option>
					<option>gmail.com</option>
					<option>hanmail.net</option>
					<option>직접입력</option>
				</select>
			</div>
			
			<div class="form-inline" style="margin-bottom:20px">
				<label style="width:100px">전화번호</label>
				<select class="form-control">
					<option>선택</option>
					<option>010</option>
					<option>011</option>
					<option>017</option>
					<option>018</option>
				</select>
				<label style="padding:0 5px">-</label>
				<input type="text" class="form-control" style="width:90px" />
				<label style="padding:0 5px">-</label>
				<input type="text" class="form-control" style="width:90px" />
			</div>
			
			<div class="form-inline" style="margin-bottom:20px">
			
			</div>
			
			<div class="form-inline" style="margin-bottom:20px">

			</div>
			
			<div class="form-inline" style="margin-bottom:20px">

			</div>
			
			<div class="form-inline" style="margin-bottom:20px">

			</div>
			
			<hr />
			
			<div align="center">
				<input type="button" class="btn btn-success" value="회원가입" />
				<a href="main1.jsp"><input type="button" class="btn btn-primary" value="취소" /></a>
			</div>
		
		</div>		
	</div>
	
	
	</body>
</html>