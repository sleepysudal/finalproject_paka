<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table>
	
	 <tr>
	 	<th><button type="button" onclick="location.href='n_addaction'">공지사항 추가</button></th>
	 </tr>
	 <tr>
	 	<th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>수정/삭제</th>
	 </tr>
	 
	 <c:forEach var="d_dto" items="${list }" varStatus="i">
		<tr>
			<td>${d_dto.n_num }</td>
			<td>${d_dto.n_title }</td>
			<td>${d_dto.n_name }</td>
			<td><fmt:formatDate value="${d_dto.n_registration_date }" pattern="yyyy-MM-dd HH:mm"/></td>
			<td align="center">
				<button type="button" num="${d_dto.n_num }" onclick="">수정</button>
				<button type="button" num="${d_dto.n_num }" onclick="">삭제</button>
			</td>
		</tr>
	</c:forEach>
	</table>
	
</body>
</html>