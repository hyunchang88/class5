<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>자유게시판 글쓰기 | Kurien's Library</title>
	<link rel="stylesheet" href="resource/css/bootstrap.css" />
	<link rel="stylesheet" href="resource/css/font-awesome.css"/>
	<link rel="stylesheet" href="resource/js/DB_navi24.css" type="text/css"></link>
	<script type="text/javascript" src="resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
	<script type="text/javascript" src="resource/js/jquery.DB_naviFullWideMove.min.js"></script>
</head>
<body>
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
				
				<div class="center-block" style='width:200px'> 
				<input type="submit" class="btn" value="저장하기">
				<input type="reset"  class="btn" value="다시쓰기"> 
				<input type="button" class="btn" value="Back" onclick="history.back(1)"></div> 
			
			</div> 
		</div> <!--panel end--> 
	</div> 

</div> 
</body> 
</html>