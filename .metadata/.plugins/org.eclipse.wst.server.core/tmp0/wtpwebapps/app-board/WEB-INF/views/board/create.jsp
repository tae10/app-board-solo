<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/style.css?${millis }" />
</head>
<body>
	<div>
		<form action="/create-task" autocomplete="off">
			<div class="sign-form labe">
				제목 :<input  type="text" name="title" placeholder="제목">
			</div>
			<div>
				내용:<input style="height:200px" class="container" type="text" name="content" placeholder="내용" >
			</div>
			<c:if test="${empty sessionScope.logonUser }">
				<div>
					<input style="width:300px" type="text" name="writer" placeholder="작성자"> 
					<input style="width:300px" type="text" name="boardPass" placeholder="비밀번호">
				</div>
			</c:if>
			<button id="btn-dark" type="submit">등록</button>
		</form>
	</div>
</body>
</html>