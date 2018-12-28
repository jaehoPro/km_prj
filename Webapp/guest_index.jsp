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
    <title>GuestMain</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
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
    <div class="splash-container" bgcolor="gray">
            <div class="card-header text-center">
            <br>
            <img class='mr-3 rounded-circle' width='200' height='200' src='/cdir/profile/${sessionScope.SESS_PIC_RENAME } '>
            <span class="splash-description">${sessionScope.SESS_FNAME }&nbsp;${sessionScope.SESS_LNAME } <br> 마이페이지 입니다.</span></div>
            <div class="card-body">
                <form action="/identify"  onsubmit="return validate();" id="indent-form" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                    </div>
                    <div class="form-group">
                    </div>
                    <a href="/index.jsp" ><button type="button" class="btn btn-primary btn-lg btn-block">메인페이지로</button></a>
                    
                </form>
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