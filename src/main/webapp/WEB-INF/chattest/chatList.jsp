<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/chattest/createRoom" method="post">
    <input type="text" name="name" placeholder="채팅방 이름">
    <button type="submit">방 만들기</button>
</form>

<table>
    <c:forEach var="room" items="${roomList}">
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/chatRoom?roomId=${room.roomId}">
                    ${room.name}
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
