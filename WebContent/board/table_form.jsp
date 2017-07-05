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

		#navi li{
		  list-style:none;
		  float:right;
		  padding-right: 10px
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
		.left{
			b
		}
		
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
		#font{
			list-style: none;	
			left:0px;
		}
		#font li{
			float:left;
			padding-right:10px;
			
		}
	</style>
</head>
<body>


<div id="navbar">
	<h3>navbar 위치할 공간</h3>
	<%if( id != null ){ %>
		<p> <strong><a href="users/private/info.jsp"><%=id %></a></strong> 회원님 로그인 중....</p>
		<a href="users/signout.jsp">로그아웃</a>
	<%} %>
		<div class="container">
	<div class="row">
		<div>
			<div id="DB_navi24">
				<div class="DB_wrap">
					<h1 style="font-weight: bold; font-family: arial;">이집닥</h1>
					<ul class="DB_main" style="color: black">
						<li><a href="#">갤러리</a></li>
						<li><a href="#">커뮤니티</a></li>
						<li><a href="#">매거진</a></li>
						<li><a href="#">파트너스</a></li>
						<li><a href="#">견적상담</a></li>
						<li><a href="#">스토어</a></li>
					</ul>
				</div>
				<div class="DB_mask">
					<div class="DB_move">
						
						<div class="DB_subSet">
							
							<ul>
								<!--이미지메뉴인 경우-->
								<li><a href="#">주거공간</a></li>
								<li><a href="#">사무공간</a></li>
								<li><a href="#">부분시공</a></li>
								<li></li>
							</ul>		
							<ul>
								<!--텍스트메뉴인 경우-->
								<li><a href="#">궁금해요</a></li>
								<li><a href="#">내방어때요</a></li>
								<li><a href="#">집닥후기</a></li>
								<li></li>
							</ul>		
							<ul>
								<li><a href="#">인테리어 팁</a></li>
								<li><a href="#">집닥맨 다이어리</a></li>
								<li><a href="#">집닥 소식</a></li>
								<li><a href="#">집닥 이벤트</a></li>
							</ul>		
							<ul>
								<li><a href="#">파트너스 목록</a></li>
								<li><a href="#">파트너스 문의</a></li>
								<li><a href="#">자료실</a></li>
								<li></li>
							</ul>
							<ul>
								<li><a href="#">상세견적상담</a></li>
								<li><a href="#">견적신청현황</a></li>
								<li><a href="#">협의확인서현황</a></li>
								<li></li>
							</ul>
							<ul>
								<li><a href="#">집닥이 야심차게<br />
							        <span style="margin: 1px"></span>준비한 특별한<br />
								 <span style="margin: 1px"></span>상품을 만나보세요</a></li>
								<li></li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>	
</div>
<div class="container">
	<div class="row">
		<div id="navi">
				<ul>
					<li><a href="users/signup_form.jsp">회원가입</a></li>
					<li><a href="users/signin_form.jsp?url=<%=cPath%>">로그인</a></li>
					<li><a href="member/play.jsp">회원전용 공간으로 가기</a></li>
				</ul>
		</div>
	</div>	
	<div class="row">
		  <div class="col-xs-2 col-xs-offset-5">
			 <img src="resource/images/logo.png" alt="" style="width: 100px;height: 60px" />
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
				<div class="col-xs-3">
					<ul class="breadcrumb">
					  <li><a href="#">공지사항</a></li>
					  <li><a href="#">전체글</a></li>
					  <li><a href="#">사진방</a></li>
					</ul>
				</div>
			</div>	
			<table class="table table-bordered">
				<thead style="background-color:#FFD0AF;">
					<tr>
						<td>번호</td>
						<td>글제목</td>
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
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
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
