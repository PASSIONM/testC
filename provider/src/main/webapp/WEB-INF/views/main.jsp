<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>Google Nexus Website Menu</title>
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="resources/css/bm.css" />

</head>
<body>
	<div class="container1">
		<%@ include file="nav.jsp" %>

		<div style="margin-top: 100px" id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img style="width: 40%; margin: 0 auto;" src="resources/imgs/1325070408_1_(7).jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img style="width: 40%; margin: 0 auto;" src="resources/imgs/wallpaper-534707.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				...
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container">
			<div class="main">
				<div class="section-grid">
					<div class="sec-lft" style="border: 1px solid #F00">
						<div class="column column-notice" style="margin-bottom: 10px; border: 1px solid #0F0">
							<div class="stit">
								<h3>공지사항</h3>
								<a href="#" class="btn-more sp-more">더보기</a>
							</div>
							<ul class="list">
								<li>
									<a href="#">[점검] 사장님사이트 시스템 점검 안내<span class="ico-new ir">새글</span></a> 
									<span class="date">2018-02-23</span>
								</li>
								<li>
									<a href="#">[공지] 배달의민족 앱 업소리스트 영역 디자인 개편 안내<span class="ico-new ir">새글</span></a> 
									<span class="date">2018-02-20</span>
								</li>
								<li>
									<a href="#/cscenter/notice-view/844">[공지] 리뷰조작 의심 ID로 작성된 허위리뷰 일괄 차단 안내 <span class="ico-new ir">새글</span></a> 
									<span class="date">2018-02-19</span>
								</li>
							</ul>
						</div>
						<div class="column column-knowhow" style="margin-bottom: 10px; border: 1px solid #0F0">
							<div class="stit">
								<h3>사장님꿀팁</h3>
								<a href="#" class="btn-more sp-more">더보기</a>
							</div>
							<ul class="list">
								<li style="width: 342px">
									<a href="#"><img src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/22/cms133222036_b.jpg"></a>
								</li>
								<li style="width: 342px">
									<a href="#"><img src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/13/cms162815112_b.jpg"></a>
								</li>
								<li style="width: 342px">
									<a href="#"><img src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/15/cms090022668_b.jpg"></a>
								</li>
								<li style="width: 342px">
									<a href="#"><img src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/2/cms185054512_b.jpg"></a>
								</li>
							</ul>
							<div class="band-banner" data-banner="ceo" data-banner-position-code="4" data-banner-ga="Click_Mid-Banner2">
								<a href="#"><img src="https://file.smartbaedal.com/fw/cms/attachments/2017/8/27/cms235940368_b.png"></a>
							</div>
						</div>
					</div>
					
					<div class="sec-rgt" style="border: 1px solid #00F">
						<div class="column column-login" style="margin-bottom: 10px; border: 1px solid #0F0">
							<div class="stit">
								<h3>사장님, 로그인해주세요!</h3>
							</div>
							<a href="#" class="btn btn-large btn-primary expanded">사장님사이트 로그인</a>
							<ul class="login-link">
								<li><a href="#">아이디/비밀번호 찾기</a></li>
								<li><a href="provider_join.do">회원가입</a></li>
							</ul>
						</div>
						<div class="column column-shortcut" style="margin-bottom: 10px; border: 1px solid #0F0">
							<div class="stit">
								<h3>업소관리 퀵메뉴</h3>
								<a href="#" class="btn-more sp-more">업소관리 바로가기</a>
							</div>
							<ul class="list">
								<li><a href="#" class="sp-item-review">리뷰 등록/관리</a></li>
								<li><a href="#" class="sp-item-soldout">메뉴품절 관리</a></li>
								<li><a href="#" class="sp-item-closing">임시 운영 중지</a></li>
								<li><a href="#" class="sp-item-operate">운영정보 수정</a></li>
							</ul>
						</div>
						<div class="column column-guide" style="margin-bottom: 10px; border: 1px solid #0F0">
							<div class="stit">
								<h3>배달의민족이 처음이신가요?</h3>
							</div>
							<ul class="list">
								<li>
									<a href="#" class="sp-more-guide">
										<p class="tit">배달의민족 소개</p>
										<p class="info">전국 4만 사장님들의 선택, 배달의민족</p>
									</a>
								</li>
								<li>
									<a href="#" class="sp-more-guide">
										<p class="tit">광고가이드</p>
										<p class="info">배달의민족에서 광고하면 뭐가 좋아요?</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>


	
	<%@ include file="footer.jsp" %>
	<!-- /container -->
	
	<script src="resources/js/jquery-1.11.1.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	
</body>

</html>
