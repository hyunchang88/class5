<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 폼 전송되는 파라미터 값이 자동으로 UsertsDto 객체에 들어가도록 --%>
<jsp:useBean id="dto" class="test.users.dto.UsersDto" />
<jsp:setProperty property="*" name="dto"/>
<%
	// 폼전송된 파라미터가 담겨 있는 UserDto 객체를 인자로 전달해서
	// DB에 저장하기
	boolean isSuccess=UsersDao.getInstance().insert(dto);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/users/signup.jsp</title>
<!-- bootstrap.css 로딩하기 -->
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
</head>
<body>
<script src="../resource/js/jquery-3.2.0.js"></script>
<%if(isSuccess){ %>
	<script>
		alert("가입 성공");
		location.href="signin_form.jsp";
	</script>
<%}else{%>
	<script>
		alert("가입 실패");
		location.href="signup_form.jsp";
	</script>
<%} %>
</body>
</html>