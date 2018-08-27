<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'//"Android1_core" -> "android_programming"으로 변경함 -> 다시 "Android1_core"으로 변경함. (2016-12-01-YG)
CourseID = "javaWebMobileVac"
SubjectName = "Java 웹 & 모바일"
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
			
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// Java 웹 & 모바일 ON
			
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/*
			$(".snb_1709 a.newdepth1").eq(6).addClass("on");								// Mobile
			$(".snb_1709 .newdepth2_wrap").eq(6).addClass("on");						// Mobile - OPEN
			$(".snb_1709 .newdepth2_wrap.no7 .newdepth2").eq(0).addClass("on");  	// 안드로이드 앱 개발 ON
			*/
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
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- # i n c l ude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Mobile
						</p>
						-->
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<caption>안드로이드 프로그래밍</caption>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__javaWebMobileVac.inc" -->
												<!--
												2017.12.21 ~ 2018.1.25 <span class='greenTxt'>(오전반)</span><br/>
												2018.1.15 ~ 2018.2.19 <span class='greenTxt'>(오후반)</span>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__javaWebMobileVac.inc" -->
												<!--
												오전반 9:00 ~ 13:00 (4시간)<br/>
												오후반 14:00 ~ 18:00 (4시간)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>700,000원</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-3456</td>
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

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<!--<p>본 과정은 안드로이드 어플리케이션의 핵심 개념과 기본 View, Layout에 대한 설명. 그리고 안드로이드의 핵심 구성요소에 대하여 학습한다. 단순히 안드로이드의 API에 대하여 학습하는 것이 아닌, 실제 앱에 대한 프로토타이핑을 제공하고, 해당 앱을 직접 만들면서 안드로이드 앱 작성방법에 대한 역량을 확보하게 한다.</p>-->
							<p>본 과정은 기본 언어인 Java를 배운 후, 안드로이드 소개와 개발환경 설치(안드로이드 스튜디오) 그리고 입문부터 레이아웃을 통한 UI 다루기, 이벤트 처리 그리고 고급 UI, 커스텀 UI등 실무에서 작성되는 상용앱 수준의 안드로이드 앱을 작성하는 방법을 배웁니다. 그리고 실제 안드로이드 앱과 웹 서버간의 데이터 통신을 다루고 안드로이드 앱의 UI에 적용시키는 실무위주의 기술들을 배웁니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>Java 언어에 대한 기본적인 이해</li>
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
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
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
											<td class="darker c" scope="row" rowspan="4">Java Beginning</td>
											<td rowspan="4" class="darker c">자바 기본문법</td>
											<td>자바의 개요와 개발 환경 구축, 데이터의 구분을 위한 자바의 자료형을 학습한다.</td>
										</tr>
										<tr>
											<td>데이터를 조작하기 위한 연산자, 필요한 작업만을 선택적으로 해야 할 경우 사용하는 선택문 학습한다.</td>
										</tr>
										<tr>
											<td>특정 부분의 문장을 반복하게 만들어 주는 반복문 학습 한다.</td>
										</tr>
										<tr>
											<td>자료형이 동일한 여러 개의 값을 연이어 저장할 수 있도록 하는 기억 공간의 집합체인 배열과 메소드 정의와 호출방법을 익힌다.</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="6">Java Fundamental</td>
											<td rowspan="2" class="darker c">객체 지향 프로그래밍</td>
											<td>객체지향의 개념과 클래스 설계, 객체 인스턴스 생성 학습한다.</td>
										</tr>
										<tr>
											<td>메소드 오버로딩과 생성자를 학습한다.</td>
										</tr>
										<tr>
											<td rowspan="4" class="darker c">상속</td>
											<td>코드 재활용을 위한 상속을 이해한다.</td>
										</tr>
										<tr>
											<td>메소드 오버라이딩과 업캐스팅 다운 캐스팅을 학습한다</td>
										</tr>
										<tr>
											<td>추상 클래스를 이해하고 정의하는 방법을 익힌다.</td>
										</tr>
										<tr>
											<td>인터페이스를 사용한 다중 상속에 대해 알아본다.</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="10">Java Advanced</td>
											<td rowspan="3" class="darker c">자바 주요 클래스</td>
											<td>자바 패키지 중 자주 사용되는 클래스를 살핀다.</td>
										</tr>
										<tr>
											<td>자료구조인 컬렉션에 대해서 학습한다.</td>
										</tr>
										<tr>
											<td>자바클래스 실습</td>
										</tr>
										<tr>
											<td rowspan="5" class="darker c">IO/스레드</td>
											<td>입출력 프로그램에 대해서 이해한다.</td>
										</tr>
										<tr>
											<td>java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다.</td>
										</tr>
										<tr>
											<td>스레드를 이해하고 실무에 적용할 수 있다.</td>
										</tr>
										<tr>
											<td>멀티스레드 프로그래밍을 학습한다.</td>
										</tr>
										<tr>
											<td>스레드의 동기화에 대해서 학습한다.</td>
										</tr>
										<tr>
											<td rowspan="2" class="darker c">네트워크</td>
											<td>네트워크에 대해서 이해하고 에코서버를 작성할 수 있다.</td>
										</tr>
										<tr>
											<td>채팅서버 프로그램을 작성할 수 있다.</td>
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 개요</td>
											<td class="darker c" style="text-align:left;">1. Android 운영체제<br/>2. Android 개발환경 설정<br/>3. Android 애플리케이션 구성요소</td>
											<td style="text-align:left;">1.안드로이드 특징, 구성요소 및 구조 런타임환경을 이해<br/>2.Android Studio 통합 개발환경 설정및 사용법<br/>3. 액티비티, 서비스, 브로드캐스트 리시버, 콘텐트 프로바이더, 인텐트, 알림 메시지, 토스트의 이해</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 입문</td>
											<td class="darker c" style="text-align:left;">1.Hello, Android 살펴보기<br/>2.Android 애플리케이션 구성요소 자세히 알아보기</td>
											<td style="text-align:left;">1. 간단한 예제를 통해 실제 앱 작성을 위한 기초적인 내용 습득<br/>2. 리소스, 액티비티, 인텐트 이해</td>
											<!--<td>3</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">안드로이드 <br/>프로그래밍</td>
											<td class="darker c" style="text-align:left;">1. 안드로이드 기본 UI(레이아웃/위젯)<br/>2. 안드로이드 고급 UI (액션바/프래그먼트)<br/>3.안드로이드 커스텀 UI (drawable/Theme)</td>
											<td style="text-align:left;">1.Layout/Tab/TextView & Image View<br/>2.입력처리( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>3.날짜와 시간 선택/기타 위젯<br/>4.ListView 기본 사용법<br/>5.메뉴<br/>6.Dialog<br/>7.커스텀 UI개발을 위한 layout/drawable/theme 활용법<br/>8.ActionBar & Fragment </td>
											<!--<td>18</td>-->
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;">실무앱 적용</td>
											<td class="darker c" style="text-align:left;">1.Tab Pager UI,<br/>2.ListView 활용, <br/>3.JSON 데이터 요청과 처리</td>
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