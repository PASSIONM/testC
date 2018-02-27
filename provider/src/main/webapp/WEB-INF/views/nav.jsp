<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/component.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
	<title>Insert title here</title>
</head>
<body>
	<div class="container1">
		<ul id="gn-menu" class="gn-menu-main">
			<li class="gn-trigger"><a class="gn-icon gn-icon-menu"><span>Menu</span></a>
				<nav class="gn-menu-wrapper">
					<div class="gn-scroller">
						<ul class="gn-menu">
							<li class="gn-search-item"><input placeholder="Search"
								type="search" class="gn-search"> <a
								class="gn-icon gn-icon-search"><span>Search</span></a>
							</li>
							<li><a class="gn-icon gn-icon-archive sub_main1">공지사항</a>
								<ul class="gn-submenu sub_1">
									<li><a class="gn-icon gn-icon-article">공지사항</a></li>
									<li><a class="gn-icon gn-icon-pictures">자유게시판</a></li>
								</ul>
							</li>
							<li><a class="gn-icon gn-icon-cog sub_main2">업소관리</a>
								<ul class="gn-submenu sub_2">
									<li><a class="gn-icon gn-icon-illustrator">업체 등록</a></li>
									<li><a class="gn-icon gn-icon-photoshop">운영정보 수정</a></li>
									<li><a class="gn-icon gn-icon-photoshop">리뷰 등록/관리</a></li>
									<li><a class="gn-icon gn-icon-photoshop">임시 운영 증지</a></li>
									<li><a class="gn-icon gn-icon-photoshop">문의사항 관리</a></li>
								</ul>
							</li>
							<li><a class="gn-icon gn-icon-cog sub_main3">사용자관리</a>
								<ul class="gn-submenu sub_3">
									<li><a class="gn-icon gn-icon-illustrator">비밀번호변경</a></li>
									<li><a class="gn-icon gn-icon-photoshop">회원정보수정</a></li>
									<li><a class="gn-icon gn-icon-photoshop">내 문의내역</a></li>
								</ul>
							</li>
							<li><a class="gn-icon gn-icon-help sub_main4">고객센터</a>
								<ul class="gn-submenu sub_4">
									<li><a class="gn-icon gn-icon-illustrator">1:1문의</a></li>
									<li><a class="gn-icon gn-icon-photoshop">자주하는질문</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /gn-scroller -->
				</nav>
			</li>
			<li><a href="main.do">사업자 메인</a></li>
			<li><a class="codrops-icon codrops-icon-prev" href="#"><span>Previous Demo</span></a></li>
			<li><a class="codrops-icon codrops-icon-drop" href="#"><span>#</span></a></li>
		</ul>
	</div>
	
	<script src="resources/js/jquery-1.11.1.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="resources/js/classie.js"></script>
		<script src="resources/js/gnmenu.js"></script>
		<script>
			new gnMenu(document.getElementById('gn-menu'));
		</script>
		<script>
			$(function() {
				$('.sub_1').hide();
				$('.sub_2').hide();
				$('.sub_3').hide();
				$('.sub_4').hide();
			
				$('.sub_main1').click(function() {
					$('.sub_1').toggle(500);
				});
				$('.sub_main2').click(function() {
					$('.sub_2').toggle(500);
				});
				$('.sub_main3').click(function() {
					$('.sub_3').toggle(500);
				});
				$('.sub_main4').click(function() {
					$('.sub_4').toggle(500);
				});
			
				$('.carousel').carousel({
					interval : 2000
				})
			});
		</script>
</body>
</html>