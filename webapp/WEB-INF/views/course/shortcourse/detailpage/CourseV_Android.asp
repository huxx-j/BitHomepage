<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "androidVacation"
SubjectName = "[방학특강] 안드로이드 앱 개발"
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] -->
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			
			$(".snb_1709 a.newdepth1").eq(4).addClass("on");							
		});
		
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_android.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:1000px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>여름방학특강</a>
						</p>
						<h4><%=SubjectName%></h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__androidVacation.inc" -->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__androidVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>394,440원</td>
											<th scope="row" class="tit">교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3" style="font-size:14px;">근로자카드 (정규직 : 189,340원 | 비정규직 : 236,670원) | 사업주 환급 : 최대 236,670원<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-3456 &nbsp;(bithrd@bit.kr)</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<!--<p>본 과정은 안드로이드 어플리케이션의 핵심 개념과 기본 View, Layout에 대한 설명. 그리고 안드로이드의 핵심 구성요소에 대하여 학습한다. 단순히 안드로이드의 API에 대하여 학습하는 것이 아닌, 실제 앱에 대한 프로토타이핑을 제공하고, 해당 앱을 직접 만들면서 안드로이드 앱 작성방법에 대한 역량을 확보하게 한다.</p>-->
							<p>본 과정은 안드로이드 소개와 개발환경 설치(안드로이드 스튜디오) 그리고 입문부터 레이아웃을 통한 UI 다루기, 이벤트 처리 그리고 고급 UI, 커스텀 UI등 실무에서 작성되는 상용앱 수준의 안드로이드 앱을 작성하는 방법을 배웁니다. 그리고 실제 안드로이드 앱과 웹 서버간의 데이터 통신을 다루고 안드로이드 앱의 UI에 적용시키는 실무위주의 기술들을 배웁니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>안드로이드 아키텍처 및 구성요소들에 대한 이해</li>
								<li>안드로이드 스튜디오 개발 툴 사용법 익히기</li>
								<li>레이아웃, 이벤트 처리, 기본 위젯 프로그래밍</li>
								<li>어댑터 뷰, 고급 위젯, 커스텀 위젯 프로그래밍</li>
								<li>웹 서버와의 JSON기반의 데이터 통신 구현</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<!--<li>객체지향 자바프로그래밍</li>-->
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/CourseV_java.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>안드로이드 프로그래밍 커리큘럼</caption>
									<thead>
										<tr>
											<th scope="col" style="width:15%;">대주제</th>
											<th scope="col" style="width:30%;">소주제</th>
											<th scope="col" style="width:47%;">상세내용</th>
											<!--<th scope="col" style="width:8%;">시수</th>-->
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 개요</td>
											<td style="text-align:left;">1. Android 운영체제<br/>2. Android 개발환경 설정<br/>3. Android 애플리케이션 구성요소</td>
											<td style="text-align:left;">1.안드로이드 특징, 구성요소 및 구조 런타임환경을 이해<br/>2.Android Studio 통합 개발환경 설정및 사용법<br/>3. 액티비티, 서비스, 브로드캐스트 리시버, 콘텐트 프로바이더, 인텐트, 알림 메시지, 토스트의 이해</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 입문</td>
											<td style="text-align:left;">1.Hello, Android 살펴보기<br/>2.Android 애플리케이션 구성요소 자세히 알아보기</td>
											<td style="text-align:left;">1. 간단한 예제를 통해 실제 앱 작성을 위한 기초적인 내용 습득<br/>2. 리소스, 액티비티, 인텐트 이해</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 <br/>프로그래밍</td>
											<td style="text-align:left;">1. 안드로이드 기본 UI(레이아웃/위젯)<br/>2. 안드로이드 고급 UI (액션바/프래그먼트)<br/>3.안드로이드 커스텀 UI (drawable/Theme)</td>
											<td style="text-align:left;">1.Layout/Tab/TextView & Image View<br/>2.입력처리( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>3.날짜와 시간 선택/기타 위젯<br/>4.ListView 기본 사용법<br/>5.메뉴<br/>6.Dialog<br/>7.커스텀 UI개발을 위한 layout/drawable/theme 활용법<br/>8.ActionBar & Fragment </td>
											<!--<td>18</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">실무앱 적용</td>
											<td style="text-align:left;">1.Tab Pager UI,<br/>2.ListView 활용, <br/>3.JSON 데이터 요청과 처리</td>
											<td style="text-align:left;">1. 상용 앱에 자주 쓰이는 탭/페이저 UI구현<br/>2. 탭/페이저에 ListView 바인딩<br/>3. ListView Adaper 구현<br/>4. 웹 서버와 데이터 통신에 필요한 주요 개념 및 주요 라이브러리 사용법 </td>
											<!--<td>12</td>-->
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</span></p>
								-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1">지원하기</a>
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