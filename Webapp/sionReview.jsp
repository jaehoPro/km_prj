<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!doctype html>
<html lang="en">
 
<head>
   <!-- 헤더 css / jquery cdn -->
  	<%@ include file="/include/header.jsp" %>
   	 <style>
  	
	.imggg{
  	
  
  	padding-bottom:20px;
  
  	/* padding-right:90px; */
  	} 
  	</style>  
  	
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
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
  
        
                    <div class="row">
      
                        <!-- ============================================================== -->
                        <!-- vertical pills  -->
                        <!-- ============================================================== -->
                        <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12 mb-5">
                            <div class="section-block">
                               
                            </div>
                            <div class="pills-vertical">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <a class="nav-link active"  id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true" >
                                            <img src="img/111.jpg" width="100" height="100"></a>
                                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                                            <img src="img/111.jpg" align="left" width="100" height="100"></a>
  
                                            
                                        </div>
                                    </div>
                                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10 ">
                                        <div class="tab-content" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            
                                            <img src="img/222.jpg" width="50" height="auto"class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                  <img src="img/222.jpg" width="50" height="auto" class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                  <img src="img/222.jpg" width="50" height="auto"class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                  <img src="img/222.jpg" width="50" height="auto" class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                 <img src="img/222.jpg" width="50" height="auto"  class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active"><a class="page-link " href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                            </ul>
                                        </nav>
                                        </div>
                                            
                                            
                                             
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                               <img src="img/333.jpg" width="50" height="auto" class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                             
                                               <img src="img/333.jpg" width="50" height="auto" class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                 
                                               
                                               <img src="img/333.jpg" width="50" height="auto"class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                              
                                               <img src="img/333.jpg" width="50" height="auto"  class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                               
                                               <img src="img/333.jpg" width="50" height="auto" class="imggg"><a>Username</a>
                                                <p class="lead">content </p>
                                                <p>쓴 날짜</p>
                                                
                                            <nav aria-label="Page navigation example">
                                            <ul class="pagination">
                                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item active"><a class="page-link " href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                            </ul>
                                        </nav>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>                                         
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end vertical pills  -->
                        <!-- ============================================================== -->
                  
                    </div>
              
           
            <!-- ============================================================== -->
        
   
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/assets/libs/js/main-js.js"></script>
</body>

 
</html>