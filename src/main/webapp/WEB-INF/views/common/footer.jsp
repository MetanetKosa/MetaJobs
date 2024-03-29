<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- Footer-->
        <footer class="footer pt-lg-5 pt-4 bg-dark text-light">
            <div class="container mb-4 py-4 pb-lg-5">
                <div class="row gy-4">
                    <div class="col-lg-3 col-md-6 col-sm-4">
                        <div class="mb-4 pb-sm-3">
                            <a class="d-inline-block" href="city-guide-home-v1.html"><img src="${path}/resources/img/logo/logo-light.svg" width="116" alt="Logo"></a>
                        </div>
                        <ul class="nav nav-light flex-column">
                            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap" href="mailto:example@gmail.com"><i class="fi-mail mt-n1 me-1 align-middle text-primary"></i>example@gmail.com</a></li>
                            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap" href="tel:4065550120"><i class="fi-device-mobile mt-n1 me-1 align-middle text-primary"></i>(406) 555-0120</a></li>
                        </ul>
                    </div>
                    <!-- Links-->
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <h3 class="fs-base text-light">Quick links</h3>
                        <ul class="list-unstyled fs-sm">
                            <li><a class="nav-link-light" href="#">Top cities</a></li>
                            <li><a class="nav-link-light" href="#">Accommodation</a></li>
                            <li><a class="nav-link-light" href="#">Cafes &amp; restaurants</a></li>
                            <li><a class="nav-link-light" href="#">Events</a></li>
                        </ul>
                    </div>
                    <!-- Links-->
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <h3 class="fs-base text-light">Profile</h3>
                        <ul class="list-unstyled fs-sm">
                            <li><a class="nav-link-light" href="#">My account</a></li>
                            <li><a class="nav-link-light" href="#">Favorites</a></li>
                            <li><a class="nav-link-light" href="#">My listings</a></li>
                            <li><a class="nav-link-light" href="#">Add listing</a></li>
                        </ul>
                    </div>
                    <!-- Subscription form-->
                    <div class="col-lg-4 offset-lg-1">
                        <h3 class="h4 text-light">Subscribe to our newsletter</h3>
                        <p class="fs-sm mb-4 opacity-60">Don’t miss any relevant vacancies!</p>
                        <form class="form-group form-group-light rounded-pill" style="max-width: 500px;">
                            <div class="input-group input-group-sm"><span class="input-group-text text-muted"><i class="fi-mail"></i></span>
                                <input class="form-control" type="email" placeholder="Your email">
                            </div>
                            <button class="btn btn-primary btn-sm rounded-pill" type="button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="py-4 border-top border-light">
                <div class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
                    <!-- Copyright-->
                    <p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0"><span class="text-light opacity-60">&copy; All rights reserved. Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></p>
                    <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
                        <!-- Links-->
                        <div class="d-flex flex-wrap fs-sm mb-lg-0 mb-4 pe-lg-4"><a class="nav-link-light px-2 mx-1" href="#">About</a><a class="nav-link-light px-2 mx-1" href="#">Blog</a><a class="nav-link-light px-2 mx-1" href="#">Support</a><a class="nav-link-light px-2 mx-1" href="#">Contacts</a></div>
                        <div class="d-flex align-items-center">
                            <!-- Language switcher-->
                            <div class="dropdown"><a class="nav-link nav-link-light dropdown-toggle fs-sm align-items-center p-0 fw-normal" href="#" id="langSwitcher" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-globe mt-n1 me-2 align-middle"></i>Eng</a>
                                <ul class="dropdown-menu dropdown-menu-dark my-1" aria-labelledby="langSwitcher">
                                    <li>
                                        <a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/de.png" width="20" alt="Deutsch">Deutsch</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/fr.png" width="20" alt="Français">Français</a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item text-nowrap py-1" href="#"><img class="me-2" src="img/flags/es.png" width="20" alt="Español">Español</a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Socials-->
                            <div class="ms-4 ps-lg-2 text-nowrap"><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-facebook"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-twitter"></i></a>
                                <a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-telegram"></i></a><a class="btn btn-icon btn-translucent-light btn-xs rounded-circle ms-2" href="#"><i class="fi-messenger"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
   
    <!-- Vendor scrits: js libraries and plugins-->
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/filepond/dist/filepond.min.js"></script>
 
    <!-- Main theme script-->
	<script src="${pageContext.request.contextPath}/resources/js/theme.min.js"></script>
  </body>
</html>