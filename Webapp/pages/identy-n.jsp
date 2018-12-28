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
            <span class="splash-description">등록된 신분증이 없습니다. <br> 인증을 위한 신분증을 등록해주세요.</span></div>
            <div class="card-body">
                <form action="/identify"  onsubmit="return validate();" id="indent-form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input class="form-control form-control-lg" type="file" name="identy" id="identy"  placeholder="E-mail" autocomplete="off">
                    </div>
                    <div class="form-group">
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block">신분증등록</button>
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