<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
	//context 경로
	String cPath=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
<!-- bootstrap.css 로딩하기 -->
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<style>
		body{
			margin: 0;
			/* 상단 fixed 된 요소에 가려진 내용을 볼수 있도록 */
			padding-top: 100px;
		}
		#navbar{
			background-color: #cecece;
			color: #fff;
			/* window 기준으로 고정 위치 */
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			z-index: 100;
		}

		#navi{
			position: absolute;
			left: 0;
			width: 200px;
		}
		/* #navi2{
			position: absolute;
			right: 0;
			width: 200px;
		} */

		/* 좌우 마진 이용하기 */
		/* #content{
			margin-left: 200px;
			margin-right: 200px;
		} */
		
		

		/* 좌우 경계선 이용하기  */
		#content{
			border-left: 200px solid yellow;
			border-right: 200px solid pink;
		}
	</style>
</head>
<body>

<h3>인덱스 페이지 입니다.</h3>
<div id="navbar">
	<h3>navbar 위치할 공간</h3>
	<%if( id != null ){ %>
		<p> <strong><a href="users/private/info.jsp"><%=id %></a></strong> 회원님 로그인 중....</p>
		<a href="users/signout.jsp">로그아웃</a>
	<%} %>
</div>
<div id="navi">
		<ul>
			<li><a href="users/signup_form.jsp">회원가입</a></li>
			<li><a href="users/signin_form.jsp?url=<%=cPath%>">로그인</a></li>
			<li><a href="member/play.jsp">회원전용 공간으로 가기</a></li>
		</ul>
	</div>
	
<!-- 	<div id="navi2">
		<ul>
			<li><a href="#">One</a></li>
			<li><a href="#">Two</a></li>
			<li><a href="#">Three</a></li>
			<li><a href="#">Four</a></li>
		</ul>
	</div> -->

<div id="content">
		<h3>제목1</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
		<h3>제목2</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
		<h3>제목3</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aliquam maiores voluptates ab laudantium facere fugit quos asperiores, vel labore voluptatem, quibusdam, dolore libero dignissimos perferendis illum dolor nemo ipsum.</p>
	</div>

<script src="../resource/js/jquery-3.2.0.js"></script>

</body>
</html>