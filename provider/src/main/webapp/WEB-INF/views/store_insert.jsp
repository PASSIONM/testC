<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
	<style type="text/css">
        .imgs_wrap img {
            height: 75px;
		    border: 1px solid #000;
		    margin: 10px 5px 0 0;
        }
        .my_button {
            display: inline-block;
            width: 150px;
            text-align: center;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
        }
</style>
    
</head>
<body>
	<%@ include file="nav.jsp" %>
	
	<div class="container" style="margin-top:200px; min-height:600px">
		<div class="row form-group">
	        <div class="col-xs-12">
	            <ul class="nav nav-pills nav-justified thumbnail setup-panel">
	                <li class="active"><a href="#step-1">
	                    <h4 class="list-group-item-heading">사업자 정보</h4>
	                    <p class="list-group-item-text">First step description</p>
	                </a></li>
	                <li class="disabled"><a href="#step-2">
	                    <h4 class="list-group-item-heading">운영 정보</h4>
	                    <p class="list-group-item-text">Second step description</p>
	                </a></li>
	                <li class="disabled"><a href="#step-3">
	                    <h4 class="list-group-item-heading">예약 관련</h4>
	                    <p class="list-group-item-text">Third step description</p>
	                </a></li>
	            </ul>
	        </div>
		</div>
	    <div class="row setup-content" id="step-1">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h2>사업자정보</h2>
	                <div class="form-inline">
						<input type="radio" id="" name="company_class" value="default" checked="checked" /> 기존업체
						<input type="radio" id="" name="company_class" value="new"  /> 신규업체
					</div>
	                <hr />
	                <form id="form"  class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_name">상호명</label>
							<div class="col-sm-5">
							<input type="text" class="form-control" id="id" name="id" placeholder="회사명을 입력하세요" />
						</div>
							
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="company_class">사업자분류</label>
							<div class="col-sm-5">
								<div class="form-inline">
									<input type="radio" id="" name="company_class" value="individual" checked="checked" /> 개인
									<input type="radio" id="" name="company_class" value="corporations"  /> 법인
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
							<label class="col-sm-4 control-label" for="company_tel">대표 전화 번호</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="company_url" name="company_url" placeholder="회사 전화번호를 입력하세요" />
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
	                	<button id="next-2" class="btn btn-primary btn-lg">next</button>
	             	</div>
	            </div>
	        </div>
	    </div>
	    <div class="row setup-content" id="step-2">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1 class="text-center">운영 정보</h1>
	                <hr />
	                <form id="form"  class="form-horizontal">
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="category">카테고리</label>
							<div class="col-sm-5">
								<select class="form-control" id="category" name="category">
									<option>선택</option>
									<option>한식</option>
									<option>중식</option>
									<option>일식</option>
									<option>양식</option>
									<option>분식</option>
									<option>패스트푸드</option>
									<option>기타</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="time">영업시간</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="time" name="time" placeholder="영업시간" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="menu">메뉴</label>
							<div class="col-sm-5">
								<div class="buttons">      
									<div class="form-inline" style="margin-bottom:5px">
				      	  				<input type="text" class="form-control" style="width:40%" name="aaa[]">
				      	  				<input type="text" class="form-control" style="width:40%" name="bbb[]">
				      	  				<input type="button" class="btnAdd btn btn-success" value="추가">
				      	  			</div>        
				     			</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-4 control-label" for="intro">소개글</label>
							<div class="col-sm-5">
								<textarea class="form-control" rows="6" style="resize:none" id="intro" name="intro"></textarea>
							</div>
						</div>
						<!-- <div class="form-group">
							<label class="col-sm-4 control-label" for="time">이미지</label>
								<div class="col-sm-5">
							        <div class="input_wrap">
						            	<a href="javascript:" onclick="fileUploadAction();" class="my_button btn btn-info">이미지 업로드</a>
							            <input type="file" class="form-control" id="input_imgs" style="display: none" multiple/>
							        </div>
							    <div>
						    	    <div class="imgs_wrap">
						        	    <span><output id="img"></output></span>
						        	</div>
						    	</div>
							</div>
						</div> -->
						
							
							
							
							
							
							
							
							
							
							
					</form>
					
					<form action="test.do" method="post" >
					<div class="form-group">
							<label class="col-sm-4 control-label" for="time">이미지</label>
								<div class="col-sm-5">
					            	<input type="file" id="files" multiple />
								    <div>
						        	    <output class='list1' id="list"></output>
							    	</div>
								</div>
							</div>
				           <!--  <div class="buttons">      
									<div class="form-inline" style="margin-bottom:5px">
				      	  				<input type="text" class="form-control" style="width:30%" name="aaa[]">
				      	  				<input type="text" class="form-control" style="width:30%" name="bbb[]">
				      	  				<input type="button" class="btnAdd btn btn-success" value="추가">
				      	  			</div>        
				     			</div>
				     			
				     	<div class="form-group">
							<label class="col-sm-4 control-label" for="time">이미지</label>
								<div class="col-sm-5">
							        <div class="input_wrap">
						            	<input type="file" id="files" multiple />
							        </div>
							    <div>
						    	    <div class="imgs_wrap">
						        	    <output id="list"></output>
						        	</div>
						    	</div>
							</div>
						</div> -->
				     	
				        <input type="submit" value="전송">
					</form>
					
					<div align="center">
		                <button id="prev-1" class="btn btn-primary btn-lg">prev</button>
		                <button id="next-3" class="btn btn-primary btn-lg" >next</button>
		            </div>
	            </div>
	        </div>
	    </div>
	    <div class="row setup-content" id="step-3">
	        <div class="col-xs-12">
	            <div class="col-md-12 well">
	                <h1>예약관련</h1>
	                <hr />
	                <form id="form"  class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-4 control-label" for="id">아이디</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="id">카테고리</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-4 control-label" for="id">이미지</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력하세요" />
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
	</div>
	
	<%@ include file="footer.jsp" %>
	
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.MultiFile.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2028d6af91e6cdd61e23fc95d8e4dcf4&libraries=services"></script>
	<script>
	
		// 이미지 정보들을 담을 배열
		var sel_files = [];
		/*$(".imgs_wrap").empty(); */
	    $(document).ready(function() {
	        $("#input_imgs").on("change", handleImgFileSelect);
	    });
	
	    function fileUploadAction() {
	        console.log("fileUploadAction");
	        $("#input_imgs").trigger('click');
	    }
	    function handleImgFileSelect(e) {
	        // 이미지 정보들을 초기화
	        //sel_files = [];
	        /* $(".imgs_wrap").empty(); */
	        var files = e.target.files;
	        var filesArr = Array.prototype.slice.call(files);
	        var index = 0;
	        filesArr.forEach(function(f) {
	            if(!f.type.match("image.*")) {
	                alert("이미지 파일만 첨부 가능합니다.");
	                return;
	            }
	            sel_files.push(f);
	            var reader = new FileReader();
	            reader.onload = function(e) {
	                //var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
	                var html = "<a href=\"javascript:void(0);\" id=\"img_id_"+index+"\">"+
	                			"<img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile'></a>";
	                $(".imgs_wrap").append(html);
	                index++;
	                
	                
	                //html.onclick = function(){document.getElementById('img').removeChild(this)};
	            }
	            reader.readAsDataURL(f);
	        });
	    }
	
	    /* function deleteImageAction(index) {
	        console.log("index : "+index);
	        console.log("sel length : "+sel_files.length);
	        sel_files.splice(index, 1);
	        var img_id = "#img_id_"+index;
	        $(img_id).remove(); 
	    } */
	
		function fileUploadAction() {
	        console.log("fileUploadAction");
	        $("#input_imgs").trigger('click');
		}
		/* function submitAction() {
	        console.log("업로드 파일 갯수 : "+sel_files.length);
	        var data = new FormData();
	
	        for(var i=0, len=sel_files.length; i<len; i++) {
	            var name = "image_"+i;
	            data.append(name, sel_files[i]);
	        }
	        data.append("image_count", sel_files.length);
	        
	        if(sel_files.length < 1) {
	            alert("한개이상의 파일을 선택해주세요.");
	            return;
	        }
	        if(sel_files.length > 10) {
	            alert("이미지 첨부는 최대 10개 까지 가능합니다.");
	            return false;
	        }
	    } */
		
		
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
		    	/* if(('.imgs').length > 5) {
	                alert("이미지 첨부는 최대 5개 까지 가능합니다.");
	                return false;
	            } */
		        $('ul.setup-panel li:eq(2)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		    });
		    $('#prev-1').on('click', function(e) {
		        $('ul.setup-panel li a[href="#step-1"]').trigger('click');
		    });
		    $('#prev-2').on('click', function(e) {
		        $('ul.setup-panel li a[href="#step-2"]').trigger('click');
		    });
		});
		
		
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
	                        // 인포윈도우로 장소에 대한 설명을 표시합니다
	                        var infowindow = new daum.maps.InfoWindow({
	                            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+extraAddr+'</div>'
	                        });
	                        infowindow.open(map, marker);
	
	                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	                        map.setCenter(coords);
	                        
	                        /* // 지도 중심을 변경한다.
	                        map.setCenter(coords);
	                        // 마커를 결과값으로 받은 위치로 옮긴다.
	                        marker.setPosition(coords); */
	                    }
	                });
	            }
	        }).open();
	    }
    </script>
    
	<script>            
        $(document).ready (function () {
        	var aaa = [];

            $('.btnAdd').click (function () {
            	if(aaa.length<5){
            		$('.buttons').append (                        
                            '<div class="form-inline del" style="margin-bottom:5px">' +
                            	'<input type="text" class="form-control" style="width:40%" name="aaa[]"> ' +
                          		'<input type="text" class="form-control" style="width:40%" name="bbb[]"> ' +
                            	'<input type="button" class="btnRemove btn btn-danger" value="삭제"> ' +
                            '</div>'
                        );
            		aaa = $('input[name="aaa[]"').toArray();
            	}
            	else{
                	alert("최대 5개까지 추가 가능합니다.");
                	return false;
            	}
            	
                 // end append                            
                $('.btnRemove').on('click', function () { 
                    $(this).parent().remove (); //
                    aaa.splice($(this),1);
                });
            }); // end click                                            
        }); // end ready        
    </script>
	<!-- <script type="text/javascript">
		function handleFileSelect(evt) {
		    var files = evt.target.files;
		    // Loop through the FileList and render image files as thumbnails.
		    for (var i = 0, f; f = files[i]; i++) {
		      // Only process image files.
		      if (!f.type.match('image.*')) {
		        continue;
		      }
		      var reader = new FileReader();
		      // Closure to capture the file information.
		      reader.onload = (function(theFile) {
		        return function(e) {
		          // Render thumbnail.
		          var span = document.createElement('span');
		          span.innerHTML = 
		          [
		            '<img name="imgs[]" style="height: 75px; border: 1px solid #000; margin: 5px" src="', 
		            e.target.result,
		            '" title="', escape(theFile.name), 
		            '"/>'
		          ].join('');
		          
		          document.getElementById('list').insertBefore(span, null);
		          span.onclick = function(){document.getElementById('list').removeChild(this)};
		          //array.splice(index,1);
		        };
		      })(f);
		      // Read in the image file as a data URL.
		      reader.readAsDataURL(f);
		    }
		  }
		  document.getElementById('files').addEventListener('change', handleFileSelect, false);
	</script> -->
	<script type="text/javascript">
		
	
	
	
		function handleFileSelect(evt) {
			var array = [];  
			var files = evt.target.files;
			//var filesArr = Array.prototype.slice.call(files);
				
			// Loop through the FileList and render image files as thumbnails.
			for (var i = 0, f; f = files[i]; i++) {
				
				// Only process image files.
				if (!f.type.match('image.*')) {
					continue;
				}
				array.push(f);
				var reader = new FileReader();
				
				// Closure to capture the file information.
				reader.onload = (function(theFile) {
					return function(e) {
						// Render thumbnail.
						var span = document.createElement('span');
						span.setAttribute('class', 'list3');
						span.innerHTML = 
							[
							/* '<img name="imgs[]" style="height: 75px; border: 1px solid #000; margin: 5px" src="', 
							e.target.result,
							'" title="', escape(theFile.name), 
							'"/>' */
							'<input value="123" name="imgs[]"/>'
							].join('');
						
						document.getElementById('list').insertBefore(span, null);
						if(span.onclick){
							document.getElementById('list').removeChild(this);
						}
						
						//span.onclick = function(){document.getElementById('list').removeChild(this)};
						console.log($('.list3').length);
					
					};
				
				})(f);
				
				// Read in the image file as a data URL.
				reader.readAsDataURL(f);
				
			}
			
	
		}
		
		document.getElementById('files').addEventListener('change', handleFileSelect, false);  
	</script>
	
	
</body>
</html>