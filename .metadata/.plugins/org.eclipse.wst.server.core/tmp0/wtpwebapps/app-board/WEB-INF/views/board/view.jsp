<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/board.css?${millis }" />
</head>
<body>
	<div>
		<h1 align="center">게시판</h1>
		<div class="btn">
			<a href="/create"><button>글쓰기</button></a>
			<a href="/logout"><button>로그아웃</button></a>
		</div>
		<div align="center">
			<form action="/board">
				<select name="sort">
					<option value="writed">등록순</option>
					<option value="likes">추천순</option>
					<option value="views">조회순</option>
				</select>
				<button type="submit">조회</button>
			</form>
     	</div>
		<br />
	</div>
	<table class="board-table">
		<tr class="page-title" align="left">
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>작성일</th>
			<th>조회</th>
			<th>추천</th>
		</tr>
		<c:forEach items="${list }" var="li">
			<tr class="board-table th">
				<td>${li.boardId }</td>
				<td><a href="/detail?boardId=${li.boardId }">${li.title } </a></td>
				<td>${li.writer }</td>
				<td>${li.writed }</td>
				<td>${li.views }</td>
				<td>${li.likes }</td>
			</tr>
		</c:forEach>
	</table>
	<div style="padding-top: 22px; text-align: center;">
		<c:set var="currentPage" value="${empty param.page ? 1: param.page }" />
		<c:if test="${existPrev }">
			<a href="/board?page=${start -1 }">◁</a>
		</c:if>
		<c:forEach begin="${start }" end="${last }" var="p">
			<c:choose>
				<c:when test="${p eq currentPage }">
					<b style="color: green">${p }</b>
				</c:when>
				<c:otherwise>
					<a href="/board?page=${p }">${p }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${existNext }">
			<a href="/board?page=${last + 1 }">▷</a>
		</c:if>
	</div>
</body>
</html>