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
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Insert title here</title>



<script type="text/javascript">
   $(function(){
      $("#search").keyup(function(){
         
         var search=$(this).val();
         //alert(search);
         
         $.ajax({
            type:"get",
            dataType:"json",
            url:"/search/result",
            data:{"search":search},
            success:function(res){
               /* $("#search" ).autocomplete({
                    source: res,
                    //minLength:1
            }); */
               
               
 
               var s="";
               
               $.each(res,function(i,dto){
                  s+="<span class='spsearchResult'><b onclick='selectSearch()' class='searchResult'style='font-size: 15pt;'>"+dto+"</b></span><br>"
               });
               
               if(search==""){
                  $("#result").html("");
               }
               else{
                  $("#result").html(s);
                  
                  //alert($("#result").text())
               } 
            }
         });
         
      });


       $("#search").keypress(function(e){
         //검색어 입력 후 엔터키 입력하면 조회버튼 클릭
         if(e.keyCode && e.keyCode == 13){
            $("#btnsearch").trigger("click");
            return false;
         }
         //엔터키 막기
         if(e.keyCode && e.keyCode == 13){
              e.preventDefault();     
         }
      });

      $("#btnsearch").click(function(){
         alert("이벤트 감지");
      });
   });
   
   function selectSearch() {
       $(document).on("click","b.searchResult",function(event){
          var s=$(this).html();
          //alert(s);
          
          $("#search").val(s);
          $("#result").html("");
          
       });
    }
   
   /*  $(document).on("keydown","#search", function(e){
      if(e.which == 40){
        var currentResult = $(".searchResult:eq(0)");
        
        currentResult.css("background-color", "lightgray");
         
          for(var i=0; i<5; i++){
            
           var currentResult = $(".searchResult:eq(" + i + ")");
           var color = currentResult.css("color");
           
           //alert(color)
            
           if(color==="rgb(33, 37, 41)"){
             
              currentResult.css("background-color", "lightgray");

               if (i > 0) {
                     $(".searchResult:eq(" + (i - 1) + ")").css("background-color", "white");
                 }  
            }
         }  
            
      }
   });  */
    
    document.addEventListener('keydown', function(event) {
        switch(event.key) {
             case 'ArrowUp':
                // 위쪽 방향키 눌렸을 때의 동작
                //console.log('Up key pressed');
               $(".searchResult:eq(0)").css("background-color","red");
                break; 
            case 'ArrowDown':
                // 아래쪽 방향키 눌렸을 때의 동작
               // console.log('Down key pressed');
                $(".searchResult:eq(0)").css("background-color","blue");
                break;
            
        }
    });
    

   
   
   
   
    $(document).on("mouseover",".searchResult", function(event){
      $(this).css("background-color", "lightgray");
   });
   
   $(document).on("mouseout",".searchResult", function(event){
      $(this).css("background-color", "white");
   });    
</script>
<style type="text/css">
.searchResult{
   cursor: pointer;
}

.selected{
   background-color: lightgray;
}

nav{
   font-size: 1.5em;
}
</style>
</head>
<body>
   <!-- Navigation-->
   <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container px-4 px-lg-3">
         <a class="navbar-brand" href="/">
            <img alt="" src="../img/icon.PNG" style="width: 20vh;"> 
         </a>
         <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
               <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
               <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Fleamarket</a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li><a class="dropdown-item" href="/index2">All Products</a></li>
                     <li><hr class="dropdown-divider" /></li>
                     <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                     <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                  </ul></li>
            </ul>
            
            

            <!-- 검색창 -->
            <div class="input-group w-25" >
               <input type="search" class="form-control rounded"
                  placeholder="Search" aria-label="Search"
                  aria-describedby="search-addon" id="search" /> <!-- autocomplete="off" -->
               <button type="button" id="btnsearch" class="btn btn-dark" onclick="location.href='/loginform'">search</button>
               
               
            </div>
            <div id="result"></div>
            

            <!-- 장바구니 -->
            <!-- <form class="d-flex">
               <button class="btn btn-outline-dark" type="submit">
                  <i class="bi-cart-fill me-1"></i> Cart <span
                     class="badge bg-dark text-white ms-1 rounded-pill">0</span>
               </button>
            </form> -->
         </div>
         
      </div>

   </nav>
         
</body>
</html>