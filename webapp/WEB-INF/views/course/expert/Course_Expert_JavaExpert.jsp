<%!
//strDateTime = "2017.09.06 ~ 2018.03.06"
//strDateTime = "2018.01 ~ 2018.06"
String strDateTime = "2018.01.02 ~ 2018.05.31";

// 상담신청모듈 추가시 필수 필드 : CourseID
String CourseID = "JX";	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

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
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
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

			// DetailPage :: slots handlers
			$(".companies .slot").on("click", function() {
				//var href = $(this).attr("href");
				//if(href!=undefined)  location.href = href;

				var index = $(".companies .slot").index(this);
				//alert(index); 
				$(".companySummary").hide();
				$(".companySummary").eq(index).show();
			});
			// DetailPage :: insideSlots handlers
			$(".insideSlot").on("mouseenter", function() {
				//$(this).css("opacity",1);
				$(this).stop(true,true).animate({"opacity":1},400,'easeOutElastic');
			}).on("mouseleave", function() {
				//$(this).css("opacity",0);
				$(this).stop(true,true).animate({"opacity":0},200);
			});
			

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(1).addClass("on");  
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/CommonStyle_DetailPage.css">
</head>

<body><!-- style="background:#ffffff;">-->
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseExpert_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseExpert_1709.jsp"/>
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>전문가과정
						</p>
						<h4 style="float:left;">자바 전문가과정</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section">
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JX.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__JX.jsp"/>
												<!--2018.01.02 ~ 2018.05.31-->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JX.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__JX.jsp"/>
												<!--09:00 ~ 18:00 (주5일)-->
											</td>
										</tr>
										<tr class="dnone">
											<th>교육비용</th>
											<td>500만원</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>25명</td>
											<th>문의</th>
											<td>02-3486-3456 (최광원 선임)<br/><a href="mailto:gwang@bit.kr" class="email">gwang@bit.kr</a></td>
										</tr>
									</tbody>
								</table> 
								<!--
								<a href="/Register/Request/register_expert1.asp" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
								-->
								<!-- 수강신청btn -->
								<a href="/register/request/register_employment1.asp" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
									<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
									지원하기
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>과정소개</h5>
							<p>
								최신 웹 애플리케이션 개발자 또는 앱 개발자들은 직접 개발과정 참여하면서 개발에 필요한 풀스택 기술을 경험하기도 하고 요구 받기도 한다.<br/>
								풀스택 웹 또는 앱 개발은 프론트엔드 개발, 백엔드 개발, 시스템운영/관리, 데이터베이스, 개발도구 사용법 이렇게 다섯가지 정도로 보통 나눌 수 있다.<br/>
								본 과정에서는 우선, 프론트엔드 개발에 HTML/CSS3로 웹표준에 맞는 웹문서 작성법과 스타일링 그리고 프론트엔드의 핵심 프로그래밍 기술이라 할 수 있는 자바스크립트 그리고 자바스크립트 라이브러리를 배운다.<br/>
								벡엔드 개발자는 자바 엔터프라이즈 기술의 핵심 프레임워크 기술인 스프링과 스프링 MVC 그리고 주요 스프링 기술들을 배운다.<br/>
								동시에 프론트엔드와 자바 백엔트 개발에 필요한 버전관리, 이슈관리, 빌드툴, 테스트 툴, CD/CI 도구들을 함께 배워 협업과 자동화에 필요한 다양한 실무 위주의 도구 사용법을 실습위주로 습득한다.<br/>
								이와 함께 실제 애플리케이션과 데이터베이스가 배포, 운용될 리눅스 서버 구축방법과 관리방법을 배우고 데이터베이스 프로그래밍을 위해 SQL과 데이터 모델링 방법을 RDBMS와 NoSQL에서 배우게 된다.<br/>
								이 과정은 엔터프라이즈 개발의 풀스택 기술을 경험하여 기술은 물론, 엔터프라이즈 전체 개발 프로세스에 대한 넓은 시각과 이해할 수 있게 하고 다양한 개발 분야에 개발 직군을 미리 경험하여 한 분야의 최고 전문가가 되기위한 밑거름이 되는 기술들을 경험하고 습득하는 데 목적이 있다.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>교육생 특전</h5>
							<ul class="ul_dot_gray">
								<li>교육비 무료</li>
								<li>훈련수당 지원</li>
								<li>식비지원</li>
							</ul>
						</div>
						
						<div class="con_wrap1709 dnone">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>컴퓨터 관련 학과 2년 이상의 기본 소양을 가지고 자바 분야의 전문가로 성장하고 싶은 사람</li>
								<li>군 복무/휴학 후 컴퓨터 전공 과목 실력을 키우고 싶은 재학생</li>
								<li>수준 높은 취업 포트폴리오 결과물을 원하는 재학생</li>
								<li>자바 관련 업계에 취업을 희망하는 비전공자</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>참여기업</h5>
							<div class="companies">
								<div style="float:left; margin-top:0px;"> <!-- -15px; ">-->
									<div class="slot first" style="height:190px; background-color:rgb(255,255,255);" href="/course/employ/Course_Employ_BizTechPartners">
										<div class="divCompanyEmploy">
											<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_BizTechPartners.png" style="height:60px; margin-top:4px; margin-left:34px; margin-bottom:-9px;">
											<p class="companyName"><span>㈜비즈테크파트너스</span></p>
											<p class="companyDetail" style="height:80px;">
												<span class="blueTxt">웹개발 / 모바일 앱 및 서버<br/>개발</span><br/><br/>
												<span style="font-weight:900; color:rgb(255,0,0);">모집중</span>
											</p>
										</div>
										<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
										<p class="courseName dnone">-</p>
										<p class="courseDescription dnone">-</p>
										<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/CSS/MainPage_SlotSelected_190px.png'); opacity:0; -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
									</div>
									<div class="slot " style="height:190px; background-color:rgb(255,255,255);" href="/course/employ/Course_Employ_BitComputer">
										<div class="divCompanyEmploy">
											<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_BITCOM.png" style="margin-top:18px; margin-left:38px; margin-bottom:8px;">
											<p class="companyName"><span>㈜비트컴퓨터</span></p>
											<p class="companyDetail" style="height:80px;">
												<span class="blueTxt">JAVA 솔루션 개발<br/></span><br/><br/>
												<span style="font-weight:900; color:rgb(255,0,0);">모집중</span>
											</p>
										</div>
										<%-- <img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/> --%>
										<p class="courseName dnone">-</p>
										<p class="courseDescription dnone">-</p>
										<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected_190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div>	
							<!-- 참여기업 Summary -->
							<div style="margin-top:10px;">
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BizTechPartners.asp"-->
									<c:import url="/course/employ/Summary1_BizTechPartners"/>
									<!-- #include virtual="/Course/Employ/Summary2_BizTechPartners.asp"-->
									<c:import url="/course/employ/Summary2_BizTechPartners"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BitComputer.asp"-->
									<c:import url="/course/employ/Summary1_BitComputer"/>
									<!-- #include virtual="/Course/Employ/Summary2_BitComputer.asp"-->
									<c:import url="/course/employ/Summary2_BitComputer"/>
								</div>
							</div>
							<!-- //참여기업 Summary -->
						</div>

						<div class="con_wrap1709">
							<h5>접수기간</h5>
							<p>2018년 8월 21일(화)까지</p>
						</div>
						<div class="con_wrap1709">
							<h5>전형절차</h5>
							<p>
								-	1차 전형 : 필기시험(Java Programming)<br/>
								-	2차 전형 : 면접전형(기업면접, 최종 선발)
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>전형일</h5> 
							<p>2018년 8월 23일(목) 10:00</p>
						</div>

						<div class="con_wrap1709">
							<h5>교육기간</h5>
							<p>6개월(이론 수업 : 3개월, 프로젝트 3개월) / 960h</p>
						</div>
						<div class="con_wrap1709">
							<h5>교육시간</h5>
							<p>09:00 ~ 18:00 (그룹스터디, 프로젝트 수행 시 22:00까지)</p>
						</div>
						<div class="con_wrap1709 dnone">
							<h5>개강일</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<tr>
										<th>1월</th>
										<th>2월</th>
										<th>3월</th>
										<th>4월</th>
										<th>5월</th>
										<th>6월</th>
										<th>7월</th>
										<th>8월</th>
										<th>9월</th>
										<th>10월</th>
										<th>11월</th>
										<th>12월</th>
									</tr>
									<tr>
										<td>1/2</td>
										<td>2/1</td>
										<td>3/2</td>
										<td>4/2</td>
										<td>5/1</td>
										<td>6/1</td>
										<td>7/2</td>
										<td>8/1</td>
										<td>9/3</td>
										<td>10/1</td>
										<td>11/1</td>
										<td>12/3</td>
									</tr>
								</table>
							</div>
						</div>
