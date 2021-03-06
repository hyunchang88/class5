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
<link rel="stylesheet" href="../resource/css/bootstrap.css" />

<link rel="stylesheet" href="../resource/css/font-awesome.css"/>

<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css">

<link rel="stylesheet" href="../resource/css/jquery.bxslider.css" rel="stylesheet" />

<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->

<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>

<script type="text/javascript" src="../resource/js/jquery.bxslider.min.js"></script>

<style>
      body{
         margin: 0;
         /* 상단 fixed 된 요소에 가려진 내용을 볼수 있도록 */
         padding-top: 100px;
      }
       .log1 li a{
            padding : 5px;
         }
        /* 전화번호 */
      .phone{
         font-size: 25px;
      }
      .btn:hover {
       box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
      }
   </style>
</head>
<body>


<!-- <h3>navbar 위치할 공간</h3> -->
<jsp:include page="../navbar.jsp" ></jsp:include>


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

<script type="text/javascript">
      $('#DB_navi24').DB_naviFullWideMove({
         key:'c37080',                 //라이센스키
         pageNum:3,           //메인메뉴 페이지인식(1~)
         subNum:1,            //서브메뉴 페이지인식(1~)
         subState:false,         //메뉴활성시 서브메뉴의 오픈유무(true,false)
         motionSpeed:300,        //모션속도(밀리초)
         delayTime:100             //메뉴아웃시 되돌아가는 딜레이시간(밀리초)
      });
      
      $(document).ready(function(){
           $('.bxslider').bxSlider();
      });
</script>

<div class="container">
   <div class="row">
      <div class="col-xs-6 col-xs-push-3">
         <form action="insert.jsp" method="post">
            <table class="table table-striped" style="text-align:center">
            	<tr>
                  <td><label for="workno"></label>번호 :</td>
                  <td></td>
               </tr>
               <tr>
                  <td><label for="workname"></label>공사명 :</td>
                  <td><input type="text" id="workname" name="workname" class="form-control"/></td>
               </tr>
               <tr>
                  <td><label for="workdesc"></label>공사구분 :</td>
                  <td><input type="text" id="workdesc" name="workdesc" class="form-control" /></td>
               </tr>
               <tr>
                  <td><label for="workspace"></label>공사면적 :</td>
                  <td><input type="text" id="workspace" name="workspace" class="form-control" /></td>
               </tr>
               <tr>
                  <td><label for="workarea"></label>공사지역 :</td>
                  <td><input type="text" id="workarea" name="workarea" class="form-control" /></td>
               </tr>
               <tr>
                  <td><label for="workterm"></label>공사기간 :</td>
                  <td><select name="workterm" id="workterm" class="form-control">
                        <option value="">선택</option>
                        <option value="1week">1~2주</option>
                        <option value="2week">2~3주</option>
                        <option value="3eek">3~4주</option>
                        <option value="1month over">한달이상</option>
                     </select></td>
               </tr>
               <tr>
                  <td><label for="workhow"></label>시공방법 :</td>
                  <td><input type="text" id="workhow" name="workhow" class="form-control"/></td>
               </tr>
               <tr>
                  <td><label for="workcompany"></label>시공업체 :</td>
                  <td><input type="text" id="workcompany" name="workcompany" class="form-control"/></td>
               </tr>
             	<tr>
                  <td><label for="pic">첨부사진(파일)</label></td>
                  <td><input type="file" name="pic" id="pic" class="form-control"/></td>
               </tr> 
            </table>
            <div style="float:right";>
               <button type="submit" class="btn btn-primary">확인</button>
               <button type="reset" class="btn btn-warning">취소</button>
            </div>   
         </form>   
      </div>   
   </div>   
</div>
</body>
</html>
