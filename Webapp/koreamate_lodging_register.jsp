<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="en">

<script>
	//jQuery 지원 : 첨부파일 미리보기 ---------------------
	$(document)
			.ready(
					function() {
						$("#mainPic").on("change", myFilePreviewFunc1); //동적바인딩 버튼 추가 할때마다 동적으로 할당된것은 이것으로 해야 버튼이 먹는다
						$("#addtionalPic").on("change", myFilePreviewFunc2); //동적바인딩 버튼 추가 할때마다 동적으로 할당된것은 이것으로 해야 버튼이 먹는다
						//$("#pname").change(function(){
						function myFilePreviewFunc1(e) {
							$("#prev-img-div1").empty(); // 내용만 지워라   remove() --> div태그를 없앤다.
							var files = e.target.files; //[object FileList]가 전체로 들어온다
							//FileList into an array 
							//var fileArr = Array.prototype.slice.call(files);         
							var fileArr = Array.from(files); //[object File],[object File],[object File]

							/* if(fileArr.length > 3) {  //files.length
							      alert("이미지 첨부는 최대 3개만 가능합니다.");
							      $("#pname").val("");
							      return false;
							} */

							var fileSize = 0;
							fileArr.forEach(function(f) { //fileArr forEach를 이렇게 돌리네
								fileSize += f.size;
							});
							if (fileSize > 10 * 1024 * 1024) {
								alert("이미지 첨부는 최대 10MB만 가능합니다.");
								$("#mainPic").val("");
								return false;
							}

							fileArr
									.forEach(function(f) {
										if (!f.type.match("image.*")) {
											alert("이미지 첨부만 가능합니다.");
											$("#mainPic").val("");

											return false;
										}

										var reader = new FileReader();
										var htmlStr = "";
										reader.onload = function(e) {
											htmlStr += "<img src='"+e.target.result+"' style='height:200px;width:200px;'> ";
											$("#prev-img-div1").append(htmlStr);

											//alert(htmlStr)
										}
										reader.readAsDataURL(f); //htmlStr 읽기위한
									});

							//<input id="pname" type="file" class="form-control" name="pname" multiple> multiple추가만 하면된다.
						}

						function myFilePreviewFunc2(e) {

							$("#prev-img-div2").empty(); // 내용만 지워라   remove() --> div태그를 없앤다.
							var files = e.target.files; //[object FileList]가 전체로 들어온다
							//FileList into an array 
							//var fileArr = Array.prototype.slice.call(files);         
							var fileArr = Array.from(files); //[object File],[object File],[object File]

							/* if(fileArr.length > 3) {  //files.length
							      alert("이미지 첨부는 최대 3개만 가능합니다.");
							      $("#pname").val("");
							      return false;
							} */

							var fileSize = 0;
							fileArr.forEach(function(f) { //fileArr forEach를 이렇게 돌리네
								fileSize += f.size;
							});
							if (fileSize > 10 * 1024 * 1024) {
								alert("이미지 첨부는 최대 10MB만 가능합니다.");

								$("#addtionalPic").val("");
								return false;
							}

							fileArr
									.forEach(function(f) {
										if (!f.type.match("image.*")) {
											alert("이미지 첨부만 가능합니다.");

											$("#addtionalPic").val("");
											return false;
										}

										var reader = new FileReader();
										var htmlStr = "";
										reader.onload = function(e) {
											htmlStr += "<img src='"+e.target.result+"' style='height:150px;width:150px;'> ";

											$("#prev-img-div2").append(htmlStr);
											//alert(htmlStr)
										}
										reader.readAsDataURL(f); //htmlStr 읽기위한
									});
							//<input id="pname" type="file" class="form-control" name="pname" multiple> multiple추가만 하면된다.
						}

						$("#regBtn").click(function() {
							$("#register").submit();
						});

						/* documentready */
					});
