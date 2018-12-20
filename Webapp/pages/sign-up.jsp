<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="../assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/libs/css/style.css">
    <link rel="stylesheet" href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: center;
        align-items: center;
        padding-top: 40px;
        padding-bottom: 40px;
    }
    </style>
</head>
<!-- ============================================================== -->
<!-- signup form  -->
<!-- ============================================================== -->

<body>
    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container">
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">Registrations Form</h3>
                <p>Please enter your user information.</p>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="nick" required="" placeholder="Username" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" required="" placeholder="E-mail" autocomplete="off">
                </div>
                <div class="form-group">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" required="" placeholder="비밀번호 설정">
                </div>
                
                 <div class="form-group">
                    <input class="form-control form-control-lg" required="" placeholder="비밀번호 확인">
                </div>
                  <hr color="#e6e6f2">
                  
                  
                  <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="radio-inline" checked="" class="custom-control-input"><span class="custom-control-label">남성</span>
                                            </label>
                <input type="radio" name="radio-inline" checked="" class="custom-control-input">                            
                  
                <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="radio-inline" class="custom-control-input"><span class="custom-control-label">여성</span>
                                            </label>
                 <input type="radio" name="radio-inline" class="custom-control-input"> 
                 
                 <div class="form-group">
                    <input class="form-control form-control-lg" required="" placeholder="전화번호">
                </div>
                 <div class="form-group">
                   <!--  <input class="form-control " required="" placeholder="자기소개를 입력하세요" > -->
                    <textarea required="" class="form-control4" placeholder="자기소개를 입력하세요"></textarea>
                </div>
                
                <div class="card-body border-top">
                                        <h3 class="font-16">생년월일</h3>
                                        <select class="form-control5">
                                            <option selected="">년</option>
                                            <option value="20-30">20-30</option>
                                            <option value="30-40">30-40</option>
                                            <option value="40-50">40-50</option>
                                        </select>
                                        
                                        <select class="form-control5">
                                            <option selected="">월</option>
                                            <option value="20-30">20-30</option>
                                            <option value="30-40">30-40</option>
                                            <option value="40-50">40-50</option>
                                        </select>
                                        
                                        
                                        <select class="form-control5">
                                            <option selected="">일</option>
                                            <option value="20-30">20-30</option>
                                            <option value="30-40">30-40</option>
                                            <option value="40-50">40-50</option>
                                        </select>
                                    </div>
                                    
                                    
                                      <div class="control-group">
            <label class="control-label"><strong><font color="red">*</font> 대표사진</strong> </label>
            <div class="controls">
              <input class="input-file" id="mainPic" name="mainPic" type="file">
             
              <div id="prev-img-div1"></div>
			
            </div>
          </div>
          <br>

		  <div class="control-group">
            <label class="control-label"><strong>기타사진</strong> </label>
            <div class="controls">
              <input class="input-file" id="addtionalPic" name="addtionalPic" Multiple type="file">
              <div id="prev-img-div2"></div>
            </div>
          </div>
          <br>
          
                                    
                                   <!--  <label class="btn btn-outline-light btn-upload m-b-0" for="inputImage" title="Upload image file">
                                <input type="file" class="sr-only" id="inputImage" name="file" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                                <span class="docs-tooltip" data-toggle="tooltip" data-animation="false" title="" data-original-title="Import image with Blob URLs">
                          <span class="fa fa-upload"></span>
                                </span>
                            </label> -->
                  
                <div class="form-group pt-2">
                    <button class="btn btn-block btn-primary" type="submit">Register My Account</button>
                </div>
                <div class="form-group">
                    <label class="custom-control custom-checkbox">
                        <input class="custom-control-input" type="checkbox"><span class="custom-control-label">By creating an account, you agree the <a href="#">terms and conditions</a></span>
                    </label>
                </div>
                <div class="form-group row pt-0">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
                        <button class="btn btn-block btn-social btn-facebook " type="button">Facebook</button>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <button class="btn  btn-block btn-social btn-twitter" type="button">Twitter</button>
                    </div>
                </div>
            </div>
            <div class="card-footer bg-white">
                <p>Already member? <a href="#" class="text-secondary">Login Here.</a></p>
            </div>
        </div>
    </form>
</body>

 
</html>