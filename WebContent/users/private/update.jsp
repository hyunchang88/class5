<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="test.users.dto.UsersDto"/>
<jsp:setProperty property="*" name="dto"/>
<%
/* 	String id=request.getParameter("id"); 이 아이디는 업데이트 폼에서 name과 같아야함
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
		
	//UsersDto 객체에 담긴 내용을 이용해서 수정 반영한다.
	UsersDto dto=new UsersDto();
	dto.setMemberId(id);
	dto.setMemberPwd(pwd);
	dto.setMemberEmail(email); */
		
	UsersDao.getInstance().update(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/users/private/update.jsp</title>
</head>
<body>
<p><%=dto.getMemberId() %> 회원님 정보를 수정했습니다.</p>
<a href="info.jsp">확인</a>
</body>
</html>