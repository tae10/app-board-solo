<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>welcome page</title>
<link rel="stylesheet" href="/resource/css/style.css?${millis }" />
</head>
<body>
	<h1 style="text-align: center;">WELLCOME PAGE</h1>

	<div>
		<c:choose>
			<c:when test="${sessionScope.logon }">
				<a href="/logout">�α׾ƿ�</a>
			</c:when>
			<c:otherwise>
				<a href="/login">�α���</a>
			</c:otherwise>
		</c:choose>
	</div>
	
	<div style="text-align: center;">
	 <a href="/board">�Խñۺ�������</a>
	</div>

</body>
</html>