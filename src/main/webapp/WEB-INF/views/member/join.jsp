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
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
</head>
<!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
<body>
	<!-- Sign Up Modal -->
	
     <!-- **************************************** 회원가입 멤버 모달 id signup-member -->
     <div class="modal fade" id="signup-member" tabindex="-1" aria-hidden="true">
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
                             <div class="mt-sm-4 pt-md-3">Already have an account? <a href="#signin-modal" data-bs-toggle="modal" data-bs-dismiss="modal">Sign in</a></div>
                         </div>
                         <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info rounded-pill w-100 mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                             <div class="d-flex align-items-center py-3 mb-3">
                                 <hr class="w-100">
                                 <div class="px-3">Or</div>
                                 <hr class="w-100">
                             </div>
                             
                             <form id="join_form" method="post" class="needs-validation" novalidate>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-name">ID</label>
                                     <input class="form-control" name="id" type="text" id="signup-id" required>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-password">Password<span class='fs-sm text-muted'>  최소 8글자 이상</span></label>
                                     <div class="password-toggle">
                                         <input class="form-control" name="pw" type="password" id="signup-password" minlength="8" required>
                                         <label class="password-toggle-btn" aria-label="Show/hide password">
                       						<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                     					</label>
                                     </div>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-password-confirm">Confirm password</label>
                                     <div class="password-toggle">
                                         <input class="form-control" type="password" id="signup-password-confirm" minlength="8" required>
                                         <label class="password-toggle-btn" aria-label="Show/hide password">
                       					<input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    					</label>
                                     </div>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-name">Name</label>
                                     <input class="form-control" name="name" type="text" id="signup-name" placeholder="이름" required>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-birth">Birth</label>
                                     <input class="form-control" name="birth" type="date" id="signup-birth" placeholder="생년월일" required>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-address">Address</label>
                                     <input class="form-control" name="address" type="text" id="signup-address" placeholder="주소" required>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-phone">Phone</label>
                                     <input class="form-control" name="phone" type="text" id="signup-phone" placeholder="전화번호" required>
                                 </div>
                                 <div class="mb-4">
                                     <label class="form-label" for="signup-email">Email</label>
                                     <input class="form-control" name="email" type="email" id="signup-email" placeholder="@gmail.com" required>
                                 </div>
                                 <div class="form-check mb-4">
                                     <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                                     <label class="form-check-label" for="agree-to-terms">By joining, I agree to the <a href='#'>Terms of use</a> and <a href='#'>Privacy policy</a></label>
                                 </div>
                                 <input type="button" class="join_button">Sign up</input>
                             </form>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <script>
		$(document).ready(function(){
			//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function(){
				$("#join_form").attr("action", "/member/join");
				$("#join_form").submit();
			});
		});
	</script>
 <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
	    <!-- Vendor scrits: js libraries and plugins-->
	    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
	    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	    <script src="${path}/resources/vendor/flatpickr/dist/flatpickr.min.js"></script>
	    <!-- Main theme script-->
		<script src="${path}/resources/js/theme.min.js"></script>	
</body>
</html>