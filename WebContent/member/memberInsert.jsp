<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>memberInsert.jsp</title>
	<link rel="stylesheet" href="/css/bootstrap.css"/>
</head>

<body>
	<div class="container-fluid">
		<div class="row headerMenu">
			<div class="col-xs-12">headerMenu</div>
		</div>

		<div class="row headerTitle">
			<div class="col-xs-12">
				<a href="/index.html">koreabin.com</a>
			</div>
		</div>

		<div class="row menuBar">
			<div class="col-xs-8 col-xs-offset-2 mainMenu">
				<ul class="mainMenuUl">
					<li class="mainMenuLi">
						<a href="/myForm/memberForm.html">회원가입</a>
					</li>
					<li class="mainMenuLi">
						<a href="/myForm/loginForm.html">로그인</a>
					</li>
					<li class="mainMenuLi">
						<a href="/myForm/memberList.html">회원가입 현황</a>
					</li>
					<li class="mainMenuLi">
						<a href="/myForm/menu4000.html">메뉴-4000</a>
					</li>
					<li class="mainMenuLi">
						<a href="/myForm/menu5000.html">메뉴-5000</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="mainDiv">
		<div class="row contents">
			<div class="col-xs-3 leftContents">
				<div class="leftForm"></div>
			</div>
			<div class="col-xs-6 mainContents">
				<form id="memberForm" action="/memberJoinAction" method="post">
				
					<div class="row col-xs-6 mainForm">
						<h3>[ 회원가입 화면 ]</h3>

						<div class="form-group">
							<label for="name">이름</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="필수 입력사항입니다." />
							<p class="help-block">이름은 필수 입력사항입니다.</p>
						</div>
						<div class="form-group">
							<label for="id">아이디</label>
							<input type="text" class="form-control" id="id" name="id" placeholder="필수 입력사항입니다." />
							<p class="help-block">아이디는 (6~30)글자 입니다.</p>
						</div>
						<div class="form-group">
							<label for="pwd">비밀번호</label>
							<input type="password" class="form-control" id="pwd" name="pwd" placeholder="필수 입력사항입니다." />
							<p class="help-block">(영문+숫자) 6글자 이상입니다.</p>
						</div>
						<div class="form-group">
							<label for="pwd2">비밀번호확인</label>
							<input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="필수 입력사항입니다." />
							<p class="help-block">입력한 비밀번호와 다릅니다.</p>
						</div>
						<div class="form-group">
							<label for="email">이메일</label>
							<input type="text" class="form-control" id="email"/>
							<p class="help-block">이메일 형식(darami@naver.com)</p>
						</div>
					</div>

					<div class="row col-xs-6 mainForm">
						<h3>&nbsp;</h3>

						<div class="form-group">
							<label for="phoneNo">전화번호</label>
							<input type="text" class="form-control" id="phone" name="phone"/>
							<p class="help-block">전화번호 형식(032-5655-2413)</p>
						</div>
						<div class="form-group">
							<label for="mobileNo">핸드폰번호</label>
							<input type="text" class="form-control" id="mobile" name="mobile"/>
							<p class="help-block">핸드폰번호 형식(010-4912-5632)</p>
						</div>
						<div class="form-group">
							<label for="postNo">우편번호</label>
							<input type="text" class="form-control" id="postNo" name="postNo"/>
							<p class="help-block">우편번호 형식(69243)</p>
						</div>
						<div class="form-group">
							<label for="address">주소</label>
							<input type="text" class="form-control" id="address" name="address"/>
							<p class="help-block">세부 주소만 입력합니다.</p>
						</div>
						<div class="form-group">
							<label for="birthday">생년월일</label>
							<input type="text" class="form-control" id="birthday" name="birthday"/>
							<p class="help-block">생년월일 형식(2017-04-25)</p>
						</div>

						<button type="submit" class="btn btn-primary" id="saveBtn">
							<i class="glyphicon glyphicon-save"></i>&nbsp;회원가입
						</button>&nbsp;&nbsp;&nbsp;
						<button type="reset" class="btn btn-warning" id="cancelBtn">
							<i class="glyphicon glyphicon-remove"></i>&nbsp;취소
						</button>
					</div>
				</form>
			</div>
			<div class="col-xs-3 rightContents">
				<div class="rightForm"></div>
			</div>
		</div>

		<div class="row footer">
			<div class="col-xs-12 address"></div>
		</div>	
	</div>
</body>
</html>
