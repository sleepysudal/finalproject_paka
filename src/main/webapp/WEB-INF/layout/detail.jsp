<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="space-between container w-50 h-25">
		<div style="display: flex;">
			<div id="article-profile-image">
				<img alt="달달이"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-c649f052a34ebc4eee35048815d8e4f73061bf74552558bb70e07133f25524f9.png">
			</div>
			<div id="article-profile-left">
				<div id="nickname">달달이</div>
				<div id="region-name">성동구 행당제2동</div>
			</div>
			<div style="margin-left: auto; margin-top: 5vh;">
				<button class="btn btn-dark" onclick="location.href='chatRoom'">채팅</button>
				<button class="btn btn-primary" onclick="location.href='index3/chat'">챗테스트</button>
			</div>
			
		</div>
		<div id="article-profile-right">
			
			<!-- <dl id="temperature-wrap">				
				<dt>매너온도</dt>
				<dd class="text-color-03 ">
					37.2 <span>°C</span>
				</dd>
			</dl>
			<div class="meters">
				<div class=" bar bar-color-03" style="width: 37%;"></div>
			</div>
			<div class=" face face-03"></div> -->
		</div>
		<hr>
	
		<div>
			<b>다이슨 청소기 </b><br>
			<small class="text-secondary">디지털 기기</small><br>
			<b>15,000원</b><br><br>
			<div>
				<p>
					청소기 팝니다. 기능엔 전혀 문제 없습니다!<br>
					사진애 보이는 동그란 파란 부분에 흠이 있습니다.
				</p>
			</div>
			<div>
				<small class="text-secondary">관심 12 채팅 5 조회 412</small>
			</div>
			<br>
			<hr>
		</div>	
		
	</div>
	
	

</body>
</html>