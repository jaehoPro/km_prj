<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!doctype html>
<html lang="en">
 
<head>
   <!-- 헤더 css / jquery cdn -->
  	<%@ include file="/include/header.jsp" %>
  	
  	<!--   <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 50px;
        padding-bottom: 200px;
        padding-left:400px;
        
    }
    
    
    
    
    </style> -->
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
    
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
         <div class="dashboard-header">
        <!-- 상단 검색창/상단우측바 -->
      	<%@ include file="/include/top_host.jsp" %>
      
        </div>

        <div class="dashboard-wrapper">
            <div class="influence-finder">
                <div class="container-fluid dashboard-content">
               
                    <!-- content -->
                    <!-- ============================================================== -->
                   
                 
                 
                    <div class="row">
                    
               				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="section-block" id="cards">
                                    
                                </div>
                            </div>
                            
                            
                            
                	          <div class="col-xl-6 col-lg-9 col-md-9 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-header">
                                     
                                      <h1 class="card-title mb-2">Whoni'sKosmoRoom</h1>
                                      <p class="text-right">
                                        <a href="#" class="btn btn-primary">운영중지</a>
                                    	<a href="#" class="btn btn-primary">삭제</a>
                                        <a href="#" class="btn btn-primary">수정</a>
                                      </p>     
                                        
                                    </div>
                                    <img class="img-fluid" src="img/123.jpg" alt="Card image cap">
                                    <div class="card-body">
                                    
                                <div class="card-body border-top">
                                    <h2 class="card-title mb-2" >제목 및 설명</h2>
                                    <div class="">
                                        <ul class="list-unstyled mb-0">
                                        <li class="mb-2"><b>Whoni'sKosmoRoom</b></li>
                                        <li class="mb-0">정말 쾌적해요</li>
                                    </ul>
                                    </div>
                                    
                                </div>
                                
                                
                                <div class="card-body border-top">
                                    <h2 class="card-title mb-2">위치</h2> 
                                    <p class="card-text">서울시 동작구 사당3동</p>  
                                  
                                </div>
                                
                                <div class="card-body border-top">
                                    <h2 class="card-title mb-2">숙소 상태</h2> 
                                    <p class="card-text">운영 중</p>  
                                  
                                </div>
                                
                                  
                                     
                                    </div>
                                </div>
                            </div>
                           
                            
                          
                     </div>
                     
                 
                 </div>
                    
                    
             </div> 
          </div>
                <!-- ============================================================== -->
                <!-- end wrapper  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- end main wrapper  -->
            <!-- ============================================================== -->
            <!-- Optional JavaScript -->
            <!-- jquery 3.3.1 -->
            <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
            <!-- bootstap bundle js -->
            <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
            <!-- slimscroll js -->
            <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
            <!-- main js -->
            <script src="assets/libs/js/main-js.js"></script>
</body>
 
</html>