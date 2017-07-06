<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
	//context 경로
	String cPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<!--<meta name="viewport" content="width=1000px" />-->
<title>table.html</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<link rel="stylesheet" href="../resource/css/font-awesome.css"/>
<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>
<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>
<style>
	
	body{
		padding-top:250px;
	}

</style>
</head>
<body>

<!-- navbar include -->
<jsp:include page="../navbar.jsp" ></jsp:include>

<div class="container">
	<div class="row">

	</div>	
	<div class="row">
		  <div class="col-xs-2 col-xs-offset-5">
			 <img src="../resource/images/logo.png" alt="" style="width: 100px;height: 60px" />
		  </div>
		  <div class="col-xs-3 col-xs-push-3 phone">
			   <i class="fa fa-phone"></i>1600-3069
		  </div>	   
	 </div>
</div>




<script type="text/javascript">
		$('#DB_navi24').DB_naviFullWideMove({
			key:'c37080',                 //라이센스키
			pageNum:3,           //메인메뉴 페이지인식(1~)
			subNum:1,            //서브메뉴 페이지인식(1~)
			subState:false,         //메뉴활성시 서브메뉴의 오픈유무(true,false)
			motionSpeed:300,        //모션속도(밀리초)
			delayTime:100             //메뉴아웃시 되돌아가는 딜레이시간(밀리초)
		});
</script>
<div class="container-fluid" style="text-align:center;">
	<div class="row">
		<div class="col-xs-3"></div>
			<h3>인테리어 이렇게 했어요</h3>
			<h5>인테리어를 하셨거나 준비중이신가요? 인테리어를 하며 경험하고 느낀 후기를 남겨주세요.<br/>
				현재 인테리어를 하고 계신 분들, 혹은 앞으로 인테리어를 계획하고 계신 분들에게 많은 도움이 될거에요.
			</h5>
		</div>
	</div>	
	<div class="row">
		<div class="col-xs-offset-5">
			<a class="btn-lg btn-warning" href="writing.jsp" style="padding:10px 100px;"><i class="fa fa-pencil"></i>글쓰기</a>
		</div>	
	</div>
</div>

<div class="container-fluid">
	<div="row">
		<div class="col-xs-2 left">
			<div style="height:500px; background:url('resource/images/main.jpg') no-repeat left;"></div>
		</div>
		<div class="col-xs-8">
			<div class="row">
				<!-- <div class="col-xs-3">
					<ul class="breadcrumb">
					  <li><a href="#">공지사항</a></li>
					  <li><a href="#">전체글</a></li>
					  <li><a href="#">사진방</a></li>
					</ul>
				</div> -->
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
</div>
</body>
</html>
