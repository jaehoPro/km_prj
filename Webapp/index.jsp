<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">

<head>


<!-- 헤더 css / jquery cdn -->
<%@ include file="/include/header.jsp"%>


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
			<%@ include file="/include/top.jsp"%>

		</div>
		<!-- ============================================================== -->
		<!-- end navbar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- left sidebar -->
		<!-- ============================================================== -->

		<%-- <!-- 레프트 메뉴 영역 -->
      <%@ include file="/include/left.jsp" %> --%>



		<!-- ============================================================== -->
		<!-- end left sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->

		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<!-- <div class="container-fluid dashboard-content "> -->
				<!-- ============================================================== -->
				<!-- pageheader  -->
				<!-- ============================================================== -->

				<!-- ============================================================== -->
				<!-- end pageheader  -->
				<!-- ============================================================== -->






				<div class="banner-area relative"
					style="background-image: url(&quot;assets/images/배너.jpg&quot;);">
					<div class="overlay overlay-bg"></div>
					<div class="container">
						<div
							class="row fullscreen align-items-center justify-content-between"
							style="height: 918px;">

							<div class="col-lg-8 col-md-10 banner-right">
								<div class="card">



									<div class="card-body border-top">

										<div class="row">
										<div class="card-header ">
											<h7>목적지</h7>
											<div id="custom-search2" class="top-search-bar">
												<input class="form-control2" type="text"
													placeholder="Search..">
											</div>
										</div>
										</div>

										<div class="row">

											<div class="card-body border-top">
												<h7>체크인</h7>
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
											<div class="card-body border-top">
												<h7>체크아웃</h7>
												<div class="form-group">
													<div class="input-group date" id="datetimepicker44"
														data-target-input="nearest">
														<input type="text"
															class="form-control datetimepicker-input"
															data-target="#datetimepicker44" />
														<div class="input-group-append"
															data-target="#datetimepicker44"
															data-toggle="datetimepicker">
															<div class="input-group-text">
																<i class="far fa-calendar-alt"></i>
															</div>
														</div>
													</div>
												</div>
											</div>
											</div>

											<div class="row">

												<div class="card-body border-top">
													<h7>체크인 시간</h7>
													<div class="form-group">
														<div class="input-group date" id="datetimepicker3"
															data-target-input="nearest">
															<input type="text"
																class="form-control datetimepicker-input"
																data-target="#datetimepicker3" />
															<div class="input-group-append"
																data-target="#datetimepicker3"
																data-toggle="datetimepicker">
																<div class="input-group-text">
																	<i class="far fa-clock"></i>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="card-body border-top">
													<h7>체크아웃 시간</h7>
													<div class="form-group">
														<div class="input-group date" id="datetimepicker33"
															data-target-input="nearest">
															<input type="text"
																class="form-control datetimepicker-input"
																data-target="#datetimepicker33" />
															<div class="input-group-append"
																data-target="#datetimepicker33"
																data-toggle="datetimepicker">
																<div class="input-group-text">
																	<i class="far fa-clock"></i>
																</div>
															</div>
														</div>
													</div>
												</div>

											</div>

											<div class="row">
											<div class="card-body border-top">
												<a href="#" class="btn btn-primary btn-block btn-lg">검색</a>
											</div>
											</div>


										</div>


									</div>




								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<!-- ============================================================== -->

					<!-- ============================================================== -->

					<!-- recent orders  -->
					<!-- ============================================================== -->
					<!--  <div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header">Recent Orders</h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0">#</th>
                                                        <th class="border-0">Image</th>
                                                        <th class="border-0">Product Name</th>
                                                        <th class="border-0">Product Id</th>
                                                        <th class="border-0">Quantity</th>
                                                        <th class="border-0">Price</th>
                                                        <th class="border-0">Order Time</th>
                                                        <th class="border-0">Customer</th>
                                                        <th class="border-0">Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #1 </td>
                                                        <td>id000001 </td>
                                                        <td>20</td>
                                                        <td>$80.00</td>
                                                        <td>27-08-2018 01:22:12</td>
                                                        <td>Patricia J. King </td>
                                                        <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #2 </td>
                                                        <td>id000002 </td>
                                                        <td>12</td>
                                                        <td>$180.00</td>
                                                        <td>25-08-2018 21:12:56</td>
                                                        <td>Rachel J. Wicker </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #3 </td>
                                                        <td>id000003 </td>
                                                        <td>23</td>
                                                        <td>$820.00</td>
                                                        <td>24-08-2018 14:12:77</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>
                                      
                                                            <div class="m-r-10"><img src="assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #4 </td>
                                                        <td>id000004 </td>
                                                        <td>34</td>
                                                        <td>$340.00</td>
                                                        <td>23-08-2018 09:12:35</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
					<!-- ============================================================== -->
					<!-- end recent orders  -->



				</div>


				<div class="row">
					<!-- ============================================================== -->
					<!-- sales  -->
					<!-- ============================================================== -->
					<!--  <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                <div class="card border-3 border-top border-top-primary">
                                    <div class="card-body">
                                        <h5 class="text-muted">Sales</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">$12099</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span class="icon-circle-small icon-box-xs text-success bg-success-light"><i class="fa fa-fw fa-arrow-up"></i></span><span class="ml-1">5.86%</span>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
					<!-- ============================================================== -->
					<!-- end sales  -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- new customer  -->
					<!-- ============================================================== -->
					<!-- <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                <div class="card border-3 border-top border-top-primary">
                                    <div class="card-body">
                                        <h5 class="text-muted">New Customer</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">1245</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span class="icon-circle-small icon-box-xs text-success bg-success-light"><i class="fa fa-fw fa-arrow-up"></i></span><span class="ml-1">10%</span>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
					<!-- ============================================================== -->
					<!-- end new customer  -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- visitor  -->
					<!-- ============================================================== -->
					<!-- <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
                                <div class="card border-3 border-top border-top-primary">
                                    <div class="card-body">
                                        <h5 class="text-muted">Visitor</h5>
                                        <div class="metric-value d-inline-block">
                                            <h1 class="mb-1">13000</h1>
                                        </div>
                                        <div class="metric-label d-inline-block float-right text-success font-weight-bold">
                                            <span class="icon-circle-small icon-box-xs text-success bg-success-light"><i class="fa fa-fw fa-arrow-up"></i></span><span class="ml-1">5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
					<!-- ============================================================== -->
					<!-- end visitor  -->
					<!-- ============================================================== -->

				</div>
				<div class="row"></div>
			</div>
		</div>

		<!--  </div> -->



		<%--  <!-- 푸터 영역 -->
      <%@ include file="/include/footer.jsp" %> --%>

		<!-- ============================================================== -->
		<!-- end wrapper  -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- end main wrapper  -->
		<!-- ============================================================== -->

		<!-- 스크립트 영역 -->
		<%--  <%@ include file="/include/script.jsp" %> --%>






		<!-- Optional JavaScript -->
		<!-- jquery 3.3.1 -->
		<script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
		<!-- bootstap bundle js -->
		<script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
		<!-- slimscroll js -->
		<script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
		<!-- main js -->
		<script src="assets/libs/js/main-js.js"></script>
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
</body>

</html>