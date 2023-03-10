<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>


    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
<!-- Body-->

<body class="bg-secondary">
    
    <main class="page-wrapper">
     <%--  Navbar 
                <div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3">
                    <a class="d-block py-2" href="job-board-account-profile.html"><img class="rounded-circle" src="${path}/resources/img/avatars/35.png" width="40" alt="Annette Black"></a>
                    <div class="dropdown-menu dropdown-menu-dark dropdown-menu-end">
                        <div class="d-flex align-items-start border-bottom border-light px-3 py-1 mb-2" style="width: 16rem;"><img class="rounded-circle" src="img/avatars/25.png" width="48" alt="Annette Black">
                            <div class="ps-2">
                                <h6 class="fs-base text-light mb-0">Annette Black</h6>
                                <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                            </div>
                        </div><a class="dropdown-item" href="job-board-account-profile.html"><i class="fi-settings me-2"></i>Profile Settings</a><a class="dropdown-item" href="job-board-account-my-resumes.html"><i class="fi-file me-2"></i>My Resumes</a><a class="dropdown-item"
                            href="job-board-account-saved-jobs.html"><i class="fi-heart me-2"></i>Saved Jobs</a><a class="dropdown-item" href="job-board-account-notifications.html"><i class="fi-bell me-2"></i>Notifications</a>
                        <div class="dropdown-divider"></div><a class="dropdown-item" href="signin-light.html"><i class="fi-logout me-2"></i>Sign Out</a>
                    </div>
                </div><a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="job-board-post-resume-1.html"><i class="fi-plus me-2"></i>Post resume</a><a class="btn btn-link btn-light btn-sm d-none d-lg-block order-lg-3 pe-0 ms-2" href="job-board-home-v2.html">For employers<i class="fi-arrow-long-right ms-2"></i></a>
                <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
                    <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
                        Demos switcher
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
                        Menu items
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="job-board-home-v1.html">For Job Seekers</a></li>
                                <li><a class="dropdown-item" href="job-board-home-v2.html">For Employers</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catalog</a>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item" href="job-board-catalog.html">List of Jobs</a></li>
                                <li><a class="dropdown-item" href="job-board-single.html">Single Job Page</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Account</a>
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
                        <li class="nav-item dropdown d-lg-none">
                            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img class="rounded-circle me-2" src="img/avatars/35.png" width="30" alt="Annette Black">Annette Black</a>
                            <div class="dropdown-menu dropdown-menu-dark">
                                <div class="ps-3">
                                    <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                                </div><a class="dropdown-item" href="job-board-account-profile.html"><i class="fi-settings me-2"></i>Profile Settings</a><a class="dropdown-item" href="job-board-account-my-resumes.html"><i class="fi-file me-2"></i>My Resumes</a>
                                <a class="dropdown-item" href="job-board-account-saved-jobs.html"><i class="fi-heart me-2"></i>Saved Jobs</a><a class="dropdown-item" href="job-board-account-notifications.html"><i class="fi-bell me-2"></i>Notifications</a>
                                <div class="dropdown-divider"></div><a class="dropdown-item" href="signin-light.html"><i class="fi-logout me-2"></i>Sign Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </header>  --%>
        <!-- Page content-->
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
                    <h1 class="h2 text-center pb-4 mb-3">My resume</h1>

                    <!-- Step 5: Review-->
                    <div class="bg-light rounded-3 pt-4 pb-0 px-4 p-md-5 mb-3">
                        <!-- Title + Action buttons-->
                        <div class="d-md-flex align-items-center mb-4 pb-md-2">
                            <h2 class="h4 mb-md-0"><i class="fi-eye-on text-primary fs-5 mt-n1 me-2 pe-1"></i>Review your resume and save</h2>
                            <div class="ms-md-auto">
                                <div class="dropdown d-lg-none">
                                    <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown"><i class="fi-align-justify me-1"></i>Actions</button>
                                    <div class="dropdown-menu dropdown-menu-end my-1"><a class="dropdown-item" href="#"><i class="fi-trash me-2"></i>Delete</a><a class="dropdown-item" href="#"><i class="fi-archive me-2"></i>Archive</a><a class="dropdown-item" href="#"><i class="fi-download-file me-2"></i>Download as PDF</a></div>
                                </div>
                                <ul class="list-unstyled d-none d-lg-flex flex-wrap fs-sm mb-0">
                                    <li class="border-end mb-0"><a class="nav-link text-nowrap" href="#"><i class="fi-trash me-1"></i><span class="align-middle">Delete</span></a></li>
                                    <li class="border-end mb-0"><a class="nav-link text-nowrap" href="#"><i class="fi-archive me-1"></i><span class="align-middle">Archive</span></a></li>
                                    <li class="mb-0"><a class="nav-link text-nowrap pe-0" href="#"><i class="fi-download-file me-1"></i><span class="align-middle">Download as PDF</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Resume preview-->
                        <div class="card shadow-sm p-md-2 mx-n4 mx-md-0">
                            <div class="card-body p-4">
                                <div class="d-sm-flex justify-content-between align-items-start pb-4">
                                    <div class="flex-shrink-0 order-sm-2 mb-4" style="width: 10rem; height: 10rem;">
                                        <input class="file-uploader bg-secondary" type="file" accept="image/png, image/jpeg" data-label-idle="&lt;i class=&quot;d-inline-block fi-camera-plus fs-2 text-muted mb-2&quot;&gt;&lt;/i&gt;&lt;br&gt;&lt;span class=&quot;fw-bold&quot;&gt;Change picture&lt;/span&gt;"
                                            data-style-panel-layout="compact" data-image-preview-height="160" data-image-crop-aspect-ratio="1:1" data-image-resize-target-width="200" data-image-resize-target-height="200">
                                    </div>
                                    <div class="order-sm-1">
                                        <h3 class="h4 mb-sm-4">Annette Black</h3>
                                        <h4 class="h5">Basic info</h4>
                                        <ul class="list-unstyled text-nav">
                                            <li><span class='text-muted'>Position:</span> UX Designer</li>
                                            <li><span class='text-muted'>Job type:</span> Part-time</li>
                                            <li><span class='text-muted'>Location:</span> New York, USA</li>
                                            <li><span class='text-muted'>Salary:</span> $2000 – $3000</li>
                                            <li><span class='text-muted'>Categories:</span> Design, Internet Technology</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="border-top py-4">
                                    <h4 class="h5">Personal info</h4>
                                    <ul class="list-unstyled text-nav">
                                        <li><span class='text-muted'>Full name:</span> Annete Black</li>
                                        <li><span class='text-muted'>Date of birth:</span> May 18, 1989</li>
                                        <li><span class='text-muted'>Address:</span> 2464 Royal Ln. Mesa, New Jersey 45463</li>
                                        <li><span class='text-muted'>Phone:</span> (302) 555-0107</li>
                                        <li><span class='text-muted'>Email:</span> annette_black@email.com</li>
                                    </ul>
                                </div>
                                <div class="border-top py-4">
                                    <h4 class="h5">Work experience</h4>
                                    <div class="mt-3">
                                        <h5 class="h6 mb-2">Product Designer</h5>
                                        <ul class="list-unstyled fs-sm mb-2">
                                            <li>XAMPP Company (IT, Consulting)</li>
                                            <li>2015 – 2020</li>
                                        </ul>
                                        <p>Praesent sed pulvinar posuere nisl tincidunt. Iaculis sit quam magna congue. Amet vel non aliquet habitasse. Egestas erat odio et, eleifend turpis etiam blandit interdum. Nec augue ut senectus quisque diam quis.
                                            At augue accumsan, bibendum. A eget et, eget quisque egestas netus vel.</p>
                                        <div class="d-flex">
                                        </div>
                                        <div class="pt-2 mt-3">
                                            <h5 class="h6 mb-2">Product Designer</h5>
                                            <ul class="list-unstyled fs-sm">
                                                <li>XAMPP Company (IT, Consulting)</li>
                                                <li>2015 – 2020</li>
                                            </ul>
                                            <div class="d-flex"></div>
                                        </div>
                                    </div>
                                    <div class="border-top py-4">
                                        <h4 class="h5">Education</h4>
                                        <div class="mt-3">
                                            <h5 class="h6 mb-2">Bachelor's degree</h5>
                                            <ul class="list-unstyled fs-sm">
                                                <li>Syracuse University</li>
                                                <li>900 South Crouse Ave. Syracuse, NY 13244</li>
                                                <li>2008 – 2012</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Navigation-->
                        <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5">
                            <button class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="button">Save resume</button>
                        </div>
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
	<script src="${spath}/resources/js/theme.min.js"></script>
   
    <script src="vendor/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
    <script src="vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
    <script src="vendor/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
    <script src="vendor/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
    <script src="vendor/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
    <script src="vendor/filepond/dist/filepond.min.js"></script>
   
</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