<!--

						<div class="con_wrap1709">
							<h5>전형방법</h5>
							<p>필기시험(Java Programming)<br/>면접 (구술면접)</p>
						</div>
						<div class="con_wrap1709">
							<h5>교육비용</h5>
							<p>550만원</p>
						</div>
-->

						<div class="con_wrap1709 last">
							<h5>교육내용</h5>

							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:30%">
										<col style="width:65%">
									</colgroup>
									<tbody>
										<tr>
											<th colspan="3">1단계 : JAVA 프로그래밍 응용 심화 단계</th>
										</tr>
										<tr>
											<td class="darker c" scope="col" colspan="2">Java Programming</td>
											<td>Java 언어를 학습한다.</td>
										</tr>
									<tr>
											<td class="darker c" scope="col" colspan="2">Data Structure</td>
											<td>개발자라면 필수적으로 알아야 자료구조/알고리즘에 대한 지식과 실습을 Java와 객체지향 프로그래밍으로 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c" scope="col" rowspan="2">Back-end</td>
											<td class="darker c">Mysql/MongoDB</td>
											<td>데이터 프로그래밍에 대한 학습으로 정형데이터의 기본이라 할 수있는 RDBMS와 비정형 데이터의 대표적인 NoSQL 대해 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c">Serlvet/JSP</td>
											<td>응용 계층의 HTTP 프로토콜 및 웹 서비스의 전반적인 이해를 바탕으로 자바 웹프로그래밍의 핵심인 Servlet 프로그래밍 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test Ⅰ</td>
											<td>JAVA 프로그래밍을 응용하고 기본되는 전산 소양을 확립할 수 있는 개인 프로젝트 수행</td>
										</tr>

										<tr>
											<th colspan="3">2단계 : JavaScript기반 full stack 기술 확립 단계</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">Front-end</td>
											<td class="darker c" scope="col">HTML5/CSS3</td>
											<td>웹표준에 맞는 HTML5/CSS3 학습을 기본으로 반응형 웹(모바일웹) 제작에 필요한 기술들을 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c">JavaScript(ECMAScript, jQuery, AngularJS, ReactJS)</td>
											<td>프론트엔드의 대표 프로그래밍 기술인 자바스크립트를 학습하고 자바스크립트 기반 다양한 라이브러리의 사용법을 익힌다.</td>
										</tr>
										<tr>
											<td class="darker c">AJAX/JSON</td>
											<td>REST API를 활용한 백엔드 프론트엔드 간의 대표적인 데이터 통신 기술을 습득하고 실무 어플리케이션에 적용한다.</td>
										</tr>
										<tr>
											<td class="darker c">UX/UI</td>
											<td>다양한 프론트엔드에 적용해야 할 UX/UI디자인의 개념과 그 프로세스를 이해시킨다.</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="2">Development Tools</td>
											<td class="darker c" scope="col">CI(Jenkins)</td>
											<td>애자일 개발 프로세스 XP의 실천 방법인 CI를 학습하여 소프트웨어 버전 업데이트하고 빌드, 테스팅, 서버 배포 등 자동화에 대해 배운다.</td>
										</tr>
										<tr>
											<td class="darker c">SCM(git)</td>
											<td>소프트웨어 버전 관리의 필요성을 이해시키고 Git 및 GitHub를 사용하여 버전 관리 시스템을 현장에 적용할 수 있도록 한다.</td>
										</tr>
										<tr>
											<td class="darker c">Back-end</td>
											<td class="darker c" scope="col">Node.js (Express.js)</td>
											<td>node.js에 대한 기본 지식을 학습하고 지원 웹 개발 프레임웍크 중 Express 프레임워크로 웹서버 또는 REST API 작성법을 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test Ⅱ</td>
											<td>JavaScript 기반의 백엔드, 프론트엔드 기술을 페어로 학습하여 함께 적용가능한 웹 애플리케이션을 작성해 본다.</td>
										</tr>
										
										<tr>
											<th colspan="3">3단계 : Back-end 심화 기술 확립 단계</th>
										</tr>
										<tr>
											<td class="darker c" scope="col">Back-end</td>
											<td class="darker c">Spring Framework(IoC/DI Container, AOP, Spring MVC, Spring JDBC, Spring Boot, TDD(Junit))</td>
											<td>Spring Framwork의 핵심개념을 예제를 통해 학습하며, Spring Boot상에서 Spring MVC를 학습하며, Spring JDBC, Junit를 학습한다.</td>
										</tr>
										<tr>
											<td class="darker c" colspan="2">Unit test Ⅲ</td>
											<td>자바 프레임워크 기반의 심화된 백엔드 기술을 적용한 웹 애플리케이션을 작성해 본다.</td>
										</tr>

										<tr>
											<th colspan="3">4단계 : 비트프로젝트(3개월)</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="4" colspan="2">Team Project</td>
											<td colspan="2">
												지금까지 배운 모든 기술을 통해서 실무 현업에 맞는 FullStack 응용프로그램을 개발해 보는 단계로 4인 내외로 팀을 구성<br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												최신 프로젝트 주제를 선정하여 3개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행하며, 주제 선정 <br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												관련된 자료 수집, 필요기술 학습, 명세확정, 일정 수립, 개발환경구축 등 개발, 통합테스트 등을 거쳐 개발을 완료<br/>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												외부업체 관계자들의 참관 하에 최종 전시회를 갖도록 한다.
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709 mar_t20">
							<h5>프론트엔드 개발자란?</h5>
							<p>
								프론트엔드 개발자는 사용자에게 보여지는 화면을 만드는 개발자이다. 쉽게 말하면 웹페이지를 그리는 기술이며, 눈에 보이는 화면을 만들고 싶다면 프론트엔드 기술이 필요하다.<br/>
								기본적으로 HTML+CSS 웹표준 코딩은 물론 HTML5 최신 버전 및 JavaScript는 필수이며, 여기서 웹디자이너와는 차이가 있으며, 보여지는 UI만을 그리는것과 성능이나 웹 브라우저의 호환성 등 수준이 높은 기술들이 필요합니다.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>벡엔드 개발자란?</h5>
							<p>
								벡엔드 개발자는 눈에 보이지 않는 서버에서 작용하는 기술을 다루는 직군이다. 가장 많이 사용되는 기술은 Java로 되어 있으며, Spring 프레임워크를 기반으로도 많이 사용되고 있다.<br/>
								스프링프레임워크는 Java 소스코드를 객체지향 관점에서 더욱 효율적으로 작성할 수 있는 틀을 제공하며, 벡엔드 개발에서 Java를 사용함은 웹 어플리케이션을 개발발하는 기술이다.
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>풀스택 개발자란?</h5>
							<p>
								풀스택 개발자는 프론트엔드 + 백엔드를 합쳐놓은 것으로 프론트엔드와 벡엔드 기술영역을 모두 활용할 수 있는 기술력이 필요한 직군이며,
								모든 소프트웨어 기술에 대해 많은 그리고 진정한 관심을 가지고 있지만 숙련되지 않은 각 단계(layer)에 친근함을 가진 사람이다. 
								모든 분야에 대해 친근한, 좋은 개발자들은 그들을 둘러싼 것을 쉽게 만들 줄 안다. 
							</p>
						</div>

						<div class="con_wrap1709 last">
							<h5>문의</h5>
							<p>02-3486-3456 <a href="mailto:gwang@bit.kr" class="email">gwang@bit.kr</a></p>
						</div>

						<!-- MODULE : 상담신청 모듈 -->
						<!-- # i n clude virtual="/Include/CommonModule_RequestCounsel.asp"-->
						<%-- <c:import url="/WEB-INF/views/Include/CommonModule_RequestCounsel.jsp"/> --%>
						<!--// MODULE : 상담신청 모듈 -->
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>