<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="dto" class="acorn.member.MemberDto"/>
<jsp:setProperty property="*" name="dto"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>/member/memberList.jsp</title>
	<link rel="stylesheet" href="../resource/css/bootstrap.css" />
</head>

<body>
	<div class="container-fluid">
		<div class="row contents">
			<div class="col-xs-10  col-sm-offset-1">
				<h3>[ 회원 리스트 화면 ]</h3>

				<table id="memberList" border="1" cellspacing="0">
					<caption>회원목록</caption>

					<colgroup>
						<col width="100"/>
						<col width="100"/>
						<col width="100"/>
						<col width="100"/>
						<col width="100"/>
						<col width="200"/>
						<col width="200"/>
						<col width="100"/>
						<col width="100"/>
					</colgroup>

					<thead style="text-align:center;">
						<tr style="height:40px;">
							<th>아이디</th>
							<th>이름</th>
							<th>비밀번호</th>
							<th>회사번호</th>
							<th>회사이름</th>
							<th>회원등급</th>							
							<th>이메일</th>
							<th>핸드폰</th>
							<th>작업지역</th>
							<th>가입일자</th>
						</tr>
					</thead>

					<tbody id="memberList">
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
