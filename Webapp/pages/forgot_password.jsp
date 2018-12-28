<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>비밀번호  찾기</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <script>
    function validate() {

       if(email.value=="") {
    	   alert("이메일을 입력해 주세요");
           email.focus();
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
    <!-- ==========================re==================================== -->
    <!-- forgot password  -->
    <!-- ============================================================== -->
    <div class="splash-container">
        <div class="card">
            <div class="card-header text-center"><a href="/index.jsp"><img class="logo-img" src="/assets/images/loginlogo.PNG" alt="logo"></a>
             <br>
            <span class="splash-description">가입시 입력한 이메일을 입력해주세요.</span>
            </div>
            <div class="card-body">
                <form action="/forgetpass"  onsubmit="return validate();" id="mail-form" >
                    <div class="form-group">
                        <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="메일 주소 입력" autocomplete="off">
                    </div>
                    <div class="form-group pt-1">
                     <button type="submit" class="btn btn-primary btn-lg btn-block">비밀번호 재설정</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center">
                <span>아이디가 없으신가요? <a href="/pages/regist.jsp" class="text-secondary">회원가입</a></span>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end forgot password  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
</body>

 
</html>