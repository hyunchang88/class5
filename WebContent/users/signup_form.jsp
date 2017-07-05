<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<script></script>
</head>
<body>

<div class="container">
	<h3>회원가입 페이지 입니다.</h3>
	
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<!-- <h3>칼럼안에 있는 form</h3> -->
			<form action="signup.jsp" method="post">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" class="form-control" name="id" id="id" />
				<!-- form-group 안에 form-control 로 작성하면 레이블 밑에 input 요소가 자동으로 정렬되(원래는 옆으로 붙어) -->
				<p class="help-block">반드시 입력하세요</p>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<input type="text" class="form-control" name="pwd" id="pwd" />
			</div>
			<div class="form-group">
				<label for="pwd2">비밀번호 확인</label>
				<input type="text" class="form-control" name="pwd2" id="pwd2" />
			</div>
			<div class="form-group">
				<label for="memberLevel">회원등급</label>
				<input type="text" class="form-control" name="memberLevel" id="memberLevel" />
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<input type="text" class="form-control" name="name" id="name" />
			</div>
			<div class="form-group">
				<label for="phoneNum">핸드폰 번호</label>
				<input type="text" class="form-control" name="phoneNum" id="phoneNum" />
			</div>
			<div class="form-group">
				<label for="livingArea">거주지</label>
				<input type="text" class="form-control" name="livingArea" id="livingArea" />
				<p class="help-block">서울특별시 중구 다동 ....</p>
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" class="form-control" name="email" id="email" />
			</div>
			<div class="form-group">
				<label for="companyNum">시공사</label>
				<input type="text" class="form-control" name="companyNum" id="companyNum" />
			</div>
			<button type="submit" class="btn btn-primary">회원가입</button>
			<button type="reset" class="btn btn-warning"  onclick="location.href='../index.jsp'">뒤로</button>
		</form>
		</div>
	</div>
</div>

<script src="../resource/js/jquery-3.2.0.js"></script>
<script>
//폼 전송 이벤트가 일어났을때 실행할 함수 등록
$("#myForm").on("submit", function(){
	if(!isCheckId){//아이디 중복 확인 하지 않았으면
		alert("아이디 중복 확인을 하세요!");
		//$("#checkBtn").focus();
		// 폼 전송 막기
		return false;
	}else if($("#id").val()==""){
		alert("아이디를 입력하세요");
		return false;
	}else if($("#pwd").val()==""){
		alert("비밀번호를 입력하세요");
		return false;
	}else if($("#pwd2").val()==""){
		alert("비밀번호확인을 입력하세요");
		return false;
	}else if($("#name").val()==""){
		alert("이름을 입력하세요");
		return false;
	}else if($("#phoneNum").val()==""){
		alert("핸드폰번호를 입력하세요");
		return false;
	}else if($("#email").val()==""){
		alert("이메일을 입력하세요");
		return false;
	}else if($("#pwd").val()!=$("#pwd2").val()){
		alert("비밀번호를 동일하게 입력하세요");
		return false;
	}
});
</script>

</body>
</html>