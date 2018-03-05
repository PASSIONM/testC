<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="resources/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/demo.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/component.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/footer.css" />
	<title>Insert title here</title>
</head>
<body>
	<%@ include file="nav.jsp" %>
	
	<div class="container" style="margin-top:200px; min-height:600px">
		<div class="row form-group">
	        <div class="col-xs-12">
	            <ul class="nav nav-pills nav-justified thumbnail setup-panel">
	                <li class="active"><a href="#step-1">
	                    <h4 class="list-group-item-heading">약관동의</h4>
	                    <p class="list-group-item-text">First step description</p>
	                </a></li>
	                <li class="disabled"><a href="#step-2">
	                    <h4 class="list-group-item-heading">본인확인</h4>
	                    <p class="list-group-item-text">Second step description</p>
	                </a></li>
	                <li class="disabled"><a href="#step-3">
	                    <h4 class="list-group-item-heading">개인정보</h4>
	                    <p class="list-group-item-text">Third step description</p>
	                </a></li>
	                <li class="disabled"><a href="#step-4">
	                    <h4 class="list-group-item-heading">사업자정보</h4>
	                    <p class="list-group-item-text">Third step description</p>
	                </a></li>
	            </ul>
	        </div>
		</div>
	    <div class="row setup-content" id="step-1">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	            	<h1> 회원약관</h1>
	            	<hr/>
	                <div class="wrapper" style="width:600px; border:1px solid #ccc; margin:10px auto">
		                <div style="margin-bottom:10px">
			                <div class="row" style="margin-bottom:10px">
			                	<div class="col-md-6">
			                		<label>이용약관 (필수)</label>
			                	</div>
		  						<div class="col-md-6">
									<div class="form-inline" align="right">
					                	<label>동의</label>
					                	<input type="checkbox" class="form-control" style="width:25px; height:25px;"/>
					                </div>
								</div>
			                </div>
			                <div style="margin-bottom:20px">
			                	<textarea class="form-control" rows="6" style="resize:none" readonly>약관</textarea>
			                </div>
		                </div>
		                
		                <div style="margin-bottom:10px">
			                <div class="row" style="margin-bottom:10px">
			                	<div class="col-md-6">
			                		<label>개인정보 수집 및 이용 (필수)</label>
			                	</div>
		  						<div class="col-md-6">
									<div class="form-inline" align="right">
					                	<label>동의</label>
					                	<input type="checkbox" class="form-control" style="width:25px; height:25px;"/>
					                </div>
								</div>
			                </div>
			                <div style="margin-bottom:20px">
			                	<textarea class="form-control" rows="6" style="resize:none" readonly>약관</textarea>
			                </div>
		                </div>
		                
		                <div style="margin-bottom:10px">
			                <div class="row" style="margin-bottom:10px">
			                	<div class="col-md-6">
			                		<label>광고성 정보 수신 (선택)</label>
			                	</div>
		  						<div class="col-md-6">
									<div class="form-inline" align="right">
					                	<label>동의</label>
					                	<input type="checkbox" class="form-control" style="width:25px; height:25px;"/>
					                </div>
								</div>
			                </div>
			                <div style="margin-bottom:20px">
			                	<textarea class="form-control" rows="6" style="resize:none" readonly>약관</textarea>
			                </div>
		                </div>
		                <div style="margin-bottom:10px">
			                <hr />
			                <div class="form-inline" align="right">
			                	<label>전체 동의</label>
			                	<input type="checkbox" class="form-control" style="width:25px; height:25px;"/>
			                </div>
		                </div>

	                </div>
	                
	                <div align="center">
	                	<button id="next-2" class="btn btn-primary btn-lg">next</button>
	             	</div>
	            </div>
	        </div>
	    </div>
	    <div class="row setup-content" id="step-2">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1 class="text-center">본인확인</h1>
	                <hr />
	                <form name="auth" class="form-horizontal" action="emailAuth.do" target="emailAuth">
	                	<div class="form-group">
							<label class="col-sm-4 control-label" for="email">본인확인</label>
							<div class="col-sm-5">
								<div class="form-inline">
									<input type="text" class="form-control" id="email" name="email" placeholder="이메일 주소를 입력하세요" />
									<input type="button" class="btn btn-info" value="이메일 인증" onClick="openAuth()">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label"></label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="emailauth" readonly>
							</div>
						</div>
	                	<!-- <input type="text" class="form-control" name="email" />
	                	<input type="button" class="btn btn-info" value="이메일 인증" onClick="openAuth()">
	                	<input type="text" class="form-control" name="emailauth"> -->
	                </form>
	                <div align="center">
		                <button id="prev-1" class="btn btn-primary btn-lg">prev</button>
		                <button id="next-3" class="btn btn-primary btn-lg">next</button>
		            </div>
				</div>	
	        </div>
	    </div>
	    <div class="row setup-content" id="step-3">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1>개인정보</h1>
	                <hr />
	                	<form id="form_i"  class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-4 control-label" for="id">아이디</label>
								<div class="col-sm-5">
									<div class="form-inline id_chk">
										<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요" />
										중복체크
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="pw">비밀번호</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력하세요" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="pw1"></label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="pw1" name="pw1" placeholder="비밀번호를 다시 입력하세요" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="name">이름</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요" />
								</div>
							</div>
			
							<div class="form-group">
								<label class="col-sm-4 control-label" for="tel1">전화번호</label>
								<div class="col-sm-5">
									<div class="form-inline">
										<select class="form-control" name="tel1" id="tel1">
											<option>선택</option>
											<option>010</option>
											<option>011</option>
										</select>
										<label>-</label>
										<input type="text" style="width:80px" name="tel2" id="tel2" class="form-control" />
										<label>-</label>
										<input type="text" style="width:80px" name="tel3" id="tel3" class="form-control" />
									</div>
								</div>
							</div>
						</form>
					<div align="center">
						<button id="prev-2" class="btn btn-primary btn-lg">prev</button>
	                	<button id="next-4" class="btn btn-primary btn-lg">next</button>
	             	</div>
	            </div>
	        </div>
	    </div>
	    <div class="row setup-content" id="step-4">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1>사업자정보</h1>
	                <hr />
	                <form id="form_c"  class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_name">상호명</label>
							<div class="col-sm-5">
							<input type="text" class="form-control" id="company_name" name="company_name" placeholder="회사명을 입력하세요" />
						</div>
							
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_class">사업자분류</label>
							<div class="col-sm-5">
								<div class="form-inline">
									<input type="radio" name="company_class" value="individual" checked="checked" /> 개인
									<input type="radio" name="company_class" value="corporations"  /> 법인
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_no">사업자 등록번호</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_no" name="company_no" placeholder="사업자 등록번호를 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="ceo_name">대표자 성명</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="ceo_name" name="ceo_name" placeholder="대표자 성명을 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_conditions">업태</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_conditions" name="company_conditions" placeholder="업태를 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_event">종목</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_event" name="company_event" placeholder="종목을 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_tel">대표 전화번호</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_tel" name="company_tel" placeholder="회사 전화번호를 입력하세요" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="addr">사업장 주소</label>
							<div class="col-sm-5">
								<input type="button" class="btn btn-info" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
								<input style="margin-top:10px" type="text" class="form-control" id="sample5_address" placeholder="주소" readonly>
								<div id="map" style="width:100%;height:300px;margin-top:10px;display:none"></div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="business_license">사업자 등록증</label>
							<div class="col-sm-5">
								<input type="file" class="form-control" id="business_license" name="business_license" placeholder="사업자 등록증을 업로드 하세요" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_img">대표 이미지</label>
							<div class="col-sm-5">
								<input type="file" class="form-control" id="company_img" name="company_img" placeholder="대표 이미지를 입력하세요" />
							</div>
						</div>
						
					</form>
	                <div align="center">
		                <button id="prev-3" class="btn btn-primary btn-lg">prev</button>
		                <input type="submit" class="btn btn-primary btn-lg" value="회원가입" />
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	
	<%@ include file="footer.jsp" %>
	
	<script src="resources/js/jquery-1.11.1.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2028d6af91e6cdd61e23fc95d8e4dcf4&libraries=services"></script>
	<script>
		$(document).ready(function() {
		    
		    var navListItems = $('ul.setup-panel li a'),
		        allWells = $('.setup-content');
	
		    allWells.hide();
	
		    navListItems.click(function(e)
		    {
		        e.preventDefault();
		        var $target = $($(this).attr('href')),
		            $item = $(this).closest('li');
		        
		        if (!$item.hasClass('disabled')) {
		            navListItems.closest('li').removeClass('active');
		            $item.addClass('active');
		            allWells.hide();
		            $target.show();
		        }
		    });
		    
		    $('ul.setup-panel li.active a').trigger('click');
		    
		    // DEMO ONLY //
		    $('#next-2').on('click', function(e) {
		        $('ul.setup-panel li:eq(1)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-2"]').trigger('click');
		    });
		    $('#next-3').on('click', function(e) {
		        $('ul.setup-panel li:eq(2)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		    });
		    $('#next-4').on('click', function(e) {
		        $('ul.setup-panel li:eq(3)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-4"]').trigger('click');
		    });
		    $('#prev-1').on('click', function(e) {
		        $('ul.setup-panel li a[href="#step-1"]').trigger('click');
		    });
		    $('#prev-2').on('click', function(e) {
		        $('ul.setup-panel li a[href="#step-2"]').trigger('click');
		    });
		    $('#prev-3').on('click', function(e) {
		        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		    });
		});
		
		function openAuth() {
			window.open('about:blank','emailAuth','width=400,height=300');
			auth.submit();
		}
		
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

	    //지도를 미리 생성
	    var map = new daum.maps.Map(mapContainer, mapOption);
	    //주소-좌표 변환 객체를 생성
	    var geocoder = new daum.maps.services.Geocoder();
	    //마커를 미리 생성
	    var marker = new daum.maps.Marker({
	        position: new daum.maps.LatLng(37.537187, 127.005476),
	        map: map
	    });
	 	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	    var mapTypeControl = new daum.maps.MapTypeControl();

	    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	    // daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	    map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

	    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	    var zoomControl = new daum.maps.ZoomControl();
	    map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);


	    function sample5_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = data.address; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수
	
	                // 기본 주소가 도로명 타입일때 조합한다.
	                if(data.addressType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }
	
	                // 주소 정보를 해당 필드에 넣는다.
	                document.getElementById("sample5_address").value = fullAddr;
	                // 주소로 상세 정보를 검색
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {
	
	                        var result = results[0]; //첫번째 결과의 값을 활용
	
	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	                        // 지도를 보여준다.
	                        mapContainer.style.display = "block";
	                        map.relayout();
	                        
	                        // 결과값으로 받은 위치를 마커로 표시합니다
	                        var marker = new daum.maps.Marker({
	                            map: map,
	                            position: coords
	                        });
	                        
	                        // 지도 중심을 변경한다.
	                        map.setCenter(coords);
	                        // 마커를 결과값으로 받은 위치로 옮긴다.
	                        marker.setPosition(coords);
	                    }
	                });
	            }
	        }).open();
	    }
	</script>

</body>
</html>