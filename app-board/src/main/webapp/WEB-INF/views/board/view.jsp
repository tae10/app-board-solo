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
		<h1 align="center">�Խ���</h1>
		<div class="btn">
			<a href="/create"><button>�۾���</button></a>
			<a href="/logout"><button>�α׾ƿ�</button></a>
		</div>
		<div align="center">
			<form action="/board">
				<select name="sort">
					<option value="writed">��ϼ�</option>
					<option value="likes">��õ��</option>
					<option value="views">��ȸ��</option>
				</select>
				<button type="submit">��ȸ</button>
			</form>
     	</div>
		<br />
	</div>
	<table class="board-table">
		<tr class="page-title" align="left">
			<th>��ȣ</th>
			<th>����</th>
			<th>�۾���</th>
			<th>�ۼ���</th>
			<th>��ȸ</th>
			<th>��õ</th>
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
			<a href="/board?page=${start -1 }">��</a>
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
			<a href="/board?page=${last + 1 }">��</a>
		</c:if>
	</div>
</body>
</html>