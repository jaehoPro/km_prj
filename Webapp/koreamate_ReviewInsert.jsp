<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



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
<script>
 $(document).ready(function() {

            //When page loads...
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function() {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });
    </script>
</head>
<body>

<div id="wrapper">    
    <!--탭 메뉴 영역 -->
    <ul class="tabs">
        <li><a href="#tab1"></a></li>
        <li><a href="#tab2"></a></li>
    </ul>

    <!--탭 콘텐츠 영역 -->
    <div class="tab_container">

        <div id="tab1" class="tab_content">
            <!--Content-->
            <h1></h1>
            <br/>
          
        </div>

        <div id="tab2" class="tab_content">
           <!--Content-->
           <h1></h1>
           
        </div>

    </div>

</div>

</body>
</html>
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
                                        
                                         <c:forEach var="vo" items="${KEY_Lodging}"> 
                                            <a class="nav-link active"  id="tab1" data-toggle="pill" href="/SelectReview?lodging_seq=${vo.lodging_seq} " role="tab"  aria-selected="true" >
                                            <img src="img/${vo.lodging_pic_oriname}" width="100" height="100">${vo.lodging_name}</a>
                                            
                                         </c:forEach>
  
                                            
                                        </div>
                                    </div>
                                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10 col-10 ">
                                        <div class="tab-content" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="${vo.lodging_pic_oriname}" role="tabpanel" aria-labelledby="${vo.lodging_pic_oriname}-tab">                                          
                                                                
                               				 <c:forEach var="vo" items="${KEY_REVIEW}">
												<div class="media chat-item">
													<img src="/img/${vo.user_pic_oriname}"
														class="rounded-circle user-avatar-lg">
													<div class="media-body">
														<div class="chat-item-title">
															<span class="chat-item-author">${vo.l_name}
																${vo.f_name}</span> <span>${vo.review_regdate}</span>
																 
														</div>
														<div class="chat-item-body">
															<p>${vo.review_content}</p>
														</div>
													</div>
												</div>
											</c:forEach>
										
											
 							
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
                  
                    
              
           
            <!-- ============================================================== -->
        
   
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
