<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>
		
 <%
  	/* String lodging_seq = request.getParameter("lodging_seq").toString();
 	String lodging_name = request.getParameter("lodging_name").toString(); */
	 
 %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 헤더 css / jquery cdn -->
  	<%@ include file="/include/header.jsp" %>

<script>


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
                    <div class="col-xl-12">
                        <!-- ============================================================== -->
                        <!-- pageheader  -->
                        <!-- ============================================================== -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="page-header" id="top">
                                    <h2 class="pageheader-title">Form Elememnts </h2>
                                    
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
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        <div class="row">
                        	
                        	
                            <div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <img class="img-fluid" src="../assets/images/card-img.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h3 class="card-title">${KEY_RVO.lodging_name}</h3>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">게스트 : ${KEY_RVO.reserve_people}명</li>
                                        <li class="list-group-item">${KEY_RVO.checkin_date} ~ ${KEY_RVO.checkout_date}</li>
                                        <li class="list-group-item">총 결제 금액 :${KEY_RVO.price}</li>
                                    </ul>
                                    
                                </div>
                            </div>
                           	<div class="col-xl-4 col-lg-6 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <div class="card-header">
                                    	결제정보 입력
                                    </div>
                                    
                                    <div class="card-body border-top">
                                        <div class="form-group">
                                            <label>카드번호 <small class="text-muted">9999 9999 9999 9999</small></label>
                                            <input class="form-control cc-inputmask" id="cc-mask" type="text" im-insert="true" >
                                            
                                   
                                        </div>
                                    </div>
                                    <div class="card-body border-top">
                                        <div class="form-group">
                                            <label>만료일<small class="text-muted">YY/MM</small>
                                            </label>
                                            <input class="form-control currency-inputmask" id="currency-mask" type="text" im-insert="true">
                                        </div>
                                    </div> 
                                    <div class="card-body border-top">
                                        <div class="form-group">
                                            <label>CVV<small class="text-muted"> &nbsp; 3자리</small>
                                            </label>
                                            <input class="form-control currency-inputmask2" id="currency-mask2" type="text" im-insert="true">
                                        </div>
                                    </div>
                                    
                                    <ul class="list-group list-group-flush">
                                    	<li>예약 확정 전에는 요금이 청구 되지 않습니다.</li>
                                        <li class="list-group-item"><a href="javascript:document.myform.submit();" class="btn btn-primary">예약완료</a></li>
                                    </ul>
                                </div>
                           
                            
                        </div>
                        
                        <!-- ============================================================== -->
                        <!-- end basic form  -->
                        <!-- ============================================================== -->
                        <form name="myform" method="post" action="LodgingPaymentResult">
							<input type="hidden" name="lodging_seq" value="${KEY_RVO.lodging_seq}">
							<input type="hidden" name="checkin_date" value="${KEY_RVO.checkin_date}" >
							<input type="hidden" name="checkout_date" value="${KEY_RVO.checkout_date}" >
							<input type="hidden" name="checkin_time" value="${KEY_RVO.checkin_time}" >
							<input type="hidden" name="checkout_time" value="${KEY_RVO.checkout_time}" >
							<input type="hidden" name="reserve_people" value="${KEY_RVO.reserve_people}" >
							<input type="hidden" name="price" value="${KEY_RVO.price}" >
							<%-- <input type="hidden" name="USERCODE" value="${sessionScope.SESS_USERCODE}" > --%>
							<input type="hidden" name="usercode" value="jjh12112123" >
						</form>
                       
                        
                      
                        
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
            $(".currency-inputmask").inputmask("99/99"),
            $(".currency-inputmask2").inputmask("999"),
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