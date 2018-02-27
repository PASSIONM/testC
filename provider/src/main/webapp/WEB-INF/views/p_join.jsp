<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
	<title>Insert title here</title>
</head>
<body>
	<%@ include file="nav.jsp" %>
	
	<div class="container" style="margin-top:200px">
		<div class="row form-group">
        <div class="col-xs-12">
            <ul class="nav nav-pills nav-justified thumbnail setup-panel">
                <li class="active"><a href="#step-1">
                    <h4 class="list-group-item-heading">회원약관</h4>
                    <p class="list-group-item-text">First step description</p>
                </a></li>
                <li class="disabled"><a href="#step-2">
                    <h4 class="list-group-item-heading">개인정보</h4>
                    <p class="list-group-item-text">Second step description</p>
                </a></li>
                <li class="disabled"><a href="#step-3">
                    <h4 class="list-group-item-heading">사업자정보</h4>
                    <p class="list-group-item-text">Third step description</p>
                </a></li>
                <li class="disabled"><a href="#step-4">
                    <h4 class="list-group-item-heading">Step 4</h4>
                    <p class="list-group-item-text">Third step description</p>
                </a></li>
            </ul>
        </div>
	</div>
    <div class="row setup-content" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                <h1> 회원약관</h1>
                <button id="next-2" class="btn btn-primary btn-lg">next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                <h1 class="text-center"> 개인정보</h1>
                <button id="prev-1" class="btn btn-primary btn-lg">prev</button>
                <button id="next-3" class="btn btn-primary btn-lg">next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-3">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                <h1 class="text-center"> 사업자정보</h1>
                <button id="prev-2" class="btn btn-primary btn-lg">prev</button>
                <button id="next-4" class="btn btn-primary btn-lg">next</button>
            </div>
        </div>
    </div>
    <div class="row setup-content" id="step-4">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                <h1 class="text-center"> STEP 4</h1>
                <button id="prev-3" class="btn btn-primary btn-lg">prev</button>
                <input type="submit" class="btn btn-primary btn-lg" value="회원가입" />
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
		        $('ul.setup-panel li:eq(2)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-1"]').trigger('click');
		    });
		    $('#prev-2').on('click', function(e) {
		        $('ul.setup-panel li:eq(3)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-2"]').trigger('click');
		    });
		    $('#prev-3').on('click', function(e) {
		        $('ul.setup-panel li:eq(4)').removeClass('disabled');
		        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		    });
		});
	</script>
</body>
</html>