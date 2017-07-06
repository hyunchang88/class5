<%@page import="acorn.company.CompanyDao"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="acorn.company.CompanyDto" />
<jsp:setProperty property="*" name="dto" />
<%
		CompanyDao.getInstance().update(dto);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/company/update.jsp</title>
</head>
<body>
	<p>입점업체 <%=dto.getCompanyName()%>의 정보를 수정햇습니다.</p>
	<a href="companydetail.jsp?companyno=<%=dto.getCompanyNo() %>">확인</a>
</body>
</html>