<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<script>
function withdraw() {
	if (confirm("정말 탈퇴하시겠습니까?")) {
		 document.getElementById("withdraw").submit();
		} else {
		  return false;
		}
}
</script>
</head>		



		
		<!-- 상단 검색창 -->
		 <nav class="navbar navbar-expand-lg bg-white fixed-top">
               <!-- logo--------------------------------------- -->
               <img src="/assets/images/KOREAMATELOGO.PNG" alt="" class="user-avatar-md rounded-circle" href="/index.jsp">  <a class="navbar-brand" href="/index.jsp">KOREA MATE </a> 
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                	
                	<a class="navbar-brand" href="#"> 홈 </a>
                	<a class="navbar-brand" href="/pages/users_modify.jsp"> 프로필 수정 </a> 
					<a class="navbar-brand" href="#"> 예약관리 </a> 
					<a class="navbar-brand" href="/koreamate_wish_list.jsp"> 위시리스트 </a>  
					<a class="navbar-brand" href="#"> 신분증 확인</a>  
					
                

                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
					 <a class="navbar-brand" href="javascript:withdraw();" > 탈퇴하기 </a>
					 <form name="withdraw" id="withdraw" action="/regist" method="get">
					 <input type="hidden" name="usercode" id="usercode" value="${sessionScope.SESS_USERCODE}">
					 </form>
                    
                          
                  
                    </ul>
                </div>
            </nav>
		
      