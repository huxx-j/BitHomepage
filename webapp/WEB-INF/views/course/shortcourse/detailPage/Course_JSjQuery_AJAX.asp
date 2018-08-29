<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("JSJQUERY_AJAX")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no2").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no2").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no2 li:eq(3) a").addClass("on");
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">JavaScript/jQuery & AJAX<span style="font-size:14pt;"></span></p></h3>
				<!--<h4></h4>-->
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
					<table>
					<div class="hGroup">
						<div>
							<h4 class="fl" style="font-size:16px; margin-top:5px;">JavaScript/jQuery & AJAX</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=JSjQuery_AJAX_core" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">JavaScript/jQuery & AJAX</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JavaScript/jQuery & AJAX</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">JavaScript/jQuery & AJAX</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육과정 개요</h5>
							<p>
								최근 가장 이슈가 되고 있는 다양한 멀티 디바이스에서 동작될 수 있는 Web Application 개발에 있어 꼭 필요한 기술들을 교육 합니다.<br/>
							</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상 및 선수지식</h5>
							<ul class="ul_dot_gray">
								<li>프로그램에 대한 기본 지식을 가지고 있는 개발자 및 웹 시스템 운영자</li>
								<li>웹 애플리케이션에 대한 기본 지식을 가지고 있는 개발자 및 웹 시스템 운영자</li>
							</ul>
						</div>
						<!-- //con_wrap -->
		
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>이 교육과정을 통해서</h5>
							<ul class="ul_dot_gray">
								<li>본 과정을 통해 다양한 브라우져에서 동작 가능 한 크로스브라우징이 가능한 웹 애플리케이션을 개발 할 수 있습니다.</li>
								<li>AJAX를 이용한 비동기 통신 방식의 웹 애플리케이션을 개발 할 수 있습니다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
												
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>JavaScript/jQuery & AJAX</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:60%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">주제</th>
										<th scope="col">목표</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="2">JavaScript</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>JavaScript Programming 기본</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>JavaScript를 이용한 Web Client Application</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">jQuery</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>jQuery 기본 구조 및 문법 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>jQuery 를 이용한 Programming</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">AJAX</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>AJAX의 기본 개념 이해 및 구조 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>AJAX를 이용한 Open API 연동</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JSjQuery_AJAX_core" class="btn mid green1">지원하기</a>
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