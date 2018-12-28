<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!doctype html>
<html>
 <%@ include file="/include/top_guest.jsp"%>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <script>
    function validate() {

       if(identy.value=="") {
    	   alert("신분증을 선택해주세요");
           return false;
       }else{
    		   return true;
    	   }
     }
   
    </script>
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- login page  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card ">
            <div class="card-header text-center">
            <br>
            <img  width='200' height='200' src='/cdir/id/${ivo.id_pic_rename } '>
            <span class="splash-description">신분증 등록이 완료되었습니다. <br> 승인대기중 입니다.</span></div>
            <div class="card-body">
                <form action="/identify"  onsubmit="return validate();" id="indent-form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                    </div>
                    <div class="form-group">
                    </div>
                    <a href="/pages/identy-pop.jsp" onclick="window.open(this.href, '_blank', 'width=500px,height=350px,toolbars=no,scrollbars=no'); return false;">
                    <button type="button" class="btn btn-primary btn-lg btn-block">신분증재등록</button></a>
                    <br>
                    <a href="/index.jsp" ><button type="button" class="btn btn-primary btn-lg btn-block">메인페이지로</button></a>
                    
                </form>
            </div>
        </div>
    </div>
  
    <!-- ============================================================== -->
    <!-- end login page  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>
 
</html>