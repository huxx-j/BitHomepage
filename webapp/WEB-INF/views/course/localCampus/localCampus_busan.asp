<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script type="text/javascript" src="/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>
	
	<script type="text/javascript" src="/JS/main/hash.js"></script>
	<script type="text/javascript" src="/JS/main/turn.js"></script>
	<script type="text/javascript" src="/JS/main/zoom.js"></script>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/shortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->

			ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_courseInfo.asp');
			$(".snb_1702 .newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no7").find("li a").eq(4).addClass("on");
		
			$(".snb_1702 .newdepth2.newwrap.Uno4").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno4 li:eq(0) a").addClass("on");
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 1. 프로젝트 살펴보기 booklet.			
			$("#flipbook").turn({
				width: 800,
				height: 1035,
				display: 'single',
				duration: 2000,
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
			
			///////////////////////////////////////////////////////////////////////////////////////////////////////////////
			// 3. 초기값에 따라서 [프로젝트 살펴보기] 및 [공모전 출품작] 보여주기.
			if( 'booklet' == '<%=Request.QueryString("beginwith")%>') {
				showBooklet();
			}
			//else if( 'entryWorks' == '<%=Request.QueryString("beginwith")%>') {
			//	showEntryWorks();
			//}
		});
	
		//////////////////////////////////////////////////////
		// 프로젝트 살펴보기 booklet.
		function showBooklet() {
			$("#section1").css('display','block');
			$("#divSection1").css('display', 'block' );
			$("#divSection2").css('display', 'none');
			
			$('.myBlurAll').css('display','block');
			//$('body').css('overflow','hidden');
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
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">부산캠퍼스</span></h3>
				<h4>대학 내 비트교육센터의 교육과정이 개설되어 있거나 또는 비트교육센터의 과정을 수강할 경우 학점인정 등 <br>
				제반 지원이 이루어 질 수 있도록 협약된 비트교육센터과 대학 간의 네트워크 입니다.</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>부산캠퍼스</h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">대학비트</a>
							<a href="#this" class="last on">부산캠퍼스</a>
						</p>
					</div>
					
					<div id="divSection2" class="section">
						<div class="section_body">
							<!-- con_wrap -->
							<div class="con_wrap first bg_none">
								<div class="visual_wrap">
									<p class="sTit">26년 역사의 명실 공히</p>
									<p class="bTit"><span class="green1">대한민국 최고의 소프트웨어 전문인력 양성</span> 교육기관 <span class="green1">비트교육센터</span></p>
									<p class="cntName">부산캠퍼스</p>
									<div class="txtCon">
										서울에 오셔서 교육을 받아야 하는 현실이 많이 불편하셨죠?<br>
										더 이상 소프트웨어 프로그래밍 교육을 받기 위해 서울까지<br>
										상경할 필요가 없답니다.<br>
										체계적인 교육시스템과  최고의 교육시설로<br>
										<span class="green1">부산캠퍼스를 OPEN</span> 했습니다.
									</div>
									<!--<a href="/Register/Request/register_localCampus.asp" title="지원하기" class="support btn mid green1">지원하기</a>-->
								</div>
								<div>
									<div class="tap_header">
										<ul class="tapMenu">
											<li><a href="#this" title="교육과정 로드맵" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_RoadMap.asp');">교육과정 로드맵</a></li>
											<li class="on"><a href="#this" title="모집중인과정" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_courseInfo.asp');">모집중인과정</a></li>
											<li><a href="#this" title="강의환경" onClick="javascript:ajaxLoad('#ConDetail','','/Course/LocalCampus/Tab/busan_gallery.asp');">강의환경</a></li>
											<li><a href="#this" title="오시는길" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/LocalCampus/Tab/busan_location.asp');">오시는길</a></li>
										</ul>
									</div>
									<div id="ConDetail" class="tap_content courseInfo">
										
									</div>
								</div>
							</div>
							<!-- //con_wrap -->
							<p class="inquiry">문의 : 02.3486.1422 (이메일 univ@bit.kr)</p>
							<div class="btn_wrap c">
								<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
							</div>
						</div>
					</div>
					
					<div id="section1" class="section" style="display:none;">
						<!-- con_wrap -->
						<div class="myBlurAll" style="display:none;"></div>
						<div id="divSection1" class="con_wrap first last" style="margin-left:40px; display:none; z-index:10000; ">
							<!--<div id="flipbook" style="border:2px solid #d7d7d7; border-radius:3px;">-->
							<div id="flipbook" style="box-shadow:0 4px 10px #666;">
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_1.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_2.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_3.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_4.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201704_LocalCampus_BS_Project_2_5.png" width="800"/></div>
								
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_BS_Project_001.png" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201609_LocalCampus_BS_Project_002.png" width="800"/></div>
								
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious" class="btn mid blue disabled" style="float:left; margin-left:40px;">이전</a>
								<a href="#" id="btnNext" class="btn mid blue" style="float:left; margin-left:40px;">다음</a>
								<div style="clear:both;"></div>
							</div>
							<div>
								<a href="#" id="btnPrevious2" class="disabled" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_rightArrow.png"/></a>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- //con_wrap -->
					</div>

					<div style="clear:both;"></div>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>