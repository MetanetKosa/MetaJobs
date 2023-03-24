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


    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Body-->

<body>
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <main class="page-wrapper">
        <!-- Navbar-->
        <header class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-scroll-header>
            <div class="container">
                <a class="navbar-brand me-3 me-xl-4" href="real-estate-home-v1.html"><img class="d-block" src="img/logo/logo-dark.svg" width="116" alt="Finder"></a>
                <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3">
                    <a class="d-block py-2" href="real-estate-account-info.html"><img class="rounded-circle" src="img/avatars/30.jpg" width="40" alt="Annette Black"></a>
                    <div class="dropdown-menu dropdown-menu-end">
                        <div class="d-flex align-items-start border-bottom px-3 py-1 mb-2" style="width: 16rem;"><img class="rounded-circle" src="img/avatars/03.jpg" width="48" alt="Annette Black">
                            <div class="ps-2">
                                <h6 class="fs-base mb-0">Annette Black</h6><span class="star-rating star-rating-sm"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                                <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                            </div>
                        </div><a class="dropdown-item" href="real-estate-account-info.html"><i class="fi-user opacity-60 me-2"></i>Personal Info</a><a class="dropdown-item" href="real-estate-account-security.html"><i class="fi-lock opacity-60 me-2"></i>Password &amp; Security</a>
                        <a class="dropdown-item" href="real-estate-account-properties.html"><i class="fi-home opacity-60 me-2"></i>My Properties</a><a class="dropdown-item" href="real-estate-account-wishlist.html"><i class="fi-heart opacity-60 me-2"></i>Wishlist</a>
                        <a class="dropdown-item" href="real-estate-account-reviews.html"><i class="fi-star opacity-60 me-2"></i>Reviews</a><a class="dropdown-item" href="real-estate-account-notifications.html"><i class="fi-bell opacity-60 me-2"></i>Notifications</a>
                        <div class="dropdown-divider"></div><a class="dropdown-item" href="real-estate-help-center.html">Help</a><a class="dropdown-item" href="signin-light.html">Sign Out</a>
                    </div>
                </div><a class="btn btn-primary btn-sm ms-2 order-lg-3" href="real-estate-add-property.html"><i class="fi-plus me-2"></i>Add<span class='d-none d-sm-inline'> property</span></a>
                <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
                    <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
                        <!-- Demos switcher-->
                        <li class="nav-item dropdown me-lg-2"><a class="nav-link dropdown-toggle align-items-center pe-lg-4" href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>Demos<span class="d-none d-lg-block position-absolute top-50 end-0 translate-middle-y border-end" style="width: 1px; height: 30px;"></span></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-home-v1.html"><i class="fi-building fs-base opacity-50 me-2"></i>Real Estate Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="car-finder-home.html"><i class="fi-car fs-base opacity-50 me-2"></i>Car Finder Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="job-board-home-v1.html"><i class="fi-briefcase fs-base opacity-50 me-2"></i>Job Board Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="city-guide-home-v1.html"><i class="fi-map-pin fs-base opacity-50 me-2"></i>City Guide Demo</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="index.html"><i class="fi-home fs-base opacity-50 me-2"></i>Main Page</a></li>
                                <li><a class="dropdown-item" href="components/typography.html"><i class="fi-list fs-base opacity-50 me-2"></i>Components</a></li>
                                <li><a class="dropdown-item" href="docs/dev-setup.html"><i class="fi-file fs-base opacity-50 me-2"></i>Documentation</a></li>
                            </ul>
                        </li>
                        <!-- Menu items-->
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-home-v1.html">Home v.1</a></li>
                                <li><a class="dropdown-item" href="real-estate-home-v2.html">Home v.2</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Catalog</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-catalog-rent.html">Property for Rent</a></li>
                                <li><a class="dropdown-item" href="real-estate-catalog-sale.html">Property for Sale</a></li>
                                <li><a class="dropdown-item" href="real-estate-single-v1.html">Single Property v.1</a></li>
                                <li><a class="dropdown-item" href="real-estate-single-v2.html">Single Property v.2</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown active"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Account</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-account-info.html">Personal Info</a></li>
                                <li><a class="dropdown-item" href="real-estate-account-security.html">Password &amp; Security</a></li>
                                <li><a class="dropdown-item" href="real-estate-account-properties.html">My Properties</a></li>
                                <li><a class="dropdown-item" href="real-estate-account-wishlist.html">Wishlist</a></li>
                                <li><a class="dropdown-item" href="real-estate-account-reviews.html">Reviews</a></li>
                                <li><a class="dropdown-item" href="real-estate-account-notifications.html">Notifications</a></li>
                                <li><a class="dropdown-item" href="signin-light.html">Sign In</a></li>
                                <li><a class="dropdown-item" href="signup-light.html">Sign Up</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Vendor</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-add-property.html">Add Property</a></li>
                                <li><a class="dropdown-item" href="real-estate-property-promotion.html">Property Promotion</a></li>
                                <li><a class="dropdown-item" href="real-estate-vendor-properties.html">Vendor Page: Properties</a></li>
                                <li><a class="dropdown-item" href="real-estate-vendor-reviews.html">Vendor Page: Reviews</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="real-estate-about.html">About</a></li>
                                <li class="dropdown"><a class="dropdown-item dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="real-estate-blog.html">Blog Grid</a></li>
                                        <li><a class="dropdown-item" href="real-estate-blog-single.html">Single Post</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="real-estate-contacts.html">Contacts</a></li>
                                <li><a class="dropdown-item" href="real-estate-help-center.html">Help Center</a></li>
                                <li><a class="dropdown-item" href="real-estate-404.html">404 Not Found</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown d-lg-none">
                            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><img class="rounded-circle me-2" src="img/avatars/30.jpg" width="30" alt="Annette Black">Annette Black</a>
                            <div class="dropdown-menu">
                                <div class="ps-3"><span class="star-rating star-rating-sm"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                                    <div class="fs-xs py-2">(302) 555-0107<br>annette_black@email.com</div>
                                </div><a class="dropdown-item" href="real-estate-account-info.html"><i class="fi-user opacity-60 me-2"></i>Personal Info</a><a class="dropdown-item" href="real-estate-account-security.html"><i class="fi-lock opacity-60 me-2"></i>Password &amp; Security</a>
                                <a class="dropdown-item" href="real-estate-account-properties.html"><i class="fi-home opacity-60 me-2"></i>My Properties</a><a class="dropdown-item" href="real-estate-account-wishlist.html"><i class="fi-heart opacity-60 me-2"></i>Wishlist</a>
                                <a class="dropdown-item" href="real-estate-account-reviews.html"><i class="fi-star opacity-60 me-2"></i>Reviews</a><a class="dropdown-item" href="real-estate-account-notifications.html"><i class="fi-bell opacity-60 me-2"></i>Notifications</a>
                                <div class="dropdown-divider"></div><a class="dropdown-item" href="real-estate-help-center.html">Help</a><a class="dropdown-item" href="signin-light.html">Sign Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <!-- Page content-->
        <div class="container pt-5 pb-lg-4 mt-5 mb-sm-2">
            <!-- Breadcrumb-->
            <nav class="mb-4 pt-md-3" aria-label="Breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="real-estate-home-v1.html">Home</a></li>
                    <li class="breadcrumb-item"><a href="real-estate-account-info.html">Account</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Personal Info</li>
                </ol>
            </nav>
            <!-- Page content-->
            <div class="row justify-content-center pb-sm-2">
                <!-- Content-->
                <div class="col-lg-8 col-md-7 mb-5">
                    <h1 class="h2">Personal Info</h1>
                    <div class="mb-2 pt-1">Your personal info is 50% completed</div>
                    <div class="progress mb-4" style="height: .25rem;">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    <label class="form-label pt-2" for="account-bio">Short bio</label>
                    <div class="row pb-2">
                        <div class="col-lg-9 col-sm-8 mb-4">
                            <textarea class="form-control" id="account-bio" rows="6" placeholder="Write your bio here. It will be displayed on your public profile."></textarea>
                        </div>
                        <div class="col-lg-3 col-sm-4 mb-4">
                            <input class="file-uploader bg-secondary" type="file" accept="image/png, image/jpeg" data-label-idle="&lt;i class=&quot;d-inline-block fi-camera-plus fs-2 text-muted mb-2&quot;&gt;&lt;/i&gt;&lt;br&gt;&lt;span class=&quot;fw-bold&quot;&gt;Change picture&lt;/span&gt;"
                                data-style-panel-layout="compact" data-image-preview-height="160" data-image-crop-aspect-ratio="1:1" data-image-resize-target-width="200" data-image-resize-target-height="200">
                        </div>
                    </div>
                    <div class="border rounded-3 p-3 mb-4" id="personal-info">
                        <!-- Name-->
                        <div class="border-bottom pb-3 mb-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="pe-2">
                                    <label class="form-label fw-bold">Full name</label>
                                    <div id="name-value">Annette Black</div>
                                </div>
                                <div class="me-n3" data-bs-toggle="tooltip" title="Edit"><a class="nav-link py-0" href="#name-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                            </div>
                            <div class="collapse" id="name-collapse" data-bs-parent="#personal-info">
                                <input class="form-control mt-3" type="text" data-bs-binded-element="#name-value" data-bs-unset-value="Not specified" value="Annette Black">
                            </div>
                        </div>
                        <!-- Email-->
                        <div class="border-bottom pb-3 mb-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="pe-2">
                                    <label class="form-label fw-bold">Email</label>
                                    <div id="email-value">annette_black@email.com</div>
                                </div>
                                <div class="me-n3" data-bs-toggle="tooltip" title="Edit"><a class="nav-link py-0" href="#email-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                            </div>
                            <div class="collapse" id="email-collapse" data-bs-parent="#personal-info">
                                <input class="form-control mt-3" type="email" data-bs-binded-element="#email-value" data-bs-unset-value="Not specified" value="annette_black@email.com">
                            </div>
                        </div>
                        <!-- Phone number-->
                        <div class="border-bottom pb-3 mb-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="pe-2">
                                    <label class="form-label fw-bold">Phone number</label>
                                    <div id="phone-value">(302) 555-0107</div>
                                </div>
                                <div class="me-n3" data-bs-toggle="tooltip" title="Edit"><a class="nav-link py-0" href="#phone-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                            </div>
                            <div class="collapse" id="phone-collapse" data-bs-parent="#personal-info">
                                <input class="form-control mt-3" type="text" data-bs-binded-element="#phone-value" data-bs-unset-value="Not specified" value="(302) 555-0107">
                            </div>
                        </div>
                        <!-- Company name-->
                        <div class="border-bottom pb-3 mb-3">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="pe-2">
                                    <label class="form-label fw-bold">Company name</label>
                                    <div id="company-value">Not specified</div>
                                </div>
                                <div class="me-n3" data-bs-toggle="tooltip" title="Edit"><a class="nav-link py-0" href="#company-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                            </div>
                            <div class="collapse" id="company-collapse" data-bs-parent="#personal-info">
                                <input class="form-control mt-3" type="text" data-bs-binded-element="#company-value" data-bs-unset-value="Not specified" placeholder="Enter company name">
                            </div>
                        </div>
                        <!-- Address-->
                        <div>
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="pe-2">
                                    <label class="form-label fw-bold">Address</label>
                                    <div id="address-value">Not specified</div>
                                </div>
                                <div class="me-n3" data-bs-toggle="tooltip" title="Edit"><a class="nav-link py-0" href="#address-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                            </div>
                            <div class="collapse" id="address-collapse" data-bs-parent="#personal-info">
                                <input class="form-control mt-3" type="text" data-bs-binded-element="#address-value" data-bs-unset-value="Not specified" placeholder="Enter address">
                            </div>
                        </div>
                    </div>
                    <!-- Socials-->
                    <div class="pt-2">
                        <label class="form-label fw-bold mb-3">Socials</label>
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-facebook text-body"></i></div>
                        <input class="form-control" type="text" placeholder="Your Facebook account">
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-linkedin text-body"></i></div>
                        <input class="form-control" type="text" placeholder="Your LinkedIn account">
                    </div>
                    <div class="d-flex align-items-center mb-3">
                        <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-twitter text-body"></i></div>
                        <input class="form-control" type="text" placeholder="Your Twitter account">
                    </div>
                    <div class="collapse" id="showMoreSocials">
                        <div class="d-flex align-items-center mb-3">
                            <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-instagram text-body"></i></div>
                            <input class="form-control" type="text" placeholder="Your Instagram account">
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-pinterest text-body"></i></div>
                            <input class="form-control" type="text" placeholder="Your Pinterest account">
                        </div>
                    </div><a class="collapse-label collapsed d-inline-block fs-sm fw-bold text-decoration-none pt-2 pb-3" href="#showMoreSocials" data-bs-toggle="collapse" data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button"
                        aria-expanded="false" aria-controls="showMoreSocials"><i class="fi-arrow-down me-2"></i></a>
                    <div class="d-flex align-items-center justify-content-between border-top mt-4 pt-4 pb-1">
                        <button class="btn btn-primary px-3 px-sm-4" type="button">Save changes</button>
                        <button class="btn btn-link btn-sm px-0" type="button"><i class="fi-trash me-2"></i>Delete account</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="vendor/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
    <script src="vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
    <script src="vendor/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
    <script src="vendor/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
    <script src="vendor/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
    <script src="vendor/filepond/dist/filepond.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>
    
    <script type="text/javascript">
		$(document).ready(function(){
			
		})
		
	</script>

</body>
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
