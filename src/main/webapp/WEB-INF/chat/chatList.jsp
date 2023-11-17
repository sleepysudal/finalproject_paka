<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="css/chat/chatList.css" rel="stylesheet" />
<script src="js/chat/chatList.js"/>
<body>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<form id="chatList" method="post" action="chatRoom" target="chatRoom">
<div id="chatListBody">
 	<div class="chatTitle">
 		<div class="titleText">바다톡</div>
 	</div>
 	<!-- <hr class="chatTitleUnderline"> -->
 	
	<!-- hidden -->
	<div class="onlyHidden" style="display: none;"></div>
	
	<!-- 채팅방 목록 -->
	<div class="chatRoomWrap"></div>
	
</div>	
</form>
</body>