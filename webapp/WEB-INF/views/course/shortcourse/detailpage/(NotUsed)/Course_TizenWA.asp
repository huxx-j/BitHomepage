<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(12).addClass("on");
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
				<h3><span class="courseName">Tizen Wearable Application</span></h3>
				<h4>Tizen 기반의 C++ API / HTML5 를 이용한 모바일 앱 프로그래밍을 통한 애플리케이션 개발에 대한 역량을 확보</h4>
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
						<h4 class="fl">Tizen Wearable Application</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">Tizen Wearable Application</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Tizen Wearable Application</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Tizen Wearable Application</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li><del>2015.05.18 ~ 2015.05.22 (5일 / 총 40시간)</del></li>
													<li>2015.07.13 ~ 2015.07.17 (5일 / 총 40시간)</li>
													<li>2015.11.04 ~ 2015.11.10 (5일 / 총 40시간)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>09:00 ~ 18:00 (1일 8시간 / 월 ~ 금)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 : 262,940원 | 사업주 훈련 : 우선지원대상 기업기준 262,940원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<div class="visual_wrap mar_l0">
						<p align="center"><img src="/Images/logo/img_tizen01.jpg" alt=""></p>
						</div>
						<!-- con_wrap -->

						<div class="con_wrap">
							<img src="">
							<h5>개 요</h5>
							<p>2012년 1월 Tizen SDK 1.0이 발표되고 나서 Tizen의 주 개발환경은 HTML5였지만 2013년 2월 SDK 2.0이 발표되고 새로운 C++ 기반의 Native 개발환경이 추가되었다. 최근에는 SDK 2.1이 발표되면서 안드로이드에서 사용하고 있는 위젯기반의 개발환경이 추가되었는데, 이러한 개발환경을 통해서 Tizen의 애플리케이션 개발자들이 많이 늘어날 것으로 기대되고 있다. 본 과정에서는 사물인터넷(IoT)의 주요 시장인 웨어러블을 위한 Tizen 웨어러블 애플리케이션을 개발하기 위해서는 표준 HTML5와 Tizen API를 사용하여 Tizen 기반의 웨어러블 장비에서 구동되는 애플리케이션을 개발하는 내용에 대해서 알아본다.</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>본 과정에서는 Tizen 애플리케이션을 개발하기 위한 과정으로 2.0에 새롭게 추가된 C++ API와 Tizen 1.0부터 지원하고 있는 HTML5를 이용해서 Tizen에서 동작되는 애플리케이션을 개발하는 과정으로 애플리케이션을 개발하기 위해서 필요한 개념과 API 그리고 개발에 필요한 것들에 대해서 살펴본다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>Tizen SDK를 이해하고 Tizen 애플리케이션을 개발할 수 있다.</li>
								<li>C++ API 와 HTML5를 이용해서 Tizen 애플리케이션 개발할 수 있다.</li>
								<li>Gear2와 같은 Tizen 기반의 웨어러블 기기를 위한 애플리케이션 개발역량을 확보.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C Programming</li>
								<li>C++ Programming</li>
								<li>HTML5 (HTML+CSS)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<colgroup>
									<col style="width:30%">
									<col style="width:20%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">구분</th>
										<th scope="col">시간</th>
										<th scope="col">내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="c">모바일과 Tizen</td>
										<td class="c">4시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>모바일과 사물인터넷(IoT)의 개요</li>
												<li>웨어러블의 개요와 웨어러블 디바이스</li>
												<li>Tizen SDK for Wearable의 설치와 SDK 구조</li>
												<li>Hello Wearable 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">HTML5 와 CSS</td>
										<td class="c">6시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>HTML5의 개요와 계산기 프로그래밍</li>
												<li>CSS의 개요와 CSS 3D</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">HTML5 Canvas 와 자바스크립트</td>
										<td class="c">8시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>HTML5 Canvas</li>
												<li>페인터 프로그래밍과 이벤트 처리</li>
												<li>Javascript와 애니메이션</li>
												<li>게임 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">웨어러블과 jQuery 프로그래밍</td>
										<td class="c">8시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>시계 프로그래밍과 Wearable 애플리케이션의 종류</li>
												<li>jQuery 프로그래밍의 개요</li>
												<li>Tizen Advanecd Wearable UI를 이용한 화면 전환</li>
												<li>Tizen Wearable Widgets</li>
												<li>Alarm 설정</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">Tizen 웨어러블 프로그래밍</td>
										<td class="c">11시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Tizen Wearable Device API</li>
												<li>WebGL을 이용한 3D 프로그래밍</li>
												<li>가속도 센서를 이용한 프로그래밍</li>
												<li>만보계 센서를 이용한 프로그래밍</li>
												<li>카메라 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">스마트폰과 웨어러블 디바이스</td>
										<td class="c">3시간</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Tizen Wearable 디바이스와 모바일 디바이스와의 통신</li>
												<li>SAP 프로토콜</li>
												<li>Tizen Wearable을 위한 마켓(Market)</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다.</p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1">지원하기</a>
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