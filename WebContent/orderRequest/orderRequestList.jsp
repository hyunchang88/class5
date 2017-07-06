<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>orderRequestList.jsp</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<style>

/* 	.bs-wizard {margin-top: 250px;}
	
	.bs-wizard {border-bottom: solid 1px #e0e0e0; padding: 0 0 10px 0;}
	.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
	.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
	.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #595959; font-size: 16px; margin-bottom: 5px;}
	.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 14px;}
	.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; display: block; background: #fbe8aa; top: 45px; left: 50%; margin-top: -15px; margin-left: -15px; border-radius: 50%;} 
	.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 14px; height: 14px; background: #fbbd19; border-radius: 50px; position: absolute; top: 8px; left: 8px; } 
	.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 8px; box-shadow: none; margin: 20px 0;}
	.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background: #fbe8aa;}
	.bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {width:100%;}
	.bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {width:50%;}
	.bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {width:0%;}
	.bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {width: 100%;}
	.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {background-color: #f5f5f5;}
	.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {opacity: 0;}
	.bs-wizard > .bs-wizard-step:first-child  > .progress {left: 50%; width: 50%;}
	.bs-wizard > .bs-wizard-step:last-child  > .progress {width: 50%;}
	.bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot{ pointer-events: none; }
	 */

</style>
</head>
<body>

<!-- navbar include -->
<jsp:include page="../navbar.jsp" ></jsp:include>

<div class="container-fluid" style="margin-top:300px">
	<div="row">
		<div class="col-xs-2 left">
			<div style="height:500px; background:url('resource/images/main.jpg') no-repeat left;"></div>
		</div>
		<div class="col-xs-8">
			<div class="row">
				<div class="col-xs-3">
					<h3>리스트</h3>
					<!-- <ul class="breadcrumb">
					  <li><a href="#">공지사항</a></li>
					  <li><a href="#">전체글</a></li>
					  <li><a href="#">사진방</a></li>
					</ul> -->
				</div>
			</div>	
			<table class="table table-bordered">
				<thead style="background-color:#FFD0AF;">
					<tr>
						<td>번호</td>
						<td>글제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>작성일</td>
						<td>작성자</td>
						<td>조회수</td>
					</tr>
				</thead>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			 <div class="text-center">
				<ul class="pagination">
					<li><a href="">1</a></li>
					<li><a href="">2</a>
					<li><a href="">3</a>
					<li><a href="">4</a>
				 	<li><a href="">5</a>
				</ul>
			</div>	
		</div>
		<div class="col-xs-2 left">
			<div style="height:500px; background:url('resource/images/main.jpg') no-repeat right;"></div>
		</div>	
	</div>
</div> <!-- end container-fluid -->


<script type="text/javascript" src="/class5/resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script>

/* 
	$(".previousBtn").click(function(){
		$(".active")
		.removeClass("active")
		.addClass("disabled")
		.children()
		.removeClass("bs-wizard-dot:after")
		.parent()
		.prev()
		.addClass("active")
		.children()
		.addClass("bs-wizard-dot:after");
	});
	
	$(".nextBtn").click(function(){
		$(".active")
		.removeClass("active")
		.addClass("complete")
		.children()
		.removeClass("bs-wizard-dot:after")
		.parent()
		.next()
		.addClass("active")
		.children()
		.addClass("bs-wizard-dot:after");
	}); */
	
</script>

</body>
</html>