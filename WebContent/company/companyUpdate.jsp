<%@page import="acorn.company.CompanyDao"%>
<%@page import="acorn.company.CompanyDto"%>
<%@page import="acorn.member.MemberDao"%>
<%@page import="acorn.member.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 에 id 라는 키값으로 저장된 값이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
	System.out.println(id);
	MemberDto dto=MemberDao.getInstance().getData(id);
	System.out.println("요기");
	int num = dto.getCompanyNo();
	System.out.println(num); %>
	<% if(num==0){ %>
		<script>
		alert("당신은 접근할 권한이 없습니다.")
		location.href="../index.jsp";
		</script>
	<%} %>
	
<%	   // 수정할 글번호를 읽어온다.
	CompanyDto dto2 = CompanyDao.getInstance().getData(num); %>
<% 	if(dto2==null){%>
		<script>
		alert("당신은 접근할 권한이 없습니다.")
		location.href="../index.jsp";
		</script>
<%	}%>
<%	System.out.println("요기3");
	   // 수정할 글의 자세한 정보를 얻어온다.
%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateform.jsp</title>
</head>
<body>
<body>
	<jsp:include page="../navbar.jsp" ></jsp:include>
	<div class="container" style="margin-top:100px">
	<div style="text-align:center">
		<img src="holder.js/300x200" alt="" />
	</div>
	<h3>회사 정보 수정 페이지입니다.</h3>
	<form action="update.jsp" method="post">
      <input type="hidden" name="companyno" value="<%=dto2.getCompanyNo() %>"/>
      
      <label for="companyno">회사번호</label>
      <input type="text" id="companyNo" value="<%=dto2.getCompanyNo() %>" disabled="disabled"/><br/>
      
      <label for="companyname">회사명</label>
      <input type="text" name="companyname" id="companyName" value="<%=dto2.getCompanyName() %>" disabled="disabled"/><br/>
      
      <label for="companyceoname">대표명</label>
      <input type="text" name="companyceoname" id="companyCeoname" value="<%=dto2.getCompanyCeoname() %>"/><br/>
      
      <label for="companyceophone">대표연락처</label>
      <input type="text" name="companyceophone" id="companyCeoPhone" value="<%=dto2.getCompanyCeoPhone() %>"/><br/>
      
      <label for="workarea">지역</label>
      <input type="text" name="workarea" id="workArea" value="<%=dto2.getWorkArea() %>"/><br/>
      
	  <label for="workno">대표연락처</label>
      <input type="text" name="workno" id="workNo" value="<%=dto2.getWorkNo() %>"/><br/>	 
      
      <button type="submit">수정확인</button>
      <button type="reset">취소</button>
   </form>	

	<p style="text-align:right; margin-right:100px; font-size:20px">
		<a href="companyList.jsp" >전 화면으로</a>
	</p>
</div>
</body>
</html>