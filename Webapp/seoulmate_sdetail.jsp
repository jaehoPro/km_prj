<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
        <div class="dashboard-header">
             <!-- 상단 검색창/상단우측바 -->
      		<%@ include file="/include/top.jsp" %>
        </div>
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
      
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <div class="row">
                    <div class="col-xl-10">
                        <!-- ============================================================== -->
                        <!-- pageheader  -->
                        <!-- ============================================================== -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="page-header" id="top">
                                    <h2 class="pageheader-title">Form Elememnts </h2>
                                    <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                                    <div class="page-breadcrumb">
                                        <nav aria-label="breadcrumb">
                                            <ol class="breadcrumb">
                                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                                <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
                                                <li class="breadcrumb-item active" aria-current="page">Form Elements</li>
                                            </ol>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end pageheader  -->
                        <!-- ============================================================== -->
                        <div class="page-section" id="overview">
                            <!-- ============================================================== -->
                            <!-- overview  -->
                            <!-- ============================================================== -->
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h2>${KEY_LVO.lodging_name}</h2>
                                    <p class="lead">${KEY_LVO.lodging_explain}</p>
                                    <ul class="list-unstyled arrow">
                                        <li> 인원 : ${KEY_LVO.max_lodging_people}명</li>
                                        <li> 방갯수 : ${KEY_LVO.room_cnt} 개 </li>
                                        <li> 욕실 : ${KEY_LVO.bath_cnt} 개 </li>
                                        <li></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end overview  -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="section-block" id="basicform">
                                    <h3 class="section-title"></h3>
                                    <p>Use custom button styles for actions in forms, dialogs, and more with support for multiple sizes, states, and more.</p>
                                </div>
                                <div class="card">
                                    <h5 class="card-header">후기 4개</h5>
                                    <div class="card-body">
			                            <div class="chat-module-body">
			                                <forEach var="vo" >
			                                <div class="media chat-item">
			                                    <img alt="William" src="../assets/images/avatar-1.jpg" class="rounded-circle user-avatar-lg">
			                                    <div class="media-body">
			                                        <div class="chat-item-title">
			                                            <span class="chat-item-author">William</span>
			                                            <span>4 days ago</span>
			                                        </div>
			                                        <div class="chat-item-body">
			                                            <p>Hey guys, Phasellus imperdiet arcu venenatis, malesuada nulla a, porta sem. Curabitur nec massa ultrices, consequat erat sit amet, luctus justo. Brand Concept &amp; Design!</p>
			                                        </div>
			                                    </div>
			                                </div>
			                                
			                            </div>
			                            <!-- ============================================================== -->
				                        <!-- 댓글끝  -->
				                        <!-- ============================================================== -->
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end basic form  -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- select options  -->
                        <!-- ============================================================== -->
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
								<div class="section-block" id="select">
									<h3 class="section-title">예약하기</h3>
									<p>Use custom button styles for actions in forms, dialogs,
										and more with support for multiple sizes, states, and more.</p>
								</div>
								<div class="card">

									<h5 class="card-header">Select Example</h5>
									<div class="card-body">
										<form>
											<div class="row">
												<div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0">
													<h5>체크인</h5>
													<div class="form-group">
														<div class="input-group date" id="datetimepicker4"
															data-target-input="nearest">
															<input type="text"
																class="form-control datetimepicker-input"
																data-target="#datetimepicker4" />
															<div class="input-group-append"
																data-target="#datetimepicker4"
																data-toggle="datetimepicker">
																<div class="input-group-text">
																	<i class="far fa-calendar-alt"></i>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-sm-6 pl-0">

													<h5>체크아웃</h5>
													<div class="form-group">
														<div class="input-group date" id="datetimepicker44"
															data-target-input="nearest">
															<input type="text"
																class="form-control datetimepicker-input"
																data-target="#datetimepicker44" />
															<div class="input-group-append"
																data-target="#abc"
																data-toggle="datetimepicker44">
																<div class="input-group-text">
																	<i class="far fa-calendar-alt"></i>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
											<div class="row">
												<div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0">
													<h5 class="card-title">체크인시간</h5>
					                                <select class="selectpicker" data-size="5">
					                                    <option>1</option>
					                                    <option>2</option>
					                                    <option>3</option>
					                                    <option>4</option>
					                                    <option>5</option>
					                                    <option>6</option>
					                                    <option>7</option>
					                                    <option>8</option>
					                                    <option>9</option>
					                                    <option>10</option>
					                                    <option>11</option>
					                                    <option>12</option>
					                                </select>
												</div>
												<div class="col-sm-6 pl-0">
													<h5>체크아웃시간</h5>
												        <select class="selectpicker">
						                                    <option title="Combo 1">1</option>
						                                    <option title="Combo 2">2</option>
						                                    <option title="Combo 3">3</option>
						                                </select>

												</div>
											</div>
											<div class="row">
												<div class="col-sm-6 pb-2 pb-sm-4 pb-lg-0 pr-0"></div>
												<div class="col-sm-6 pl-0">
													<p class="text-right">
														<button type="submit" class="btn btn-space btn-primary">예약하기</button>
													</p>
												</div>
											</div>

										</form>
									</div>

								</div>
							</div>
						</div>
						<!-- ============================================================== -->
                        <!-- end select options  -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- checkboxes and radio -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                        <!-- end checkboxes and radio -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- validation state -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                        <!-- end validation state -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                    </div>
                    <!-- ============================================================== -->
                    <!-- sidenavbar -->
                    <!-- ============================================================== -->
                    <div class="col-xl-2 col-lg-2 col-md-6 col-sm-12 col-12">
                        <div class="sidebar-nav-fixed">
                            <ul class="list-unstyled">
                                <li><a href="#overview" class="active">숙소정보</a></li>
                                <li><a href="#basicform">후기보기</a></li>
                                <li><a href="#select">예약하기</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end sidenavbar -->
                    <!-- ============================================================== -->
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <div class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            Copyright © 2018 Concept. All rights reserved. Dashboard by <a href="https://colorlib.com/wp/">Colorlib</a>.
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                            <div class="text-md-right footer-links d-none d-sm-block">
                                <a href="javascript: void(0);">About</a>
                                <a href="javascript: void(0);">Support</a>
                                <a href="javascript: void(0);">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
    <script src="../assets/vendor/inputmask/js/jquery.inputmask.bundle.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
    
    <script src="assets/vendor/datepicker/moment.js"></script>
    <script src="assets/vendor/datepicker/tempusdominus-bootstrap-4.js"></script>
    <script src="assets/vendor/datepicker/datepicker.js"></script>
    
    
    <script>
    $(function(e) {
        "use strict";
        $(".date-inputmask").inputmask("dd/mm/yyyy"),
            $(".phone-inputmask").inputmask("(999) 999-9999"),
            $(".international-inputmask").inputmask("+9(999)999-9999"),
            $(".xphone-inputmask").inputmask("(999) 999-9999 / x999999"),
            $(".purchase-inputmask").inputmask("aaaa 9999-****"),
            $(".cc-inputmask").inputmask("9999 9999 9999 9999"),
            $(".ssn-inputmask").inputmask("999-99-9999"),
            $(".isbn-inputmask").inputmask("999-99-999-9999-9"),
            $(".currency-inputmask").inputmask("$9999"),
            $(".percentage-inputmask").inputmask("99%"),
            $(".decimal-inputmask").inputmask({
                alias: "decimal",
                radixPoint: "."
            }),

            $(".email-inputmask").inputmask({
                mask: "*{1,20}[.*{1,20}][.*{1,20}][.*{1,20}]@*{1,20}[*{2,6}][*{1,2}].*{1,}[.*{2,6}][.*{1,2}]",
                greedy: !1,
                onBeforePaste: function(n, a) {
                    return (e = e.toLowerCase()).replace("mailto:", "")
                },
                definitions: {
                    "*": {
                        validator: "[0-9A-Za-z!#$%&'*+/=?^_`{|}~/-]",
                        cardinality: 1,
                        casing: "lower"
                    }
                }
            })
    });
    </script>
</body>
 
</html>