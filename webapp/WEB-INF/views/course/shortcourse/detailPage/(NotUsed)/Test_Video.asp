<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- �����޴��� ���������� �ش� ������ ÷���ϱ� ���� ����ϴ� �ҽ�
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

		});
		
		
	</script>
	
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
				<h3><span class="courseName">Test (Video) Page</span></h3>
				<!--<h4>�̷а� �ǽ��� �����Ͽ� �����ϸ� C����� �ٽ��� �ľ��Ͽ� �پ��� �о��� ���� ���α׷��� ������ �� <br>�ִ� �� ���� ���� �� ����� �����Ͽ� �ǹ��� ���� ���� �ϵ��� �����ϴ� ����</h4>-->
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
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">�����ϱ�</a>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">�����ȳ�</a>
							<a href="#this">���α׷��ְ��� / �ٽɿ�������</a>
							<a href="#this" class="last on">Test(Video)</a>
						</p>
					</div>
					<section class="section">
						
						<!-- con_wrap -->
						<div class="con_wrap first last" style="margin-left:40px;">
							<!--<video src="/Videos/video_bitschool_20130723.wmv" controls loop autoplay width="800"></video>-->
							<video src="/Videos/video_bitschool_20130723.mp4" type="video/mp4" controls loop autoplay width="800">cannot play this video</video>
							<video src="/test25.mp4" type="video/mp4" controls loop autoplay width="800">cannot play this video</video>
							<!--<video src="http://www.double.co.nz/video_test/transformers480.ogg" type="video/ogg" controls loop autoplay width="800" >cannot play this video</video>-->
							<!--
							<video width="800" controls="controls">
								<source src="/videos/test25.mp4" type="video/mp4"/>
							</video>
							-->
							<!--<video src="http://www.bitacademy.com/Videos/test25.wmv" controls loop autoplay width="800"></video>-->
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