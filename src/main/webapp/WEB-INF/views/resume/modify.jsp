<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>
<link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel=stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">


    <body class="bg-secondary">

	    <main class="page-wrapper">
	        
	        <!-- Page container-->
	        <div class="container mt-5 mb-md-4 py-5">
	            <!-- Breadcrumb-->
	            <nav class="mb-3 mb-md-4 pt-md-3" aria-label="Breadcrumb">
	                <ol class="breadcrumb">
	                    <li class="breadcrumb-item"><a href="job-board-home-v1.html">Home</a></li>
	                    <li class="breadcrumb-item active" aria-current="page">Post resume</li>
	                </ol>
	            </nav>
	            <!-- Page content-->
	            <div class="row justify-content-center pb-sm-2">
	                <div class="col-lg-11 col-xl-10">
	                    <!-- Page title-->
	                    <div class="text-center pb-4 mb-3">
	                        <h1 class="h2 mb-4">이력서 등록</h1>
	                    </div>              
	                    <!-- Step 1: Basic Info-->
	                    <div class="bg-light rounded-3 p-4 p-md-5 mb-3">
	                        <h2 class="h4 mb-4"><i class="fi-info-circle text-primary fs-5 mt-n1 me-2"></i>이력서</h2>
	                      	<form role="form" action="/resume/modify" method="post">
		                        <div class="row">
		                       		 <div class="col-12 mb-4">
		                                <!-- <label class="form-label" for="pr-address">title</label> -->
		                                <input class="form-control form-control-lg" type="text" id="pr-address" name="resume_title" placeholder="이력서 제목을 입력하세요(100자까지 가능)*" value='<c:out value="${resume.resume_title }"/>'>
		                            </div>
		                            <div class="d-sm-flex justify-content-between align-items-start pb-4">
	                                    <div class="flex-shrink-0 order-sm-2 mb-4" style="width: 10rem; height: 10rem;">
	                                        <div class="filepond--root file-uploader bg-secondary filepond--hopper" data-style-panel-layout="compact" data-style-button-remove-item-position="left" data-style-button-process-item-position="right" data-style-load-indicator-position="right" data-style-progress-indicator-position="right" data-style-button-remove-item-align="false" style="height: 160px;">
	                                        	<input class="filepond--browser" type="file" id="filepond--browser-wiavsc9xq" name="filepond" aria-controls="filepond--assistant-wiavsc9xq" aria-labelledby="filepond--drop-label-wiavsc9xq" accept="image/png,image/jpeg">
	                                        	<!-- <a class="filepond--credits" aria-hidden="true" href="https://pqina.nl/" target="_blank" rel="noopener noreferrer" style="transform: translateY(152px);">Powered by PQINA
	                                        	</a> -->
	                                        	<div class="filepond--drop-label" style="transform: translate3d(0px, 0px, 0px); opacity: 1;">
		                                        	<label for="filepond--browser-wiavsc9xq" id="filepond--drop-label-wiavsc9xq" aria-hidden="true">
		                                        	<i class="d-inline-block fi-camera-plus fs-2 text-muted mb-2"></i><br>	                    
		                                       		 <span class="fw-bold">사진 추가</span>	                                       
	                                        		</label>
	                                       		</div>
	                                        	<div class="filepond--list-scroller" style="transform: translate3d(0px, 0px, 0px);">
	                                        		<ul class="filepond--list" role="list"></ul>
	                                        	</div>	                                       
	                                        	<div class="filepond--panel filepond--panel-root" data-scalable="true">
	                                       			<div class="filepond--panel-top filepond--panel-root">
	                                       			</div>
	                                        		<div class="filepond--panel-center filepond--panel-root" style="transform: translate3d(0px, 8px, 0px) scale3d(1, 1.44, 1);">
	                                       			</div>
	                                        		<div class="filepond--panel-bottom filepond--panel-root" style="transform: translate3d(0px, 152px, 0px);"></div></div><span class="filepond--assistant" id="filepond--assistant-wiavsc9xq" role="status" aria-live="polite" aria-relevant="additions"></span>
	                                        			<div class="filepond--drip">
	                                        			</div>
	                                        			<fieldset class="filepond--data"></fieldset>
	                                        		</div>
	                                    			</div>
	                                    			<div class="order-sm-1">
	                                        			<h4 class="h5">기본정보</h4>
	                                        			<ul class="list-unstyled text-nav">
			                                            <li><span class="text-muted">이름:</span> UX Designer</li>
			                                            <li><span class="text-muted">이메일:</span> Part-time</li>
			                                            <li><span class="text-muted">휴대폰:</span> New York, USA</li>
			                                            <li><span class="text-muted">주소:</span> $2000 – $3000</li>
	                                       				 </ul>
	                                    		</div>
                               			 </div>
                               		<div class="row">
                              		    <div class="col-sm-6 mb-4">		                                	
		                                	<select class="form-select form-select-lg" id="pr-country" name="resume_gender" value='<c:out value="${resume.resume_gender }"/>'>
		                    					<option value='<c:out value="${resume.resume_gender }"/>' disabled selected>${resume.resume_gender}</option>
							                    <option value="여">여</option>
							                    <option value="남">남</option>
		                  					</select>
		                           		 </div>
		                           		 <div class="col-sm-6 mb-4">
		                                	<select class="form-select form-select-lg" id="pr-city" name="resume_career" >
							                    <option value='<c:out value="${resume.resume_career }"/>' disabled selected>${resume.resume_career}</option>
							                    <option value="신입">신입</option>
							                    <option value="경력">경력</option>
		                  					</select>
		                            	</div>
		                            </div>
		                            	<div class="col-12 mb-4">
		                                	 <label class="form-label fw-bold pb-1 mb-2">보유기술 및 능력</label>
		                               		 <input class="form-control form-control-lg" type="text" id="pr-address" name="resume_technology" placeholder="보유기술 입력(ex.문서작성능력, java 등)" value='<c:out value="${resume.resume_technology }"/>'>
		                           		 </div>
		                	                      	                            		                          
		                             <div class="col-12 mb-4">
		                                <label class="form-label fw-bold pb-1 mb-2">자기소개서</label>
		                                <textarea class="form-control form-control-lg" id="pr-address" name="resume_cv" cols="30" rows="10" placeholder="내용을 입력하세요 " style="height: 272px;  resize: none;" >${resume.resume_cv }</textarea>
		                            </div>
		                        </div>

	                    <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5"> 
	                     	<input id="modify" class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="submit" value="등록">
	                     	<input id="modify" class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="submit" value="목록">
	                    </div>
	                	</form>
	                </div>   
	            </div>
	        </div>
	      
	    </main>

	    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
	    <!-- Vendor scrits: js libraries and plugins-->
	    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	    <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
	    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	    <!-- Main theme script-->
	    <script src="${path}/resources/js/theme.min.js"></script>
	    <script type="text/javascript">
	    	$(document).ready(function(){
	    		var formObj = $("form");
	    		
	    		$('#modify').on("click",function(e){
	    			
	    			e.preventDefault();
	    			
	    			var operation = $(this).data("oper");
	    			
	    			if(operation === 'list'){
	    				self.location = "resume/list" + "?{mem_no}"
	    				return;
	    			}
	    			formObj.submit();
	    		})
	    	})
	    	
	    </script>
	    
	</body>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>