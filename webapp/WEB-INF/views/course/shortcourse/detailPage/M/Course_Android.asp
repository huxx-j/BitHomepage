<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim PhoneNum
	dim strSubject
	dim strSubjectSub
	PhoneNum = "02-3486-1423"
	strSubject = "안드로이드"
	strSubjectSub = " 프로그래밍"
%>
<%
	dim strDate
	strDate = "2017.05.08 ~ 2017.05.25 <br/><span class='greenTxt'>(월~목 / 12일 / 총 36시간)</span>"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<meta name="viewport" content="width=device-width, user-scalable=no">
	<link rel = "stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	
	<link rel = "stylesheet" href="http://www.bitacademy.com/M_Common/Common_Style_VP.css"/>
	
	<style>
		.CourseDescription ul.marginleft {
			margin-left:10%;
		}
		.divImg {
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			border: none;
		}
	</style>
	
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper"> 
		<!-- #include virtual="/M_Common/Header.inc"-->
		<div>
			<div style="background:#fcf3e9; " class="Box"> <!-- #ffffe6 -->
				<div class="CategoryTitle" style="font-size:1.5em;">프로그래밍과정 / 핵심역량과정</div>
				<!--<div class="CategoryDescription" style="font-size:2em; margin-left:2em;">비트교육센터가 주관하는 민간자격증</div>-->
			</div>
		</div>
		<div class="Box">
			<div class="divImg" style="background-image: url('/M_Common/Background_1488_898.jpg'); background-repeat: no-repeat; background-size:100% 120%; background-position-y:-25px; padding-top:2em;">
				<div class="CourseTitle" style="font-size:3.75em; line-height:1.1em;"><b><%=strSubject%><br/><span style="font-size:1em;"><%=strSubjectSub%></span></b></div>
				<!--<h4>SW 개발의 기초가 되는 프로그래밍 언어인 C 언어를 기본문법 및 개념에서 <br>고급활용까지 마스터 하는 과정</h4>-->
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
			
				<div class="con_wrap first last">
					<table class="table_col_type1" style="width:100%;">
						<colgroup>
							<col style="width:25%">
							<col style="width:75%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="tit" >교과목명</th>
								<td class="fb">안드로이드 프로그래밍</td>
							</tr>
							<tr>
								<th class="tit" >강의일정</th>
								<td>
									<%=strDate%>
								</td>
							</tr>
							<tr>
								<th class="tit" >강의시간</th>
								<td>
									19:00 ~ 22:00 <span class="greenTxt">(1일 / 3시간)</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >교육비</th>
								<td>360,000원 </td>
							</tr>
							<tr>
								<th scope="row" class="tit">교육문의</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a></td>
							</tr>
							<tr>
								<th scope="row" class="tit" rowspan="2">환급비</th>
								<td>
									근로자카드 <br/>
									<div style="float:left;" class="greenTxt">(정규직 : 189,340원 | <br/>비정규직 : 236,670원)</div>
									<a href="#myPopupGn" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.7em; float:right;">자세히</a>
									<div data-role="popup" id="myPopupGn"  style="font-size:2em; line-height:2em; width:85%;" data-transition="fade">
										<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
										<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_01Gn.asp"-->
									</div>

								</td>
							</tr>
							<tr>
								<td>
									사업주 환급 <br/>
									<div style="float:left;" class="greenTxt">최대 236,670원</div>
									<a href="#myPopupSa" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.7em; float:right;">자세히</a>
									<div data-role="popup" id="myPopupSa"  style="font-size:2em; line-height:2em; width:85%;" data-transition="fade">
										<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
										<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_02Sa.asp"-->
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				
				</div>
				
				<!-- con_wrap -->
				<div class="con_wrap" style="padding-bottom:1em !important;">
					<h5>교육소개</h5>
					<!--<p>본 과정은 안드로이드 어플리케이션의 핵심 개념과 기본 View, Layout에 대한 설명. 그리고 안드로이드의 핵심 구성요소에 대하여 학습한다. 단순히 안드로이드의 API에 대하여 학습하는 것이 아닌, 실제 앱에 대한 프로토타이핑을 제공하고, 해당 앱을 직접 만들면서 안드로이드 앱 작성방법에 대한 역량을 확보하게 한다.</p>-->
					<p>
						본 과정은 안드로이드 소개와 개발환경 설치(안드로이드 스튜디오) 그리고 입문부터 레이아웃을 통한 UI 다루기, 이벤트 처리 그리고 고급 UI, 커스텀 UI등 실무에서 작성되는 상용앱 수준의 안드로이드 앱을 작성하는 방법을 배웁니다. 그리고 실제 안드로이드 앱과 웹 서버간의 데이터 통신을 다루고 안드로이드 앱의 UI에 적용시키는 실무위주의 기술들을 배웁니다.<br/>
						<img src="/Images/Main/img_LOGO_Android_Studio.PNG" style="float:left; height:4em; width:10em; margin-top:1em;"/>
						<img src="/Images/Main/img_LOGO_Android.PNG" style="float:right; width:15%; margin-top:1em;"/>
					</p>
					<div style="clear:both;"></div>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육목표</h5>
					<ul>
						<li>- 안드로이드 아키텍처 및 구성요소들에 대한 이해</li>
						<li>- 안드로이드 스튜디오 개발 툴 사용법 익히기</li>
						<li>- 레이아웃, 이벤트 처리, 기본 위젯 프로그래밍</li>
						<li>- 어댑터 뷰, 고급 위젯, 커스텀 위젯 프로그래밍</li>
						<li>- 웹 서버와의 JSON기반의 데이터 통신 구현</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>선수지식</h5>
					<ul>
						<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="ui-btn ui-btn-inline" style="font-size:0.8em; padding:0.3em; margin-left:0.5em; margin-top:0.5em; border-radius:0.3em;" target="_blank">자세히보기</a></li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<style>
					.table_col_type1 th {
						line-height:1.2em;
					}
					.table_col_type1 th.c {
						font-size:1.25em !important;
						padding:0.3em !important;
						vertical-align: top !important;
						text-align:left !important;
					}
					.table_col_type1 td {
						font-size: 1em !important;
						vertical-align: top !important;
						
					}
				</style>
				<!-- con_wrap -->
				<div class="con_wrap last">
					<h5>커리큘럼</h5>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">안드로이드 개요</th>
							</tr>
							<tr>
								<th class="c">1. Android 운영체제<br/>2. Android 개발환경 설정<br/>3. Android 애플리케이션 구성요소</th>
							</tr>
							<tr>
								<td>
									- 안드로이드 특징, 구성요소 및 구조 런타임환경을 이해<br/>
									- Android Studio 통합 개발환경 설정및 사용법<br/>
									- 액티비티, 서비스, 브로드캐스트 리시버, 콘텐트 프로바이더, 인텐트, 알림 메시지, 토스트의 이해
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">안드로이드 입문</th>
							</tr>
							<tr>
								<th class="c">1.Hello, Android 살펴보기<br/>2.Android 애플리케이션 구성요소 자세히 알아보기</th>
							</tr>
							<tr>
								<td>
									- 간단한 예제를 통해 실제 앱 작성을 위한 기초적인 내용 습득<br/>
									- 리소스, 액티비티, 인텐트 이해
								</td>
							</tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">안드로이드 프로그래밍</th>
							</tr>
							<tr>
								<th class="c">1. 안드로이드 기본 UI(레이아웃/위젯)<br/>2. 안드로이드 고급 UI (액션바/프래그먼트)<br/>3. 안드로이드 커스텀 UI (drawable/Theme)</th>
							</tr>
							<tr>
								<td>
									- Layout/Tab/TextView & ImageView<br/>
									- 입력처리( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>
									- 날짜와 시간 선택/기타 위젯<br/>
									- ListView 기본 사용법<br/>
									- 메뉴<br/>
									- Dialog<br/>
									- 커스텀 UI개발을 위한 layout/drawable/theme 활용법<br/>
									- ActionBar & Fragment
								</td>
							</tr>
							<tr>
						</tbody>
					</table>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" colspan="2">실무앱 적용</th>
							</tr>
							<tr>
								<th class="c">1.Tab Pager UI,<br/>2.ListView 활용, <br/>3.JSON 데이터 요청과 처리</th>
							</tr>
							<tr>
								<td>
									- 상용 앱에 자주 쓰이는 탭/페이저 UI구현<br/>
									- 탭/페이저에 ListView 바인딩<br/>
									- ListView Adapter 구현<br/>
									- 웹 서버와 데이터 통신에 필요한 주요 개념 및 주요 라이브러리 사용법
								</td>
							</tr>
						</tbody>
					</table>
					<p class="blueTxt" style="font-size:1em; margin-top:1em;">* 이 과정은 인원 미달시 변경 또는 폐강 될 수 있습니다. </p>
					<p class="mar_t10"><span style="font-size:1em;">문의</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>
				
				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">문의전화하기</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" data-role="button" class="Button" target="_blank">지원하기</a>
		<!-- #include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>
