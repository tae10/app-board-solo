<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/style.css?${millis }" />
</head>
<body >
 <div>
        <form action="login-task">
            <input type="text" placeholder="���̵�" class="in" name="id">
            <input type="password" placeholder="��й�ȣ" class="in" name="pass">
            <input type="submit" id="btn" value="�α���"><br>
        </form>
    </div>
   <c:if test="${param.error eq 'different' }">
     <span style="color: red"> �Է��� �߸��Ǿ����ϴ�   </span> 
   </c:if>
    <c:if test="${param.error eq 'null' }">
     <span style="color: red">  DB�� �����ϴ�   </span> 
   </c:if>
</body>
</html>