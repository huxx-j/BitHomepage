<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- <%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "Python 프로그래밍"
CourseID = "Python_Weekend"
%> --%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<c:import url="/WEB-INF/views/Include/Meta.jsp"/>
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
	<!-- #include virtual="/Include/Script.asp"-->
	<c:import url="/WEB-INF/views/Include/Script.jsp"/>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			/* <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 /* <!--#include virtual="/Include/HeaderScriptReady1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
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
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no5").addClass("on").removeClass("plus").addClass("minus");	// Python 프로그래밍 ON 
			$(".snb_1709 .newdepth4_wrap.no5").addClass("on").css('display','block');	// Python 프로그래밍 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no5 li:eq(1) a").addClass("on");				// 주말반 ON

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
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!--#include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- # i n c lude virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Python 프로그래밍
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>주말반
						</p>
						<h4>[주말반] Python 프로그래밍</h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__python_Weekend.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__python_Weekend.jsp"/>
												<!--
												2018.1.15 ~ 2018.1.30 <span class='greenTxt'>(오후반)</span><br/>
												2017.12.18 ~ 2018.1.10 <span class='greenTxt'>(저녁반)</span>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__python_Weekend.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__python_Weekend.jsp"/>
												<!--
												오후반 14:00~18:00 (4시간/12일/총48시간)<br/>
												저녁반 19:00~22:00 (3시간/16일/총48시간)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비용</th>
											<td>
												350,000원<br/>
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
								<a href="/register/request/register_shortCourse.asp<%-- ?cID=<%=CourseID%> --%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<div class="con_wrap1709 ">
							<h5>과정로드맵</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/Python-P.PNG" style="text-align:center; width:100%;"/>
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
								<img src="${pageContext.request.contextPath}/assets/Images/Content/img_BookCover_JumpToPython.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
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
						
						<!-- con_wrap1709 고용보험환급 -->
						<div class="con_wrap1709 dnone">
							<h5 style="float:left;">고용보험 환급 </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:47px; margin-left:7px;"><a href="#" id="btnOpenSaGn2" class="btnBlueBorder">자세히보기</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="${pageContext.request.contextPath}/assets/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
														
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1709ul">
								<h5>사업주 위탁훈련</h5>
								<p>사업주가 훈련비용을 부담하여 재직근로자 대상으로 직무향상을 지원하는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 고용보험에 가입한 사업주로서 소속근로자에게 사전에 고용노동부 장관으로부터 과정인정을 받아 교육훈련을 직접 또는 위탁하여 실시하는 사업주</p>

								<h5>훈련대상</h5>
								<p>- 고용보험 피보험자</p>
								<p>- 고용보험 피보험자가 아닌 자로서 해당 사업주에게 고용된 자</p>
								<p>- 해당 사업이나 그 사업과 관련되는 사업에서 고용하려는 자(채용예정자)</p>
								<p>- 직업안정기구에 구직 등록한 자</p>
								
								<div style="text-align:center;">
									<a href="/Upload/company2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">사업주 위탁훈련 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
							
								<div class="divTable">
									<table>
										<tr>
											<th>지원대상 분류</th>
											<th>상시 근로자수</th>
											<th>정부환급금</th>
											<th>기업부담금</th>
										</tr>
										<tr>
											<td rowspan="2">우선지원 대상기업</td>
											<td>50명 미만</td>
											<td>315,552원</td>
											<td>34,448원</td>
										</tr>
										<tr>
											<td>50명 이상</td>
											<td>283,996원</td>
											<td>66,004원</td>
										</tr>
										<tr>
											<td rowspan="2">중견 또는 대기업</td>
											<td>1,000명 미만</td>
											<td>189,331원</td>
											<td>160,669원</td>
										</tr>
										<tr>
											<td>1,000명 이상</td>
											<td>126,220원</td>
											<td>223,780원</td>
										</tr>
									</table>
								</div>
								<p>※ 사업주 위탁훈련은 출석률 80% 이상인 경우만 정부환급금을 받을 수 있다.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1709ul">
								<h5>근로자 직무능력향상지원</h5>
								<p>고용보험이 납부되는 재직자 개인이 <b>'재직자 내일배움카드'</b>를 발급받아 수강료 지원을 받는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 우선지원 대상자 근로자, 고용보험 임의가입 자영업자, 기간제 근로자, 단시간 근로자, 파견 근로자, 일용 근로자</p>

								<h5>지원내용</h5>
								<p>지원한도금액은 1인당 년간 200만원 한도 내에서 훈련과정에 따라 60~100% 지원</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">근로자 직무능력향상지원 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
								<div class="divTable">
									<table>
										<tr>
											<th>지원대상 분류</th>
											<th>대상</th>
											<th>개인부담금</th>
										</tr>
										<tr>
											<td>우선지원 대상기업</td>
											<td>비정규직, 이직 예정자<br/>무급 휴직자, 정규직</td>
											<td>34,440원</td>
										</tr>
										<tr>
											<td rowspan="2">중견 또는 대기업</td>
											<td>비정규직, 무급 휴직자</td>
											<td>34,440원</td>
										</tr>
										<tr>
											<td>이직 예정자, 정규직</td>
											<td>97,550원</td>
										</tr>
									</table>
								</div>
							</div>
							
						</div>
						<!-- //con_wrap1709 고용보험환급 -->

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
		<c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>