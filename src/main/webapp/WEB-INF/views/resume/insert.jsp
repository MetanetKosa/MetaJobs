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
	                        <h1 class="h2 mb-4">Create online resume</h1>
	                        <p class="mb-4">Save time by uploading a resume to prefill some of the fields below. Please, use PDF format.</p>
	                    </div>              
	                    <!-- Step 1: Basic Info-->
	                    <div class="bg-light rounded-3 p-4 p-md-5 mb-3">
	                        <h2 class="h4 mb-4"><i class="fi-info-circle text-primary fs-5 mt-n1 me-2"></i>Basic info</h2>
	                        <div class="row">
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-fn">First name <span class='text-danger'>*</span></label>
	                                <input class="form-control form-control-lg" type="text" id="pr-fn" value="Annette" placeholder="Enter your first name" required>
	                            </div>
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-sn">Second name <span class='text-danger'>*</span></label>
	                                <input class="form-control form-control-lg" type="text" id="pr-sn" value="Black" placeholder="Enter your second name" required>
	                            </div>
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-email">Email address <span class='text-danger'>*</span></label>
	                                <input class="form-control form-control-lg" type="email" id="pr-email" value="annette_black@email.com" placeholder="Enter your email address" required>
	                            </div>
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-phone">Phone</label>
	                                <input class="form-control form-control-lg" type="text" id="pr-phone" value="(302) 555-0107" placeholder="Enter your phone number">
	                            </div>
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-birth-date">Date of birth <span class='text-danger'>*</span></label>
	                                <div class="input-group input-group-lg">
	                                    <input class="form-control date-picker rounded pe-5" type="text" id="pr-birth-date" placeholder="Choose date" data-datepicker-options="{&quot;altInput&quot;: true, &quot;altFormat&quot;: &quot;F j, Y&quot;, &quot;dateFormat&quot;: &quot;Y-m-d&quot;}">
	                                    <i class="fi-calendar text-muted position-absolute top-50 end-0 translate-middle-y me-3"></i>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-country">Country where you want to work <span class='text-danger'>*</span></label>
	                                <select class="form-select form-select-lg" id="pr-country" required>
	                    <option value="" disabled selected>Choose country</option>
	                    <option value="Australia">Australia</option>
	                    <option value="Belgium">Belgium</option>
	                    <option value="Canada">Canada</option>
	                    <option value="China">China</option>
	                    <option value="Denmark">Denmark</option>
	                    <option value="France">France</option>
	                    <option value="Germany">Germany</option>
	                    <option value="Japan">Japan</option>
	                    <option value="UK">UK</option>
	                    <option value="USA">USA</option>
	                  </select>
	                            </div>
	                            <div class="col-sm-6 mb-4">
	                                <label class="form-label" for="pr-city">City where you want to work <span class='text-danger'>*</span></label>
	                                <select class="form-select form-select-lg" id="pr-city" required>
	                    <option value="" disabled selected>Choose city</option>
	                    <option value="Beijing">Beijing</option>
	                    <option value="Berlin">Berlin</option>
	                    <option value="Brussels">Brussels</option>
	                    <option value="Copenhagen">Copenhagen</option>
	                    <option value="London">London</option>
	                    <option value="Ottawa">Ottawa</option>
	                    <option value="Paris">Paris</option>
	                    <option value="Sydney">Sydney</option>
	                    <option value="Tokyo">Tokyo</option>
	                    <option value="Washington">Washington</option>
	                  </select>
	                            </div>
	                            <div class="col-12 mb-4">
	                                <label class="form-label" for="pr-address">Your address</label>
	                                <input class="form-control form-control-lg" type="text" id="pr-address" placeholder="Enter the address">
	                            </div>
	                        </div>
	                        <div class="pb-4 mb-2">
	                            <label class="form-label fw-bold mb-3">Socials</label>
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
	                                    <div class="btn btn-icon btn-light btn-xs shadow-sm rounded-circle pe-none flex-shrink-0 me-3"><i class="fi-behance text-body"></i></div>
	                                    <input class="form-control" type="text" placeholder="Your Behance account">
	                                </div>
	                            </div><a class="collapse-label collapsed d-inline-block fs-sm fw-bold text-decoration-none pt-2" href="#showMoreSocials" data-bs-toggle="collapse" data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button"
	                                aria-expanded="false" aria-controls="showMoreSocials"><i class="fi-arrow-down me-2"></i></a>
	                        </div>
	                        <div class="border-top pt-4">
	                            <label class="form-label fw-bold py-2 mb-1" for="pr-position">Position you want to work on</label>
	                            <input class="form-control form-control-lg mb-4" type="text" id="pr-position" placeholder="Indicate the position" required>
	                            <label class="form-label fw-bold pb-1 mb-2">Choose categories for posting resume</label>
	                            <div class="row row-cols-sm-2 row-cols-md-4 gx-3 gx-lg-4 mb-4">
	                                <div class="col">
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="accounting">
	                                        <label class="form-check-label" for="accounting">Accounting</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="marketing" checked>
	                                        <label class="form-check-label" for="marketing">Marketing &amp; PR</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="medicine">
	                                        <label class="form-check-label" for="medicine">Medicine</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="agriculture">
	                                        <label class="form-check-label" for="agriculture">Agriculture</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="it" checked>
	                                        <label class="form-check-label" for="it">Internet technology</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="security">
	                                        <label class="form-check-label" for="security">Security</label>
	                                    </div>
	                                </div>
	                                <div class="col">
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="management">
	                                        <label class="form-check-label" for="management">Management</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="horeca">
	                                        <label class="form-check-label" for="horeca">HoReCa</label>
	                                    </div>
	                                    <div class="form-check">
	                                        <input class="form-check-input" type="checkbox" id="design" checked>
	                                        <label class="form-check-label" for="design">Design, creativity</label>
	                                    </div>
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
	                    <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5"><a class="btn btn-primary btn-lg rounded-pill ms-sm-auto" href="job-board-post-resume-2.html">Next step<i class="fi-chevron-right fs-sm ms-2"></i></a></div>
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
	    
	</body>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>