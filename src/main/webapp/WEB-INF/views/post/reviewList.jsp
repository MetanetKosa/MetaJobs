<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>
<!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/lightgallery/css/lightgallery-bundle.min.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="${path}/resources/vendor/flatpickr/dist/flatpickr.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
<link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">


    <body class="bg-secondary">
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	    <main class="page-wrapper">
	        
	     <!-- Page content-->
        <!-- Review modal-->
        <div class="modal fade" id="modal-review" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
                        <h3 class="modal-title mt-4 text-center">Leave a review</h3>
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body px-sm-5 px-4">
                        <form class="needs-validation" action="${path}/review/insert" method="post" novalidate>
                            <div class="mb-3">
                                <label class="form-label" for="cName">회사명 <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="cName" name="cno" placeholder="회사명" required>
                                <div class="invalid-feedback">Please let us know your name.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="reJob">직군 <span class='text-danger'>*</span></label>
                                <select class="form-control form-select" id="reJob" name="reJob" required>
					                    <option value="" selected disabled hidden>직군</option>
					                    <option value="개발">개발</option>
					                    <option value="금융/재무">금융/재무</option>
					                    <option value="기획/경영">기획/경영</option>
					                    <option value="미디어/홍보">미디어/홍보</option>
					                    <option value="법률/법무">법률/법무</option>
					                    <option value="생산/제조">생산/제조</option>
					                    <option value="생산관리/품질관리">생산관리/품질관리</option>
					                    <option value="엔지니어링">엔지니어링</option>
					                    <option value="연구개발">연구개발</option>
					                    <option value="영업/제휴">영업/제휴</option>
					                    <option value="유통/무역">유통/무역</option>
				                  </select>
				            </div> 
                            <div class="mb-3">
				                <label class="form-label" for="reJob">직군 <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="mno" name="mno" placeholder="회원번호" required>
                               <!--  <div class="invalid-feedback">Please provide a valid email address.</div> -->
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="reDate">면접일 <span class='text-danger'>*</span></label>
                                <div class="input-group input-group-lg">
 								<input class="form-control date-picker rounded pe-5" type="text" id="reDate" name="reDate" placeholder="Choose date" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;Y-m-d&quot;}"><i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
								</div>
                            </div>
                            <div class="mb-3">
                            <div class="row">
	                            <div class="col-6">
	                                <label class="form-label" for="pNum">면접인원 <span class='text-danger'>*</span></label>
	                                <select class="form-control form-select" style="width:150px;" id="pNum" name="pNum" required>
					                    <option value="" selected disabled hidden>면접인원</option>
					                    <option value="단독면접">단독면접</option>
					                    <option value="개인면접">개인면접</option>
					                    <option value="집단면접">집단면접</option>
				                  </select>
	                 			 </div>
	                            <div class="col-6">
	                                <label class="form-label" for="reResult">면접결과 <span class='text-danger'>*</span></label>
	                                <select class="form-control form-select" style="width:150px;" id="reResult" name="reResult" required>
					                    <option value="" selected disabled hidden>면접결과</option>
					                    <option value="합격">합격</option>
					                    <option value="불합격">불합격</option>
				                  </select>
	                 			 </div>
                            
                 		 </div>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="reContent">후기 내용 <span class='text-danger'>*</span></label>
                                <textarea class="form-control" id="reContent" name="reContent" rows="5" placeholder="후기 내용을 적어주세요." required></textarea>
                                <div class="invalid-feedback">후기 내용을 적어주세요.</div>
                            </div>
                            <button class="btn btn-primary d-block w-100 mb-4" type="submit">리뷰 등록</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
  
       <%--  <!-- Review modal-->
        <div class="modal fade" id="modal-reviewUpdate" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
                        <h3 class="modal-title mt-4 text-center">Leave a review</h3>
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body px-sm-5 px-4">
                        <form class="needs-validation" action="${path}/review/update" method="post" novalidate>
                            <div class="mb-3">
                                <label class="form-label" for="cName">회사명 <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="cName" name="cno" value='<c:out value="${review.cno}"/>' placeholder="회사명" >
                                <div class="invalid-feedback">Please let us know your name.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="reJob">직군 <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="reJob" name="reJob" placeholder="직군" required>
                               <!--  <div class="invalid-feedback">Please provide a valid email address.</div> -->
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="reJob">회원번호..수정해야함 <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="mno" name="mno" placeholder="직군" required>
                               <!--  <div class="invalid-feedback">Please provide a valid email address.</div> -->
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="reDate">면접일 <span class='text-danger'>*</span></label>
                                <div class="input-group input-group-lg">
 								<input class="form-control date-picker rounded pe-5" type="text" id="reDate" name="reDate" placeholder="Choose date" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;Y-m-d&quot;}"><i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
								</div>
                            </div>
                            <div class="mb-3">
                            <div class="row">
	                            <div class="col-6">
	                                <label class="form-label" for="pNum">면접인원 <span class='text-danger'>*</span></label>
	                                <select class="form-control form-select" style="width:150px;" id="pNum" name="pNum" required>
					                    <option value="" selected disabled hidden>면접인원</option>
					                    <option value="single">단독면접</option>
					                    <option value="individual">개인면접</option>
					                    <option value="group">집단면접</option>
				                  </select>
	                 			 </div>
	                            <div class="col-6">
	                                <label class="form-label" for="reResult">면접결과 <span class='text-danger'>*</span></label>
	                                <select class="form-control form-select" style="width:150px;" id="reResult" name="reResult" required>
					                    <option value="" selected disabled hidden>면접결과</option>
					                    <option value="합격">합격</option>
					                    <option value="불합격">불합격</option>
				                  </select>
	                 			 </div>
                            
                 		 </div>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="reContent">후기 내용 <span class='text-danger'>*</span></label>
                                <textarea class="form-control" id="reContent" name="reContent" rows="5" placeholder="후기 내용을 적어주세요." required></textarea>
                                <div class="invalid-feedback">후기 내용을 적어주세요.</div>
                            </div>
                            <button class="btn btn-primary d-block w-100 mb-4" type="submit">리뷰 수정</button>
                        </form>
                    </div>
                </div>
            </div>
        </div> --%>

        <!-- Post content-->
        <section class="container mb-5 pb-1">

            <div class="row justify-content-center pb-sm-2">
                <div class="container col-lg-8 col-xl-7">

                    <!-- Page header-->
                    <section class="container pt-5 mt-5">
                        <!-- Breadcrumb-->
                        <nav class="mb-3 pt-md-3" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="real-estate-home-v1.html">Home</a></li>
                                <li class="breadcrumb-item"><a href="real-estate-catalog-rent.html">Property for rent</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Pine Apartments</li>
                            </ol>
                        </nav>
                        <h1 class="h2 mb-2">Pine Apartments</h1>
                        <p class="mb-2 pb-1 fs-lg">28 Jackson Ave Long Island City, NY 67234</p>

                    </section>

                    <span class="badge bg-success me-2 mb-3">Verified</span><span class="badge bg-info me-2 mb-3">New</span>
                    <h2 class="h3 mb-4 pb-4 border-bottom">$2,000<span class="d-inline-block ms-1 fs-base fw-normal text-body">/month</span></h2>

					 <!-- Form group-->
                        <form class="form-group d-block" name="reviewSearchFrm" action="${path}/review/reviewSearch" method="get" >
                            <div class="row g-0">
                                <div class="col-md-10 d-sm-flex align-items-center">
                                    <div class="input-group input-group-lg border-end-md"><span class="input-group-text text-muted rounded-pill ps-3"><i class="fi-search"></i></span>
                                        <input class="form-control" name="keyword" type="text" placeholder="회사명을 입력하세요">
                                    </div>
                                    <hr class="d-sm-none my-2">
                                    <div class="dropdown w-sm-50 border-end-sm" data-bs-toggle="select">
                                        <button class="btn btn-lg btn-link dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><i class="fi-home me-2"></i><span class="dropdown-toggle-label">직종</span></button>
                                        <input type="hidden" name="searchJob">
                                        <ul class="dropdown-menu" style="position: absolute; z-index:1;">
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">직종 전체</span></a></li>      
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">개발</span></a></li>      
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">금융/재무</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">기획/경영</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">미디어/홍보</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">법률/법무</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">생산/제조</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">생산관리/품질관리</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">엔지니어링</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">연구개발</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">영업/제휴</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">유통/무역</span></a></li>
                                        </ul>
                                    </div>
                                    <hr class="d-sm-none my-2">
                                    <div class="dropdown w-sm-50 border-end-sm" data-bs-toggle="select">
                                        <button class="btn btn-lg btn-link dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><i class="fi-map-pin me-2"></i><span class="dropdown-toggle-label">면접결과</span></button>
                                        <input type="hidden" name="searchResult">
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">합격</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">불합격</span></a></li>
                                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">대기중</span></a></li>
                                        </ul>
                                    </div>  
                                </div>
                                <hr class="d-md-none mt-2">
                                <div class="col-md-2 d-sm-flex align-items-center pt-3 pt-md-0">
                                    <input class="btn btn-lg btn-icon btn-primary px-3 w-100" type="submit" value="검색"/>
                                </div>
                            </div>
                        </form>


                    <!-- Reviews-->
                    <div class="mb-4 pb-4 border-bottom">
                        <div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between"><a class="btn btn-outline-primary mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal"><i class="fi-edit me-1"></i>Add review</a>
                            <div class="d-flex align-items-center ms-sm-4">
                           	<p>총 ${total}건</p>
                               <!--  <label class="me-2 pe-1 text-nowrap" for="reviews-sorting"><i class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                                <select class="form-select" id="reviews-sorting">
                    <option>Newest</option>
                    <option>Oldest</option>
                    <option>Popular</option>
                    <option>High rating</option>
                    <option>Low rating</option>
                  </select> -->
                            </div>
                        </div>
                    </div>
                    <!-- Review-->
                    <c:forEach items="${list}" var="review">
	                    <div class="mb-4 pb-4 border-bottom">
	                        <div class="d-flex justify-content-between mb-3">
	                            <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png" width="48" alt="Avatar">
	                                <div class="ps-2">
	                                    <h6 class="fs-base mb-0">회사명</h6>
	                                    <h6 class="fs-sm mb-0">${review.reJob}</h6>
	                                </div>
	                            </div>
	                            <div>
	                            	<span class="fs-sm"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${review.reDate}"/></span>
	                            	<form id="updateForm" action="${path}/review/get" method="get">
		                            	<input type="hidden" name="rno" value="${review.rno}">
		                            	<span><a class="nav-link" href = "#modal-reviewUpdate" data-bs-toggle="modal">수정</a></span>
	                            	</form>
	                            	<form id="deleteForm" action="${path}/review/delete" method="post">
		                            	<input type="hidden" name="rno" value="${review.rno}">
		                            	<span><button class="nav-link" type="submit">삭제</button></span>
	                            	</form>
	                           </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-2">
	                                <h6 class="fs-xs mb-0">면접일</h6>
	                                <h6 class="fs-xs fw-light mb-0"><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${review.reDate}"/></h6>
	                                <h6 class="fs-xs pt-2 mb-0">면접인원</h6>
	                                <h6 class="fs-xs fw-light mb-0">면접인원</h6>
	                            </div>
	                            <div class="col-10">
	                                <h3 class="fs-sm mb-0">면접내용</h3>
	                                 <p class="fs-sm" style="min-height:90px;">${review.reContent}</p>
	                                <h3 class="fs-sm mb-0">면접 결과</h3>
	                                <p class="fs-sm">${review.reResult}</p>
	
	                            </div>
	                        </div>
	                    </div>
                    </c:forEach>
                    <!-- Pagination-->
                    <nav class="mt-2 mb-4" aria-label="Reviews pagination">
                        <ul class="pagination">
                        	<c:if test="${pageMaker.prev}">
                            	<li class="page-item"><a class="page-link" href="#" aria-label="Prev"><i class="fi-chevron-left"></i></a></li>
                        	</c:if>
                        	
                            <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                      <!--       <li class="page-item active d-none d-sm-block" aria-current="page"> -->
	                            <li class="page-item ${pageMaker.cri.pageNum == num ? "active" : ""}" aria-current="page">
	                            	<a class="page-link" href="${num}"><c:out value="${num}"/></a>
	                            	<span class="visually-hidden">(current)</span>
	                            </li>
                            </c:forEach>
                        	<c:if test="${pageMaker.prev}">
                            	<li class="page-item"><a class="page-link" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
                        	</c:if>
                        </ul>
                        
                        <form id='actionForm' action="${path}/review/reviewList" method='get'>
							<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
                        </form>
                        
                    </nav>
                </div>
            </div>
            
            
        
        <div class="modal fade" id="myModal" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header d-block position-relative border-0 pb-0 px-sm-5 px-4">
                        <h6 class="modal-title mt-1 text-center">등록 완료!</h6>
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
						처리가 완료되었습니다.
                    </div>
                </div>
            </div>
        </div>
	    </main>
		<script type="text/javascript">
			$(document).ready(function(){
				var result = '<c:out value="${result}"/>';
				
				checkModal(result);

				history.replaceState({}, null, null);
				
				function checkModal(result){
					
					if(result ==='' || history.state){
						return;
					}
					
					if(parseInt(result) > 0){
						$(".modal-body").html("게시글" + parseInt(result) + "번이 등록되었습니다.");
					}
				$("#myModal").modal("show");
				}
				
				var actionForm = $("#actionForm");
				$(".page-item a").on("click", function(e) {
					
					e.preventDefault();
					
					console.log('click');
					
					actionForm.find("input[name = 'pageNum']").val($(this).attr("href"));
					actionForm.submit();
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

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>