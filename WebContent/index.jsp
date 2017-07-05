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
<title>index.html</title>
<link rel="stylesheet" href="resource/css/bootstrap.css" />
<link rel="stylesheet" href="resource/css/font-awesome.css"/>
<link rel="stylesheet" href="resource/js/DB_navi24.css" type="text/css"></link>
<script type="text/javascript" src="resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script type="text/javascript" src="resource/js/jquery.DB_naviFullWideMove.min.js"></script>
<style>
		body{
			margin: 0;
			/* 상단 fixed 된 요소에 가려진 내용을 볼수 있도록 */
			padding-top: 100px;
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
		/* 로그인 회원가입 고객센터*/
	       .log1 li{
		      list-style-type: none;
		      float:left;
		      padding-right: 12px;
		   }
		 .log1 li a{
		      padding : 5px;
		   }
	     /* 전화번호 */
		.phone{
			font-size: 25px;
		}
	</style>
</head>
<body>

<h3>인덱스 페이지 입니다.</h3>
<jsp:include page="navbar.jsp" ></jsp:include>
<!-- <h3>navbar 위치할 공간</h3> -->
	<%if( id != null ){ %>
		<p> <strong><a href="users/private/info.jsp"><%=id %></a></strong> 회원님 로그인 중....</p>
		<a href="users/signout.jsp">로그아웃</a>
	<%} %>


<div id="navi">
	<ul>
		<li><a href="users/signup_form.jsp">회원가입</a></li>
		<li><a href="users/signin_form.jsp?url=<%=cPath%>">로그인</a></li>
		<li><a href="member/play.jsp">회원전용 공간으로 가기</a></li>
	</ul>
</div>

<div class="container">
	<div style="margin: 20px 0;"></div>
</div>

<div class="container">
	<div class="row">
		<div class="col-xs-2 col-xs-offset-5">
			<img src="resource/images/logo.png" alt="" style="width: 100px;height: 60px" />
		</div>
		<div class="col-xs-3 col-xs-offset-2 phone" style="text-align: right;">
			<i class="fa fa-phone"></i>1600-3069
		</div>
   </div>
</div> 



<div class="container-fluid">
	<div style="height:500px; background:url('resource/images/main.jpg') no-repeat center;"></div>
</div>
</body>
</html>
