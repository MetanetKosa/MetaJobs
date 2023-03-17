<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="홈페이지" name="title" />
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
					<li class="breadcrumb-item active" aria-current="page">Post
						resume</li>
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
						<h2 class="h4 mb-4">
							<i class="fi-info-circle text-primary fs-5 mt-n1 me-2"></i>이력서
						</h2>
						<form role="form" action="/resume/resumeInsert" method="post">
							<div class="row">
								<div class="col-12 mb-4">
									<!-- <label class="form-label" for="pr-address">title</label> -->
									<input class="form-control form-control-lg" type="text"
										id="pr-address" name="resume_title"
										placeholder="이력서 제목을 입력하세요(100자까지 가능)*">
								</div>
								<div
									class="d-sm-flex justify-content-between align-items-start pb-4">
									<!-- <div class="flex-shrink-0 order-sm-2 mb-4"
										style="width: 10rem; height: 10rem;">
										<div
											class="filepond--root file-uploader bg-secondary filepond--hopper"
											data-style-panel-layout="compact"
											data-style-button-remove-item-position="left"
											data-style-button-process-item-position="right"
											data-style-load-indicator-position="right"
											data-style-progress-indicator-position="right"
											data-style-button-remove-item-align="false"
											style="height: 160px;">
											<input class="filepond--browser" type="file"
												id="filepond--browser-wiavsc9xq" name="filepond"
												aria-controls="filepond--assistant-wiavsc9xq"
												aria-labelledby="filepond--drop-label-wiavsc9xq"
												accept="image/png,image/jpeg">
											<a class="filepond--credits" aria-hidden="true" href="https://pqina.nl/" target="_blank" rel="noopener noreferrer" style="transform: translateY(152px);">Powered by PQINA
	                                        	</a>
											<div class="filepond--drop-label"
												style="transform: translate3d(0px, 0px, 0px); opacity: 1;">
												<label for="filepond--browser-wiavsc9xq"
													id="filepond--drop-label-wiavsc9xq" aria-hidden="true">
													<i
													class="d-inline-block fi-camera-plus fs-2 text-muted mb-2"></i><br>
													<span class="fw-bold">사진 추가</span>
												</label>
											</div>
											<div class="filepond--list-scroller"
												style="transform: translate3d(0px, 0px, 0px);">
												<ul class="filepond--list" role="list"></ul>
											</div>
											<div class="filepond--panel filepond--panel-root"
												data-scalable="true">
												<div class="filepond--panel-top filepond--panel-root">
												</div>
												<div class="filepond--panel-center filepond--panel-root"
													style="transform: translate3d(0px, 8px, 0px) scale3d(1, 1.44, 1);">
												</div>
												<div class="filepond--panel-bottom filepond--panel-root"
													style="transform: translate3d(0px, 152px, 0px);"></div>
											</div>
											<span class="filepond--assistant"
												id="filepond--assistant-wiavsc9xq" role="status"
												aria-live="polite" aria-relevant="additions"></span>
											<div class="filepond--drip"></div>
											<fieldset class="filepond--data"></fieldset>
										</div>
									</div> -->
									<div class="order-sm-1">
										<h4 class="h5">기본정보</h4>
										<ul class="list-unstyled text-nav">
											<li><span class='text-muted'>생년월일:</span> 19990504</li>
                                            <li><span class='text-muted'>휴대폰번호:</span> 01012345555</li>
                                            <li><span class='text-muted'>주소:</span> 서울</li>
                                            <li><span class='text-muted'>이메일:</span> dltkfk@baver.com</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6 mb-4">
										<select class="form-select form-select-lg" id="pr-country"
											name="resume_gender" required>
											<option value="" disabled selected>성별*</option>
											<option value="여">여</option>
											<option value="남">남</option>
										</select>
									</div>
									<div class="col-sm-6 mb-4">
										<select class="form-select form-select-lg" id="pr-city"
											name="resume_career" required>
											<option value="" disabled selected>경력여부*</option>
											<option value="신입">신입</option>
											<option value="경력">경력</option>
										</select>
									</div>
								</div>
								<div class="col-12 mb-4">
									<label class="form-label fw-bold pb-1 mb-2">보유기술 및 능력</label> <input
										class="form-control form-control-lg" type="text"
										id="pr-address" name="resume_technology"
										placeholder="보유기술 입력(ex.문서작성능력, java 등)">
								</div>
								
								<input type='hidden' id= 'resume_no' name='resume_image' value='image'>
                        		<input type='hidden' id= 'mem_no' name='mem_no' value=48>	
								


								<div class="col-12 mb-4">
									<label class="form-label fw-bold pb-1 mb-2">자기소개서</label>
									<textarea class="form-control form-control-lg" id="pr-address"
										name="resume_cv" cols="30" rows="10" placeholder="내용을 입력하세요 "
										style="height: 272px; resize: none;"></textarea>
								</div>

								<div class="d-md-flex align-items-center mb-4 pb-md-2">
									<h2 class="h4 mb-md-0"></h2>
									<div class="ms-md-auto">
										<div class="dropdown d-lg-none"></div>
										<ul
											class="list-unstyled d-none d-lg-flex flex-wrap fs-sm mb-0">
											<li class="border-end mb-0"><button type="submit"
													id="delete"
													class="btn-primary btn-lg rounded-pill ms-sm-auto"
													data-oper='delete'>
													<span class="align-middle">제출</span>
												</button></li>
											<li class="border-end mb-0"><button type="button"
													class="btn-primary btn-lg rounded-pill ms-sm-auto"
													data-oper="modify">
													<span class="align-middle">취소</span>
												</button></li>
										</ul>
									</div>
								</div>


							</div>

						</form>
					</div>
				</div>
				<div class="row">
				<div class="col-lg-12">
					<div class="panel-panel-default">
						<div class="panel-heading">첨부파일</div>

						<div class="panel-body">
							<div class="form-group uploadDiv">
								<input type="file" name='uploadFile' multiple>
							</div>

							<div class='uploadResult'>
								<ul>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			
		</div>


	</main>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script>
		$(document)
				.ready(
						function(e) {

							var formObj = $("form[role='form']");

							$("input[type='submit']")
									.on(
											"click",
											function(e) {

												e.preventDefault();

												console.log("submit clicked");

												var str = "";

												$(".uploadResult ul li")
														.each(
																function(i, obj) {

																	var jobj = $(obj);

																	console
																			.dir(jobj);
																	console
																			.log("-------------------------");
																	console
																			.log(jobj
																					.data("filename"));

																	str += "<input type='hidden' name='attachList["
																			+ i
																			+ "].fileName' value='"
																			+ jobj
																					.data("filename")
																			+ "'>";
																	str += "<input type='hidden' name='attachList["
																			+ i
																			+ "].uuid' value='"
																			+ jobj
																					.data("uuid")
																			+ "'>";
																	str += "<input type='hidden' name='attachList["
																			+ i
																			+ "].uploadPath' value='"
																			+ jobj
																					.data("path")
																			+ "'>";
																	str += "<input type='hidden' name='attachList["
																			+ i
																			+ "].fileType' value='"
																			+ jobj
																					.data("type")
																			+ "'>";

																});

												console.log(str);

												formObj.append(str).submit();

											});

							var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
							var maxSize = 5242880; //5MB

							function checkExtension(fileName, fileSize) {

								if (fileSize >= maxSize) {
									alert("파일 사이즈 초과");
									return false;
								}

								if (regex.test(fileName)) {
									alert("해당 종류의 파일은 업로드할 수 없습니다.");
									return false;
								}
								return true;
							}

							$("input[type='file']")
									.change(
											function(e) {
												var formData = new FormData();

												var inputFile = $("input[name='uploadFile']");
												console.log("inputFile:"
														+ inputFile);
												var files = inputFile[0].files;

												for (var i = 0; i < files.length; i++) {
													if (!checkExtension(
															files[i].name,
															files[i].size)) {
														return false;
													}
													formData.append(
															"uploadFile",
															files[i]);

												}

												$
														.ajax({
															url : '/uploadAjaxAction',
															processData : false,
															contentType : false,
															data : formData,
															type : 'POST',
															dataType : 'json',
															success : function(
																	result) {
																console
																		.log(result);
																showUploadResult(result); //업로드 결과 처리 함수 
															}
														}); //$.ajax

											});

							function showUploadResult(uploadResultArr) {

								if (!uploadResultArr
										|| uploadResultArr.length == 0) {
									return;
								}

								var uploadUL = $(".uploadResult ul");

								var str = "";

								$(uploadResultArr)
										.each(
												function(i, obj) {

													if (obj.image) {
														var fileCallPath = encodeURIComponent(obj.uploadPath
																+ "/s_"
																+ obj.uuid
																+ "_"
																+ obj.fileName);
														str += "<li data-path='"+obj.uploadPath+"'";
					str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
					str +" ><div>";
														str += "<span> "
																+ obj.fileName
																+ "</span>";
														str += "<button type='button' data-file=\'"+fileCallPath+"\' "
					str += "data-type='image' class='btn btn-warning btn-circle'><i class='fi-trash me-1'></i></button><br>";
														str += "<img src='/display?fileName="
																+ fileCallPath
																+ "'>";
														str += "</div>";
														str + "</li>";
													} else {
														var fileCallPath = encodeURIComponent(obj.uploadPath
																+ "/"
																+ obj.uuid
																+ "_"
																+ obj.fileName);
														var fileLink = fileCallPath
																.replace(
																		new RegExp(
																				/\\/g),
																		"/");

														str += "<li "
					str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
														str += "<span> "
																+ obj.fileName
																+ "</span>";
														str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
					str += "'><i class='fi-trash me-1'></i></button><br>";
														str += "</a>";
														str += "</div>";
														str + "</li>";
													}
												});

								uploadUL.append(str);
							}
							$(".uploadResult").on("click", "button",
									function(e) {

										console.log("delete file");

										var targetFile = $(this).data("file");
										var type = $(this).data("type");

										var targetLi = $(this).closest("li");

										$.ajax({
											url : '/deleteFile',
											data : {
												fileName : targetFile,
												type : type
											},
											dataType : 'text',
											type : 'POST',
											success : function(result) {
												alert(result);

												targetLi.remove();
											}
										}); //$.ajax
									});

						});
	</script>
	<!-- Back to top button-->
	<a class="btn-scroll-top" href="#top" data-scroll><span
		class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i
		class="btn-scroll-top-icon fi-chevron-up"> </i></a>
	<!-- Vendor scrits: js libraries and plugins-->
	<script
		src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
	<script
		src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<!-- Main theme script-->
	<script src="${path}/resources/js/theme.min.js"></script>







</body>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />