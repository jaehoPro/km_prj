<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<!-- 헤더 css / jquery cdn -->
<%@ include file="/include/header.jsp"%>
<script>
$(document).ready(function(){
	 $("#ui-datepicker-div").click(function(){
			console.log($("#datepicker").val())
	 });
	 
	 $("#datepicker2").click(function(){
			console.log($("#datepicker2").val())
	 });
});
</script>

<script>
	  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
	
</script> 

<script>
	  $(function() {
	    $( "#datepicker2" ).datepicker();
	  });

</script>

<script>

function sumAllpay(var checkindate, var checkoutdate, var checkintime, var checkouttime, var daypay, var hourpay){
	   var sum = 0;
	   var sum_daypay
	   sum = ((checkoutdate-checkindate)*24)+(24-checkintime)+checkouttime;
	   sum_daypay=(sum / 24)*daypay;
   
	   return sum_daypay;
	}


</script>
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
			<%@ include file="/include/top.jsp"%>
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
									<h2 class="pageheader-title">Form Elememnts</h2>
									<p class="pageheader-text">Proin placerat ante duiullam
										scelerisque a velit ac porta, fusce sit amet vestibulum mi.
										Morbi lobortis pulvinar quam.</p>
									<div class="page-breadcrumb">
										<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">Dashboard</a></li>
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">Forms</a></li>
											<li class="breadcrumb-item active" aria-current="page">Form
												Elements</li>
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
							
								<div class="col-xl-3 col-lg-6 col-md-12 col-sm-12 col-12">
	                                <div class="card">
	                                    <img class="img-fluid" src="../assets/images/card-img.jpg" alt="Card image cap">
	                                    <div class="card-body">
	                                        <h3 class="card-title">${KEY_L$VO.lodging_name}</h3>
	                                        <p class="card-text">${KEY_LVO.lodging_explain} ${KEY_LVO.lodging_explain} ${KEY_LVO.lodging_explain}</p>
	                                    </div>
	                                    <div class="card-body">
		                                    <ul class="list-unstyled">
		                                        <li> 인원 : ${KEY_LVO.max_lodging_people}명</li>
												<li> 방갯수 : ${KEY_LVO.room_cnt} 개</li>
												<li> 욕실 : ${KEY_LVO.bath_cnt} 개</li>
												<li> 위치 : ${KEY_LVO.location_score_avg}</li>
												<li> 체크인 : ${KEY_LVO.checkin_score_avg}</li>
												<li> 청결도 : ${KEY_LVO.clean_score_avg}</li>
		                                    </ul>
	                                    </div>
	                                </div>
                           		</div>
								

								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="card">
										<div class="card-header bg-white text-center p-4 ">
											<h3 class="mb-1">총 결제 금액</h3>
											
											<h1 class=" mb-1">
												<span class="font-24">$</span><sub class="display-4">19</sub>
											</h1>
											
											
											
											<p>체크인          Date: <input type="text" id="datepicker">
									
											
											체크인 시간
													<select class="selectpicker" data-size="5">
														<option>0:00</option>
														<option>1:00</option>
														<option>2:00</option>
														<option>3:00</option>
														<option>4:00</option>
														<option>5:00</option>
														<option>6:00</option>
														<option>7:00</option>
														<option>8:00</option>
														<option>9:00</option>
														<option>10:00</option>
														<option>11:00</option>
														<option>12:00</option>
														<option>13:00</option>
														<option>14:00</option>
														<option>15:00</option>
														<option>16:00</option>
														<option>17:00</option>
														<option>18:00</option>
														<option>19:00</option>
														<option>20:00</option>
														<option>21:00</option>
														<option>22:00</option>
														<option>23:00</option>
													</select>
											
											</p>
											<p>체크아웃         Date: <input type="text" id="datepicker2">
											체크아웃 시간
													<select class="selectpicker" data-size="5">
														<option>0:00</option>
														<option>1:00</option>
														<option>2:00</option>
														<option>3:00</option>
														<option>4:00</option>
														<option>5:00</option>
														<option>6:00</option>
														<option>7:00</option>
														<option>8:00</option>
														<option>9:00</option>
														<option>10:00</option>
														<option>11:00</option>
														<option>12:00</option>
														<option>13:00</option>
														<option>14:00</option>
														<option>15:00</option>
														<option>16:00</option>
														<option>17:00</option>
														<option>18:00</option>
														<option>19:00</option>
														<option>20:00</option>
														<option>21:00</option>
														<option>22:00</option>
														<option>23:00</option>
													</select>
											
											</p>
										</div>
										<div class="card-body">
											<ul class="list-unstyled bullet-check mb-0">
												<li>${KEY_LVO.time_price}원/시간</li>
												<li>${KEY_LVO.day_price}원/박</li>
												<li>예약 확정 전에는 요금이 청구 되지 않습니다.</li>
											</ul>
										</div>
										<div class="card-body border-top">
											<ul class="list-unstyled">
												<li>${KEY_LVO.time_price} X 2박</li>
												<li>${KEY_LVO.day_price} X 3시간</li>
												<li>합계 : 81,000원</li>
											</ul>
											<a href="javascript:document.myform.submit();"
												class="btn btn-outline-secondary btn-block btn-lg">예약하기</a>
										</div>
									</div>
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
									<p></p>
								</div>
								<div class="card">
									<h5 class="card-header">후기 ${KEY_REVIEW_COUNT}개</h5>
									<div class="card-body">
										<div class="chat-module-body">
											<c:forEach var="vo" items="${KEY_REVIEW}">
												<div class="media chat-item">
													<img alt="William"
														src="../assets/images/${vo.user_pic_path}"
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
							Copyright © 2018 Concept. All rights reserved. Dashboard by <a
								href="https://colorlib.com/wp/">Colorlib</a>.
						</div>
						<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
							<div class="text-md-right footer-links d-none d-sm-block">
								<a href="javascript: void(0);">About</a> <a
									href="javascript: void(0);">Support</a> <a
									href="javascript: void(0);">Contact Us</a>
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
	<form name="myform" method="post" action="/koreamate_payment.jsp">
		<input type="hidden" name="lodging_name" value="${KEY_LVO.lodging_name}">
	</form>
	
	
	<!-- Optional JavaScript -->
	   <!-- <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script> -->
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="../assets/libs/js/main-js.js"></script>
    <script src="../assets/vendor/inputmask/js/jquery.inputmask.bundle.js"></script> 

	



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