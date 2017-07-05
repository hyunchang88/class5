<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 로그인후 리다일렉트 이동할  url 주소를 읽어온다.
	String url=request.getParameter("url");
	if(url==null){
		url=request.getContextPath();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/users/signin_form.jsp</title>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
</head>
<body>

<div class="container">
	<h3>로그인 페이지 입니다.</h3>
	
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<!-- <h3>칼럼안에 있는 form</h3> -->
			<form action="signin.jsp?url=<%=url %>" method="post">
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
<!-- 			<div class="form-group">
				<label for="file">첨부파일</label>
				<input type="file" class="form-control" id="file">
				<p class="help-block">크기 19Mbyte 이하의 파일 선택</p>
			</div> -->
			<div class="checkbox">
				<label>
					<input type="checkbox"> 아이디 저장
				</label>
			</div>
			<button type="submit" class="btn btn-primary">로그인</button>
			<button type="reset" class="btn btn-warning"  onclick="location.href='../index.jsp'">뒤로</button>
		</form>
		</div>
	</div>
</div>

</body>
</html>