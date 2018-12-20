<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!doctype html>
<html lang="en">
 
<head>
   <!-- 헤더 css / jquery cdn -->
  	<%@ include file="/include/header.jsp" %>
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
                
                        <div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 col-12">
                            <!-- ============================================================== -->
                            <!-- card influencer one -->
                            <!-- ============================================================== -->
                           
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                             <div class="section-block">
                                 <h7 class="section-title"><b>운영중</b></h7>
                             </div>
                            </div>
                            
                            
                            
                            <div class="card">
                                <div class="card-body">
                                 
                                    <div class="row align-items-center">
                   
                                        <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="user-avatar float-xl-left pr-4 float-none">
                                            
                                            
                                           
                                            
                                                <img src="assets/images/avatar-1.jpg" alt="User Avatar" class="rounded-circle user-avatar-xl">
                                                    </div>
                                                <div class="pl-xl-3">
                                                    <div class="m-b-0">
                                                        <div class="user-avatar-name d-inline-block">
                                                            <h2 class="font-24 m-b-10"> <a href="koreamate_lodging_managing2.jsp">Whoni'sKosmoRoom</a> </h2>
                                                        </div>
                                                        <div class="rating-star d-inline-block pl-xl-2 mb-2 mb-xl-0">
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <i class="fa fa-fw fa-star"></i>
                                                            <p class="d-inline-block text-dark">14 Reviews </p>
                                                        </div>
                                                    </div>
                                                    <div class="user-avatar-address">
                                                        <p class="mb-2"><i class="fa fa-map-marker-alt mr-2  text-primary"></i>Salt Lake City, UT 
                                                        </p>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                   
                                        </div>
                                    </div>
                            
                                </div>
                                <!-- ============================================================== -->
                                <!-- end card influencer one -->
                                <!-- ============================================================== -->

                          

                                <!-- ============================================================== -->
                                <!-- end content -->
                                <!-- ============================================================== -->
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