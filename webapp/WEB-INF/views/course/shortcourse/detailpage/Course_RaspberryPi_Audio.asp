<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(9).addClass("on");		// 방학특강 - 라즈베리파이 오디오 만들기 과정 (IoT)

			//$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			//$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			//$(".snb_1709 .newdepth3_wrap.no2 li:eq(0) a").addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n  clude virtual = "/Include/SNB_CourseYoung_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						<h4>라즈베리파이 오디오 만들기 과정(IoT)</h4>
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>초중고SW교육
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>세상과 소통하는 라즈베리파이 오디오 만들기 교실
						</p>
						<h4>세상과 소통하는 라즈베리파이 오디오 만들기 교실</h4>
						-->
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__RaspberryPi_Audio.inc" -->
												<!--
												2018.1.8 ~ 2018.1.12 <span class='greenTxt'>(오전반)</span><br/>
												2018.1.29 ~ 2018.2.2 <span class='greenTxt'>(오후반)</span><br/>
												2018.2.19 ~ 2018.2.23 <span class='greenTxt'>(오후반)</span>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__RaspberryPi_Audio.inc" -->
												<!--
												오전반 9:00 ~ 13:00 (4시간)<br/>
												오후반 14:00 ~ 18:00 (4시간)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>450,000원</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>20명</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<!--
								-->
								<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi_Audio" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>

						</div>
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
<!--
							<div class="myBlackBox" style="letter-spacing:-0.9pt;">
								<p>
								해외 IT 강국에서는 진작부터 불었던 코딩 교육 열풍이 최근 국내에서도 불기 시작하여 서서히 그 관심이 증대되고 있다.<br/>
								세계화 시대에 영어 교육이 강조되고 보편화한 것처럼 디지털 시대에는 사회에 필요한 인재를 코딩 교육으로 육성해야 한다는 생각이 공감대를 얻고 있는 추세이며,
								산업 전방위에서도 소프트웨어 개발자에 대한 수요가 늘고 있으며 IT업계에서는 코딩을 배운 아이들의 취업 기회가 많고 상대적으로 고소득 올릴 수 있을 것이라고 예측하고 있다.<br/>
								이처럼 최근에 코딩 교육의 필요성이 강조되면서 중·고생들이 쉽고 재밌게 배우기 위한 프로그램으로 본 과정과 같이 Maker 교육을 코딩 교육에 융합한 코딩 교육 프로그램이 많은 주목을 받고 있다.<br/>
								소프트웨어 교육에 하드웨어를 접목하여 흥미 유발뿐 아니라 교육 효과도 높이는 방식으로 직접 만든 프로그램으로 전등을 끄고 키거나, 자동차의 움직임을 제어하는 것 등, 컴퓨터 화면을 통해 코딩을 하는 것보다 코딩 교육 효과를 높힐 수 있다는 평가다.<br/>
								이에 본 과정에서는 라즈베리파이를 사용하여 센서와 액츄에이터를 통해 세상과 소통하는 프로그램을 직접 제작하고 인터넷에 연결시켜 더 많은 컴퓨터와 소통하는 프로그램을 인터넷 오디오라는 멀티미디어 프로그램에 모두 합치는 작업을 직접 하게 한다.<br/>
								그럼으로써 하드웨어와 소프트웨어가 작동하는 원리. 인터넷이 작동하는 원리 그리고 불을 키고 주변 상황을 내 프로그램에서 신호로 받고 처리하는 방법 등 코딩의 기본 원리뿐만 아니라 디지털 신호의 처리 등을 이해할 수 있는 과정이다.
								</p>
							</div>
-->							
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육 대상<!--누가 수강하면 좋을까요?--></h5>
							<ul class="ul_dot_gray">
								<li>라즈베리파이에 관심 있는 중·고등학생</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>교육 목표<!--무엇을 목표로 할까요?--></h5>
							<ul class="ul_dot_gray">
								<li>1. 라즈베리파이를 통해 소프트웨어 코딩 능력을 배양한다.</li>
								<li>2. 소프트웨어 교육을 통해 논리력을 키우고 상상하던 것을 직접 만들어 보는 경험한다.</li>
								<li>3. 우리 주변의 다양한 전자기기들의 동작 방식들을 이해한다.</li>
								<li>4. 기초적인 자바스크립트 프로그래밍 언어로 라즈베리파이 프로그램을 개발하고 경험하면서 소프트웨어 코딩을 위한 기초 지식을 습득한다.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>교육 장비<!--어떤 장비를 사용하나요?--></h5>
							<ul class="ul_dot_gray">
								<li>라즈베리파이 스타트 키트, 입출력 키트, 초음파 센서, 스피커</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육 내용<!--무엇을 배울까요?--></h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:55%">
										<col style="width:20%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
											<th scope="col">강의운영방식</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">라즈베리파이와 친해지기</td>
											<td>
												1. 라즈베리파이란?<br/>
												2. 라즈베리파이 살펴보기<br/>
												3. 라즈베리파이로 할 수 있는 것들 소개
											</td>
											<td class="c" rowspan="6">이론 및 실습</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">라즈베리파이 시작하기</td>
											<td>
												1. 전원부터 연결<br/>
												2. 라즈베리파이는 어떻게 프로그래밍 할까? (Node.js 설치)<br/>
												3. 첫 번째 프로그램 "Hello World" 화면에 출력하기<br/>
												4. 브라우저로 라즈베리파이에 접속하기<br/>
												5. LED 깜빡 거리기
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">자바스크립트 언어 기초</td>
											<td>
												1. 프로그래밍이란?<br/>
												2. 프로그래밍 언어란?<br/>
												3. LED 깜빡이는 Node.js 프로그램 다시 살펴보기<br/>
												4. 변수란?<br/>
												5. 산술연산 해보기<br/>
												6. 프로그램 실행 순서 제어 (if, for, while)<br/>
												7. 함수란?<br/>
												8. 모듈 작성해 보기<br/>
												9. 문자열<br/>
												10. 모호스 부호기 만들어 보기
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">GPIO 프로그래밍</td>
											<td>
												1. 시작 전 간단한 전기/전자 공부<br/>
												2. LED 깜빡거리기<br/>
												3. 부저 울리기<br/>
												4. 디지털 입력 받아보기<br/>
												5. 버튼으로 LED 끄고 켜보기<br/>
												6. 센서와 엑추에이터는 무엇인가요?<br/>
												7. 온도/습도 감지하기<br/>
												8. 움직임 감지하기
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">웹 프로그래밍</td>
											<td>
												1. 라즈베리파이 안에 나만의 홈페이지 만들기<br/>
												2. 스마트폰으로 내 홈페이지에 접근하기<br/>
												3. 내 홈페이지에서 LED 끄고 켜기<br/>
												4. 내 홈페이지에서 음악 재생 해보기<br/>
												5. 내 홈페이지에서 음악 검색해보기<br/>
												6. 라즈베리파이한테 음악 다운로드 시켜보기
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">오디오 만들기</td>
											<td>
												1. 라즈베리파이에 센서, 스피커, LED 제어 프로그램 결합하기<br/>
												2. 리모콘 웹앱 만들기<br/>
												3. 모두 합치기
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<!--<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>-->
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

						</div>
						<!-- con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi_Audio" class="btn mid green1">지원하기</a>
						</div>
						-->

						
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
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>