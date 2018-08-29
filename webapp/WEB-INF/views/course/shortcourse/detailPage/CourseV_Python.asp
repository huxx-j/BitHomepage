<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "[방학특강] Python Programming"
CourseID = "pythonVacation"
%>

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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			/*
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			*/
			/********************* 고용보험환급 div, btn 관련. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1.0;
				$( 'html, body' ).stop().animate( { scrollTop : height }, 100, function() { } );

				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				setTimeout(function() {
					$("#divSa").slideDown("slow", "easeOutQuint", function() {});
					$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				}, 100);
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#btnOpenSaGn2").on("click", function(event) {
				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				$("#divSa").slideDown("slow", "easeOutQuint", function() {});
				$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#imgBtnClose").on("click", function(event) {
				$("#imgBtnClose").css("display","none");
				$("#divSa").slideUp("fast", "easeOutQuint", function() {});
				$("#divGn").slideUp("fast", "easeOutQuint", function() {$("#divBtnOpenSaGn2").css("display","block");});
				
			})
			/*********************************************************************************************************/

			//$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// 방학특강 - Python 프로그래밍

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			//ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(6).addClass("on");								
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Python.asp";
		*/
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
						<!-- con_wrap -->
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
											<th scope="row" class="tit">교육기간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__pythonVacation.inc" -->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__pythonVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비용</th>
											<td>
												394,440원<br/>
												<span>* 18,800원 상당 시중교재 제공</span>
											</td>
											<th>교육비지원</th>
											<td>고용보험 비환급 <!--<a href="#" id="btnOpenSaGn1" class="btnBlueBorder">자세히보기</a>--></td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-1780 &nbsp;(<a href="mailto:kang.i.y@bit.kr" class="email">kang.i.y@bit.kr</a>)</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>

								
							</div>
						</div>
						<!-- //con_wrap -->

						<div class="con_wrap1709 ">
							<h5>과정로드맵</h5>
							<img src="Images/Python-P.PNG" style="text-align:center; width:100%;"/>
						</div>
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>과정 소개</h5>
							<!--<img src="/Images/Main/img_LOGO_Python.png" style="width:180px;"/>-->
							<p>파이썬 프로그래밍은 초보자로부터 전문가까지 폭넓은 사용자층을 보유하고 있습니다. </p>
							<p>복잡한 문법을 필요로 하는 Perl이나 C, C++에 비해 문법이 간단합니다. 따라서 배우기 쉽다는 장점이 있습니다. </p>
							<p>파이썬은 대학 컴퓨터 관련 학과의 저학년을 대상으로 한 프로그래밍 입문 언어로 최근 중요성이 부각되고 있는 코딩 교육을 시작하기에 적합한 언어로 평가 받고 있으며, 구글, 드롭박스, 유튜브, 넷플릭스 등 해외 유수의 IT기업에서도 개발언어로 채택하고 있는 추세입니다.</p>
							<p>C와 비교했을 때, 포인터와 같은 배우기 힘든 개념이 없기 때문에, 상대적으로 많은 시간을 프로그램 구조와 디자인 등에 투자할 수 있습니다. C++과 비교했을때, OOP의 기본적인 사항들은 더욱 빠르게 배울 수 있습니다.기본적으로 인터프리터 방식이기 때문에, 코드의 결과를 바로바로 확인해 볼 수 있고, 다양한 운영체제를 지원합니다. 실행 파일(.exe)을 만들어 낼 수도 있습니다. </p>
							<p>다양한 라이브러리를 지원하기 때문에, 상대적으로 적은 양의 코드만으로도 GUI 프로그램, game, CGI 프로그램 등을 빠르게 만들 수 있습니다. </p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>C/ C++ 프로그래밍 외에도 파이썬을 배워야 하는 이유</h5>
							<p>C/C++ 그리고 Bourne shell과 유사한 문법을 가지고 있기 때문에, 기타 다른 스크립트 언어에 비해 익히는 속도가 매우 빠릅니다.</p>
							<p>OS에 관련된 기능들 (예: POSIX interface)대부분 C/C++에서 제공되는 함수와 같은 이름을 쓰고,익혀야하는 함수들이 타 스크립트 언어와 비교할 때 많지 않습니다.</p>
							<p>class, virtual function, 제한적인 operator overloading을 지원하기 때문에 C++에서 썼던 디자인 방식 그대로 적용할 수 있습니다.</p>
							<p>Mixed language programming - Python은 기타 다른 스크립트 언어에 비해 C/C++로 python module을 작성하기가 매우 쉽다 할 수 있습니다.</p>
							<p>제한적이나마 lambda expression을 제공하기 때문에, LISP/Scheme 등에 익숙한 사람들도 비슷한 코드를 쉽게 만들 수 있다. map(), apply() 함수 제공, closure 제공</p>
							<p>다른 스크립트 언어에 비해 문서화가 잘 되어 있으며 (Tutorial, Library Reference, Language Reference 제공), 문법 자체에 LISP/Scheme과 마찬가지로 documentation string을 집어 넣을 수 있고, built-in 함수인 dir()을 쓰면, 함수, 모듈, 오브젝트가 제공하는 심볼 테이블을 바로 볼 수 있기 때문에 다른 스크립트 언어를 쓸 때에 비해, 따로 문서를 찾아보는 빈도가 낮아집니다.</p>
							<p>함수, 클래스 또는 변수에 Decorator를 직접 제작할 수 있습니다. Decorator란 C/C++ 문법상 qualifier에 해당하는 것으로 다양한 wrapper를 만들거나 class인 경우 static, class method를 지정할 수 있습니다.</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>예상 진로</h5>
							<ul class="ul_dot_gray">
								<li>웹 프로그래밍</li>
								<li>빅테이터 분석 프로그래밍</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<img src="/Images/Content/img_BookCover_JumpToPython.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:350px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:210px;">
									'Do it! 점프 투 파이썬' <Br/>박응용 저 / 이지스퍼블리싱
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:25%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">기본</td>
											<td class="darker c" scope="row">
												1. 파이썬 소개<br/>
												2. 파이썬 자료형<br/>
												3. 파이썬의 기본 구문
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬 설치 및 실행환경 구성 및 실행</li>
													<li>파이썬의 자료형(숫자형, 문자열, 리스트, 튜플, 딕셔너리, 집합)과 변수</li>
													<li>제어문(조건문과 반복문)</li>
													<li>함수</li>
													<li>콘솔 입출력</li>
													<li>파일 읽고 쓰기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">심화</td>
											<td class="darker c" scope="row">
												1. 클래스와 객체지향 프로그래밍<br/>
												2. 모듈 제작 및 사용 방안<br/>
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬 객체지향 프로그래밍</li>
													<li>클래스</li>
													<li>상속</li>
													<li>다형성</li>
													<li>모듈</li>
													<li>패키지</li>
													<li>예외처리</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">활용</td>
											<td class="darker c" scope="row">
												1. 파이썬 정규식과 문서다루기
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬의 내장함수와 외장함수</li>
													<li>정규 표현식</li>
													<li>XML 문서 다루기</li>
												</ul>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1780 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Python" class="btn mid green1">지원하기</a>
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