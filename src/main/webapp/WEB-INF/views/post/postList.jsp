<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>

<body>
    <!-- Page loading spinner-->
    <!-- <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div> -->
    <main class="page-wrapper">
        <!-- Sign In Modal-->
        <div class="modal fade" id="signin-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
                <div class="modal-content">
                    <div class="modal-body px-0 py-2 py-sm-0">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <div class="row mx-0 align-items-center">
                            <div class="col-md-6 border-end-md p-4 p-sm-5">
                                <h2 class="h3 mb-4 mb-sm-5">Hey there!<br>Welcome back.</h2><img class="d-block mx-auto" src="${path}/resources/img/signin-modal/signin.svg" width="344" alt="Illustartion">
                                <div class="mt-4 mt-sm-5">Don't have an account? <a href="#signup-modal" data-bs-toggle="modal" data-bs-dismiss="modal">Sign up here</a></div>
                            </div>
                            <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info w-100 rounded-pill mb-3" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info w-100 rounded-pill mb-3" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                                <div class="d-flex align-items-center py-3 mb-3">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form class="needs-validation" novalidate>
                                    <div class="mb-4">
                                        <label class="form-label mb-2" for="signin-email">Email address</label>
                                        <input class="form-control" type="email" id="signin-email" placeholder="Enter your email" required>
                                    </div>
                                    <div class="mb-4">
                                        <div class="d-flex align-items-center justify-content-between mb-2">
                                            <label class="form-label mb-0" for="signin-password">Password</label><a class="fs-sm" href="#">Forgot password?</a>
                                        </div>
                                        <div class="password-toggle">
                                            <input class="form-control" type="password" id="signin-password" placeholder="Enter password" required>
                                            <label class="password-toggle-btn" aria-label="Show/hide password">
                          <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        </label>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-lg w-100 rounded-pill" type="submit">Sign in</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up Modal-->
        <div class="modal fade" id="signup-modal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 734px;">
                <div class="modal-content">
                    <div class="modal-body p-sm-5">
                        <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
                        <ul class="nav nav-pills flex-column flex-sm-row border-bottom pb-4 mt-sm-n2 my-4" role="tablist">
                            <li class="nav-item me-sm-3 mb-sm-0"><a class="nav-link active" href="#job-seeker" data-bs-toggle="tab" role="tab" aria-controls="job-seeker" aria-selected="true"><i class="fi-user me-2"></i>I am job seeker</a></li>
                            <li class="nav-item mb-sm-0"><a class="nav-link" href="#employer" data-bs-toggle="tab" role="tab" aria-controls="employer" aria-selected="false"><i class="fi-briefcase me-2"></i>I am employer</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="job-seeker" role="tabpanel">
                                <h3>Register to add a resume</h3>
                                <p class="pb-3">Get access to all the functions of the site that will help you find a great job.</p>
                                <div class="row gx-2 gx-md-4">
                                    <div class="col-sm-6 mb-3"><a class="btn btn-outline-info w-100 rounded-pill" href="#"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a></div>
                                    <div class="col-sm-6 mb-3"><a class="btn btn-outline-info w-100 rounded-pill" href="#"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a></div>
                                </div>
                                <div class="d-flex align-items-center py-2 mb-2">
                                    <hr class="w-100">
                                    <div class="px-3">Or</div>
                                    <hr class="w-100">
                                </div>
                                <form class="needs-validation" novalidate>
                                    <div class="row gx-2 gx-md-4">
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="js-fn">Full name</label>
                                            <input class="form-control" type="text" id="js-fn" placeholder="Enter your full name" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="js-email">Emaill address</label>
                                            <input class="form-control" type="email" id="js-email" placeholder="Enter your email" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="js-password">Password <span class='text-muted'>(min. 8 char)</span></label>
                                            <div class="password-toggle">
                                                <input class="form-control" type="password" id="js-password" minlength="8" required>
                                                <label class="password-toggle-btn" aria-label="Show/hide password">
                            <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                          </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="js-password-confirm">Confirm password</label>
                                            <div class="password-toggle">
                                                <input class="form-control" type="password" id="js-password-confirm" minlength="8" required>
                                                <label class="password-toggle-btn" aria-label="Show/hide password">
                            <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                          </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                                        <label class="form-check-label" for="agree-to-terms">By joining, I agree to the <a href='#'>Terms of use</a> and <a href='#'>Privacy policy</a></label>
                                    </div>
                                    <button class="btn btn-primary btn-lg w-100 rounded-pill" type="submit">Sign up</button>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="employer" role="tabpanel">
                                <h3>Register to post a vacancy</h3>
                                <p class="pb-3">Get access to all special services for employers on Finder.</p>
                                <form class="needs-validation" novalidate>
                                    <div class="row gx-2 gx-md-4">
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-fn">Full name</label>
                                            <input class="form-control" type="text" id="em-fn" placeholder="Enter your full name" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-email">Emaill <span class='text-muted'>(better corporate)</span></label>
                                            <input class="form-control" type="email" id="em-email" placeholder="Enter email" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-company">Company name</label>
                                            <input class="form-control" type="text" id="em-company" placeholder="Enter company name" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-location">Main office location</label>
                                            <input class="form-control" type="text" id="em-location" placeholder="Country, City, Address" required>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-password">Password <span class='text-muted'>(min. 8 char)</span></label>
                                            <div class="password-toggle">
                                                <input class="form-control" type="password" id="em-password" minlength="8" required>
                                                <label class="password-toggle-btn" aria-label="Show/hide password">
                            <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                          </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 mb-4">
                                            <label class="form-label" for="em-password-confirm">Confirm password</label>
                                            <div class="password-toggle">
                                                <input class="form-control" type="password" id="em-password-confirm" minlength="8" required>
                                                <label class="password-toggle-btn" aria-label="Show/hide password">
                            <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                          </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" id="agree-to-terms2" required>
                                        <label class="form-check-label" for="agree-to-terms2">By joining, I agree to the <a href='#'>Terms of use</a> and <a href='#'>Privacy policy</a></label>
                                    </div>
                                    <button class="btn btn-primary btn-lg w-100 rounded-pill" type="submit">Sign up</button>
                                </form>
                            </div>
                        </div>
                        <div class="pt-4 pb-3 pb-sm-0 mt-2">Already have an account? <a href="#signin-modal" data-bs-toggle="modal" data-bs-dismiss="modal">Sign in</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar-->
        <header class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" data-scroll-header>
            <div class="container">
                <a class="navbar-brand me-0 me-xl-4" href="job-board-home-v1.html"><img class="d-block" src="${path}/resources/img/logo/logo-light.svg" width="116" alt="Finder"></a>
                <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <a class="btn btn-link btn-light btn-sm d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>
                <a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="/post/postRegister"y ><i class="fi-plus me-2"></i>공고 등록</a><a class="btn btn-link btn-light btn-sm d-none d-lg-block order-lg-3 pe-0 ms-2" href="job-board-home-v2.html">For employers<i class="fi-arrow-long-right ms-2"></i></a>
                <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
                    <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
                        <!-- Demos switcher-->
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link dropdown-toggle align-items-center pe-lg-4" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>Demos<span class="d-none d-lg-block position-absolute top-50 end-0 translate-middle-y border-end border-light" style="width: 1px; height: 30px;"></span></a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="real-estate-home-v1.html"><i class="fi-building fs-base me-2"></i>Real Estate Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="car-finder-home.html"><i class="fi-car fs-base me-2"></i>Car Finder Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="job-board-home-v1.html"><i class="fi-briefcase fs-base me-2"></i>Job Board Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="city-guide-home-v1.html"><i class="fi-map-pin fs-base me-2"></i>City Guide Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="index.html"><i class="fi-home fs-base me-2"></i>Main Page</a></li>
                                <li><a class="dropdown-item" href="components/typography.html"><i class="fi-list fs-base me-2"></i>Components</a></li>
                                <li><a class="dropdown-item" href="docs/dev-setup.html"><i class="fi-file fs-base me-2"></i>Documentation</a></li>
                            </ul>
                        </li>
                        <!-- Menu items-->
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="job-board-home-v1.html">For Job Seekers</a></li>
                                <li><a class="dropdown-item" href="job-board-home-v2.html">For Employers</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catalog</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="job-board-catalog.html">List of Jobs</a></li>
                                <li><a class="dropdown-item" href="job-board-single.html">Single Job Page</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Account</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#">Account Pages</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="job-board-account-profile.html">Profile Settings</a></li>
                                        <li><a class="dropdown-item" href="job-board-account-my-resumes.html">My Resumes</a></li>
                                        <li><a class="dropdown-item" href="job-board-account-saved-jobs.html">Saved Jobs</a></li>
                                        <li><a class="dropdown-item" href="job-board-account-notifications.html">Notifications</a></li>
                                        <li><a class="dropdown-item" href="signin-light.html">Sign In</a></li>
                                        <li><a class="dropdown-item" href="signup-light.html">Sign Up</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#">Post Resume</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="job-board-post-resume-1.html">Step 1: Basic Info</a></li>
                                        <li><a class="dropdown-item" href="job-board-post-resume-2.html">Step 2: Education</a></li>
                                        <li><a class="dropdown-item" href="job-board-post-resume-3.html">Step 3: Work Experience</a></li>
                                        <li><a class="dropdown-item" href="job-board-post-resume-4.html">Step 4: Skills</a></li>
                                        <li><a class="dropdown-item" href="job-board-post-resume-5.html">Step 5: Review</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="job-board-promotion.html">Ad Promotion Page</a></li>
                                <li><a class="dropdown-item" href="job-board-employer-single.html">Employer / Company Page</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="job-board-about.html">About</a></li>
                                <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="job-board-blog.html">Blog Grid</a></li>
                                        <li><a class="dropdown-item" href="job-board-blog-single.html">Single Post</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="job-board-contacts.html">Contacts</a></li>
                                <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Help Center</a>
                                    <ul class="dropdown-menu dropdown-menu-dark">
                                        <li><a class="dropdown-item" href="job-board-help-center.html">Help Topics</a></li>
                                        <li><a class="dropdown-item" href="job-board-help-center-single-topic.html">Single Topic</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="job-board-404.html">404 Not Found</a></li>
                            </ul>
                        </li>
                        <li class="nav-item d-lg-none"><a class="nav-link" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <!-- Page content-->
        <!-- Page header-->
        <section class="bg-dark pt-5">
            <div class="container py-5">
                <h1 class="text-light pt-1 pt-md-3 mb-4">Find jobs</h1>
                <!-- Search form-->
                <form class="form-group form-group-light d-block rounded-lg-pill mb-4">
                    <div class="row align-items-center g-0 ms-n2">
                        <div class="col-lg-3 col-xl-4">
                            <div class="input-group input-group-lg border-end-lg border-light"><span class="input-group-text text-light rounded-pill opacity-50 ps-3"><i class="fi-search"></i></span>
                                <input class="form-control" type="text" placeholder="Search site...">
                            </div>
                        </div>
                        <hr class="hr-light d-lg-none my-2">
                        <div class="col-lg-5 d-sm-flex">
                            <div class="dropdown w-sm-50 border-end-sm border-light" data-bs-toggle="select">
                                <button class="btn btn-link dropdown-toggle" type="button" data-bs-toggle="dropdown"><i class="fi-list me-2"></i><span class="dropdown-toggle-label">Category</span></button>
                                <input type="hidden">
                                <ul class="dropdown-menu dropdown-menu-dark my-3">
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Accounting</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Marketing &amp; PR</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Medicine</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Internet technology</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">HoReCa</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Design, creativity</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Fitness &amp; sports</span></a></li>
                                </ul>
                            </div>
                            <hr class="hr-light d-sm-none my-2">
                            <div class="dropdown w-sm-50 border-end-lg border-light" data-bs-toggle="select">
                                <button class="btn btn-link dropdown-toggle" type="button" data-bs-toggle="dropdown"><i class="fi-map-pin me-2"></i><span class="dropdown-toggle-label">Location</span></button>
                                <input type="hidden">
                                <ul class="dropdown-menu dropdown-menu-dark my-3">
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Dallas</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Chicago</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Houston</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Las Vegas</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Los Angeles</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">New York</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">San Francisco</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <hr class="hr-light d-lg-none my-2">
                        <div class="col-lg-4 col-xl-3 d-flex align-items-center">
                            <div class="dropdown w-50 w-lg-100" data-bs-toggle="select">
                                <button class="btn btn-link dropdown-toggle" type="button" data-bs-toggle="dropdown"><i class="fi-geo me-2"></i><span class="dropdown-toggle-label">Distance</span></button>
                                <input type="hidden">
                                <ul class="dropdown-menu dropdown-menu-dark my-3">
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">10 miles</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">20 miles</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">30 miles</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">40 miles</span></a></li>
                                    <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">50 miles</span></a></li>
                                </ul>
                            </div>
                            <button class="btn btn-primary btn-lg w-50 w-lg-auto rounded-pill" type="button">Find jobs</button>
                        </div>
                    </div>
                </form>
                <!-- Search params (dropdowns)-->
                <div class="d-sm-flex justify-content-between pt-2 pb-1 pb-md-3 pb-lg-4">
                    <div class="d-flex flex-column flex-sm-row flex-wrap">
                        <div class="dropdown me-sm-3 mb-2 mb-sm-3" data-bs-toggle="select">
                            <button class="btn btn-translucent-light btn-sm dropdown-toggle fs-base fw-normal w-100 text-start" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">Publication date</span></button>
                            <ul class="dropdown-menu my-1">
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Most recent</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">5 days</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">15 days</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">1 week</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">1 month</span></a></li>
                            </ul>
                        </div>
                        <div class="dropdown me-sm-3 mb-2 mb-sm-3" data-bs-toggle="select">
                            <button class="btn btn-translucent-light btn-sm dropdown-toggle fs-base fw-normal w-100 text-start" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">Job type</span></button>
                            <ul class="dropdown-menu my-1">
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Full-time</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Part-time</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Remote</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Temporary</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Contract</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Internship</span></a></li>
                            </ul>
                        </div>
                        <div class="dropdown me-sm-3 mb-2 mb-sm-3" data-bs-toggle="select">
                            <button class="btn btn-translucent-light btn-sm dropdown-toggle fs-base fw-normal w-100 text-start" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">Company</span></button>
                            <ul class="dropdown-menu my-1">
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">IT Pro TV</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Zalo Tech Company</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Elastic Inc.</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Lift Web</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Xbox Company</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">Zapier</span></a></li>
                            </ul>
                        </div>
                        <div class="dropdown me-sm-3 mb-2 mb-sm-3" data-bs-toggle="select">
                            <button class="btn btn-translucent-light btn-sm dropdown-toggle fs-base fw-normal w-100 text-start" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">Salary range</span></button>
                            <ul class="dropdown-menu my-1">
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$500 - $1,000</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$1,000 - $2,000</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$2,000 - $5,000</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$5,000 - $10,000</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$10,000 - $20,000</span></a></li>
                                <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">$20,000 - $50,000</span></a></li>
                            </ul>
                        </div>
                    </div><a class="d-inline-block text-light text-nowrap py-3" href="#">Advanced search</a>
                </div>
            </div>
        </section>
        <!-- Page content-->
        <section class="position-relative bg-white rounded-xxl-4 zindex-5" style="margin-top: -30px;">
            <div class="row justify-content-center pb-sm-2">
                <div class="container col-lg-8 col-xl-7">
                    <div class="container pt-4 pb-5 mb-md-4">
                        <!-- Breadcrumb-->
                        <nav class="pb-4 my-2" aria-label="Breadcrumb">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="job-board-home-v1.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Find jobs</li>
                            </ol>
                        </nav>
                        <div class="row">
                            <!-- List of jobs-->
                            <div class="col-lg-12 col-md-12 position-relative mb-4 mb-md-0" style="z-index: 1025;">
                                <!-- Sorting-->
                                <div class="d-sm-flex align-items-center justify-content-between pb-4 mb-sm-2">
                                    <div class="d-flex align-items-center">
                                        <label class="fs-sm me-2 pe-1 text-nowrap" for="sorting"><i class="fi-arrows-sort mt-n1 me-2"></i>Sort by:</label>
                                        <select class="form-select form-select-sm" id="sorting">
                    <option>Newest</option>
                    <option>Popular</option>
                    <option>Highest Salary</option>
                  </select>
                                    </div>
                                    <div class="text-muted fs-sm text-nowrap"><i class="fi-briefcase fs-base mt-n1 me-2"></i>2948 jobs</div>
                                </div>
                                
                                
                            
                    
	<form id='actionForm' action="/post/list" method='get'>
	<!--  -->
		<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
		<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
	
		<input type='hidden' name='type'
			value='<c:out value="${ pageMaker.cri.type }"/>'> <input
			type='hidden' name='keyword'
			value='<c:out value="${ pageMaker.cri.keyword }"/>'>
	
	
	</form>
                
     
     
     <c:forEach items = "${postList}" var = "post">
     
     <!-- Item-->
     <div class="card bg-secondary card-hover mb-2">
         <div class="card-body">
             <div class="d-flex justify-content-between align-items-start mb-2">
                 <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/job-board/company/it-pro.png" width="24" alt=""><span class="fs-sm text-dark opacity-80 px-1"> ~ <fmt:formatDate pattern="MM/dd" value="${post.postFdate}" /></span></div>
                 <div class="dropdown content-overlay">
                     <button class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm" type="button" id="contextMenu1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fi-dots-vertical"></i></button>
                     <ul class="dropdown-menu my-1" aria-labelledby="contextMenu1">
                         <li>
                             <button class="dropdown-item" type="button"><i class="fi-heart opacity-60 me-2"></i>Add to Saved Jobs</button>
                         </li>
                         <li>
                             <button class="dropdown id = "move""button"text-nav stretched-link text-decoration-noneNot interested</button>
                         </li>
                     </ul>
                 </div>
             </div>
             <h3 class="h6 card-title pt-1 mb-3">${post.postTitle}<a class="text-nav stretched-link text-decoration-none" href="/post/postGet?post_no=${post.postNo}"> </a></h3>
             <div class="fs-sm">
             <span class="text-nowrap me-3"><i class="fi-map-pin text-muted me-1"> </i>${post.postAdd }</span>
             <span class="text-nowrap me-3"><i class="fi-cash fs-base text-muted me-1"></i>${post.postJob} </span>
             <span class="text-nowrap me-3">${post.postEdu }</span>
             <span class="text-nowrap me-3"> | 등록일 <fmt:formatDate pattern="MM/dd" value="${post.postSdate}" /></span>
             
             </div>
         </div>
     </div>
     </c:forEach>
                    
                            
                                
                                
                                
                                
                                
                        
                               
                               
                                <!-- Pagination-->
                                <nav class="pt-4 pb-2" aria-label="Blog pagination">
                                    <ul class="pagination mb-0">
                                        <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 8</span></li>
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
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- Footer-->
    <footer class="footer bg-dark pt-5">
        <div class="container pb-2">
            <div class="row align-items-center pb-4">
                <div class="col-md-6 col-xl-5">
                    <!-- Links-->
                    <div class="row">
                        <div class="col-sm-4 mb-4">
                            <h3 class="h6 mb-2 pb-1 fs-base text-light">Finder</h3>
                            <ul class="list-unstyled fs-sm">
                                <li><a class="nav-link-light" href="#">About us</a></li>
                                /* ><"#clas"="nav-link-light" href="#">News</a></li>
                                <li><a class="nav-link-light" href="#">Contact </a><this.attr("href")+"'>" ;
					actionForm.attr("action","/post/postGet")                        <div class */ol-sm-4 mb-4">
                            <h3 class="h6 mb-2 pb-1 fs-base text-light">For Job Seekers</h3>
                            <ul class="list-unstyled fs-sm">
                                <li><a class="nav-link-light" href="#">Find job</a></li>
                                <li><a class="nav-link-light" href="#">Post a resume</a></li>
                                <li><a class="nav-link-light" href="#">Vacancy mailing</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 mb-4">
                            <h3 class="h6 mb-2 pb-1 fs-base text-light">For Employers</h3>
                            <ul class="list-unstyled fs-sm">
                                <li><a class="nav-link-light" href="#">Find resume</a></li>
                                <li><a class="nav-link-light" href="#">Post a job</a></li>
                                <li><a class="nav-link-light" href="#">Resume mailing</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Socials-->
                    <div class="text-nowrap border-top border-light py-4"><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle me-2" href="#"><i class="fi-facebook"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle me-2" href="#"><i class="fi-twitter"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle me-2"
                            href="#"><i class="fi-messenger"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle me-2" href="#"><i class="fi-telegram"></i></a>
                        <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle" href="#"><i class="fi-whatsapp"></i></a>
                    </div>
                </div>
                <!-- Mobile app-->
                <div class="col-md-6 offset-xl-1">
                    <div class="d-flex align-items-center">
                        <div class="card card-light card-body p-4 p-xl-5 my-2 my-md-0" style="max-width: 526px;">
                            <div style="max-width: 380px;">
                                <h3 class="h4 text-light">Download Our App</h3>
                                <p class="fs-sm text-light opacity-70 mb-2 mb-lg-3">Now finding the new job just got even easier with our new app!</p>
                                <div class="d-flex flex-column flex-sm-row"><a class="btn-market me-sm-3 mt-3" href="#" role="button"><svg xmlns='http://www.w3.org/2000/svg' width='132' height='34' fill='#fff'><path d='M20.047 15.814c-.031-3.755 3.054-5.581 3.189-5.665-1.751-2.56-4.461-2.916-5.41-2.948-2.272-.241-4.482 1.374-5.639 1.374-1.178 0-2.971-1.343-4.889-1.311-2.47.042-4.795 1.479-6.056 3.724-2.616 4.563-.667 11.277 1.845 14.969 1.261 1.804 2.72 3.829 4.649 3.755 1.876-.073 2.585-1.206 4.847-1.206 2.251 0 2.908 1.206 4.868 1.164 2.022-.032 3.283-1.815 4.503-3.64 1.449-2.067 2.033-4.112 2.053-4.217-.052-.021-3.919-1.511-3.961-6zM16.346 4.779c1.011-1.269 1.699-3 1.511-4.763-1.459.063-3.294 1.018-4.347 2.266-.928 1.101-1.762 2.895-1.553 4.584 1.647.126 3.335-.839 4.388-2.088zm35.509 24.673h-2.627l-1.438-4.553h-5.003l-1.366 4.553h-2.554l4.951-15.494h3.064l4.972 15.494zm-4.492-6.462l-1.303-4.039c-.136-.42-.396-1.385-.771-2.916h-.052l-.73 2.916-1.282 4.039h4.138zm17.219.745c0 1.899-.511 3.399-1.543 4.5-.917.986-2.064 1.469-3.419 1.469-1.47 0-2.522-.524-3.169-1.584v5.864h-2.47V21.951l-.094-3.672h2.168l.136 1.773h.042c.823-1.332 2.074-2.004 3.742-2.004 1.313 0 2.397.524 3.273 1.563.897 1.049 1.334 2.413 1.334 4.123zm-2.512.084c0-1.091-.24-1.983-.73-2.686a2.52 2.52 0 0 0-2.147-1.101c-.605 0-1.157.21-1.657.608a2.81 2.81 0 0 0-.969 1.595c-.073.304-.115.556-.115.755v1.867c0 .808.25 1.5.74 2.056s1.136.839 1.928.839c.928 0 1.647-.367 2.168-1.08.521-.724.782-1.668.782-2.853zm15.27-.084c0 1.899-.511 3.399-1.543 4.5-.917.986-2.064 1.469-3.419 1.469-1.47 0-2.522-.524-3.169-1.584v5.864h-2.47V21.951l-.094-3.672h2.168l.136 1.773h.042c.823-1.332 2.074-2.004 3.742-2.004 1.313 0 2.397.524 3.273 1.563.896 1.049 1.334 2.413 1.334 4.123zm-2.512.084c0-1.091-.24-1.983-.73-2.686a2.52 2.52 0 0 0-2.147-1.101c-.605 0-1.157.21-1.657.608-.49.409-.813.934-.969 1.595-.073.304-.115.556-.115.755v1.867c0 .808.25 1.5.74 2.056s1.136.839 1.928.839c.928 0 1.657-.367 2.168-1.08.532-.724.782-1.668.782-2.853zm16.792 1.29c0 1.322-.459 2.392-1.365 3.221-1.001.902-2.397 1.353-4.19 1.353-1.657 0-2.981-.325-3.982-.965l.573-2.067a6.89 6.89 0 0 0 3.565.965c.928 0 1.657-.21 2.168-.629.521-.42.782-.986.782-1.689a2.19 2.19 0 0 0-.636-1.584c-.427-.43-1.136-.829-2.126-1.196-2.721-1.018-4.065-2.497-4.065-4.437 0-1.269.48-2.308 1.428-3.126.948-.808 2.21-1.217 3.784-1.217 1.397 0 2.564.241 3.492.734l-.625 2.014c-.876-.472-1.855-.713-2.96-.713-.865 0-1.553.22-2.043.64-.406.388-.615.85-.615 1.406a1.89 1.89 0 0 0 .709 1.511c.407.367 1.157.766 2.241 1.196 1.324.535 2.293 1.164 2.919 1.888.636.724.948 1.626.948 2.696zm8.172-4.962h-2.721v5.423c0 1.374.48 2.067 1.438 2.067.438 0 .803-.042 1.094-.115l.073 1.888c-.49.178-1.126.273-1.918.273-.98 0-1.73-.304-2.283-.902s-.823-1.605-.823-3.011v-5.633h-1.616V18.28h1.616v-2.046l2.418-.734v2.78h2.721v1.867zm12.237 3.63c0 1.72-.49 3.126-1.459 4.228-1.021 1.133-2.377 1.699-4.065 1.699-1.626 0-2.929-.546-3.898-1.626s-1.449-2.455-1.449-4.112c0-1.731.5-3.147 1.49-4.248 1.001-1.101 2.346-1.657 4.034-1.657 1.626 0 2.939.546 3.93 1.636.948 1.049 1.417 2.413 1.417 4.081zm-2.553.052c0-1.028-.219-1.899-.657-2.633-.521-.892-1.261-1.332-2.22-1.332-.991 0-1.751.441-2.262 1.332-.448.734-.657 1.626-.657 2.685 0 1.028.219 1.909.657 2.633.531.892 1.282 1.332 2.241 1.332.938 0 1.678-.451 2.22-1.353.448-.755.678-1.637.678-2.665zm10.579-3.367c-.24-.042-.5-.063-.782-.063-.865 0-1.542.325-2.011.986-.407.577-.615 1.322-.615 2.203v5.864h-2.471v-7.658l-.072-3.514h2.147l.094 2.14h.072c.261-.734.668-1.332 1.23-1.773.553-.399 1.147-.598 1.783-.598.229 0 .438.021.615.042l.01 2.371zm11.028 2.874c0 .441-.031.818-.094 1.122h-7.4c.031 1.101.385 1.951 1.073 2.528.626.514 1.428.776 2.419.776 1.094 0 2.095-.178 2.991-.524l.386 1.72c-1.053.462-2.293.692-3.721.692-1.72 0-3.075-.514-4.055-1.532s-1.47-2.392-1.47-4.102c0-1.678.459-3.084 1.376-4.207.959-1.196 2.251-1.794 3.878-1.794 1.594 0 2.814.598 3.627 1.794.657.965.99 2.13.99 3.525zm-2.356-.64c.021-.734-.146-1.374-.479-1.909-.427-.692-1.084-1.038-1.96-1.038-.802 0-1.459.336-1.959 1.007-.407.535-.657 1.185-.73 1.93l5.128.011zM46.175 8.419h-1.293l-.709-2.234h-2.46l-.678 2.234h-1.251l2.43-7.616h1.501l2.46 7.616zm-2.22-3.179l-.636-1.993-.386-1.437h-.021l-.365 1.437-.625 1.993h2.033zm8.307-2.318l-2.064 5.497H49.02l-2.001-5.497h1.303l.928 2.906.396 1.385h.031l.396-1.385.917-2.906h1.272zm4.399 5.497l-.094-.629h-.031c-.375.504-.907.755-1.595.755-.98 0-1.668-.692-1.668-1.615 0-1.353 1.167-2.056 3.189-2.056v-.105c0-.724-.386-1.08-1.136-1.08-.542 0-1.011.136-1.428.409l-.25-.797c.5-.315 1.136-.472 1.876-.472 1.428 0 2.147.755 2.147 2.276V7.13c0 .556.021.986.083 1.311L56.66 8.42zm-.167-2.738c-1.345 0-2.022.325-2.022 1.112 0 .577.344.86.834.86.615 0 1.188-.472 1.188-1.122v-.85zm3.878-3.661c-.407 0-.72-.315-.72-.734s.323-.724.741-.724.751.304.74.724c0 .441-.313.734-.761.734zm-.584.902h1.21v5.486h-1.21V2.922zM63.155.404h1.209v8.004h-1.209V.404zm6.358 8.015l-.094-.629h-.031c-.375.504-.907.755-1.595.755-.98 0-1.668-.692-1.668-1.615 0-1.353 1.167-2.056 3.19-2.056v-.105c0-.724-.386-1.08-1.136-1.08-.542 0-1.011.136-1.428.409l-.25-.808c.5-.315 1.136-.472 1.876-.472 1.428 0 2.147.755 2.147 2.276v2.025c0 .556.021.986.073 1.311h-1.084v-.01zm-.167-2.738c-1.345 0-2.022.325-2.022 1.112 0 .577.344.86.834.86.615 0 1.188-.472 1.188-1.122v-.85zm6.098 2.864a1.85 1.85 0 0 1-1.72-.976h-.021l-.073.85h-1.032l.042-1.479V.404h1.22V3.73h.021c.365-.608.938-.913 1.741-.913 1.313 0 2.231 1.133 2.231 2.78 0 1.699-1.022 2.948-2.408 2.948zm-.25-4.773c-.698 0-1.334.608-1.334 1.458v.965c0 .755.573 1.374 1.313 1.374.907 0 1.449-.745 1.449-1.93 0-1.112-.563-1.867-1.428-1.867zm4.45-3.368h1.209v8.004h-1.209V.404zm7.807 5.56h-3.638c.021 1.039.709 1.626 1.72 1.626.542 0 1.032-.094 1.47-.262l.188.85c-.511.231-1.115.336-1.824.336-1.709 0-2.721-1.08-2.721-2.769 0-1.678 1.032-2.948 2.585-2.948 1.386 0 2.272 1.039 2.272 2.612 0 .22-.01.409-.052.556zm-1.105-.871c0-.85-.427-1.448-1.199-1.448-.698 0-1.24.608-1.324 1.448h2.522zM94.8 8.545c-1.595 0-2.627-1.196-2.627-2.822 0-1.699 1.053-2.906 2.721-2.906 1.574 0 2.627 1.143 2.627 2.811 0 1.71-1.084 2.916-2.721 2.916zm.052-4.836c-.876 0-1.438.829-1.438 1.972 0 1.133.573 1.951 1.428 1.951s1.428-.881 1.428-1.983c-.01-1.112-.563-1.941-1.418-1.941zm9.183 4.709h-1.209V5.261c0-.976-.375-1.458-1.105-1.458-.719 0-1.209.619-1.209 1.343v3.262h-1.209V4.495l-.042-1.574h1.063l.052.85h.032c.323-.587.99-.965 1.73-.965 1.146 0 1.897.881 1.897 2.318v3.294zm7.932-4.573h-1.334V6.51c0 .682.24 1.018.709 1.018a2.64 2.64 0 0 0 .542-.052l.031.923c-.24.094-.552.136-.938.136-.959 0-1.522-.535-1.522-1.92v-2.77h-.792v-.913h.792V1.925l1.188-.367v1.364h1.334v.923m6.411 4.574h-1.209V5.282c0-.986-.376-1.479-1.105-1.479-.626 0-1.209.43-1.209 1.301v3.304h-1.209V.404h1.209v3.294h.02a1.83 1.83 0 0 1 1.637-.892c1.157 0 1.866.902 1.866 2.339v3.273zm6.191-2.455h-3.638c.021 1.039.709 1.626 1.72 1.626a4.08 4.08 0 0 0 1.47-.262l.188.85c-.511.231-1.116.336-1.825.336-1.709 0-2.72-1.08-2.72-2.769 0-1.678 1.032-2.948 2.585-2.948 1.386 0 2.272 1.039 2.272 2.612 0 .22-.01.409-.052.556zm-1.105-.871c0-.85-.427-1.448-1.198-1.448-.699 0-1.251.608-1.324 1.448h2.522z'/></svg></a>
                                    <a class="btn-market mt-3" href="#" role="button"><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='140' height='34' fill='none'><g fill='#fff'>
