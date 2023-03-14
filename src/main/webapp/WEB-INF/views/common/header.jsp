<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	
	 <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">
    <!-- Page loading styles-->
    <style>
        .page-loading {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            -webkit-transition: all .4s .2s ease-in-out;
            transition: all .4s .2s ease-in-out;
            background-color: #fff;
            opacity: 0;
            visibility: hidden;
            z-index: 9999;
        }
        
        .page-loading.active {
            opacity: 1;
            visibility: visible;
        }
        
        .page-loading-inner {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            text-align: center;
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            -webkit-transition: opacity .2s ease-in-out;
            transition: opacity .2s ease-in-out;
            opacity: 0;
        }
        
        .page-loading.active>.page-loading-inner {
            opacity: 1;
        }
        
        .page-loading-inner>span {
            display: block;
            font-size: 1rem;
            font-weight: normal;
            color: #666276;
            ;
        }
        
        .page-spinner {
            display: inline-block;
            width: 2.75rem;
            height: 2.75rem;
            margin-bottom: .75rem;
            vertical-align: text-bottom;
            border: .15em solid #bbb7c5;
            border-right-color: transparent;
            border-radius: 50%;
            -webkit-animation: spinner .75s linear infinite;
            animation: spinner .75s linear infinite;
        }
        
        @-webkit-keyframes spinner {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
        
        @keyframes spinner {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
    </style>
    <!-- Page loading scripts-->
    <script>
        (function() {
            window.onload = function() {
                var preloader = document.querySelector('.page-loading');
                preloader.classList.remove('active');
                setTimeout(function() {
                    preloader.remove();
                }, 2000);
            };
        })();
    </script>
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
</head>
	

<body>
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <main class="page-wrapper">
    
    <!-- Sign Up Modal-->
        <!-- **************************************** 로그인 회원/기업 구분 id singin-modal -->
        <div class="modal fade" id="signin-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 500px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                            	 <a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#modal-memSingin" data-bs-toggle="modal"><i class="fi-user me-2"></i>일반 회원</a>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5">
								 <a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#modal-comSingin" data-bs-toggle="modal"><i class="fi-user me-2"></i>기업 회원</a>                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Sign In Modal-->
        <!-- ************************************** 일반회원 로그인 모달 id modal-memSingin -->
        <div class="modal fade" id="modal-memSingin" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                                <h2 class="h3 mb-4 mb-sm-5">Hey there!<br>Welcome Metajobs back.</h2><img class="d-block mx-auto" src="img/signin-modal/signin.svg" width="344" alt="Illustartion">
                                <div class="mt-4 mt-sm-5">Don't have an account? <a href="#modal-memSingup" data-bs-toggle="modal" data-bs-dismiss="modal">Sign up here</a></div>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                                <div class="d-flex align-items-center py-3 mb-3">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form action="/member/login" method="post" class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label mb-2" for="signin-id">ID</label>
                                        <input class="form-control" id="signin-id" name="mem_id" placeholder="Enter ID" required>
                                    </div>
                                    <div class="mb-4">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <label class="form-label mb-0" for="signin-password">Password</label><a class="fs-sm" href="#">Forgot password?</a>
                                        </div>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" name="mem_pw" id="signin-password" placeholder="Enter password" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          					<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        					</label>
                                        </div>
	                                 </div>
                                  	<%-- <c:if test="${msg == false}"> --%>
                                    <c:if test="${result == 0}">
                                    	<p style="color:#f00;">ID 또는 비밀번호를 잘못 입력하셨습니다.</p>
                                    </c:if>
                                    <button id="login" class="btn btn-primary btn-lg rounded-pill w-100" type="submit">Sign in</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Sign In Modal-->
        <!-- ************************************** 기업회원 로그인 모달 id modal-comSingin -->
        <div class="modal fade" id="modal-comSingin" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                                <h2 class="h3 mb-4 mb-sm-5">Hey there!<br>Welcome Metajobs back.</h2><img class="d-block mx-auto" src="img/signin-modal/signin.svg" width="344" alt="Illustartion">
                                <div class="mt-4 mt-sm-5">Don't have an account? <a href="#modal-comSingup" data-bs-toggle="modal" data-bs-dismiss="modal">Sign up here</a></div>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                                <div class="d-flex align-items-center py-3 mb-3">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form action="/company/login" method="post" class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label mb-2" for="signin-id">ID</label>
                                        <input class="form-control" id="signin-id" name="mem_id" placeholder="Enter ID" required>
                                    </div>
                                    <div class="mb-4">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <label class="form-label mb-0" for="signin-password">Password</label><a class="fs-sm" href="#">Forgot password?</a>
                                        </div>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" name="mem_pw" id="signin-password" placeholder="Enter password" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          					<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        					</label>
                                        </div>
	                                 </div>
                                  	<%-- <c:if test="${msg == false}"> --%>
                                    <c:if test="${result == 0}">
                                    	<p style="color:#f00;">ID 또는 비밀번호를 잘못 입력하셨습니다.</p>
                                    </c:if>
                                    <button id="login" class="btn btn-primary btn-lg rounded-pill w-100" type="submit">Sign in</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
<!--         
        Sign Out Modal
        ************************************** 로그아웃 모달 id signout-modal
        <div class="modal fade" id="signout-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 500px;">
                <div class="modal-content">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                    <div class="modal-body px-0 py-2 py-sm-0 m-5">
                        <div class="row mx-0 align-items-center">
                                <form action="/logout" method="post" class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label mb-2">로그아웃 하시겠습니까?<br></label>
                                    </div>
                                    
                                    <div class="mb-4">
                                        <label class="form-label mb-2" for="signout-id">&nbsp;ID를 입력하세요</label><br>
                                        <input class="form-control" id="signout-id" name="mem_id" placeholder="Enter ID" required>
                                    </div>
                                    
                                    <button id="login" class="btn btn-primary btn-lg rounded-pill w-100" type="submit">Sign out</button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   -->      
        
        <!-- Sign Up Modal-->
        <!-- **************************************** 회원가입 회원/기업 구분 id signup-modal -->
        <div class="modal fade" id="signup-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 500px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                            	 <a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#modal-memSingup" data-bs-toggle="modal"><i class="fi-user me-2"></i>일반 회원</a>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5">
								 <a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#modal-comSingup" data-bs-toggle="modal"><i class="fi-user me-2"></i>기업 회원</a>                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
          
       <!--  Sign Up Modal -->
        <!-- **************************************** 회원가입 멤버 모달 id signup-member -->
        <div class="modal fade" id="modal-memSingup" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                                <h2 class="h3 mb-4 mb-sm-5">Join MetaJobs.<br>Get premium benefits:</h2>
                                <ul class="list-unstyled mb-4 mb-sm-5">
                                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Add and promote your Resumes</span></li>
                                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Easily manage your Apply List</span></li>
                                    <li class="d-flex mb-0"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Leave Interview reviews</span></li>
                                </ul><img class="d-block mx-auto" src="img/signin-modal/signup.svg" width="344" alt="Illustartion">
                                <div class="mt-sm-4 pt-md-3">Already have an account? <a href="#modal-memSingin" data-bs-toggle="modal" data-bs-dismiss="modal">Sign in</a></div>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                                <div class="d-flex align-items-center py-3 mb-3">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form action="/member/insert" method="post" class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-id">ID<span class='fs-sm text-muted'>&nbsp;&nbsp;영어/숫자&nbsp;조합&nbsp;4-20글자</span></label>
                                        <input class="form-control" type="text" id="signup-id" name="mem_id" required pattern="[A-Za-z0-9]{4,20}" autocomplete="off">
                                        
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-password">Password<span class='fs-sm text-muted'>&nbsp;&nbsp;최소 4글자 이상</span></label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" name="mem_pw" id="signup-password" minlength="4" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          						<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        					</label>
                                        </div>
                                    </div>
                                    <!-- <div class="mb-4">
                                        <label class="form-label" for="signup-password-confirm">Confirm password</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="signup-password-confirm" minlength="4" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          					<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                       					</label>
                                        </div>
                                    </div> -->
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-name">Name<span class='fs-sm text-muted'>&nbsp;&nbsp;한글&nbsp;2-10글자</span></label>
                                        <input class="form-control" type="text" name="mem_name" id="signup-name" pattern="[가-힣]{2,10}" placeholder="이름" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-birth">Birth</label>
                                       <div class="input-group input-group-lg">
		                                <!-- <input class="form-control" type="date" id="birth" name="mem_birth" required> -->
										<input class="form-control date-picker rounded pe-5" type="text" id="reDate" name="mem_birth" placeholder="Choose date" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;Y-m-d&quot;}"><i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
										</div>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-address">Address</label>
                                        <input class="form-control" type="text" name="mem_address" id="signup-address" placeholder="주소" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-phone">Phone</label>
                                        <input class="form-control" type="text" name="mem_phone" id="signup-phone" placeholder="전화번호" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-email">Email</label>
                                        <input class="form-control" type="email" name="mem_email" id="signup-email" placeholder="@gmail.com" required>
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                                        <label class="form-check-label" for="agree-to-terms">By joining, I agree to the <a href='#'>Terms of use</a> and <a href='#'>Privacy policy</a></label>
                                    </div>
                                    <button class="btn btn-primary btn-lg rounded-pill w-100" type="submit">Sign up</button>
                                    <!-- <button class="btn btn-primary btn-lg rounded-pill w-100" type="button">Sign up</button> -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 
      
        <!-- Sign Up Modal -->
        <!-- **************************************** 회원가입 기업 모달 id signup-company -->
        <div class="modal fade" id="modal-comSingup" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                                <h2 class="h3 mb-4 mb-sm-5">Join MetaJobs.<br>Get premium benefits:</h2>
                                <ul class="list-unstyled mb-4 mb-sm-5">
                                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Add and promote your Apply Post</span></li>
                                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Easily manage your Apply Post</span></li>
                                    <li class="d-flex mb-0"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>Easily manage Candidates</span></li>
                                </ul><img class="d-block mx-auto" src="img/signin-modal/signup.svg" width="344" alt="Illustartion">
                                <div class="mt-sm-4 pt-md-3">Already have an account? <a href="#signin-modal" data-bs-toggle="modal" data-bs-dismiss="modal">Sign in</a></div>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                                <div class="d-flex align-items-center py-3 mb-3">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form action="/company/insert" method="post" class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-id">ID<span class='fs-sm text-muted'>&nbsp;&nbsp;영어/숫자&nbsp;조합&nbsp;4-20글자</span></label>
                                        <input class="form-control" type="text" name="com_id" id="signup-id" required pattern="[A-Za-z0-9]{4,20}" autocomplete="off">
                                        
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-password">Password<span class='fs-sm text-muted'>&nbsp;&nbsp;최소 4글자 이상</span></label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" name="com_pw" id="signup-password" minlength="4" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          						<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        					</label>
                                        </div>
                                    </div>
                                    <!-- 
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-password-confirm">Confirm password</label>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="signup-password-confirm" minlength="4" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          					<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                       					</label>
                                        </div>
                                    </div>
                                     -->
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-number">Company Number<span class='fs-sm text-muted'>&nbsp;&nbsp;4글자</span></label>
                                        <input class="form-control" type="text" id="signup-number" name="com_cno" maxlength="4" placeholder="사업자번호" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-name">Company Name<span class='fs-sm text-muted'>&nbsp;&nbsp;2-10글자</span></label>
                                        <input class="form-control" type="text" id="signup-name" name="com_name" pattern="[가-힣A-Za-z0-9]{2,10}" placeholder="기업명" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-address">Company Address</label>
                                        <input class="form-control" type="text" id="signup-address" name="com_address" placeholder="주소" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-phone">Company Phone</label>
                                        <input class="form-control" type="text" id="signup-phone" name="com_phone" placeholder="전화번호" required>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-type">Company Type</label>
                                        <div>
                                        	<label class="radio-inline"><input type="radio" name="com_type" checked value="대기업">대기업</label>&nbsp;&nbsp;
                                        	<label class="radio-inline"><input type="radio" name="com_type" value="중견기업">중견기업</label>&nbsp;&nbsp;
                                        	<label class="radio-inline"><input type="radio" name="com_type" value="중소기업">중소기업</label>
                                        </div>
                                        <!-- <input class="form-control" type="text" id="signup-type" placeholder="기업형태 ex)대기업/중견기업" required> -->
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="signup-manager">CEO<span class='fs-sm text-muted'>&nbsp;&nbsp;2-10글자</span></label>
                                        <input class="form-control" type="text" id="signup-manager" name="com_ceo" pattern="[가-힣A-Za-z0-9]{2,10}" placeholder="기업 대표" required>
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                                        <label class="form-check-label" for="agree-to-terms">By joining, I agree to the <a href='#'>Terms of use</a> and <a href='#'>Privacy policy</a></label>
                                    </div>
                                    <button class="btn btn-primary btn-lg rounded-pill w-100" type="submit">Sign up</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        
        <!--  MyPage Modal -->
        <!-- **************************************** 마이페이지 모달 id modal-myPage -->
        <div class="modal fade" id="modal-myPage" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
                        <h3 class="modal-title mt-4 text-center">회원 정보</h3>
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body px-sm-5 px-4">
                        <form class="needs-validation" action="/member/update" method="post" novalidate>
                        	<input type="hidden" name="mem_id" value="${member.mem_id}">
                            <div class="mb-3">
                                <label class="form-label" for="id">ID <span class='text-danger'>*</span>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${member.mem_id}"/></label>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="name">회원명 <span class='text-danger'>*</span>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${member.mem_name}"/></label>
				            </div> 
				            <div class="mb-3">
                                <label class="form-label" for="birth">생년월일 &nbsp;&nbsp;<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${member.mem_birth}"/></label>
                                <div class="input-group input-group-lg">
                                <!-- <input class="form-control" type="date" id="birth" name="mem_birth" required> -->
								<input class="form-control date-picker rounded pe-5" type="text" id="reDate" name="mem_birth" placeholder="Choose date" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;Y-m-d&quot;}"><i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
								</div>
                            </div> 
				            <div class="mb-3">
                                <label class="form-label" for="phone">핸드폰번호 &nbsp;&nbsp;</label>
                            	<input class="form-control" type="text" id="phone" name="mem_phone" placeholder="<c:out value="${member.mem_phone}"/>" required>
                            </div> 
				            <div class="mb-3">
                                <label class="form-label" for="address">주소 &nbsp;&nbsp;</label>
                            	<input class="form-control" type="text" id="address" name="mem_address" placeholder="<c:out value="${member.mem_address}"/>" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="email">Email &nbsp;&nbsp;</label>
                            	<input class="form-control" type="text" id="email" name="mem_email" placeholder="<c:out value="${member.mem_email}"/>" required>
                            </div>
                            <button class="btn btn-primary d-block w-100 mb-4" type="submit">회원정보 수정</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
 	
 		<!-- Navbar-->
        <header class="navbar navbar-expand-lg navbar-light fixed-top" data-scroll-header>
            <div class="container">
                <a class="navbar-brand me-3 me-xl-4" href="${path}/"><img class="d-block" src="img/logo/logo-dark.svg" width="116" alt="Finder"></a>
                
                <!-- ************************************* 로그인 로그아웃 버튼 -->
                <a class="navbar-brand me-3 me-xl-4" href="${path}/"><img class="d-block" src="${path}/resources/img/logo/logo-dark.svg" width="116" alt="Finder"></a>
                <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                
                
                <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
                    <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
                        <!-- Menu-->
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link align-items-center pe-lg-4" href="${path}/" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>공고 등록<span class="d-none d-lg-block position-absolute top-50 end-0 translate-middle-y border-end" style="width: 1px; height: 30px;"></span></a></li>
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link  align-items-center pe-lg-4" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>공고 목록<span class="d-none d-lg-block position-absolute top-50 end-0 translate-middle-y border-end" style="width: 1px; height: 30px;"></span></a></li>
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link align-items-center pe-lg-4" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>면접 후기<span class="d-none d-lg-block position-absolute top-50 end-0 translate-middle-y border-end" style="width: 1px; height: 30px;"></span></a></li>
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link align-items-center pe-lg-4" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>나의 이력서</a></li>
                        <li class="nav-item d-lg-none"><a class="nav-link" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a></li>
                    </ul>
                    <!-- 
                    <a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                 -->
                
                
                 <%--  
                <!-- 로그인하지 않은 상태 -->
                <c:if test = "${member == null} && ${company == null}">
                	<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                </c:if>
                
                <!-- 로그인 한 상태 -->
                <c:choose>
                <c:when test="${member != null}">
                	<a href="/member/logout" class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3"><i class="fi-minus me-2"></i>Sign<span class='d-none d-sm-inline'> Out</span></a>
               		<span>${member.mem_name}&nbsp;님&nbsp;&nbsp;환영합니다&nbsp;:)&nbsp;</span>
               	</c:when>
                <c:when test="${company != null}">
                	<a href="/company/logout" class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3"><i class="fi-minus me-2"></i>Sign<span class='d-none d-sm-inline'> Out</span></a>
               		<span>${company.com_name}&nbsp;님&nbsp;&nbsp;환영합니다&nbsp;:)&nbsp;</span>
               	</c:when>
                </c:choose>
                 --%>
                
                <!-- 로그인하지 않은 상태 -->
                <c:if test = "${member == null}">
                	<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                </c:if>
                
                <!-- 로그인 한 상태 -->
                <c:if test = "${member != null}">
               		<!-- <button id="login" a href="login.do" class="btn btn-primary btn-lg rounded-pill w-100" type="button">Sign out</button> -->
               		<span>${member.mem_name}&nbsp;님&nbsp;&nbsp;환영합니다&nbsp;:)&nbsp;</span>
               		<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#modal-myPage" data-bs-toggle="modal"><i class="fi-user me-2"></i>마이 페이지</a>
                	<a href="/logout" class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3"><i class="fi-minus me-2"></i>Sign<span class='d-none d-sm-inline'> Out</span></a>
                </c:if>
                
                <%--     
                <!-- 로그인하지 않은 상태 -->
                <c:if test = "${company == null}">
                	<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                </c:if>
                
                <!-- 로그인 한 상태 -->
                <c:if test = "${company != null}">
                	<a href="/logout" class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3"><i class="fi-minus me-2"></i>Sign<span class='d-none d-sm-inline'> Out</span></a>
               		<!-- <button id="login" a href="login.do" class="btn btn-primary btn-lg rounded-pill w-100" type="button">Sign out</button> -->
               		<span>${company.com_name}&nbsp;님&nbsp;&nbsp;환영합니다&nbsp;:)&nbsp;</span>
                </c:if>
                 
                 
                <!-- 로그인하지 않은 상태 -->
                <c:choose>
                <c:when test="${member == null}">
                	<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                </c:when>
                <c:when test="${company == null}">
                	<a class="btn btn-sm text-primary d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                	<a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="#signup-modal" data-bs-toggle="modal"><i class="fi-plus me-2"></i>Sign<span class='d-none d-sm-inline'> Up</span></a>
                	</c:when>
                </c:choose> 
                --%>
                </div>
            </div>
        </header>
    </main>

    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/lightgallery.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/fullscreen/lg-fullscreen.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/zoom/lg-zoom.min.js"></script>
    <script src="${path}/resources/vendor/lightgallery/plugins/thumbnail/lg-thumbnail.min.js"></script>
    <script src="${path}/resources/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
    <!-- Main theme script-->
    <script src="${path}/resources/js/theme.min.js"></script>
    
    <script type="text/javascript">
    
	$(document).ready(function(){
		var result = '<c:out value="${result}"/>';
	});
	
	checkModal(result);
	
	function checkModal(result) {
		if (result == 0)
			alert("로그인 실패");
	}
		
	</script>
</body>


</html>
