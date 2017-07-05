<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>index.jsp</title>
	<link rel="stylesheet" href="resource/css/bootstrap.css"/>
	<style>
		.left, .right{
			width: 100%;
			height: 900px;
			background-color: pink;
		}
		.center{
			width: 100%;
			height: 900px;
			background-color: #0f0;
		}
	</style>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-2">
				<div class="left">left</div>
			</div>
			<div class="col-xs-8">
				<div class="center">center</div>
			</div>
			<div class="col-xs-2">
				<div class="right">right</div>
			</div>
		</div>
	</div>
</body>
</html>
