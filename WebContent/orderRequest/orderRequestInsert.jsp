<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>orderRequestInsert.jsp</title>
</head>
<body>

<!-- navbar include -->
<jsp:include page="../navbar.jsp" ></jsp:include>


<div class="container" style="margin-top:300px">
	<div class="row">
		
		<div class="col-sm-6 col-sm-offset-3">
			<h3>삽입 페이지</h3>
			<form action="">
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" class="form-control" id="email">
					<!-- form-group 안에 form-control 로 작성하면 레이블 밑에 input 요소가 자동으로 정렬되(원래는 옆으로 붙어) -->
					<p class="help-block">반드시 입력하세요</p>
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label>
					<input type="password" class="form-control" id="pwd">
				</div>
				<div class="form-group">
					<label for="file">첨부파일</label>
					<input type="file" class="form-control" id="file">
					<p class="help-block">크기 19Mbyte 이하의 파일 선택</p>
				</div>
				
			</form>
			<button class="btn btn-waring previousBtn">이전</button>
			<button class="btn btn-primary nextBtn">다음</button>
		</div>
	</div>
</div>


</body>
</html>