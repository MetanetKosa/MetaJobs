<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>

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
	                      	<form role="form" action="/resume/insert" method="post">
		                        <div class="row">
		                       		 <div class="col-12 mb-4">
		                                <!-- <label class="form-label" for="pr-address">title</label> -->
		                                <input class="form-control form-control-lg" type="text" id="pr-address" name="resume_title" placeholder="이력서 제목을 입력하세요(100자까지 가능)*">
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
		                                	<select class="form-select form-select-lg" id="pr-country" name="resume_gender" required>
		                    					<option value="" disabled selected>성별*</option>
							                    <option value="여">여</option>
							                    <option value="남">남</option>
		                  					</select>
		                           		 </div>
		                           		 <div class="col-sm-6 mb-4">
		                                	<select class="form-select form-select-lg" id="pr-city" name="resume_career" required>
							                    <option value="" disabled selected>경력여부*</option>
							                    <option value="신입">신입</option>
							                    <option value="경력">경력</option>
		                  					</select>
		                            	</div>
		                            </div>
		                            	<div class="col-12 mb-4">
		                                	 <label class="form-label fw-bold pb-1 mb-2">보유기술 및 능력</label>
		                               		 <input class="form-control form-control-lg" type="text" id="pr-address" name="resume_technology" placeholder="보유기술 입력(ex.문서작성능력, java 등)">
		                           		 </div>
		                           		 <div class="col-12 mb-4">
		                                	 <label class="form-label fw-bold pb-1 mb-2">보유기술 및 능력</label>
		                               		 <input class="form-control form-control-lg" type="text" id="pr-address" name="mem_no" placeholder="보유기술 입력(ex.문서작성능력, java 등)">
		                           		 </div>
		                   
<!-- 		                            <div class="col-sm-6 mb-4">
		                                <label class="form-label" for="pr-phone">mem_no</label>
		                                <input class="form-control form-control-lg" type="text" id="pr-phone" name="mem_no" placeholder="Enter your phone number">
		                            </div> -->		                      	                            
		                          
		                             <div class="col-12 mb-4">
		                                <label class="form-label fw-bold pb-1 mb-2">자기소개서</label>
		                                <textarea class="form-control form-control-lg" id="pr-address" name="resume_cv" cols="30" rows="10" placeholder="내용을 입력하세요 " style="height: 272px;  resize: none;"></textarea>
		                            </div>
		                        </div>
		                      
		                        <!-- <div class="border-top pt-4">
		                            <label class="form-label fw-bold py-2 mb-1" for="pr-position">Position you want to work on</label>
		                            <input class="form-control form-control-lg mb-4" type="text" id="pr-position" placeholder="Indicate the position" required>
		                            <label class="form-label fw-bold pb-1 mb-2">Choose categories for posting resume</label>
		                            <div class="row row-cols-sm-2 row-cols-md-4 gx-3 gx-lg-4 mb-4">
		                               
		                                <div class="col">
		                                    
		                                   
		                                    
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="sport">
		                                        <label class="form-check-label" for="sport">Fitness &amp; sports</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="beauty">
		                                        <label class="form-check-label" for="beauty">Beauty</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="culture">
		                                        <label class="form-check-label" for="culture">Culture</label>
		                                    </div>
		                                </div>
		                                <div class="col">
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="music">
		                                        <label class="form-check-label" for="music">Music</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="logistics">
		                                        <label class="form-check-label" for="logistics">Logistics</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="education">
		                                        <label class="form-check-label" for="education">Education &amp; science</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="sales">
		                                        <label class="form-check-label" for="sales">Sales &amp; purchases</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="industry">
		                                        <label class="form-check-label" for="industry">Industry</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="transportation">
		                                        <label class="form-check-label" for="transportation">Transportation</label>
		                                    </div>
		                                </div>
		                                <div class="col">
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="media">
		                                        <label class="form-check-label" for="media">Mass media &amp; publishing</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="insurance">
		                                        <label class="form-check-label" for="insurance">Insurance</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="construction">
		                                        <label class="form-check-label" for="construction">Construction</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="architecture">
		                                        <label class="form-check-label" for="architecture">Architecture</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="hr">
		                                        <label class="form-check-label" for="hr">HR management</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="law">
		                                        <label class="form-check-label" for="law">Law</label>
		                                    </div>
		                                </div>
		                            </div>
		                            <label class="form-label fw-bold pb-1 mb-2">Job type</label>
		                            <div class="row row-cols-sm-2 row-cols-md-4 gx-3 gx-lg-4 mb-4">
		                                <div class="col">
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="full-time">
		                                        <label class="form-check-label" for="full-time">Full-time</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="part-time" checked>
		                                        <label class="form-check-label" for="part-time">Part-time</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="remote">
		                                        <label class="form-check-label" for="remote">Remote</label>
		                                    </div>
		                                </div>
		                                <div class="col">
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="temporary" checked>
		                                        <label class="form-check-label" for="temporary">Temporary</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="contract">
		                                        <label class="form-check-label" for="contract">Contract</label>
		                                    </div>
		                                    <div class="form-check">
		                                        <input class="form-check-input" type="checkbox" id="internship">
		                                        <label class="form-check-label" for="internship">Internship</label>
		                                    </div>
		                                </div>
		                            </div>
		                            <label class="form-label fw-bold pb-1 mb-2">Salary range</label>
		                            <div class="row gx-2 gx-lg-3 gx-xl-4">
		                                <div class="col-md-2 mb-3 mb-md-0">
		                                    <select class="form-select form-select-lg">
		                      <option value="usd">&#36;</option>
		                      <option value="eur">&#8364;</option>
		                      <option value="gbp">&#163;</option>
		                      <option value="jpy">&#165;</option>
	                    </select>
	                                </div>
	                                <div class="col-md-7 mb-3 mb-md-0">
	                                    <div class="d-flex align-items-center">
	                                        <input class="form-control form-control-lg" type="number" step="100" min="300" placeholder="From">
	                                        <div class="mx-2">&mdash;</div>
	                                        <input class="form-control form-control-lg" type="number" step="100" min="500" placeholder="To">
	                                    </div>
	                                </div>
	                                <div class="col-md-3">
	                                    <select class="form-select form-select-lg">
	                      <option value="monthly">monthly</option>
	                      <option value="per hour">per hour</option>
	                      <option value="weekly">weekly</option>
	                      <option value="annually">annually</option>
	                    </select>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- Navigation-->
	                    <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5"> <input class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="submit">등록</a></div>
	                </div>
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
	    <script src="${path}/resources/js/theme.min.js"></script>
	    
	</body>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>