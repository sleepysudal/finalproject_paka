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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style>
.bottom-border{
border-width: 0 0 1px;
}
</style>
<script type="text/javascript">
$(function(){
    $("#checkbox1").click(function(){
        if ($(this).prop("checked")) {
            $("#btnjoin").css("background-color", "gray");
         // 체크되면 버튼을 활성화
            $("#btnjoin").prop("disabled", false);
        } else {
            $("#btnjoin").css("background-color", "lightgray");
         // 체크 해제되면 버튼 비활성화
            $("#btnjoin").prop("disabled", true);
        }
    });
    
    $("")
});
/*
document.addEventListener('keydown', function(event) {
    switch(event.key) {
        case 'ArrowUp':
            // 위쪽 방향키 눌렸을 때의 동작
            //console.log('Up key pressed');
           $("#btntest").css("background-color","red");
            break;
        case 'ArrowDown':
            // 아래쪽 방향키 눌렸을 때의 동작
           // console.log('Down key pressed');
            $("#btntest").css("background-color","blue");
            break;
        
    }
}); */


//폼 제출 전 체크 함수
function check() {
    // 여기에 추가적인 체크 로직을 넣을 수 있습니다.
    return true; // 예제로서 항상 true를 반환하도록 설정
}
</script>
</head>
<body>
 <!-- onsubmit return 값이 false면 안넘겨줌 -->
	<div style="margin:100px 500px; width: 40vw; height:100vh;"  >
		<form action="insert" method="post" enctype="multipart/form-data" onsubmit="return check()">
			<h1>회원가입</h1>
			<br>
			<!--  u_id , u_name ,u_email, u_pass, u_writerdate , u_final_logindate -->
			 <div>
			 <h5>Id</h5>
			 	<div>
			 	<input type="text" placeholder="id를 입력해주세요" required="required" class="bottom-border" style="width:40vw; height:4vh;">
			 	</div>
			 </div>
			 
			 <br><br>
			 
			 <div>
			 <h5>Pass</h5>
			 	<div>
			 	<input type="password" placeholder="영문,숫자,특수문자 조합 8~16자" required="required" class="bottom-border" style="width:40vw; height:4vh;">
			 	</div>
			 </div>
			 
			 <br><br>
			 
			 <div>
			 <h5>Name</h5>
			 	<div>
			 	<input type="text" placeholder="이름을 입력해주세요" required="required" class="bottom-border" style="width:40vw; height:4vh;">
			 	</div>
			 </div>
			 
			 <br><br>
			 
			 <div>
			 <h5>Email</h5>
			 	<div>
			 	<input type="text" placeholder="예)example@gmail.com" required="required" class="bottom-border" style="width:40vw; height:4vh;">
			 	</div>
			 </div>
			 
			 <br><br>
			 
			 <div>
			 	<label>
			 	<input type="checkbox" id="checkbox1">
			 	<span>[필수] 만 14세 이상이며 모두 동의합니다.</span>
			 	</label>
			 	<i class="bi bi-plus" style="font-size:20pt;"></i>
			 </div>
			 
			 
			 <br>
			 
			 <div>
			 	<label>
			 	<input type="checkbox" id="checkbox2">
			 	<span>[선택] 광고성 정보 수신에 모두 동의합니다.</span>
			 	</label>
			 	<i class="bi bi-plus"></i>
			 </div>
			 
			 <br>
			 
			 <button type="button" id="btnjoin" style="align:center; width:40vw; height:10vh; border-radius: 30px; border: 0px; font-size: 20pt; color: white; background-color: lightgray"
			 onclick="location.href='#'">
			 가입하기
			 </button>
			 
			 <br><br>
			 
			 
			 
			 
			 
		</form>
	</div>
</body>
</html>