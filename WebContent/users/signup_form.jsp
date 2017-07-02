<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/users/signup_form.jsp</title>
<!-- bootstrap.css 로딩하기 -->
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<h3>회원 가입 페이지 입니다.</h3>
			<form action="signup.jsp" method="post">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" class="form-control" name="id" id="id" />
				<!-- form-group 안에 form-control 로 작성하면 레이블 밑에 input 요소가 자동으로 정렬되(원래는 옆으로 붙어) -->
				<!-- <p class="help-block">반드시 입력하세요</p> -->
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<input type="password" class="form-control" name="pwd" id="pwd" />				
			</div>
			
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" class="form-control" name="email" id="email" /><br/>		
			</div>
	
			<div class="checkbox">
				<label>
					<input type="checkbox"> 아이디 저장
				</label>
			</div>
			<button type="submit" class="btn btn-primary">가입</button>
			<button type="reset" class="btn btn-warning"  onclick="location.href='../index.jsp'">뒤로</button>
		</form>
		</div>
	</div>
</div>

<script src="../resource/js/jquery-3.2.0.js"></script>

</body>
</html>