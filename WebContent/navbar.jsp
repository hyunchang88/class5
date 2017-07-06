<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
	//context 경로
	String cPath=request.getContextPath();
%>
<div class="container">
		<div class="row">
			<div class="navbar navbar-default navbar-fixed-top">
				<div class="navbar-header">
					<a href="#" class="navbar-brand"></a>
					<button class="navbar-toggle" data-toggle="collapse" data-target=".two">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<div id="DB_navi24" class="collapse navbar-collapse two">
					<div class="DB_wrap">
						<h1 style="font-weight: bold; font-family: arial;">이집닥</h1>
						<ul class="DB_main nav navbar-nav" style="color: black">
							<li><a href="#">work</a></li>
							<li><a href="#">company</a></li>
							<li><a href="#">member</a></li>
							<li><a href="#">orderRequest</a></li>
							<li><a href="#">board</a></li>
							<!-- <li><a href="#">스토어</a></li> -->
						</ul>
							
							<%if( id != null ){ %>
								<%-- <p> <strong><a href="users/private/info.jsp"><%=id %></a></strong> 회원님 로그인 중....</p> --%>
								<li><a href="users/signout.jsp">로그아웃</a></li>
							<%}else{ %>
								<li><a href="users/signup_form.jsp">회원가입</a></li>
								<li><a href="users/signin_form.jsp?url=<%=cPath%>">로그인</a></li>
							<%} %>
					</div>
					<div class="DB_mask">
						<div class="DB_move">
							<div class="DB_subSet">							
								<ul>
									<!-- work -->
									<li><a href="/class5/work/workList.jsp">리스트</a></li>
									<li><a href="/class5/work/workInsert.jsp">삽입</a></li>
									<li><a href="/class5/work/workUpdate.jsp">수정</a></li>
									<li><a href="/class5/work/workDelete.jsp">삭제</a></li>
									<li></li>
								</ul>		
								<ul><!-- company -->
									<li><a href="/class5/company/companyList.jsp">리스트</a></li>
									<li><a href="/class5/company/companyInsert.jsp">삽입</a></li>
									<li><a href="/class5/company/companyUpdate.jsp">수정</a></li>
									<li><a href="/class5/company/companyDelete.jsp">삭제</a></li>
									<li></li>
								</ul>		
								<ul>
									<li><a href="/class5/member/memberList.jsp">리스트</a></li>
									<li><a href="/class5/member/memberInsert.jsp">삽입</a></li>
									<li><a href="/class5/member/memberUpdate.jsp">수정</a></li>
									<li><a href="/class5/member/memberDelete.jsp">삭제</a></li>
								</ul>		
								<ul>
									<!-- orderRequest -->
									<li><a href="#">리스트</a></li>
									<li><a href="#">삽입</a></li>
									<li><a href="#">수정</a></li>
									<li><a href="#">삭제</a></li>
									<li></li>
								</ul>
								<ul>
									<!-- board -->
									<li><a href="#">리스트</a></li>
									<li><a href="#">삽입</a></li>
									<li><a href="#">수정</a></li>
									<li><a href="#">삭제</a></li>
									<li></li>
								</ul>
							</div>						
						</div>
					</div>
				</div>
			</div>	
		</div>
</div>
 <!-- <div id="navbar"> end-->

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
