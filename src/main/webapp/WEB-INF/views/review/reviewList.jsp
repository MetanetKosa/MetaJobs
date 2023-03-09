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
                        <form class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label class="form-label" for="review-name">Name <span class='text-danger'>*</span></label>
                                <input class="form-control" type="text" id="review-name" placeholder="Your name" required>
                                <div class="invalid-feedback">Please let us know your name.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="review-email">Email <span class='text-danger'>*</span></label>
                                <input class="form-control" type="email" id="review-email" placeholder="Your email address" required>
                                <div class="invalid-feedback">Please provide a valid email address.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="review-rating">Rating <span class='text-danger'>*</span></label>
                                <select class="form-control form-select" id="review-rating" required>
                    <option value="" selected disabled hidden>Choose rating</option>
                    <option value="5 stars">5 stars</option>
                    <option value="4 stars">4 stars</option>
                    <option value="3 stars">3 stars</option>
                    <option value="2 stars">2 stars</option>
                    <option value="1 star">1 star</option>
                  </select>
                                <div class="invalid-feedback">Please rate the property.</div>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="review-text">Review <span class='text-danger'>*</span></label>
                                <textarea class="form-control" id="review-text" rows="5" placeholder="Your review message" required></textarea>
                                <div class="invalid-feedback">Please write your review.</div>
                            </div>
                            <button class="btn btn-primary d-block w-100 mb-4" type="submit">Submit a review</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

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



                    <!-- Reviews-->
                    <div class="mb-4 pb-4 border-bottom">
                        <div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between"><a class="btn btn-outline-primary mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal"><i class="fi-edit me-1"></i>Add review</a>
                            <div class="d-flex align-items-center ms-sm-4">
                                <label class="me-2 pe-1 text-nowrap" for="reviews-sorting"><i class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                                <select class="form-select" id="reviews-sorting">
                    <option>Newest</option>
                    <option>Oldest</option>
                    <option>Popular</option>
                    <option>High rating</option>
                    <option>Low rating</option>
                  </select>
                            </div>
                        </div>
                    </div>
                    <!-- Review-->
                    <div class="mb-4 pb-4 border-bottom">
                        <div class="d-flex justify-content-between mb-3">
                            <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png" width="48" alt="Avatar">
                                <div class="ps-2">
                                    <h6 class="fs-base mb-0">회사명</h6>
                                    <h6 class="fs-sm mb-0">직종</h6>
                                </div>
                            </div><span class="fs-sm">작성일</span>
                        </div>
                        <div class="row">
                            <div class="col-2">
                                <h6 class="fs-xs mb-0">면접일</h6>
                                <h6 class="fs-xs fw-light mb-0">2023.03.09</h6>
                                <h6 class="fs-xs pt-2 mb-0">면접인원</h6>
                                <h6 class="fs-xs fw-light mb-0">5명</h6>
                            </div>
                            <div class="col-10">
                                <h3 class="fs-sm mb-0">면접내용</h3>
                                 <p class="fs-sm" style="min-height:90px;">편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.편안한 분위기였습니다.</p>
                                <h3 class="fs-sm mb-0">면접 결과</h3>
                                <p class="fs-sm">합격</p>

                            </div>
                        </div>
                    </div>
                    <!-- Pagination-->
                    <nav class="mt-2 mb-4" aria-label="Reviews pagination">
                        <ul class="pagination">
                            <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                            <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span>
                            </li>
                            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                            <li class="page-item d-none d-sm-block">...</li>
                            <li class="page-item d-none d-sm-block"><a class="page-link" href="#">8</a></li>
                            <li class="page-item"><a class="page-link" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
                        </ul>
                    </nav>
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