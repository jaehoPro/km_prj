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


		<div class="dashboard-wrapper">
			<div class="influence-finder">
				<div class="container-fluid dashboard-content ">


					<div class="row">

						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="section-block" id="cards"></div>
						</div>



						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">
								<div class="card-body border-top">

									<div class="row">
										<div class="card-header ">
											<h5>
												<br>Whoni'sKosmoRoom</br>
											</h5>
											<div class="card-body border-top">
												<h2 class="card-title mb-2">등록하실 숙소 종류는 무엇인가요?</h2>
												<form id="validationform" data-parsley-validate=""
													novalidate="">
													<div class="form-group row">
														<h7>건물 유형을 선택하세요.</h7>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-8 col-lg-6">
															<select class="form-control">
																<option selected="">건물유형</option>
																<option value="아파트">아파트</option>
																<option value="주택">주택</option>
																<option value="오피스텔">오피스텔</option>
															</select>

														</div>
													</div>


													<div class="form-group row">
														<h7>숙소 유형을 선택하세요.</h7>
													</div>
													<div class="form-group row">
														<div class="col-12 col-sm-8 col-lg-6">

															<select class="form-control">
																<option selected="">숙소유형</option>
																<option value="개인실">개인실</option>
																<option value="다인실">다인실</option>
																<option value="집전체">집전체</option>
															</select>

														</div>
													</div>


													<h2 class="card-title mb-2">
														<br>숙소에 얼마나 많은 인원이 숙박할 수 있나요?</br>
													</h2>


													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label"><h7>최대 숙박 인원</h7></label>

														<div class="quantity">
															<input type="number" min="1" max="999" step="1" value="1">
														</div>

													</div>



													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Max
															Length</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="Max 6 chars." class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Range
															Length</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="text" required=""
																data-parsley-length="[5,10]"
																placeholder="Text between 5 - 10 chars length"
																class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Min
															Value</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="text" required="" data-parsley-min="6"
																placeholder="Min value is 6" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Max
															Value</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="text" required="" data-parsley-max="6"
																placeholder="Max value is 6" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Range
															Value</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input required="" type="number" min="6" max="100"
																placeholder="Number between 6 - 100"
																class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Regular
															Exp</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="text" required=""
																data-parsley-pattern="#[A-Fa-f0-9]{6}"
																placeholder="Hex. Color" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Equal
															To</label>
														<div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
															<input id="pass2" type="password" required=""
																placeholder="Password" class="form-control">
														</div>
														<div class="col-sm-4 col-lg-3">
															<input type="password" required=""
																data-parsley-equalto="#pass2"
																placeholder="Re-Type Password" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-3 col-form-label text-sm-right">Min
															check</label>
														<div class="col-sm-6">
															<div class="custom-controls-stacked">
																<label class="custom-control custom-checkbox"> <input
																	id="ck1" name="ck1" type="checkbox"
																	data-parsley-multiple="groups" value="bar"
																	data-parsley-mincheck="2"
																	data-parsley-errors-container="#error-container1"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 1</span>
																</label> <label class="custom-control custom-checkbox">
																	<input id="ck2" name="ck2" type="checkbox"
																	data-parsley-multiple="groups" value="bar2"
																	data-parsley-mincheck="2"
																	data-parsley-errors-container="#error-container1"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 2</span>
																</label> <label class="custom-control custom-checkbox">
																	<input id="ck3" name="ck3" type="checkbox"
																	data-parsley-multiple="groups" value="bar3"
																	data-parsley-mincheck="2" required=""
																	data-parsley-errors-container="#error-container1"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 3</span>
																</label>
																<div id="error-container1"></div>
															</div>
														</div>
													</div>
													<div class="form-group row">
														<label class="col-sm-3 col-form-label text-sm-right">Max
															check</label>
														<div class="col-sm-6">
															<div class="custom-controls-stacked">
																<label class="custom-control custom-checkbox"> <input
																	type="checkbox" value="bar" id="e1"
																	data-parsley-multiple="group1"
																	data-parsley-errors-container="#error-container2"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 1</span>
																</label> <label class="custom-control custom-checkbox">
																	<input type="checkbox" value="bar" id="e2"
																	data-parsley-multiple="group1"
																	data-parsley-errors-container="#error-container2"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 2</span>
																</label> <label class="custom-control custom-checkbox">
																	<input type="checkbox" value="bar" id="e3"
																	data-parsley-multiple="group1"
																	data-parsley-maxcheck="1"
																	data-parsley-errors-container="#error-container2"
																	class="custom-control-input"><span
																	class="custom-control-label">Option 3</span>
																</label>
																<div id="error-container2"></div>
															</div>
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">E-Mail</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input type="email" required="" data-parsley-type="email"
																placeholder="Enter a valid e-mail" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">URL</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input data-parsley-type="url" type="url" required=""
																placeholder="URL" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Digits</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input data-parsley-type="digits" type="text" required=""
																placeholder="Enter only digits" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Number</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input data-parsley-type="number" type="text" required=""
																placeholder="Enter only numbers" class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Alphanumeric</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<input data-parsley-type="alphanum" type="text"
																required="" placeholder="Enter alphanumeric value"
																class="form-control">
														</div>
													</div>
													<div class="form-group row">
														<label
															class="col-12 col-sm-3 col-form-label text-sm-right">Textarea</label>
														<div class="col-12 col-sm-8 col-lg-6">
															<textarea required="" class="form-control"></textarea>
														</div>
													</div>
													<div class="form-group row text-right">
														<div
															class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
															<button type="submit" class="btn btn-space btn-primary">Submit</button>
															<button class="btn btn-space btn-secondary">Cancel</button>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!-- ============================================================== -->
									<!-- end valifation types -->
									<!-- ============================================================== -->
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
						</div>
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
		</div>



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
		<script>
        jQuery('<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>').insertAfter('.quantity input');
        jQuery('.quantity').each(function() {
            var spinner = jQuery(this),
                input = spinner.find('input[type="number"]'),
                btnUp = spinner.find('.quantity-up'),
                btnDown = spinner.find('.quantity-down'),
                min = input.attr('min'),
                max = input.attr('max');

            btnUp.click(function() {
                var oldValue = parseFloat(input.val());
                if (oldValue >= max) {
                    var newVal = oldValue;
                } else {
                    var newVal = oldValue + 1;
                }
                spinner.find("input").val(newVal);
                spinner.find("input").trigger("change");
            });

            btnDown.click(function() {
                var oldValue = parseFloat(input.val());
                if (oldValue <= min) {
                    var newVal = oldValue;
                } else {
                    var newVal = oldValue - 1;
                }
                spinner.find("input").val(newVal);
                spinner.find("input").trigger("change");
            });

        });
        </script>
</body>

</html>