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
	var checkindate;
	var checkintime;
	var checkoutdate;
	var checkouttime;
	var total;
	var reserveDay;
	var reserveTime;
	var payment;
	
	
	$(".dateCal").on("change", calClick);
	function calClick() {
		checkindate = new Date($("#datepicker").datepicker("getDate"));
		checkoutdate = new Date($("#datepicker2").datepicker("getDate"));
		checkintime = $("#checkintime").val();
		checkouttime = $("#checkouttime").val();
		console.log("체크인타임"+checkintime);
		console.log("체크인데이트"+checkindate);
		console.log("체크아웃타임"+checkouttime);
		console.log("체크아웃데이트"+checkoutdate);
		
		//total=((checkoutdate-checkindate)/1000/3600)+(24-checkintime);
		total=((checkoutdate-checkindate)/1000/3600);

		

		if(total > 0){
			console.log("총시간 "+total);
			if(total > 23){
				reserveDay = total / 24;
				reserveTime = total % 24;
				console.log(reserveDay+"박"+reserveTime+"시간");
				payment =${KEY_LVO.day_price} * reserveDay;
				console.log("총금액 "+payment);
				
				var htmlStr ="<li>&#8361;${KEY_LVO.time_price} X 3시간</li>";
				    htmlStr+="<li>&#8361;${KEY_LVO.day_price} X "+reserveDay+"박</li>";
				    htmlStr+="<li>합계 : &#8361;"+payment+"</li>";
				    
				var htmlStrPrice ="<span class='font-24'>&#8361;</span><sub class='display-4'>"+payment+"</sub>";
				
				$("#priceOnly").html(htmlStrPrice);
				$("#totalPrice").html(htmlStr);
				$("#payment").val(payment);
				
			}
		}
	}
	/* $("#datepicker2").on("change", calClick2);
	function calClick2() {
		//var date1 = new Date($("#datepicker").datepicker("getDate"));
		checkoutdate = new Date($("#datepicker2").datepicker("getDate"));
		console.log(checkoutdate);
		total=(checkoutdate-checkindate)/1000/3600;
	} */
	
    
});

</script>

<script>
	  $(function() {
	    $( "#datepicker" ).datepicker();
	  });
	
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
									<h2 class="pageheader-title"></h2>
									<p class="pageheader-text"></p>
									<div class="page-breadcrumb">
										<nav aria-label="breadcrumb">
										
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
						<form name="myform" method="post" action="/LodgingPayment">
										<input type="hidden" name="lodging_seq" value="${KEY_LVO.lodging_seq}">
										<input type="hidden" name="lodging_name" value="${KEY_LVO.lodging_name}">
										<input type="hidden" name="payment" id="payment" >
						
							<div class="row">
							
								<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
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
												<div id=priceOnly></div>
												
											</h1>
											
											
											
											<p>체크인          Date: <input type="text" class="dateCal" id="datepicker" name="datepicker" readonly>
									
											
											체크인 시간
													<select class="selectpicker dateCal" data-size="5" id="checkintime" name="checkintime">
														<option value=0>0:00</option>
														<option value=1>1:00</option>
														<option value=2>2:00</option>
														<option value=3>3:00</option>
														<option value=4>4:00</option>
														<option value=5>5:00</option>
														<option value=6>6:00</option>
														<option value=7>7:00</option>
														<option value=8>8:00</option>
														<option value=9>9:00</option>
														<option value=10>10:00</option>
														<option value=11>11:00</option>
														<option value=12>12:00</option>
														<option value=13>13:00</option>
														<option value=14>14:00</option>
														<option value=15>15:00</option>
														<option value=16>16:00</option>
														<option value=17>17:00</option>
														<option value=18>18:00</option>
														<option value=19>19:00</option>
														<option value=20>20:00</option>
														<option value=21>21:00</option>
														<option value=22>22:00</option>
														<option value=23>23:00</option>
													</select>
											
											</p>
											<p>체크아웃         Date: <input type="text" class="dateCal" id="datepicker2" name="datepicker2" readonly>
											체크아웃 시간
													<select class="selectpicker dateCal" data-size="5" id="checkouttime" name="checkouttime">
														<option value=0>0:00</option>
														<option value=1>1:00</option>
														<option value=2>2:00</option>
														<option value=3>3:00</option>
														<option value=4>4:00</option>
														<option value=5>5:00</option>
														<option value=6>6:00</option>
														<option value=7>7:00</option>
														<option value=8>8:00</option>
														<option value=9>9:00</option>
														<option value=10>10:00</option>
														<option value=11>11:00</option>
														<option value=12>12:00</option>
														<option value=13>13:00</option>
														<option value=14>14:00</option>
														<option value=15>15:00</option>
														<option value=16>16:00</option>
														<option value=17>17:00</option>
														<option value=18>18:00</option>
														<option value=19>19:00</option>
														<option value=20>20:00</option>
														<option value=21>21:00</option>
														<option value=22>22:00</option>
														<option value=23>23:00</option>
													</select>
											
											</p>
											
											<p>게스트 수 <select id="reserve_people" name="reserve_people">
											
											<c:forEach var="cnt" begin="1" end="${KEY_LVO.max_lodging_people}">
      											   <option value=${cnt}><c:out value = "${cnt}"/>명<br/>
      										</c:forEach>
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
												<div id="totalPrice"></div>
											</ul>
											<a href="javascript:document.myform.submit();"
												class="btn btn-outline-secondary btn-block btn-lg">예약하기</a>
										</div>
									</div>
								</div>
								
								
							</div>
							</form>
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