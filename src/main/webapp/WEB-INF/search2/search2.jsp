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
   href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Nanum+Pen+Script&family=
   Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
   $(function(){
      $("#search").keyup(function(e){
         
         var search=$(this).val();
         //alert(search);
         
         $.ajax({
            type:"get",
            dataType:"json",
            url:"/search/result",
            data:{"search":search},
            success:function(res){
               var s="";
               
               $.each(res,function(i,dto){
                  
                   s+="<b onclick='selectSearch()' class='searchResult'style='font-size: 15pt;'>"+dto+"</b><br>"
                   $(document).on("keydown","#search", function(event){
                        if(event.keyCode==40){
                               $(".searchResult:eq(0)").css("background-color", "lightgray");
                            }
                   });
                });
               
               if(search==""){
                  $("#result").html("");
               }
               else{
                  $("#result").html(s);
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
   
   /* $(document).on("keydown","#search", function(event){
      if(event.keyCode==40){
         $(".searchResult").css("background-color", "lightgray");
      }
   }); */
   
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
</style>
</head>
<body>
   <div class="input-group w-25" >
      <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon"
       id="search" autocomplete="off"/>
      <input type="hidden" id="btnsearch" class="btn btn-dark" onclick="location.href='#'">
     </div>
   <div id="result"></div>
</body>
</html>