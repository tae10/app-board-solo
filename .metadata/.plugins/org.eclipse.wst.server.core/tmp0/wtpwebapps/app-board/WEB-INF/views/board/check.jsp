<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/check-task">
	<input type="hidden" name="caseCheck" value="${caseCheck }"/>
	<input type="hidden" name="boardId" value="${boardId }"/>
		<div class="root">
			<h1>��й�ȣ�� �Է����ּ���.</h1>
			<input type="password" placeholder="��й�ȣ" name="pass"/>
			<button>����</button>
			<c:if test="${param.cause eq 'error' }">
				<p>��й�ȣ�� Ʋ�Ƚ��ϴ�.</p>
			</c:if>
		</div>
	</form>
</body>
</html>