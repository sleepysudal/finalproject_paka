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
	<section class="py-3">
		<div
			class="row gx-5 gx-lg-6 row-cols-3 cols-md-6 justify-content-center">
			<h3>상품정보 입력</h3>
		</div>
		<div
			class="row gx-5 gx-lg-6 row-cols-3 cols-md-6 justify-content-center">
			<form action="p_insert" method="post" enctype="multipart/form-data">
				<div class=form-control>
					<div class="Product_category">
						<div>카테고리</div>
						<div class="insert_content">
							<select name="P_category" class="form-control">
								<option value="mobile">모바일</option>
								<option value="digital">디지털</option>
								<option value="computer">컴퓨터/주변기기</option>
								<option value="camera">전자제품/카메라</option>
								<option value="leisure">스포츠/레저</option>
								<option value="w_clothing">여성의류</option>		<!-- women's clothing -->
								<option value="m_clothing">남성의류</option>		<!-- men's clothing -->
								<option value="c_clothing">아동의류</option>		<!-- children's clothing -->
								<option value="beauty">뷰티/미용</option>
								<option value="food">식품</option>
								<option value="hobby">취미</option>
								<option value="c_goods ">굿즈/수집품</option>		<!-- Collectible_goods -->
								<option value="h_goods">생활용품</option>			<!-- Household_goods -->
								<option value="m_goods">잡화용품</option>			<!-- miscellaneous goods -->
								<option value="cm_goods">아동잡화</option>			<!-- Children's miscellaneous goods -->								
								<option value="interior">가구/인테리어</option>
								<option value="pet">반려동/식물</option>
								<option value="etc">기타</option>
							</select>
						</div>
					</div>
					<div class="Product_title">
						<div>제목		</div>
						<div class="insert_content">
							<input type="text" name="P_title" class="form-control" placeholder="제목을 입력해주세요"
								required="required">
						</div>					
					</div>	
					<div class="Product_name">
						<div>상품명	</div>
						<div class="insert_content">
							<input type="text" name="P_name" class="form-control" placeholder="상품명을 입력해주세요"
								required="required">
						</div>
					</div>					
					<div class="Product_price">
						<div>판매금액	</div>
						<div class="insert_content">
							<input type="number" name="P_price" class="form-control" placeholder="금액을 입력해주세요"
								required="required">
						</div>
					</div>					
					<div class="Product_file">
						<div>사진</div>
						<div class="insert_content">
							<input type="file" name="file" class="form-control" multiple="multiple">
						</div>
					</div>
					<div class="Product_content">
						<textarea name="p_content" class="form-control"></textarea>
					</div>
					<hr>
					<div align="center">
						<button type="submit" class="btn btn-outline-dark mt-auto" style="width: 150px;">저장</button>
						<button type="button" onclick="location.href='/'"
							style="width: 150px;" class="btn btn-outline-dark mt-auto">목록으로 이동</button>
					</div>
				</div>
			</form>
		</div>
	</section>
</body>
</html>