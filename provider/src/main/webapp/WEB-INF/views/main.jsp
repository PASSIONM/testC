<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Google Nexus Website Menu</title>
<meta name="description"
	content="A sidebar menu as seen on the Google Nexus 7 website" />
<meta name="keywords"
	content="google nexus 7 menu, css transitions, sidebar, side menu, slide out menu" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/component.css" />
<link rel="stylesheet" type="text/css" href="resources/css/bm.css" />
<script src="resources/js/modernizr.custom.js"></script>
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
								class="gn-icon gn-icon-search"><span>Search</span></a></li>
							<li><a class="gn-icon gn-icon-archive sub_main1">공지사항</a>
								<ul class="gn-submenu sub_1">
									<li><a class="gn-icon gn-icon-article">공지사항</a></li>
									<li><a class="gn-icon gn-icon-pictures">이벤트</a></li>
								</ul></li>
							<li><a class="gn-icon gn-icon-cog sub_main2">업소관리</a>
								<ul class="gn-submenu sub_2">
									<li><a class="gn-icon gn-icon-illustrator">업체 등록</a></li>
									<li><a class="gn-icon gn-icon-photoshop">운영정보 수정</a></li>
									<li><a class="gn-icon gn-icon-photoshop">리뷰 등록/관리</a></li>
									<li><a class="gn-icon gn-icon-photoshop">임시 운영 증지</a></li>
								</ul></li>
							<li><a class="gn-icon gn-icon-cog sub_main3">사용자관리</a>
								<ul class="gn-submenu sub_3">
									<li><a class="gn-icon gn-icon-illustrator">비밀번호변경</a></li>
									<li><a class="gn-icon gn-icon-photoshop">회원정보수정</a></li>
									<li><a class="gn-icon gn-icon-photoshop">내 채팅내역</a></li>
									<li><a class="gn-icon gn-icon-photoshop">내 문의내역</a></li>
								</ul></li>

							<li><a class="gn-icon gn-icon-help sub_main4">고객센터</a>
								<ul class="gn-submenu sub_4">
									<li><a class="gn-icon gn-icon-illustrator">1:1문의</a></li>
									<li><a class="gn-icon gn-icon-photoshop">자주하는질문</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /gn-scroller -->
				</nav></li>
			<li><a href="http://tympanus.net/codrops">Codrops</a></li>
			<li><a class="codrops-icon codrops-icon-prev"
				href="http://tympanus.net/Development/HeaderEffects/"><span>Previous
						Demo</span></a></li>
			<li><a class="codrops-icon codrops-icon-drop"
				href="http://tympanus.net/codrops/?p=16030"><span>로그인</span></a></li>
		</ul>

		<div style="margin-top:100px" id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
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
					<img style="width:40%; margin:0 auto;" src="resources/imgs/1325070408_1_(7).jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img style="width:40%; margin:0 auto;" src="resources/imgs/wallpaper-534707.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				...
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div>
			<div class="container">
				<div class="row"
					style="margin-top: 10px; padding: 0 auto; border: 1px solid #F00">
					<div class="col-md-6"
						style="margin: 5px; border: 1px solid #00F; width: 45%; height: 300px">
						<div class="column column-notice">
							<div>
								<div class="stit">
									<h3>공지사항</h3>
									<a href="/#/cscenter/notice" class="btn-more sp-more">더보기</a>
								</div>
								<ul class="list">
									<li><a href="#/cscenter/notice-view/853">[점검] 사장님사이트
											시스템 점검 안내<span class="ico-new ir">새글</span>
									</a> <span class="date">2018-02-23</span></li>
									<li><a href="#/cscenter/notice-view/845">[공지] 배달의민족 앱
											업소리스트 영역 디자인 개편 안내<span class="ico-new ir">새글</span>
									</a> <span class="date">2018-02-20</span></li>
									<li><a href="#/cscenter/notice-view/844">[공지] 리뷰조작 의심
											ID로 작성된 허위리뷰 일괄 차단 안내 <span class="ico-new ir">새글</span>
									</a> <span class="date">2018-02-19</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6"
						style="margin: 5px; border: 1px solid #00F; width: 45%; height: 300px">
						<div class="column column-shortcut" style="border: 1px solid #00F">
							<div class="stit">
								<h3>업소관리 퀵메뉴</h3>
								<a href="/myshop" class="btn-more sp-more">업소관리 바로가기</a>
							</div>
							<ul class="list">
								<li><a href="/myshop#reviews" class="sp-item-review">리뷰
										등록/관리</a></li>
								<li><a href="/myshop#stocks" class="sp-item-soldout">메뉴
										품절 관리</a></li>
								<li><a href="/myshop#operation/suspend"
									class="sp-item-closing">임시 운영 중지</a></li>
								<li><a href="/myshop#operation" class="sp-item-operate">운영
										정보 수정</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6"
						style="margin: 5px; border: 1px solid #00F; width: 45%; height: 300px">
						<div class="column column-knowhow">
							<div class="stit">
								<h3>사장님꿀팁</h3>
								<a href="/#/knowhow" class="btn-more sp-more">더보기</a>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div>
										<a href="http://bit.ly/2HCEQmL" title="불만리뷰 대응 시 꼭 지켜야 할 2가지"
											data-ga-action="Click_Mid-Banner"><img style="width: 90%"
											src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/22/cms133222036_b.jpg"></a>
									</div>
									<div>
										<a href="http://bit.ly/2EkrjOp" title="멀티채널 주문접수"
											data-ga-action="Click_Mid-Banner"><img style="width: 90%"
											src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/13/cms162815112_b.jpg"></a>
									</div>
								</div>
								<div class="col-md-6">
									<div>
										<a href="http://bit.ly/2BvuuEz" title="단골 고객 늘리는 사장님 한마디"
											data-ga-action="Click_Mid-Banner"><img style="width: 90%"
											src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/15/cms090022668_b.jpg"></a>
									</div>
									<div >
										<a href="http://bit.ly/2EdQe6m" title="개인정보 관련배너"
											data-ga-action="Click_Mid-Banner"><img style="width: 90%"
											src="https://file.smartbaedal.com/fw/cms/attachments/2018/2/2/cms185054512_b.jpg"></a>
									</div>
								</div>
								<div class="band-banner" >
									<a href="/#/knowhow" title="성공을 위한 알짜정보를 만나보세요!"
										data-ga-action="Click_Mid-Banner2"><img style="width: 90%"
										src="https://file.smartbaedal.com/fw/cms/attachments/2017/8/27/cms235940368_b.png"></a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6"
						style="margin: 5px; border: 1px solid #00F; width: 45%; height: 300px">
						<div class="column column-guide">
							<div class="stit">
								<h3>배달의민족이 처음이신가요?</h3>
							</div>
							<ul class="list">
								<li><a href="/#/about/baemin" class="sp-more-guide">
										<p class="tit">배달의민족 소개</p>
										<p class="info">전국 4만 사장님들의 선택, 배달의민족</p>
								</a></li>
								<li><a href="/#/ad/guide" class="sp-more-guide">
										<p class="tit">광고가이드</p>
										<p class="info">배달의민족에서 광고하면 뭐가 좋아요?</p>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="footer-inner">
			<div class="help">
				<dl>
					<dt>
						사장님,<br>도움이 필요하신가요?<a href="/#/cscenter"
							class="btn-more sp-more">고객센터 바로가기</a>
					</dt>
					<dd>
						<a href="" class="link-realtime talklink" data-type="happytalk"><span>실시간<br>상담하기
						</span></a> <a href="" class="link-kakaotalk talklink" data-type="kakaotalk"><span>상담하기</span></a>
						<p class="tel">
							전화상담<br> <em>1644-0025</em><br>(365일 24시)
						</p>
					</dd>
				</dl>
			</div>

			<div class="info">
				<ul class="util">
					<li><a href="http://www.woowahan.com/2-1/" target="_blank">배달의민족</a></li>
					<li><a href="http://www.woowahan.com/1-1/" target="_blank">회사소개</a></li>
					<li><a href="/#/policy">이용약관</a></li>
					<li><a href="/#/policy/advertisement">광고운영정책</a></li>
					<li><a href="/#/policy/privacy"><strong>개인정보처리방침</strong></a></li>
					<li><a href="mailto:help@woowahan.com">제휴문의</a></li>
				</ul>

				<a href="http://www.woowahan.com/" target="_blank"
					class="sp-footer-logo footer-logo ir">우아한형제들</a>
				<address class="address">
					<span>사업자등록번호 : 120-87-65763</span> <span>통신판매업 신고번호 : 서울 송파
						- 0515호</span> <span>대표 : 김봉진</span> <span>주소 : 서울 송파구 위례성대로 2
						장은빌딩 18층</span>
				</address>
				<p class="copyright">© Woowa Brothers Corp.</p>
			</div>
		</div>
	</footer>

	<!-- /container -->
	<script src="resources/js/classie.js"></script>
	<script src="resources/js/gnmenu.js"></script>
	<script src="resources/js/jquery-1.11.1.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
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
				  interval: 2000
				})
		});
	</script>
</body>

</html>