</script>

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

											<div class="card-body ">
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
														<label class="col-12 col-sm-3 col-form-label"><h7>최대
															숙박 인원</h7></label>

														<div class="quantity">
															<input type="number" min="1" max="999" step="1" value="1">
														</div>


													</div>


													<h2 class="card-title mb-2">
														<br>사용할 수 있는 침대는 몇 개인가요?</br>
													</h2>


													<div class="form-group row">
														<label class="col-12 col-sm-3 col-form-label"><h7>침대</h7></label>

														<div class="quantity">
															<input type="number" min="1" max="10" step="1" value="1">
														</div>


													</div>

													<h2 class="card-title mb-2">
														<br>사용할 수 있는 욕실은 몇 개인가요?</br>
													</h2>


													<div class="form-group row">
														<label class="col-12 col-sm-3 col-form-label"><h7>욕실</h7></label>

														<div class="quantity">
															<input type="number" min="1" max="10" step="1" value="1">
														</div>


													</div>

													<h2 class="card-title mb-2">
														<br>숙소의 위치를 알려주세요.</br>
													</h2>


													<div class="form-group row">
														<div class="col-sm-8 col-lg-5 mb-3 mb-sm-0">
															<h7>시/도</h7>

															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="서울 특별시" class="form-control">
														</div>
														<div class="col-sm-8 col-lg-5">
															<h7>시/군</h7>

															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="동작구" class="form-control">

														</div>
													</div>


													<div class="form-group row">

														<div class="col-sm-8 ">
															<h7>도로명/건물번호/아파트 이름/건물 이름</h7>

															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="사당로23바길 9" class="form-control">
														</div>
													</div>

													<div class="form-group row">

														<div class="col-sm-8 ">
															<h7>동호수(선택사항)</h7>

															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="101동 806호" class="form-control">
														</div>
													</div>

													<div class="form-group row">

														<div class="col-sm-8 ">
															<h7>우편번호</h7>

															<input type="text" required="" data-parsley-maxlength="6"
																placeholder="156-800" class="form-control">
														</div>
													</div>


													<h2 class="card-title mb-2">
														<br>게스트에게 숙소의 모습을 보여주세요.</br>
													</h2>

													<div class="form-group row">

														<div class="col-sm-8 ">
															<div class="control-group">

																<h7> 대표사진</h7>
																<div class="controls">
																	<input class="input-file" id="mainPic" name="mainPic"
																		type="file">
																	<div id="prev-img-div1"></div>
																</div>
															</div>
														</div>
													</div>

													<div class="form-group row">
														<div class="col-sm-8 ">
															<div class="control-group">

																<h7>기타사진</h7>
																<div class="controls">
																	<input class="input-file" id="addtionalPic"
																		name="addtionalPic" Multiple type="file">
																	<div id="prev-img-div2"></div>
																</div>
															</div>
														</div>
													</div>


													<h2 class="card-title mb-2">
														<br>숙소 설명하기</br>
													</h2>

													<div class="form-group row">
														<div class="col-sm-8 ">
															<h7>요약</h7>

															<div class="form-group row">

																<div class="col-12 col-sm-8 col-lg-12">
																	<textarea required=""
																		placeholder="인테리어,채광,주변 정보 등을 입력하세요"
																		class="form-control"></textarea>

																</div>
															</div>

														</div>
													</div>

													<h2 class="card-title mb-2">
														<br>이름 지정</br>
													</h2>
													<div class="form-group row">

														<div class="col-12 col-sm-8 col-lg-12">
															<textarea required="" class="form-control"></textarea>

														</div>
													</div>


													<h2 class="card-title mb-2">체크인까지 최소한 어느 정도의 시간 여유가
														있어야 하나요?</h2>

													<div class="form-group row">
														<div class="col-12 col-sm-8 col-lg-3">
															<select class="form-control">
																<option selected="">시간</option>
																<option value="1">1시간</option>
																<option value="2">2시간</option>
																<option value="3">3시간</option>
																<option value="4">4시간</option>
																<option value="5">5시간</option>
																<option value="6">6시간</option>
																<option value="7">7시간</option>
																<option value="8">8시간</option>
																<option value="9">9시간</option>
																<option value="10">10시간</option>
																<option value="11">11시간</option>
																<option value="12">12시간</option>

															</select>

														</div>
													</div>
													<h4 class="card-title mb-2">
														<br>체크인 가능 시간을 선택해주세요.</br>
													</h4>

													<div class="form-group row">
														<!-- <div class="col-12 col-sm-8 col-lg-3"> -->
														<div class="col-sm-8 col-lg-3 mb-3 mb-sm-0">
															<h7>시작:</h7>
															<select class="form-control">
																<option selected="">--:--</option>
																<option value="1">01:00</option>
																<option value="2">02:00</option>
																<option value="3">03:00</option>
																<option value="4">04:00</option>
																<option value="5">05:00</option>
																<option value="6">06:00</option>
																<option value="7">07:00</option>
																<option value="8">08:00</option>
																<option value="9">09:00</option>
																<option value="10">10:00</option>
																<option value="11">11:00</option>
																<option value="12">12:00</option>
																<option value="13">13:00</option>
																<option value="14">14:00</option>
																<option value="15">15:00</option>
																<option value="16">16:00</option>
																<option value="17">17:00</option>
																<option value="18">18:00</option>
																<option value="19">19:00</option>
																<option value="20">20:00</option>
																<option value="21">21:00</option>
																<option value="22">22:00</option>
																<option value="23">23:00</option>
																<option value="24">24:00</option>


															</select>
														</div>
														<div class="col-sm-8 col-lg-3">
															<h7>종료:</h7>
															<select class="form-control">
																<option selected="">--:--</option>
																<option value="1">01:00</option>
																<option value="2">02:00</option>
																<option value="3">03:00</option>
																<option value="4">04:00</option>
																<option value="5">05:00</option>
																<option value="6">06:00</option>
																<option value="7">07:00</option>
																<option value="8">08:00</option>
																<option value="9">09:00</option>
																<option value="10">10:00</option>
																<option value="11">11:00</option>
																<option value="12">12:00</option>
																<option value="13">13:00</option>
																<option value="14">14:00</option>
																<option value="15">15:00</option>
																<option value="16">16:00</option>
																<option value="17">17:00</option>
																<option value="18">18:00</option>
																<option value="19">19:00</option>
																<option value="20">20:00</option>
																<option value="21">21:00</option>
																<option value="22">22:00</option>
																<option value="23">23:00</option>
																<option value="24">24:00</option>


															</select>

														</div>
													</div>


													<h2 class="card-title mb-2">
														<br>숙소 요금을 설정하여 주세요.</br>
													</h2>
													
													<h7>게스트가 선택한 1시간 당 가격의 합계가 1일당 가격과 같아지거나 초과 될 시 1일 가격으로 자동 변경됩니다.</h7>

													<div class="form-group row">

														<div class="col-sm-8 col-lg-5 mb-3 mb-sm-0">
														<label class="col-12 col-sm-3 col-form-label">
															<h7>1시간 당</h7></label>

															<input type="text" required="" placeholder="받을 금액" >
														</div>
													</div>

													<div class="form-group row">
														
														<div class="col-sm-8 col-lg-5">
														<label class="col-12 col-sm-3 col-form-label">
															<h7>1일 당</h7></label>

															<input type="text" required="" placeholder="받을 금액" >
														</div>
													</div>



													<div class="form-group row text-right">
														<div
															class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
															<button type="submit" class="btn btn-space btn-primary">등록완료</button>
															<button class="btn btn-space btn-secondary">취소</button>
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
			jQuery(
					'<div class="quantity-nav"><div class="quantity-button quantity-up">+</div><div class="quantity-button quantity-down">-</div></div>')
					.insertAfter('.quantity input');
			jQuery('.quantity').each(
					function() {
						var spinner = jQuery(this), input = spinner
								.find('input[type="number"]'), btnUp = spinner
								.find('.quantity-up'), btnDown = spinner
								.find('.quantity-down'), min = input
								.attr('min'), max = input.attr('max');

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