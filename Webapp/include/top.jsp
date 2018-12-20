<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
		



		
		<!-- 상단 검색창 -->
		 <nav class="navbar navbar-expand-lg bg-white fixed-top">
               <!-- logo--------------------------------------- -->
               <img src="assets/images/KOREAMATELOGO.PNG" alt="" class="user-avatar-md rounded-circle"> <a class="navbar-brand" href="index.jsp">KOREA MATE </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                
                
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                        <li class="nav-item">
                            <div id="custom-search1" class="top-search-bar">
                                <input class="form-control3" type="text" placeholder="Search..">
                            </div>
                            <!--  <div id="custom-search2" class="top-search-bar">
                                <input class="form-control2" type="text" placeholder="Search..">
                            </div> -->
                        </li>
                      
                       
                          
                       
                       
                        <!-- 상단 우측 바======================================================================== -->
                     
                          
                          <a href="pages/login.jsp" id=login style="text-align: center;"><div class="splash-container2" ></div>&nbsp;로그인 &nbsp; </a>
                           <a href="pages/sign-up.jsp" id=register style="text-align: center;"><div class="splash-container"></div>회원가입</a>
                         
                         
                        
                      	
                          
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true"
                             aria-expanded="false">
                            <img src="assets/images/LOGIN.PNG" alt="" class="user-avatar-md rounded-circle" ></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">Hi,<span class="status"></span><span class="ml-2">DahunPark</span> </h5> 
                                   
                                </div>
                                
                                <a class="dropdown-item" href="#">마이페이지</a>
                                <br>
                                <a class="dropdown-item" href="#">위시리스트</a>
                                <br>
                                <a class="dropdown-item" href="#">호스트 페이지</a>
                                
                                <hr color="#fff">
                                
                                 <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">RESERVATION </h5> 
                                   
                                </div>
                               
                                <a class="dropdown-item" href="#">예약확인</a>
                                <br>
                                <a class="dropdown-item" href="#">숙소</a>
                                <hr color="#fff">
                                <a class="dropdown-item" href="#">Logout</a>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
		
      
      