<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title"/>
</jsp:include>

  <!-- Body-->
  <body class="bg-secondary">
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
    <main class="page-wrapper">
      <!-- Navbar-->
      <header class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" data-scroll-header>
        <div class="container"><a class="navbar-brand me-0 me-xl-4" href="job-board-home-v1.html"><img class="d-block" src="img/logo/logo-light.svg" width="116" alt="Finder"></a>
          <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3"><a class="d-block py-2" href="job-board-account-profile.html"><img class="rounded-circle" src="img/avatars/35.png" width="40" alt="Annette Black"></a>
            <div class="dropdown-menu dropdown-menu-dark dropdown-menu-end">
              <div class="d-flex align-items-start border-bottom border-light px-3 py-1 mb-2" style="width: 16rem;"><img class="rounded-circle" src="img/avatars/25.png" width="48" alt="Annette Black">
                <div class="ps-2">
                  <h6 class="fs-base text-light mb-0">Annette Black</h6>
                  <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                </div>
              </div><a class="dropdown-item" href="job-board-account-profile.html"><i class="fi-settings me-2"></i>Profile Settings</a><a class="dropdown-item" href="job-board-account-my-resumes.html"><i class="fi-file me-2"></i>My Resumes</a><a class="dropdown-item" href="job-board-account-saved-jobs.html"><i class="fi-heart me-2"></i>Saved Jobs</a><a class="dropdown-item" href="job-board-account-notifications.html"><i class="fi-bell me-2"></i>Notifications</a>
              <div class="dropdown-divider"></div><a class="dropdown-item" href="signin-light.html"><i class="fi-logout me-2"></i>Sign Out</a>
            </div>
          </div><a class="btn btn-primary btn-sm rounded-pill ms-2 order-lg-3" href="job-board-post-resume-1.html"><i class="fi-plus me-2"></i>Post resume</a><a class="btn btn-link btn-light btn-sm d-none d-lg-block order-lg-3 pe-0 ms-2" href="job-board-home-v2.html">For employers<i class="fi-arrow-long-right ms-2"></i></a>
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
              <li class="nav-item dropdown d-lg-none"><a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img class="rounded-circle me-2" src="img/avatars/35.png" width="30" alt="Annette Black">Annette Black</a>
                <div class="dropdown-menu dropdown-menu-dark">
                  <div class="ps-3">
                    <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                  </div><a class="dropdown-item" href="job-board-account-profile.html"><i class="fi-settings me-2"></i>Profile Settings</a><a class="dropdown-item" href="job-board-account-my-resumes.html"><i class="fi-file me-2"></i>My Resumes</a><a class="dropdown-item" href="job-board-account-saved-jobs.html"><i class="fi-heart me-2"></i>Saved Jobs</a><a class="dropdown-item" href="job-board-account-notifications.html"><i class="fi-bell me-2"></i>Notifications</a>
                  <div class="dropdown-divider"></div><a class="dropdown-item" href="signin-light.html"><i class="fi-logout me-2"></i>Sign Out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </header>
      <!-- Page content-->
      <!-- Page container-->
      <div class="position-absolute top-0 start-0 w-100 bg-dark" style="height: 398px;"></div>
      <div class="container content-overlay mt-5 mb-md-4 py-5">
        <!-- Breadcrumb-->
        <nav class="mb-3 mb-md-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb breadcrumb-light">
            <li class="breadcrumb-item"><a href="job-board-home-v1.html">Home</a></li>
            <li class="breadcrumb-item"><a href="job-board-account-profile.html">Account</a></li>
            <li class="breadcrumb-item active" aria-current="page">My resumes</li>
          </ol>
        </nav>
        <!-- Page card like wrapper-->
        <div class="bg-light shadow-sm rounded-3 p-4 p-md-5 mb-2">
          <!-- Account header-->
          <div class="d-flex align-items-start justify-content-between pb-4 mb-2">
            <div class="d-flex align-items-start">
              <div class="position-relative flex-shrink-0"><img class="rounded-circle" src="img/avatars/37.png" width="100" alt="Annette Black">
                <button class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm position-absolute end-0 bottom-0" type="button" data-bs-toggle="tooltip" title="Change image"><i class="fi-pencil fs-xs"></i></button>
              </div>
              <div class="ps-3 ps-sm-4">
                <h3 class="h5">Annette Black</h3>
                <ul class="list-unstyled fs-sm mb-0">
                  <li class="d-flex text-nav text-break"><i class="fi-mail opacity-60 mt-1 me-2"></i><span>annette_black@email.com</span></li>
                  <li class="d-flex text-nav text-break"><i class="fi-phone opacity-60 mt-1 me-2"></i><span>(302) 555-0107</span></li>
                </ul>
              </div>
            </div><a class="nav-link p-0 d-none d-md-block" href="signin-light.html"><i class="fi-logout mt-n1 me-2"></i>Sign out</a>
          </div>
          <!-- Account menu--><a class="btn btn-outline-primary btn-lg rounded-pill w-100 d-md-none" href="#account-nav" data-bs-toggle="collapse"><i class="fi-align-justify me-2"></i>Account Menu</a>
          <div class="collapse d-md-block" id="account-nav">
            <ul class="nav nav-pills flex-column flex-md-row pt-3 pt-md-0 pb-md-4 border-bottom-md">
              <li class="nav-item mb-md-0 me-md-2 pe-md-1"><a class="nav-link" href="job-board-account-profile.html"><i class="fi-settings mt-n1 me-2 fs-base"></i>Profile Settings</a></li>
              <li class="nav-item mb-md-0 me-md-2 pe-md-1"><a class="nav-link active" href="job-board-account-my-resumes.html" aria-current="page"><i class="fi-file mt-n1 me-2 fs-base"></i>My Resumes</a></li>
              <li class="nav-item mb-md-0 me-md-2 pe-md-1"><a class="nav-link" href="job-board-account-saved-jobs.html"><i class="fi-heart mt-n1 me-2 fs-base"></i>Saved Jobs</a></li>
              <li class="nav-item mb-md-0"><a class="nav-link" href="job-board-account-notifications.html"><i class="fi-bell mt-n1 me-2 fs-base"></i>Notifications</a></li>
              <li class="nav-item d-md-none"><a class="nav-link" href="signin-light.html"><i class="fi-logout mt-n1 me-2 fs-base"></i>Sign Out</a></li>
            </ul>
          </div>
          <!-- Page title-->
          <div class="d-flex align-items-center justify-content-between py-4 mt-3 mb-2">
            <h1 class="h3 mb-0">My resumes</h1><a class="fw-bold text-decoration-none" href="#"><i class="fi-trash me-2"></i><span class="align-middle">Delete all</span></a>
          </div>
          <div class="row">
            <!-- Sidebar-->
            <div class="col-md-3 mb-4 pb-3 pb-md-0">
              <div style="max-width: 13rem;">
                <ul class="list-unstyled fs-sm pb-1 pb-md-3">
                  <li><a class="nav-link fw-normal d-flex align-items-center px-0 py-1" href="#"><i class="fi-file opacity-70 me-2"></i><span>Publihed</span><span class="text-muted ms-auto">(3)</span></a></li>
                  <li><a class="nav-link fw-normal d-flex align-items-center px-0 py-1" href="#"><i class="fi-file-clean opacity-70 me-2"></i><span>Drafts</span><span class="text-muted ms-auto">(0)</span></a></li>
                  <li><a class="nav-link fw-normal d-flex align-items-center px-0 py-1" href="#"><i class="fi-archive opacity-70 me-2"></i><span>Archived</span><span class="text-muted ms-auto">(0)</span></a></li>
                </ul><a class="btn btn-primary rounded-pill w-100" href="job-board-post-resume-1.html"><i class="fi-plus fs-sm me-2"></i>Post resume</a>
              </div>
            </div>
            <!-- List of resumes-->
            <div class="col-md-9">
              <!-- Item-->
              <div class="card bg-secondary card-hover mb-2">
                <div class="card-body">
                  <div class="d-flex justify-content-between">
                    <div class="d-flex align-items-start"><img class="d-none d-sm-block" src="img/avatars/38.png" width="100" alt="Resume picture">
                      <div class="ps-sm-3">
                        <h3 class="h6 card-title pb-1 mb-2"><a class="stretched-link text-nav text-decoration-none" href="#">Lead Web Designer</a></h3>
                        <div class="fs-sm">
                          <div class="text-nowrap mb-2"><i class="fi-map-pin text-muted me-1"> </i>New York</div>
                          <div class="text-nowrap"><i class="fi-cash fs-base text-muted me-1"></i>$4,000</div>
                        </div>
                      </div>
                    </div>
                    <div class="d-flex flex-column align-items-end justify-content-between">
                      <div class="dropdown position-relative zindex-10 mb-3">
                        <button class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm" type="button" id="contextMenu1" data-bs-toggle="dropdown" aria-expanded="false"><i class="fi-dots-vertical"></i></button>
                        <ul class="dropdown-menu my-1" aria-labelledby="contextMenu1">
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-edit opacity-60 me-2"></i>Edit</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-flame opacity-60 me-2"></i>Promote</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-download-file opacity-60 me-2"></i>Download as PDF</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-power opacity-60 me-2"></i>Deactivate</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-trash opacity-60 me-2"></i>Delete</button>
                          </li>
                        </ul>
                      </div><strong class="fs-sm">80 views</strong>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Item-->
              <div class="card bg-secondary card-hover mb-2">
                <div class="card-body">
                  <div class="d-flex justify-content-between">
                    <div class="d-flex align-items-start"><img class="d-none d-sm-block" src="img/avatars/37.png" width="100" alt="Resume picture">
                      <div class="ps-sm-3">
                        <h3 class="h6 card-title pb-1 mb-2"><a class="stretched-link text-nav text-decoration-none" href="#"><span class="me-3">Graphic Designer</span><span class="badge bg-faded-accent fs-sm rounded-pill">Featured</span></a></h3>
                        <div class="fs-sm">
                          <div class="text-nowrap mb-2"><i class="fi-map-pin text-muted me-1"> </i>New York</div>
                          <div class="text-nowrap"><i class="fi-cash fs-base text-muted me-1"></i>$2,000 - $2,500</div>
                        </div>
                      </div>
                    </div>
                    <div class="d-flex flex-column align-items-end justify-content-between">
                      <div class="dropdown position-relative zindex-5 mb-3">
                        <button class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm" type="button" id="contextMenu2" data-bs-toggle="dropdown" aria-expanded="false"><i class="fi-dots-vertical"></i></button>
                        <ul class="dropdown-menu my-1" aria-labelledby="contextMenu2">
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-edit opacity-60 me-2"></i>Edit</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-flame opacity-60 me-2"></i>Promote</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-download-file opacity-60 me-2"></i>Download as PDF</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-power opacity-60 me-2"></i>Deactivate</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-trash opacity-60 me-2"></i>Delete</button>
                          </li>
                        </ul>
                      </div><strong class="fs-sm">203 views</strong>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Item-->
              <div class="card bg-secondary card-hover">
                <div class="card-body">
                  <div class="d-flex justify-content-between">
                    <div class="d-flex align-items-start"><img class="d-none d-sm-block" src="img/avatars/37.png" width="100" alt="Resume picture">
                      <div class="ps-sm-3">
                        <h3 class="h6 card-title pb-1 mb-2"><a class="stretched-link text-nav text-decoration-none" href="#">Identity Designer / Illustrator</a></h3>
                        <div class="fs-sm">
                          <div class="text-nowrap mb-2"><i class="fi-map-pin text-muted me-1"> </i>New York</div>
                          <div class="text-nowrap"><i class="fi-cash fs-base text-muted me-1"></i>$2,500</div>
                        </div>
                      </div>
                    </div>
                    <div class="d-flex flex-column align-items-end justify-content-between">
                      <div class="dropdown position-relative zindex-1 mb-3">
                        <button class="btn btn-icon btn-light btn-xs rounded-circle shadow-sm" type="button" id="contextMenu3" data-bs-toggle="dropdown" aria-expanded="false"><i class="fi-dots-vertical"></i></button>
                        <ul class="dropdown-menu my-1" aria-labelledby="contextMenu3">
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-edit opacity-60 me-2"></i>Edit</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-flame opacity-60 me-2"></i>Promote</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-download-file opacity-60 me-2"></i>Download as PDF</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-power opacity-60 me-2"></i>Deactivate</button>
                          </li>
                          <li>
                            <button class="dropdown-item" type="button"><i class="fi-trash opacity-60 me-2"></i>Delete</button>
                          </li>
                        </ul>
                      </div><strong class="fs-sm">92 views</strong>
                    </div>
                  </div>
                </div>
              </div>
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
    <script src="js/theme.min.js"></script>
  </body>
