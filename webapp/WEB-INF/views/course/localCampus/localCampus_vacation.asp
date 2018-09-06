<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/shortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->
			$(".snb_1702 .newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no7").find("li a").eq(5).addClass("on");
		});
	</script>
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
				<h3><span class="courseName">대학방학특강</span></h3>
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
						<h4>대학방학특강</h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">대학비트</a>
							<a href="#this" class="last on">대학방학특강</a>
						</p>
					</div>
					<section class="section">
						<div class="section_body">
							<!-- con_wrap -->
							<div class="con_wrap first">
								<h5>소   개</h5>
								<ul class="ul_dot_gray">
									<li>방학을 이용해 재학생들의 프로그래밍 능력을 향상시키고자 하는 학교들을 대상으로 방학특강 개설</li>
									<li>학교에서 습득한 프로그래밍 기반지식을 바탕으로 실제 어떻게 응용해야 하는지를 교육</li>
								</ul>
							</div>
							<!-- //con_wrap -->
							<!-- con_wrap -->
							<div class="con_wrap">
								<h5>개설과목(예시)</h5>
								<dl>
									<dt>기초과목(120~180H)</dt>
									<dd>
										<ul class="ul_dot_gray">
											<li>C 언어 : 40~60H</li>
											<li>C++ : 40~60H</li>
											<li>자료구조-알고리즘 : 40~60H</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>윈도우 계열(120H)</dt>
									<dd>
										<ul class="ul_dot_gray">
											<li>Win32 API : 30H</li>
											<li>Window System Programming : 30H</li>
											<li>Window Network Programming : 30H</li>
											<li>Pilot Project : 30H</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>리눅스 계열(120H)</dt>
									<dd>
										<ul class="ul_dot_gray">
											<li>Advanced C : 30H</li>
											<li>Linux System Administration : 30H</li>
											<li>Linux System Programming : 30H</li>
											<li>Linux Network Programming : 30H </li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>자바 계열(120H)</dt>
									<dd>
										<ul class="ul_dot_gray">
											<li>Java Fundamentals : 30H</li>
											<li>JDBC, Java Network Programming : 30H</li>
											<li>JSP, Servlet : 30H</li>
											<li>EJB : 30H</li>
										</ul>
									</dd>
								</dl>
								<p class="fb fs13">* 기타 닷넷 계열, 임베디드 계열 등 대학의 특성에 맞는 방학특강 과정 개설 가능</p>
							</div>
							<!-- //con_wrap -->
							
							<div class="btn_wrap c">
								<a href="#this" class="btn mid green1">지원하기</a>
							</div>
						</div>
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