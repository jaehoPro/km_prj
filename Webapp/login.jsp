<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/include/header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script>
$('.form-group input').on('focus blur', function (e) {
    $(this).parents('.form-group').toggleClass('active', (e.type === 'focus' || this.value.length > 0));
}).trigger('blur');
$(document).ready(function(){  //Jquery 시작

	
//	$(".yb").click(function(){
//});
});
</script>
<style>
<%@ include file="/documentation/css/style.css" %>

</style>

</head>
<body>
<div class="form-box">
    <div class="head">로그인</div>        
    <form action="/login" id="login-form" method="post">
        <div class="form-group">
          <label class="label-control">
            <span class="label-text">이메일</span>
          </label>
          <input type="text" name="email" id="email" class="form-control" />
        </div>
        <div class="form-group">
          <label class="label-control">
            <span class="label-text">패스워드</span>
          </label> 
          <input type="password" name="password" id="password" class="form-control" />
        </div>
        <input type="submit" value="Login" class="btn" />
        <p class="text-p">비밀번호를 잃어버리셨나요? <a href="#">비번찾기</a> </p>
    </form>
  </div>
</body>
</html>