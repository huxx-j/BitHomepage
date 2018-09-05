<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- 좌측메뉴에 직접적으로 해당 과목을 첨부하기 전에 사용하던 소스
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->

	<script type="text/javascript" src="/JS/main/hash.js"></script>
	<script type="text/javascript" src="/JS/main/turn.js"></script>
	<script type="text/javascript" src="/JS/main/zoom.js"></script>
		
	<script type="text/javascript">
		$(document).ready(function(){
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(5).addClass("on");
			
			//alert("now start");

			$("#flipbook").turn({
				width: 800,
				height: 1131,
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
		});
		
		function previousPage() {
			//alert("previous");
			$("#flipbook").turn("previous");
		}
		
		function nextPage() {
			//alert("next");
			$("#flipbook").turn("next");
		}
		
	</script>
	
	<style>
		#btnNext2 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:750px;
			z-index:99;
		}
		#btnPrevious2 {
			opacity: 0.5;
			position: absolute;
			top:550px;
			left:-80px;
			z-index:99;
		}
		.disabled {
			opacity: 0.1 !important;
			cursor: not-allowed;
		}
		
	</style>
	<!--<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">Test Page</span></h3>
				<!--<h4>이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 <br>있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</h4>-->
				<!--<h4></h4>-->
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">Test</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">Test</a>
						</p>
					</div>
					<section class="section">
						
						<!-- con_wrap -->
						<div class="con_wrap first last" style="margin-left:40px;">
							<!--<div id="flipbook" style="border:2px solid #d7d7d7; border-radius:3px;">-->
							<div id="flipbook" style="box-shadow:0 4px 10px #666;">
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_01.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_02.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_03.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_04.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_05.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_06.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_07.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_08.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_09.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_10.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_11.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_12.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_13.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_14.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_15.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_16.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_17.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_18.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_19.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_20.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_21.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_22.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_23.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_24.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_25.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_26.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_27.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_28.jpg" width="800"/></div>
								<div><img src="/Images/Content/Booklet/201603_Booklet_Incumbent_29.jpg" width="800"/></div>
							</div>
							<div style="display:none; margin-left:270px; margin-top:30px;">
								<a href="#" id="btnPrevious" class="btn mid blue disabled" style="float:left; margin-left:40px;">이전</a>
								<a href="#" id="btnNext" class="btn mid blue" style="float:left; margin-left:40px;">다음</a>
							</div>
							<div>
								<a href="#" id="btnPrevious2" class="disabled" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_leftArrow.png"/></a>
								<a href="#" id="btnNext2" style="float:left; margin-left:40px;"><img src="/Images/Main/img_ICON_rightArrow.png"</a>
							</div>
						</div>
						<!-- //con_wrap -->
						
						
					</section>
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