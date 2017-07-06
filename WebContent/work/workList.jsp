<%@page import="acorn.work.dao.WorkDao"%>
<%@page import="java.util.List"%>
<%@page import="acorn.work.WorkDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //session 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다.
   String id=(String)session.getAttribute("id");
   //context 경로
   String cPath=request.getContextPath();
  
	//글목록 얻어오기
	WorkDao dao=WorkDao.getInstance();
	List<WorkDto> list=dao.getList();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<!--<meta name="viewport" content="width=1000px" />-->
<title>index.html</title>

<link rel="stylesheet" href="../resource/css/bootstrap.css" />

<link rel="stylesheet" href="../resource/css/font-awesome.css"/>

<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>

<link rel="stylesheet" href="../resource/css/jquery.bxslider.css" />

<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>

<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->

<script type="text/javascript" src="../resource/js/jquery.bxslider.min.js"></script>


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

<!-- <h3>navbar 위치할 공간</h3> -->
<jsp:include page="../navbar.jsp" ></jsp:include>


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
         <img src="../resource/images/logo.png" alt="" style="width: 100px;height: 60px" />
      </div>
      <div class="col-xs-3 col-xs-offset-2 phone" style="text-align: right;">
         <i class="fa fa-phone"></i>1600-3069
      </div>
   </div>
</div> 



<div class="container">
   <div class="row">
   	  <div class="col-xs-2">
   	  		<a href="workInsert.jsp">새글쓰기</a>
   	  </div>
      <div class="col-xs-8">
         <ul class="bxslider" id="bx">
           <li><img src="../resource/images/1.jpg" /></li>
           <li><img src="../resource/images/2.jpg" /></li>
           <li><img src="../resource/images/3.jpg" /></li>
           <li><img src="../resource/images/4.jpg" /></li>
           <li><img src="../resource/images/5.jpg" /></li>
           <li><img src="../resource/images/6.jpg" /></li>
         </ul>
      </div>   
   </div>

   <div class="row">
      <div class="col-xs-6 col-xs-push-3">
         <table class="table table-striped" style="text-align:center">
          <% 		for(WorkDto tmp: list){ %>
         	<tr>
               <td>번호 :</td>
               <td><%=tmp.getWorkno() %></td>
            </tr>
            <tr>
               <td>공사명 :</td>
               <td><%=tmp.getWorkName() %></td>
            </tr>
            <tr>
               <td>공사구분 :</td>
               <td><%=tmp.getWorkDesc() %></td>
            </tr>
            <tr>
               <td>공사면적 :</td>
               <td><%=tmp.getWorkspace() %></td>
            </tr>
            <tr>
               <td>공사지역 :</td>
               <td><%=tmp.getWorkarea() %></td>
            </tr>
            <tr>
               <td>공사기간 :</td>
               <td><%=tmp.getWorkterm() %></td>
            </tr>
            <tr>
               <td>시공방법 :</td>
               <td><%=tmp.getWorkhow() %></td>
            </tr>
            <tr>
               <td>시공업체 :</td>
               <td><%=tmp.getWorkcompany() %></td>
            </tr>
            <tr>	
				<td><a href="detail.jsp?num=<%=tmp.getWorkno() %>"><%=tmp.getWorkName() %></a></td>
				<td><a href="updateform.jsp?num=<%=tmp.getWorkno()  %>">수정</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getWorkno()  %> ">삭제</a></td>
			</tr>
           <%} %> 
         </table>
      </div>   
   </div>   
   <div class="row text-center">
   		<ul class="pagination" style="display:inline-block;">
   			<li class="disabled"><a href="javascript:">&laquo;</a></li>
   			<li><a href="">1</a></li>
   			<li><a href="">2</a></li>
   			<li><a href="">3</a></li>
   			<li><a href="">4</a></li>
   			<li><a href="">5</a></li>
   			<li><a href="#">&raquo;</a></li>
   		</ul>
   </div>
</div>
<script>
	$(document).ready(function(){
		  $('.bxslider').bxSlider();
		});
	
	var members=[]
	members.push("../resource/images/1.jpg")
	members.push("../resource/images/2.jpg")
	members.push("../resource/images/3.jpg")
	members.push("../resource/images/4.jpg")
	members.push("../resource/images/5.jpg")
	members.push("../resource/images/6.jpg")
	bx-pager-item
	//현재 인덱스값을 관리 할 변수 
	var currentIndex=0;
	
	var slider = $('.bxslider').bxSlider({
	    pagerCustom: '#bx-pager'
	});

	$('a.pager-prev').click(function () {
	    var current = slider.getCurrentSlide();
	    slider.goToPrevSlide(current) - 1;
	});
	$('a.pager-next').click(function () {
	    var current = slider.getCurrentSlide();
	    slider.goToNextSlide(current) + 1;
	});


</script>

</body>
</html>
