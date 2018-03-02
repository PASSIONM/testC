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
	            <div class="col-md-12 well text-center">
	                <h1 class="text-center">본인확인</h1>
	                <hr />
	                <button id="prev-1" class="btn btn-primary btn-lg">prev</button>
	                <button id="next-3" class="btn btn-primary btn-lg">next</button>
	            </div>
	        </div>
	    </div>
	    <div class="row setup-content" id="step-3">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1>개인정보</h1>
	                <hr />
	                	<form id="form"  class="form-horizontal">
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
							
							<div class="form-group">
								<label class="col-sm-4 control-label" for="addr">주소</label>
								<div class="col-sm-5">
									<div class="form-inline post_search">
										<input type="text" name="postcode" class="form-control" id="sample6_postcode" readonly/>
										<input type="button" class="btn btn-danger" onclick="sample6_execDaumPostcode()" name="post_search" id="post_search" value="검색" />
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-4 control-label" ></label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="sample6_address" name="addr1" placeholder="상세주소1" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" ></label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="sample6_address2" name="addr2" placeholder="상세주소2" />
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
	                <form id="form"  class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_name">회사명</label>
							<div class="col-sm-5">
							<input type="text" class="form-control" id="id" name="id" placeholder="회사명을 입력하세요" />
						</div>
							
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_class">사업자분류</label>
							<div class="col-sm-5">
								<div class="form-inline">
									<input type="radio" id="company_class" name="company_class" value="individual" checked="checked" /> 개인
									<input type="radio" id="company_class" name="company_class" value="corporations"  /> 법인
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_num">사업자 등록번호</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_num" name="company_num" placeholder="사업자 등록번호를 입력하세요" />
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
							<label class="col-sm-4 control-label" for="manager_name">담당자명</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="manager_name" name="manager_name" placeholder="담당자명을 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="manager_dept">담당자 부서명</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="manager_dept" name="manager_dept" placeholder="담당자 부서명을 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_url">홈페이지 URL</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_url" name="company_url" placeholder="홈페이지 URL을 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_tel">회사 전화</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_url" name="company_url" placeholder="회사 전화번호를 입력하세요" />
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
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="addr">사업장 주소</label>
							<div class="col-sm-5">
								<div class="form-inline post_search">
									<input type="text" name="postcode" class="form-control" id="sample6_postcode" readonly/>
									<input type="button" class="btn btn-danger" onclick="sample6_execDaumPostcode()" name="post_search" id="post_search" value="검색" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-4 control-label" ></label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="sample6_address" name="addr1" placeholder="상세주소1" readonly/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" ></label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="sample6_address2" name="addr2" placeholder="상세주소2" />
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
	</script>
</body>
</html>