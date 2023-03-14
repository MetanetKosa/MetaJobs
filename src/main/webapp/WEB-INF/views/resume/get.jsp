<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>
<link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel=stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">



    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Body-->

<body class="bg-secondary">

    <main class="page-wrapper">
        <!-- Page content-->
        <!-- Page container-->
        <div class="container mt-5 mb-md-4 py-5">
            <!-- Breadcrumb-->
            <nav class="mb-3 mb-md-4 pt-md-3" aria-label="Breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="job-board-home-v1.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">이력서</li>
                </ol>
            </nav>
            <!-- Page content-->
            <div class="row justify-content-center pb-sm-2">
                <div class="col-lg-11 col-xl-10">
                    <!-- Page title-->
                    <h1 class="h2 text-center pb-4 mb-3">My resume</h1>

                    <!-- Step 5: Review-->
                    <div class="bg-light rounded-3 pt-4 pb-0 px-4 p-md-5 mb-3">
                        <!-- Title + Action buttons-->
                        <div class="d-md-flex align-items-center mb-4 pb-md-2">
                            <h2 class="h4 mb-md-0"><i class="fi-eye-on text-primary fs-5 mt-n1 me-2 pe-1"></i>${resume.resume_title }</h2>
                            <div class="ms-md-auto">
                                <div class="dropdown d-lg-none">
                                    <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown"><i class="fi-align-justify me-1"></i>Actions</button>
                                    <div class="dropdown-menu dropdown-menu-end my-1"><a class="dropdown-item" href="#">
                                    	<i class="fi-trash me-2"></i>Delete</a>
                                    </div>
                                </div>
                                <ul class="list-unstyled d-none d-lg-flex flex-wrap fs-sm mb-0">
                                    <li class="border-end mb-0"><button type="button" id="delete"  class="btn btn-sm text-primary d-none d-lg-block order-lg-3" data-oper='delete' ><i class="fi-trash me-1"></i><span class="align-middle">삭제</span></button></li>
                                    <li class="border-end mb-0"><button type="button"  class="btn btn-sm text-primary d-none d-lg-block order-lg-3" data-oper="modify"><i class="fi-archive me-1"></i><span class="align-middle">수정</span></button></li>                                  
                                </ul>
                            </div>
                        </div>
                        <!-- Resume preview-->
                        <div class="card shadow-sm p-md-2 mx-n4 mx-md-0">
                            <div class="card-body p-4">
                                <div class="d-sm-flex justify-content-between align-items-start pb-4">
                                    <div class="order-sm-1">
                                        <h3 class="h4 mb-sm-4">Annette Black</h3>
                                        <h4 class="h5">기본정보</h4>
                                        <ul class="list-unstyled text-nav">
                                            <li><span class='text-muted'>생년월일:</span> ${resume.resume_title}</li>
                                            <li><span class='text-muted'>휴대폰번호:</span> Part-time</li>
                                            <li><span class='text-muted'>주소:</span> New York, USA</li>
                                            <li><span class='text-muted'>이메일:</span> $2000 – $3000</li>
                                            <li><span class='text-muted'>성별:</span> ${resume.resume_gender}</li>
                                            <li><span class='text-muted'>경력여부:</span> ${resume.resume_career}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="border-top py-4">
                                    <h4 class="h5">자기소개서</h4>
                                    <ul class="list-unstyled text-nav">
                                        <li><span class='text-muted'> ${resume.resume_cv}</span></li>

                                    </ul>
                                </div>
                                <div class="border-top py-4">
                                    <h4 class="h5">첨부파일</h4>
                                    <div class="mt-3">                                
                                        <p></p>
                                        <div class="d-flex">
                                        </div>                              
                                  	 </div>                                 
                                </div>
                            </div>
                        </div>
                        <!-- Navigation-->
                        <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5">
                            <button class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="button" data-oper='list'>목록</button>
                        </div>
                    </div>
                    <form id='operForm' action="/resume/modify" method="get">
                    	<input type='hidden' id= 'resume_no' name='resume_no' value='<c:out value="${resume.resume_no}"/>'>
                    	<input type='hidden' id= 'mem_no' name='mem_no' value='<c:out value="${resume.mem_no}"/>'>
                    </form>
                </div>
            </div>
    </main>

    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
	<script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<!-- Main theme script-->
	<script src="${spath}/resources/js/theme.min.js"></script>

    <script src="vendor/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
    <script src="vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
    <script src="vendor/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
    <script src="vendor/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
    <script src="vendor/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
    <script src="vendor/filepond/dist/filepond.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var operForm = $("#operForm");
			
			$("button[data-oper='modify']").on("click", function(e){
				operForm.find("#mem_no").remove();
				operForm.attr("action", "/resume/modify").submit();
			});
			
			$("button[data-oper='list']").on("click", function(e){
				operForm.find("#resume_no").remove();
				operForm.attr("action", "/resume/list").submit();
			});
			
			$("button[data-oper='delete']").on("click", function(e){
				operForm.find("#mem_no").remove();
				operForm.attr("action", "/resume/delete").attr("method","post").submit();
			});
			
		});
		
	</script>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>