<path d='M45.373 4.152c0 1.003-.241 1.88-.843 2.507a3.47 3.47 0 0 1-2.649 1.128 3.47 3.47 0 0 1-2.649-1.128c-.723-.752-1.084-1.629-1.084-2.757s.361-2.005 1.084-2.757A3.47 3.47 0 0 1 41.881.016c.482 0 .963.125 1.445.376s.843.501 1.084.877l-.602.627c-.482-.627-1.084-.877-1.927-.877-.723 0-1.445.251-1.927.877-.602.501-.843 1.253-.843 2.131s.241 1.629.843 2.131 1.204.877 1.927.877c.843 0 1.445-.251 2.047-.877.361-.376.602-.877.602-1.504h-2.649V3.651h3.492v.501zm5.54-3.134h-3.252V3.4h3.011v.877h-3.011v2.381h3.252v1.003h-4.215V.141h4.215v.877zm3.974 6.643h-.963V1.019h-2.047V.141h5.058v.877h-2.047v6.643zm5.54 0V.141h.963v7.52h-.963zm5.058 0h-.964V1.019h-2.047V.141h4.938v.877h-2.047v6.643h.121zm11.441-1.003a3.47 3.47 0 0 1-2.649 1.128 3.47 3.47 0 0 1-2.649-1.128c-.723-.752-1.084-1.629-1.084-2.757s.361-2.005 1.084-2.757A3.47 3.47 0 0 1 74.275.016a3.47 3.47 0 0 1 2.649 1.128c.722.752 1.084 1.629 1.084 2.757s-.361 2.005-1.084 2.757zm-4.576-.627c.482.501 1.204.877 1.927.877s1.445-.251 1.927-.877c.482-.501.843-1.253.843-2.131s-.241-1.629-.843-2.131C75.722 1.268 75 .892 74.277.892s-1.445.251-1.927.877c-.482.501-.843 1.253-.843 2.131s.241 1.629.843 2.131zm6.985 1.629V.141h1.084l3.492 5.891V.141h.963v7.52h-.963L80.176 1.52v6.142h-.843zm-9.034 11.032c-2.89 0-5.178 2.256-5.178 5.39 0 3.008 2.288 5.39 5.178 5.39s5.178-2.256 5.178-5.39c0-3.259-2.288-5.39-5.178-5.39zm0 8.523c-1.565 0-2.89-1.379-2.89-3.259s1.325-3.259 2.89-3.259 2.89 1.253 2.89 3.259c0 1.88-1.325 3.259-2.89 3.259zm-11.2-8.523c-2.89 0-5.178 2.256-5.178 5.39 0 3.008 2.288 5.39 5.178 5.39s5.178-2.256 5.178-5.39c0-3.259-2.288-5.39-5.178-5.39zm0 8.523c-1.566 0-2.89-1.379-2.89-3.259s1.325-3.259 2.89-3.259 2.89 1.253 2.89 3.259c0 1.88-1.325 3.259-2.89 3.259zm-13.367-6.894v2.256h5.178c-.12 1.253-.602 2.256-1.204 2.883-.723.752-1.927 1.629-3.974 1.629-3.251 0-5.66-2.632-5.66-6.016s2.529-6.016 5.66-6.016c1.686 0 3.011.752 3.974 1.629l1.566-1.629c-1.325-1.253-3.011-2.256-5.419-2.256-4.335 0-8.069 3.76-8.069 8.272s3.733 8.273 8.069 8.273c2.408 0 4.094-.752 5.54-2.381 1.445-1.504 1.927-3.635 1.927-5.264 0-.501 0-1.003-.12-1.379h-7.466zm54.674 1.755c-.482-1.253-1.686-3.384-4.336-3.384s-4.817 2.131-4.817 5.39c0 3.008 2.168 5.39 5.058 5.39 2.288 0 3.733-1.504 4.215-2.381l-1.686-1.253c-.602.877-1.325 1.504-2.529 1.504s-1.927-.501-2.529-1.63l6.865-3.008-.241-.627zm-6.985 1.755c0-2.005 1.566-3.133 2.649-3.133.843 0 1.686.501 1.927 1.128l-4.576 2.005zm-5.66 5.139h2.288V13.303h-2.288V28.97zm-3.613-9.15c-.602-.627-1.566-1.253-2.77-1.253-2.529 0-4.937 2.381-4.937 5.39s2.288 5.264 4.938 5.264c1.204 0 2.168-.627 2.649-1.253h.12v.752c0 2.006-1.084 3.134-2.77 3.134-1.325 0-2.288-1.003-2.529-1.88l-1.927.877c.602 1.379 2.047 3.134 4.576 3.134 2.649 0 4.817-1.629 4.817-5.515v-9.526H84.15v.877zm-2.649 7.395c-1.565 0-2.89-1.379-2.89-3.259s1.325-3.259 2.89-3.259 2.77 1.379 2.77 3.259-1.204 3.259-2.77 3.259zm29.384-13.913h-5.419V28.97h2.288v-5.891h3.131c2.529 0 4.937-1.88 4.937-4.888s-2.408-4.888-4.937-4.888zm.12 7.521h-3.251v-5.39h3.251c1.686 0 2.65 1.504 2.65 2.632-.121 1.379-1.084 2.758-2.65 2.758zm13.849-2.256c-1.686 0-3.372.752-3.974 2.381l2.047.877c.482-.877 1.205-1.128 2.048-1.128 1.204 0 2.288.752 2.408 2.005v.125c-.361-.251-1.325-.627-2.288-.627-2.168 0-4.335 1.253-4.335 3.51 0 2.131 1.806 3.51 3.733 3.51 1.565 0 2.288-.752 2.89-1.504h.121v1.253h2.167v-6.016c-.241-2.757-2.288-4.387-4.817-4.387zm-.241 8.648c-.722 0-1.806-.376-1.806-1.379 0-1.253 1.325-1.629 2.409-1.629.963 0 1.445.251 2.047.501-.241 1.504-1.445 2.507-2.65 2.507zm12.645-8.272l-2.529 6.768h-.12l-2.65-6.768h-2.408l3.974 9.526-2.288 5.264h2.288l6.142-14.79h-2.409zM117.027 28.97h2.288V13.303h-2.288V28.97z'/><path d='M.583 3.637c0-.542.072-.961.234-1.249l14.121 14.18L1.021 30.742c-.255-.301-.438-.786-.438-1.386V3.637zm19.186 8.376l5.576 3.245c.754.439 1.076.98 1.076 1.471s-.321 1.031-1.073 1.47l-5.544 3.049-4.48-4.563v-.145l4.446-4.528zM1.156 31.086l13.917-14.174 4.396 4.477-16.394 9.607c-.49.22-.903.32-1.247.307-.254-.009-.476-.079-.672-.217zm1.91-28.86l16.402 9.497-4.395 4.477L1.155 2.138a1.27 1.27 0 0 1 .683-.257c.337-.024.744.072 1.229.346z' stroke='#454056' stroke-width='.5'/></g><g opacity='.2'><mask id='A' fill='#fff'><use xlink:href='#E'/></mask><use xlink:href='#E' fill='#fff'/><path d='M19.758 21.326l.254.431-.504-.864.25.433zM3.19 30.869l-.25-.433-.01.005-.009.006.268.422zm-2.285 0l.316-.388-.353-.288-.319.325.357.35zm-.114.116l-.357-.35-.344.35.344.35.357-.35zm.114.116l-.357.35.019.02.022.018.316-.388zm2.285 0l-.254-.431-.007.004-.007.005.268.422zm16.318-10.208L2.941 30.435l.499.867 16.568-9.543-.499-.866zM2.922 30.447c-.388.247-.717.325-.984.315a1.19 1.19 0 0 1-.717-.281l-.632.775a2.19 2.19 0 0 0 1.311.505c.505.019 1.032-.136 1.559-.471l-.537-.844zm-2.374.072l-.114.116.714.701.114-.116-.714-.701zm-.114.817l.114.116.714-.701-.114-.116-.714.701zm.155.154a2.19 2.19 0 0 0 1.311.505c.505.019 1.032-.136 1.559-.471l-.537-.844c-.388.247-.717.325-.984.315a1.19 1.19 0 0 1-.717-.281l-.632.775zm2.855.043l16.568-9.775-.508-.861-16.568 9.775.508.861z' fill='#454056' mask='url(#A)'/></g><g opacity='.2'><mask id='B' fill='#fff'><use xlink:href='#F'/></mask><use xlink:href='#F' fill='#fff'/><path d='M.79 30.869l-.357.35.147.15h.21v-.5zm.114.116l-.357.35.857.873v-1.223h-.5zm0-.116h.5v-.5h-.5v.5zm18.853-9.542l-.248-.434-.564.322.455.463.357-.35zm.114.116l-.357.35.272.277.336-.195-.252-.432zm5.599-3.258l-.252-.432.252.432zM1.147 30.518c-.194-.198-.314-.599-.314-1.279h-1c0 .716.109 1.479.6 1.98l.714-.701zm-1.314-1.279v.116h1v-.116h-1zm0 .116c0 .798.26 1.517.715 1.98l.714-.701c-.231-.236-.428-.681-.428-1.279h-1zm1.571 1.629v-.116h-1v.116h1zm-.5-.616H.79v1h.114v-1zm24.319-12.735l-5.713 3.258.495.869 5.713-3.258-.495-.869zm-5.822 4.043l.114.116.713-.701-.114-.116-.714.701zm.723.198l5.599-3.259-.503-.864-5.599 3.258.503.864zm5.599-3.259c.905-.526 1.391-1.251 1.391-2.061h-1c0 .354-.199.793-.894 1.197l.503.864zm.391-2.061c0 .298-.233.631-.923 1.099l.562.827c.681-.463 1.362-1.061 1.362-1.927h-1z' fill='#454056' mask='url(#B)'/></g><g opacity='.2'><mask id='C' fill='#fff'><use xlink:href='#G'/></mask><use xlink:href='#G' fill='#fff'/><path d='M3.19 2.125l-.252.432h.001l.251-.433zm22.281 12.917l.281-.414-.015-.01-.015-.009-.251.432zm0-.116l.252-.432h-.001l-.251.433zM3.19 2.008l-.252.432h.001l.251-.433zm-.251.549L25.22 15.475l.502-.865L3.441 1.692l-.502.865zM25.19 15.456c.69.468.923.801.923 1.099h1c0-.866-.68-1.464-1.362-1.927l-.562.827zm1.923 1.099c0-.81-.486-1.535-1.391-2.061l-.503.864c.695.405.894.844.894 1.197h1zm-1.392-2.062L3.441 1.576l-.502.865L25.22 15.358l.502-.865zM3.441 1.576C2.56 1.063 1.645.928.915 1.34S-.167 2.61-.167 3.637h1c0-.834.278-1.259.575-1.427s.812-.188 1.53.23l.503-.864zM-.167 3.637v.116h1v-.116h-1zm1 .116c0-.764.272-1.203.584-1.388.306-.182.818-.218 1.521.191l.503-.864c-.897-.522-1.813-.616-2.535-.187C.19 1.931-.167 2.772-.167 3.754h1z' fill='#454056' mask='url(#C)'/></g><defs ><path id='E' d='M19.758 21.326L3.19 30.869c-.914.582-1.714.465-2.285 0l-.114.116.114.116c.571.465 1.371.582 2.285 0l16.568-9.775z'/><path id='F' d='M.79 30.869c-.343-.349-.457-.931-.457-1.629v.116c0 .698.229 1.28.571 1.629v-.116H.79zm24.681-12.801l-5.713 3.259.114.116 5.599-3.258c.8-.466 1.143-1.047 1.143-1.629 0 .582-.457 1.047-1.143 1.513z'/><path id='G' d='M3.19 2.125l22.281 12.917c.686.466 1.143.931 1.143 1.513 0-.582-.343-1.164-1.143-1.629L3.19 2.008C1.59 1.077.333 1.775.333 3.637v.116c0-1.746 1.257-2.56 2.857-1.629z'/></defs>
</svg></a>
                                </div>
                            </div>
                        </div><img class="d-none d-xl-block ms-n4" src="${path}/resources/img/job-board/footer-mobile.svg" width="116" alt="Mobile app">
                    </div>
                </div>
            </div>
            <!-- Copyright-->
            <p class="fs-sm text-center text-sm-start mb-4"><span class="text-light opacity-50">&copy; All rights reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></p>
        </div>
    </footer>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>
</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">
   $(".move").on("click",function(e){
	   e.preventDefault();
	   actionForm.append("<input type='hidden' name='postNo' value='"+ $(this).attr("href") + "'>");
		actionForm.attr("action","/post/postGet");
		actionForm.submit();
   })  ;                           
 </script>