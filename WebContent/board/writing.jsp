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
<title>writing.html</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<link rel="stylesheet" href="../resource/css/font-awesome.css"/>
<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>
<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>
<style>
		body{
			margin: 0;
			/* 상단 fixed 된 요소에 가려진 내용을 볼수 있도록 */
			padding-top: 100px;
		}

	</style>
</head>
<body>

<!-- <h3>navbar 위치할 공간</h3> -->
<jsp:include page="../navbar.jsp" ></jsp:include>

<div class="container">
	<div style="margin: 20px 0;"></div>
</div>

<div class="container">
   <div class="row">
      <div class="col-xs-2 col-xs-offset-5">
	 <img src="/class5/resource/images/logo.png" alt="" style="width: 100px;height: 60px" />
      </div>
      <div class="col-xs-3 col-xs-offset-2 phone" style="text-align: right;">
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

<div class="container-fluid">
	<div class="panel panel-default"> 
	<!-- Default panel contents --> 
	<div class="panel-heading"><h2>Write</h2></div> 
	
		<div class="panel-body">
		
		<div class="container"> 
			<form action="" method="post">  
			
			<form role="form"> 
					
				<div class="row"> 
				<div class="col-md-6"> 
				<div class="form-group"> 
				<label for="name">NAME</label> 
				<input type="text" class="form-control" name="name" id="name" placeholder="Enter name"> 
				</div> 
				</div> 
				
		
				<div class="col-md-6"> 
					<div class="form-group"> 
						<label for="pass">Password</label> 
						<input type="password" class="form-control" name="pass" id="pass" placeholder="Enter password"> 
					</div> 
				</div> 
				
				</div>  
				
				<div class="form-group"> 
					<label for="email">Email address</label> 
					<input type="email" class="form-control" name ="email" id="email" placeholder="Enter email"> 
				</div> 
				
				<div class="form-group"> 
					<label for="subject">Title</label> 
					<input type="text" class="form-control" name ="subject" id="subject" placeholder="Enter title"> 
				</div> 
				
				<div class="form-group"> 
					<label for="content">Comment:</label> 
					<textarea class="form-control" rows="10" name="content" id="content">
					</textarea> 
				
				<div class="form-group"> 
					<label for="File">파일</label> 
					<input type="file" id="File"> 
				</div> 
				
				<div class="center-block" style='width:300px; float:left;'> 
					<input type="submit" class="btn" value="저장하기">
					<input type="reset"  class="btn" value="다시쓰기"> 
					<input type="button" class="btn" value="뒤로가기" onclick="history.back(1)">
				</div> 
			
			</div> 
		</div> <!--panel end--> 
	</div> 

</div> 
</div>
</body>
</html>
