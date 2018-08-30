<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<c:import url="/WEB-INF/views/Include/Meta.jsp"/>
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
	<!-- #include virtual="/Include/Script.asp"-->
	<c:import url="/WEB-INF/views/Include/Script.jsp"/>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<!-- 프로젝트 살펴보기 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/hash.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/turn.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/zoom.js"></script>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			/* <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 /* <!--#include virtual="/Include/HeaderScriptReady1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
			
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(1).addClass("on");  			// [대전] 대전캠퍼스
			$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// [대전] 대전캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no2 .newdepth3:eq(0)").addClass("on");		// 대전캠퍼스 소개 ON
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 1. 프로젝트 살펴보기 booklet.			
			$("#flipbook").turn({
				width: 800,
				height: 1135,
				display: 'single',
				duration: 1000,
				autoCenter: true
			});
			
			$("#btnPrevious, #btnPrevious2").on('click', function(e) {
				e.preventDefault();
				previousPage();
			});
			
			$("#btnNext, #btnNext2").on('click', function(e) {
				e.preventDefault();
				nextPage();
			});
			
			$('.myBlurAll').on('click', function() {
				hideBooklet();
			});
			
			$("#flipbook").bind('start', function(event, page, pageObject) {
				//alert("end happened. This page is : " + $('#flipbook').turn('page') + " / " + $('#flipbook').turn('pages') );
				var nThisPage = $('#flipbook').turn('page');
				var nTotalPages = $('#flipbook').turn('pages');
				//alert(nThisPage + " / " + nTotalPages);
				
				if(nThisPage == 1) {
					$("#btnPrevious").addClass("disabled");
					$("#btnPrevious2").addClass("disabled");
					$("#btnNext").removeClass("disabled");
					$("#btnNext2").removeClass("disabled");
					
				} else if(nThisPage == nTotalPages) {
					$("#btnPrevious").removeClass("disabled");
					$("#btnPrevious2").removeClass("disabled");
					$("#btnNext").addClass("disabled");
					$("#btnNext2").addClass("disabled");
					
				} else {
					$("#btnPrevious").removeClass("disabled");
					$("#btnPrevious2").removeClass("disabled");
					$("#btnNext").removeClass("disabled");
					$("#btnNext2").removeClass("disabled");
					
				}
				
			});
			///////////////////////////////////////////////////////////////////////////////////////////////

			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 2. 공모전 출품작 EntryWorks
			$("#flipbook_3").turn({
				width: 800,
				height: 1131,
				display: 'single',
				duration: 1000,
				autoCenter: true
			});
			$("#btnPrevious_3, #btnPrevious2_3").on('click', function(e) {
				e.preventDefault();
				previousPage_3();
			});
			$("#btnNext_3, #btnNext2_3").on('click', function(e) {
				e.preventDefault();
				nextPage_3();
			});
			$('.myBlurAll3').on('click', function() {
				hideEntryWorks();
			});
			$("#flipbook_3").bind('start', function(event, page, pageObject) {
				//alert("end happened. This page is : " + $('#flipbook_3').turn('page') + " / " + $('#flipbook_3').turn('pages') );
				var nThisPage = $('#flipbook_3').turn('page');
				var nTotalPages = $('#flipbook_3').turn('pages');
				//alert(nThisPage + " / " + nTotalPages);
				
				if(nThisPage == 1) {
					$("#btnPrevious_3").addClass("disabled");
					$("#btnPrevious2_3").addClass("disabled");
					$("#btnNext_3").removeClass("disabled");
					$("#btnNext2_3").removeClass("disabled");
					
				} else if(nThisPage == nTotalPages) {
					$("#btnPrevious_3").removeClass("disabled");
					$("#btnPrevious2_3").removeClass("disabled");
					$("#btnNext_3").addClass("disabled");
					$("#btnNext2_3").addClass("disabled");
					
				} else {
					$("#btnPrevious_3").removeClass("disabled");
					$("#btnPrevious2_3").removeClass("disabled");
					$("#btnNext_3").removeClass("disabled");
					$("#btnNext2_3").removeClass("disabled");
					
				}				
			});			
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 3. 초기값에 따라서 [프로젝트 살펴보기] 및 [공모전 출품작] 보여주기.
			
			console.log("${beginwith}");
			if("booklet"=="${beginwith}") {
				showBooklet();
			}
			else if("entryWorks"=="${beginwith}") {
				showEntryWorks();
			} 
		});
		//////////////////////////////////////////////////////
		// 프로젝트 살펴보기 booklet.
		function showBooklet() {
			$("#section1").css('display','block');
			$("#divSection1").css('display', 'block' );
			$("#divSection2").css('display', 'none');
			
			$('.myBlurAll').css('display','block');
			//$('body').css('overflow','hidden');
			$('html, body').animate({ scrollTop: 150 }, 'fast');
		}
		
		function hideBooklet() {
			$("#section1").css('display','none');
			$("#divSection1").css('display', 'none' );
			$("#divSection2").css('display', 'block');
			
			$('.myBlurAll').css('display','none');
		}
		
		function previousPage() {
			//alert("previous");
			$("#flipbook").turn("previous");
		}
		
		function nextPage() {
			//alert("next");
			$("#flipbook").turn("next");
		}
		////////////////////////////////////////////////////////////
		
		///////////////////////////////////////////////////////
		// 공모전 출품작 EntryWorks.
		
		function showEntryWorks() {
		
			$("#section3").css('display', 'block' );
			$("#divSection3").css('display', 'block' );
			//alert("-");
			$("#divSection2").css('display', 'none');
			$("#section1").css('display', 'none');
			$('.myBlurAll3').css('display','block');
			//$('body').css('overflow','hidden');
			$('html, body').animate({ scrollTop: 150 }, 'fast');
		}
		function hideEntryWorks() {
			$("#section3").css('display', 'none' );
			$("#divSection3").css('display', 'none' );
			$("#divSection2").css('display', 'block');
			$("#section1").css('display', 'none');
			
			$('.myBlurAll3').css('display','none');
		}
		function previousPage_3() {
			$("#flipbook_3").turn("previous");
		}
		function nextPage_3() {
			$("#flipbook_3").turn("next");
		}
		/////////////////////////////////////////////////////////

	</script>
	<style>
		#btnNext2, #btnNext2_3 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:750px;
			z-index:10001;
		}
		#btnPrevious2, #btnPrevious2_3 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:-80px;
			z-index:10001;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.35;
			z-index:9999;
			background-color:#000;
		}
		.myBlurAll3 {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.35;
			z-index:9999;
			background-color:#000;
		}
		.disabled {
			opacity: 0.1 !important;
			cursor: not-allowed;
		}
		
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[대전]대전캠퍼스
						</p>
						<h4>대전캠퍼스 소개</h4>
					</div>

					<div id="section1" class="section" style="display:none; position:absolute; left:50px; top:00px;">
						<!-- con_wrap -->
						<div class="myBlurAll" style="display:none;"></div>
						<div id="divSection1" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000; ">
							<!--<div id="flipbook" style="border:2px solid #d7d7d7; border-radius:3px;">-->
							<div id="flipbook" style="box-shadow:0 4px 10px #666;">
								<!--#include file="module_Daejeon_.asp"-->
								<jsp:include page="/WEB-INF/views/course/localCampus/module_Daejeon_Booklet.jsp"></jsp:include>
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious" class="btn mid blue disabled" style="float:left; margin-left:40px;">이전</a>
								<a href="#" id="btnNext" class="btn mid blue" style="float:left; margin-left:40px;">다음</a>
								<div style="clear:both;"></div>
							</div>
							<div>
								<a href="#" id="btnPrevious2" class="disabled" style="float:left; margin-left:40px;"><img src="${pageContext.request.contextPath}/assets/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2" style="float:left; margin-left:40px;"><img src="${pageContext.request.contextPath}/assets/Images/Main/img_ICON_rightArrow.png"/></a>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- //con_wrap -->
					</div>
					<div id="section3" class="section" style="display:none; position:absolute; left:50px; top:00px;">
						<!-- con_wrap -->
						<div class="myBlurAll3" style="display:none; z-index:9999; "></div>						
						<div id="divSection3" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000;">
							<div id="flipbook_3" style="box-shadow:0 4px 10px #666; z-index:10000;">
								<!--#include file="module_Daejeon_EntryWorks.asp"-->
								<jsp:include page="/WEB-INF/views/course/localCampus/module_Daejeon_EntryWorks.jsp"></jsp:include>
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious_3" class="btn mid blue disabled" style="float:left; margin-left:40px;">이전</a>
								<a href="#" id="btnNext_3" class="btn mid blue" style="float:left; margin-left:40px;">다음</a>
							</div>
							<div>
								<a href="#" id="btnPrevious2_3" class="disabled" style="float:left; margin-left:40px;"><img src="${pageContext.request.contextPath}/assets/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2_3" style="float:left; margin-left:40px;"><img src="${pageContext.request.contextPath}/assets/Images/Main/img_ICON_rightArrow.png"/></a>
							</div>
						</div>
						<!-- //con_wrap -->
					</div>
					
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>대전캠퍼스 소개</h5>
							<p class="mar_b10">서울에 오셔서 교육을 받아야 하는 현실이 많이 불편하셨죠? 더 이상 소프트웨어 프로그래밍 교육을 받기 위해 서울까지 상경할 필요가 없습니다. 체계적인 교육시스템과 최고의 교육시설로 대전캠퍼스를 OPEN 했습니다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<h5 class="small">.NET 개발자 인력양성 코스웨어(총 9개월)</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/roadmap_Daejeon.png"/>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>단기과정</h5>
							<h5 class="small"><a href="/course/localCampus/detailPage/Daejeon_C.jsp">C Programming</a></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DJ_C.jsp"/>
												<!--2017.12.18(월) ~ 2018.01.10(수)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DJ_C.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
											<!--
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 18:00 (4시간)</td>
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
										</tr>
										<!-- 대전캠퍼스 C Programming -->
										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Daejeon_cPlus">C++ Programming</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DJ_Cpp.jsp"/>
												<!--2018.01.11(목) ~ 2018.01.30(화)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DJ_Cpp.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
										</tr>
										<!-- 대전캠퍼스 C++ Programming -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Daejeon_java">Java Programming</a></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Java.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DJ_Java.jsp"/>
												<!--2018.02.01(목) ~ 2018.02.22(목)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Java.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DJ_Java.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 18:00 (4시간)</td>											
											-->
										</tr>
										<!-- 대전캠퍼스 JAVA Programming -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_localCampus" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>
								고급과정
								<a href="javascript:showBooklet();" title="프로젝트 살펴보기" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">프로젝트 살펴보기</a>
								<a href="javascript:showEntryWorks();" title="공모전 출품작" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">공모전 출품작</a>
							</h5>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Daejeon_windowNet">Windows.NET 고급과정</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_WINHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DJ_WINHIGH.jsp"/>
												<!--2017.08.28 ~ 2018.02.28 (6개월)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_WINHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DJ_WINHIGH.jsp"/>
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 대전캠퍼스 Windows .NET 고급과정 -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>3,700,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>									
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>오시는 길</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/location_Daejeon.png" style="width:640px;"/>
						</div>
						<!-- //con_wrap1709 -->
						

					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>