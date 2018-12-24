<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원가입</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link href="../assets/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet" href="../assets/libs/css/style.css">
<link rel="stylesheet"
	href="../assets/vendor/fonts/fontawesome/css/fontawesome-all.css">

<script>
   function validate() {
	   var radio_val = $("input[name=radio_s]:checked").val();
	   var pass1 = document.forms['reg']["password"].value;
	   var pass2 = document.forms['reg']["repassword"].value;
	  
	   
	   
	   //-------------------------
	   
	   if(pass1 != pass2){
		   alert("비밀번호확인이 일치하지 않습니다");
    	   return false;
	   }
      
       
       if(radio_val ==""){
    	   alert("성별을 선택해주세요");
    	   return false;
       }
       return true;
   }
</script>



	
	
<style>
html, body {
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

<body>
    <!-- ============================================================== -->
    <!-- signup form  -->
    <!-- ============================================================== -->
    <form class="splash-container" name = "reg" id="reg" onsubmit="return validate()" action="/regist" method="post" enctype= "multipart/form-data">
    
        <div class="card">
            <div class="card-header">
                <h3 class="mb-1">회원가입</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="email" name="email" id="email" placeholder="이메일 입력" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" name="password" id="password"  type="text" placeholder="비밀번호 설정" autocomplete="off">
                </div>
                
                 <div class="form-group">
                    <input class="form-control form-control-lg"  name="repassword" id="repassword" type="text" placeholder="비밀번호 확인" autocomplete="off">
                </div>
                  <hr color="#e6e6f2">
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="f_name" id="f_name" placeholder="이름" autocomplete="off">
                </div>
                <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="l_name" id="l_name" placeholder="성" autocomplete="off">
                </div>
                  
                  
                  <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="radio_s" value="남성" checked="" class="custom-control-input"><span class="custom-control-label">남성</span>
                                            </label>
                <input type="radio" name="radio_s" checked="" class="custom-control-input">                            
                  
                <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="radio_s" value="여성" class="custom-control-input"><span class="custom-control-label">여성</span>
                                            </label>
                 <input type="radio" name="radio_s" class="custom-control-input"> 
                 
                 
                                        <h3 class="font-16">생년월일</h3>
                                        <select name="birth_y">
                                            <option selected="" >년</option>
                                                <option value="2018">2018</option>
											    <option value="2017">2017</option>
											    <option value="2016">2016</option>
											    <option value="2015">2015</option>
											    <option value="2014">2014</option>
											    <option value="2013">2013</option>
											    <option value="2012">2012</option>
											    <option value="2011">2011</option>
											    <option value="2010">2010</option>
											    <option value="2009">2009</option>
											    <option value="2008">2008</option>
											    <option value="2007">2007</option>
											    <option value="2006">2006</option>
											    <option value="2005">2005</option>
											    <option value="2004">2004</option>
											    <option value="2003">2003</option>
											    <option value="2002">2002</option>
											    <option value="2001">2001</option>
											    <option value="2000">2000</option>
											    <option value="1999">1999</option>
											    <option value="1998">1998</option>
											    <option value="1997">1997</option>
											    <option value="1996">1996</option>
											    <option value="1995">1995</option>
											    <option value="1994">1994</option>
											    <option value="1993">1993</option>
											    <option value="1992">1992</option>
											    <option value="1991">1991</option>
											    <option value="1990">1990</option>
											    <option value="1989">1989</option>
											    <option value="1988">1988</option>
											    <option value="1987">1987</option>
											    <option value="1986">1986</option>
											    <option value="1985">1985</option>
											    <option value="1984">1984</option>
											    <option value="1983">1983</option>
											    <option value="1982">1982</option>
											    <option value="1981">1981</option>
											    <option value="1980">1980</option>
											    <option value="1979">1979</option>
											    <option value="1978">1978</option>
											    <option value="1977">1977</option>
											    <option value="1976">1976</option>
											    <option value="1975">1975</option>
											    <option value="1974">1974</option>
											    <option value="1973">1973</option>
											    <option value="1972">1972</option>
											    <option value="1971">1971</option>
											    <option value="1970">1970</option>
											    <option value="1969">1969</option>
											    <option value="1968">1968</option>
											    <option value="1967">1967</option>
											    <option value="1966">1966</option>
											    <option value="1965">1965</option>
											    <option value="1964">1964</option>
											    <option value="1963">1963</option>
											    <option value="1962">1962</option>
											    <option value="1961">1961</option>
											    <option value="1960">1960</option>
											    <option value="1959">1959</option>
											    <option value="1958">1958</option>
											    <option value="1957">1957</option>
											    <option value="1956">1956</option>
											    <option value="1955">1955</option>
											    <option value="1954">1954</option>
											    <option value="1953">1953</option>
											    <option value="1952">1952</option>
											    <option value="1951">1951</option>
											    <option value="1950">1950</option>
											    <option value="1949">1949</option>
											    <option value="1948">1948</option>
											    <option value="1947">1947</option>
											    <option value="1946">1946</option>
											    <option value="1945">1945</option>
											    <option value="1944">1944</option>
											    <option value="1943">1943</option>
											    <option value="1942">1942</option>
											    <option value="1941">1941</option>
											    <option value="1940">1940</option>
											    <option value="1939">1939</option>
											    <option value="1938">1938</option>
											    <option value="1937">1937</option>
											    <option value="1936">1936</option>
											    <option value="1935">1935</option>
											    <option value="1934">1934</option>
											    <option value="1933">1933</option>
											    <option value="1932">1932</option>
											    <option value="1931">1931</option>
											    <option value="1930">1930</option>
											    <option value="1929">1929</option>
											    <option value="1928">1928</option>
											    <option value="1927">1927</option>
											    <option value="1926">1926</option>
											    <option value="1925">1925</option>
											    <option value="1924">1924</option>
											    <option value="1923">1923</option>
											    <option value="1922">1922</option>
											    <option value="1921">1921</option>
											    <option value="1920">1920</option>
											    <option value="1919">1919</option>
											    <option value="1918">1918</option>
											    <option value="1917">1917</option>
											    <option value="1916">1916</option>
											    <option value="1915">1915</option>
											    <option value="1914">1914</option>
											    <option value="1913">1913</option>
											    <option value="1912">1912</option>
											    <option value="1911">1911</option>
											    <option value="1910">1910</option>
											    <option value="1909">1909</option>
											    <option value="1908">1908</option>
											    <option value="1907">1907</option>
											    <option value="1906">1906</option>
											    <option value="1905">1905</option>
                                        </select><label>년</label>
                                        
                                        <select  name="birth_m">
                                            <option selected="">월</option>
											<option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
                                        </select><label>월</label>
                                        
                                        
                                        <select name="birth_d">
                                            <option selected="">일</option>
                                            <option value="01">1</option>
											<option value="02">2</option>
											<option value="03">3</option>
											<option value="04">4</option>
											<option value="05">5</option>
											<option value="06">6</option>
											<option value="07">7</option>
											<option value="08">8</option>
											<option value="09">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
                                        </select><label>일</label>
                                                                        
                 
                 <div class="card-body border-top">
                  <div class="form-group">
                    <input class="form-control form-control-lg" type="text" name="nation" id="nation" required="" placeholder="소속국가" autocomplete="off">
                </div>
                 
                 <div class="form-group">
                    <input class="form-control form-control-lg" type="text"required="" name="tel" id="tel" placeholder="전화번호">
                </div>
                 <div class="form-group">
                   <!--  <input class="form-control " required="" placeholder="자기소개를 입력하세요" > -->
                    <textarea required="" class="form-control4" type="text" name="introduction" id="introduction" placeholder="자기소개를 입력하세요"></textarea>
                </div>
                
                
                                    
                                    
                                      <div class="control-group">
            <label class="control-label"><strong> 프로필사진</strong> </label>
            <div class="controls">
              <input class="input-file" id="profilePic" name="profilePic" type="file">
             
              <div id="prev-img-div1"></div>
			
            </div>
          </div>
          <br>
</div>
				<div class="form-group pt-2">
					<button class="btn btn-block btn-primary" type="submit">가입완료</button>
				</div>
				<div class="form-group row pt-0">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
						<button class="btn btn-block btn-social btn-facebook "
							type="button">Facebook</button>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<button class="btn  btn-block btn-social btn-twitter"
							type="button">Twitter</button>
					</div>
				</div>
			</div>
			<div class="card-footer bg-white">
				<p>
					이미 회원이신가요? <a href="./login.jsp" class="text-secondary">로그인 하기</a>
				</p>
			</div>
		</div>
	</form>
</body>


</html>