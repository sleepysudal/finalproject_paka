<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Nanum+Pen+Script&family=Noto+Serif+KR:wght@200&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="container text-center">
		<div class="row">
			<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
				<div class="card card-signin my-5">
					<div class="card-body">
						<h5 class="card-title text-center"><b>Log In</b></h5>
						<form class="form-signin " method="post" action="login">
							<div class="form-label-group">
								<input type="text" id="id" name="id" class="form-control"
									placeholder="id" required autofocus>
							</div>
							<br>

							<div class="form-label-group">
								<input type="password" id="pwd" name="pwd" class="form-control"
									placeholder="Password" required>
							</div>

							<hr>

							<div class="form-label-group">
								<c:if test="${check == 1 }">
									<label>${message }</label>
								</c:if>
							</div>

							<button class="btn btn-lg btn-secondary btn-block text-uppercase"
								type="submit">Sign in</button>
								
								<br>
							
							<button type="button" style="border:2px solid white; background-color:white">
								<img src="../img/naverlogo.png" style="width:13.6vh; height:6.1vh;">
							</button>
							
							<button type="button" style="border:2px solid white; background-color:white">
								<img src="../img/kakaologo.png" style="width:13.6vh; height:6.1vh;">
							</button>
							
							<hr class="my-4">
							Forgot your <a href="javascript:void(0)" onclick="findid()">ID</a>
							or <a href="javascript:void(0)" onclick="findpassword()">Password</a>?
							<button class="btn btn-lg btn-dark btn-block text-uppercase"
								onclick="location='/member/join'">Join</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">	
  function findid(){
		var url="find_id_form";
		
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
	}
  
  function findpassword(){
	  var url="find_password_form";
	  
	  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
  }
  </script>

</body>
</html>