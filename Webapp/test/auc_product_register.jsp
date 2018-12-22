<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	
<!-- Script Include CSS START-->
<%@ include file="/include/script.jsp" %>
<!-- Script Include CSS END-->


<script>


//jQuery 지원 : 첨부파일 미리보기 ---------------------
$(document).ready(function(){
$("#mainPic").on("change", myFilePreviewFunc1); //동적바인딩 버튼 추가 할때마다 동적으로 할당된것은 이것으로 해야 버튼이 먹는다
$("#addtionalPic").on("change", myFilePreviewFunc2); //동적바인딩 버튼 추가 할때마다 동적으로 할당된것은 이것으로 해야 버튼이 먹는다
//$("#pname").change(function(){
function myFilePreviewFunc1(e) {
      $("#prev-img-div1").empty();  // 내용만 지워라   remove() --> div태그를 없앤다.
      var files = e.target.files;           //[object FileList]가 전체로 들어온다
      //FileList into an array 
      //var fileArr = Array.prototype.slice.call(files);         
      var fileArr = Array.from(files); //[object File],[object File],[object File]
         
      /* if(fileArr.length > 3) {  //files.length
            alert("이미지 첨부는 최대 3개만 가능합니다.");
            $("#pname").val("");
            return false;
      } */
      
      var fileSize = 0;
      fileArr.forEach(function(f) {   //fileArr forEach를 이렇게 돌리네
            fileSize += f.size;
      });
      if(fileSize > 10*1024*1024) {
            alert("이미지 첨부는 최대 10MB만 가능합니다.");
            $("#mainPic").val("");
            return false;
            
     
      }
      
      
      
      fileArr.forEach(function (f) {
         if(!f.type.match("image.*")) {
               alert("이미지 첨부만 가능합니다.");
               $("#mainPic").val("");
            
               return false;
         } 
         
         var reader = new FileReader();
         var htmlStr = "";
         reader.onload = function(e) {
               htmlStr += "<img src='"+e.target.result+"' style='height:200px;width:200px;'> ";
               $("#prev-img-div1").append(htmlStr);
         
               //alert(htmlStr)
         }
         reader.readAsDataURL(f);  //htmlStr 읽기위한
         
         
             
             $('#prev-img-div1 img').attr('src', reader.readAsDataURL(f));
             $('#prev-img-div1').slideDown(); //업로드한 이미지 미리보기 
             $(this).slideUp(); //파일 양식 감춤
         
      });
   
      //<input id="pname" type="file" class="form-control" name="pname" multiple> multiple추가만 하면된다.
}

$('#prev-img-div1 a').bind('click', function() {
    resetFormElement($('#mainPic')); //전달한 양식 초기화
    $('#mainPic').slideDown(); //파일 양식 보여줌
    $(this).parent().slideUp(); //미리 보기 영역 감춤
    return false; //기본 이벤트 막음
});

function myFilePreviewFunc2(e) {
   
   $("#prev-img-div2").empty();  // 내용만 지워라   remove() --> div태그를 없앤다.
   var files = e.target.files;           //[object FileList]가 전체로 들어온다
   //FileList into an array 
   //var fileArr = Array.prototype.slice.call(files);         
   var fileArr = Array.from(files); //[object File],[object File],[object File]
      
   /* if(fileArr.length > 3) {  //files.length
         alert("이미지 첨부는 최대 3개만 가능합니다.");
         $("#pname").val("");
         return false;
   } */
   
   var fileSize = 0;
   fileArr.forEach(function(f) {   //fileArr forEach를 이렇게 돌리네
         fileSize += f.size;
   });
   if(fileSize > 10*1024*1024) {
         alert("이미지 첨부는 최대 10MB만 가능합니다.");
      
         $("#addtionalPic").val("");
         return false;
   }
   
   
   
   fileArr.forEach(function (f) {
      if(!f.type.match("image.*")) {
            alert("이미지 첨부만 가능합니다.");
         
            $("#addtionalPic").val("");
            return false;
      } 
      
      var reader = new FileReader();
      var htmlStr = "";
      reader.onload = function(e) {
            htmlStr += "<img src='"+e.target.result+"' style='height:150px;width:150px;'> ";
      
            $("#prev-img-div2").append(htmlStr);
            //alert(htmlStr)
      }
      reader.readAsDataURL(f);  //htmlStr 읽기위한
   });   
   //<input id="pname" type="file" class="form-control" name="pname" multiple> multiple추가만 하면된다.
}

	$("#regBtn").click(function(){
	   	$("#register").submit();
	});
	
/* documentready */
});
</script>
 <head>
 
<!-- Header Include CSS START-->
<%@ include file="/include/header.jsp" %>
<!-- Header Include CSS END-->

</head>

<body>
<div id="header">
<div class="container">

<!-- topbar Include CSS START-->
<%-- <%@ include file="/include/top.jsp" %> --%>
<!-- topbar Include CSS END-->

<!-- navbar Include CSS START-->
<%-- <%@ include file="/include/navbar.jsp" %> --%>
<!-- navbar Include CSS END-->

</div>
</div>
<div id="mainBody">
	<div class="container">
	<div class="row">
	


<!-- sidebar Include CSS START-->
<%-- <%@ include file="/include/sidebar.jsp" %> --%>
<!-- sidebar Include CSS END-->






	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
    <li><a href="products.jsp">Board</a> <span class="divider">/</span></li>
    <li class="active">FreeBoard</li>
    </ul>
  

	<h3>경매상품 등록</h3>
	<hr class="soft"/>

<div class="row">
	<form class="form-horizontal" id="register" action="aucregister" method="POST" enctype="multipart/form-data">
        <fieldset>

   

          <div class="control-group">
            <label class="control-label"><strong><font color="red">*</font> 대표사진</strong> </label>
            <div class="controls">
              <input class="input-file" id="mainPic" name="mainPic" type="file">
             
              <div id="prev-img-div1">
              <img src="#" />
              </div>
			
            </div>
          </div>

		  <div class="control-group">
            <label class="control-label"><strong>기타사진</strong> </label>
            <div class="controls">
              <input class="input-file" id="addtionalPic" name="addtionalPic" Multiple type="file">
              <div id="prev-img-div2"></div>
            </div>
          </div>
          	<hr class="soft"/>
        </fieldset>

            <button type="button" id="ccBtn" class="btn pull-right" onClick="location.href='/index.jsp'">취소</button>
            <button type="button" id="regBtn" class="btn btn-primary pull-right">등록하기</button>
      </form>
			</div>
			


<br class="clr"/>





	</div>
</div>
</div> 
</div>
<!-- MainBody End ============================= -->

<!-- Footer Include CSS START-->
<%-- <%@ include file="/include/footer.jsp" %> --%>
<!-- Footer Include CSS END-->
	

</body>
</html>