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
	  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
	
	</script>

<script>
	  $(function() {
	    $( "#datepicker2" ).datepicker();
	  });

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
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
									<h2>${KEY_LVO.lodging_name}</h2>
									<p class="lead">${KEY_LVO.lodging_explain}</p>
									<ul class="list-unstyled arrow">
										<li>인원 : ${KEY_LVO.max_lodging_people}명</li>
										<li>방갯수 : ${KEY_LVO.room_cnt} 개</li>
										<li>욕실 : ${KEY_LVO.bath_cnt} 개</li>
										<li></li>
									</ul>
								</div>

								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="card">
										<div class="card-header bg-white text-center p-4 ">
											<h3 class="mb-1">예약하기</h3>
											
											<h1 class=" mb-1">
												<span class="font-24">$</span><sub class="display-4">19</sub>
											</h1>
											<p>a month per user</p>
											<a href="#" class="btn btn-secondary mb-2">Start 14 Day
												Free Trial</a>
											
											<p>체크인          Date: <input type="text" id="datepicker">
									
											
											체크인 시간
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
											
											</p>
											<p>체크아웃         Date: <input type="text" id="datepicker2"></p>
										</div>
										<div class="card-body">
											<ul class="list-unstyled bullet-check mb-0">
												<li>7,000원/시간</li>
												<li>60,000원/박</li>
												<li>예약 확정 전에는 요금이 청구 되지 않습니다.</li>
											</ul>
										</div>
										<div class="card-body border-top">
											<ul class="list-unstyled">
												<li>60,000 X 2박</li>
												<li>21,000 X 3시간</li>
												<li>합계 : 81,000원</li>
											</ul>
											<a href="#"
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
															<div class="input-group-append" data-target="#abc"
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