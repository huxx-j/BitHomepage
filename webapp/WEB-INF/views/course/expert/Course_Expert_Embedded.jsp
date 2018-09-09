<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String strDateTime = "2018.01.02 ~ 2018.05.31";

// 상담신청모듈 추가시 필수 필드 : CourseID
String CourseID = "EX";	
%>
<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
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
			
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(1).addClass("on");  
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/CommonStyle_DetailPage.css">
</head>
<body>
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
						<h4 style="float:left;">임베디드 시스템 전문가과정</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>-->
					
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__EX.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__EX.jsp"/>
												<%-- <%= strDateTime %> --%>
												<!--2018.01.02 ~ 2018.05.31-->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__EX.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__EX.jsp"/>
												<!--09:00 ~ 18:00 (주5일)-->
											</td>
										</tr>
										<tr class="dnone">
											<th>교육비용</th>
											<td>550만원</td>
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
								<a href="/register/request/register_form?cID=expert" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
									<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
									지원하기
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>과정소개</h5>
							<p>
								임베디드 시스템 분야에서 폭 넓게 사용되고 있는 ARM 프로세서 기반의 임베디드 제품 개발에 필요한 ARM 프로세서의 구조와 특징, 어셈블리 명령어, 부팅과정, 인터럽트, 예외처리 기술을 비롯하여 디바이스 제어를 위한 기술을 배우는 과정입니다.<br/>
								임베디드 리눅스 기반의 커널에 대한 이해와 커널을 임베디드 시스템에 최적화 하는 방법을 학습하게 되며 ARM 리눅스의 특징 및 이해시키고  임베디드 리눅스 개발 환경, 부트로더의 이해와 포팅 방법, 리눅스 커널의 구조와 포팅 방법, 리눅스 파일시스템의 구조와 루트 파일시스템 제작 방법, 임베디드 리눅스에서 디바이스 드라이버를 작성하는 방법등을 배우는 과정입니다. 뿐만 아니라 임베디드 리눅스에서 네트워크 프로그래밍을 위해 TCP/IP 스택의 이해하고 네트워크 디바이스 드라이버부터 고급 소켓 프로그래밍까지 배우게 됩니다.
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
						
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C언어를 사용한 디바이스 제어를 구현하기 위한 기술</li>
								<li>C 와 어셈블리어의 인터페이스와 상호 호출에 대한 이해 </li>
								<li>ARM 프로세서의 구조와 특징을 이해하고 어셈블리 코드의 분과 작성 </li>
								<li>Exception 이해와 예외를 효율적으로 처리하는 핸들러 작성 </li>
								<li>폴링, 인터럽트 및 GPIO, UART, Timer로 주변장치를 제어하는 기술</li>
								<li>임베디드 리눅스를 실제 타깃 보드에 구축</li>
								<li>임베디드 시스템에 맞는 사이즈, 부팅속도 등에 대해서 최적화 기술</li>
								<li>임베디드 리눅스 기반의 시스템 플랫폼을 구축을 위한 리눅스의 프로그래밍</li>
								<li>ARM 프로세서 기반 디바이스 이해</li>
								<li>멀티미디어 기반 디바이스 이해 및 응용 프로그램 개발 지식 습득</li>
								<li>TCP/IP 구조 및 원리부터 리눅스 네트워크 디바이스까지 학습</li>
								<li>소켓 프로그래밍 기술</li>
							</ul>
						</div>
						<div class="con_wrap1709 dnone">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>ARM 프로세서 개발 입문자</li>
								<li>임베디드 시스템 개발 입문자</li>
								<li>임베디드 리눅스와 디바이스 드라이버 개발에 관심이 많은 입문자  </li>
								<li>컴퓨터 관련 학과 2년 이상의 기본 소양을 가지고 임베디드 시스템 분야의 전문가로 성장하고 싶은 사람</li>
								<li>군 복무/휴학 후 컴퓨터 전공 과목 실력을 키우고 싶은 재학생</li>
								<li>수준 높은 취업 포트폴리오 결과물을 원하는 재학생</li>
								<li>임베디드 관련 업계에 취업을 희망하는 비전공자</li>
							</ul>
						</div>
						<div class="con_wrap1709">
							<h5>참여기업</h5>
							<div class="companies">
								<!-- Line #1 -->
								<div style="margin-top:24px;">
									<div style="float:left; margin-top:0px;"> <!-- -15px; ">-->
										<div class="slot first" style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_ITtelecom">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Company_Logo/img_LOGO_ITtelecom.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>㈜아이티텔레콤</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">Embedded S/W, F/W <br/>개발</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>

										<div class="slot " style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_BAinfra">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Company_Logo/img_LOGO_BAinfra.png" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>㈜비에이인프라</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">백업소프트웨어 연구개발</span><br/><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>

										<div class="slot" style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_Ivis">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_05.jpg" style="height:60px; margin-top:6px; margin-left:41px; margin-bottom:-10px;">
												<p class="companyName"><span>㈜아이비스</span></p>
												<p class="companyDetail" style="height:60px;">
													<span class="blueTxt">차량용 SW 개발<br/>및 컨설팅</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
									</div>
									<!-- //Line #1 -->
									<div style="clear:both;"></div>
								</div>
								
								<!-- Line #2 -->
								<div style="margin-top:24px;">
									<div style="float:left; margin-top:-15px; ">
										<div class="slot first" style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_AurosTech">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_AurosTech.png" style="height:40px; margin-bottom:0px; margin-top:15px; margin-left:35px;">
												<p class="companyName"><span>㈜오로스테크놀로지</span></p>
												<p class="companyDetail" style="height:82px;">
													<span class="blueTxt">반도체 Overlay 장비 SW<br/>개발 업무</span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
										<div class="slot" style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_TaehaMechatronics">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_TaehaMechatronics.png" style="margin-top:22px; margin-left:33px; margin-bottom:11px;">
												<p class="companyName"><span>㈜태하메카트로닉스</span></p>
												<p class="companyDetail" style="height:80px;">
													<span class="blueTxt">Embedded System 개발<br/></span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
										<div class="slot " style="height:190px; background-color:#fff;" href="/course/employ/Course_Employ_PSK">
											<div class="divCompanyEmploy">
												<img class="companyLogo" src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_PSK.png" style="width:40%; margin-top:5px; margin-left:70px; margin-bottom:-8px;">
												<p class="companyName"><span>㈜피에스케이</span></p>
												<p class="companyDetail" style="height:80px;">
													<span class="blueTxt">윈도우 닷넷 개발<br/></span><br/><br/>
													<span style="font-weight:900; color:#ff0000;">모집중</span>
												</p>
											</div>
											<img class="slotIcon" src="${pageContext.request.contextPath}/assets/Images/Icons/MainPage_SlotIcon__recommend.png"/>
											<p class="courseName dnone">-</p>
											<p class="courseDescription dnone">-</p>
											<div class="insideSlot" style="margin-top:-190px; height:190px; background:url('${pageContext.request.contextPath}/assets/Images/MainPage_SlotSelected190px.png'); opacity:0;  -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=0)'"></div>
										</div>
									</div>
									<!-- //Line #2-->
								</div>
								<div style="clear:both;"></div>
							</div>

							<!-- 참여기업 Summary -->
							<div style="margin-top:10px;">
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_ITtelecom.asp"-->
									<c:import url="/course/employ/Summary1_ITtelecom"/>
									<!-- #include virtual="/Course/Employ/Summary2_ITtelecom.asp"-->
									<c:import url="/course/employ/Summary2_ITtelecom"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_BAinfra.asp"-->
									<c:import url="/course/employ/Summary1_BAinfra"/>
									<!-- #include virtual="/Course/Employ/Summary2_BAinfra.asp"-->
									<c:import url="/course/employ/Summary2_BAinfra"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_IVIS.asp"-->
									<c:import url="/course/employ/Summary1_IVIS"/>
									<!-- #include virtual="/Course/Employ/Summary2_IVIS.asp"-->
									<c:import url="/course/employ/Summary2_IVIS"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_AurosTech.asp"-->
									<c:import url="/course/employ/Summary1_AurosTech"/>
									<!-- #include virtual="/Course/Employ/Summary2_AurosTech.asp"-->
									<c:import url="/course/employ/Summary2_AurosTech"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_TaehaMechatronics.asp"-->
									<c:import url="/course/employ/Summary1_TaehaMechatronics"/>
									<!-- #include virtual="/Course/Employ/Summary2_TaehaMechatronics.asp"-->
									<c:import url="/course/employ/Summary2_TaehaMechatronics"/>
								</div>
								<div class="companySummary" style="DISPLAY:NONE;">
									<!-- #include virtual="/Course/Employ/Summary1_PSK.asp"-->
									<c:import url="/course/employ/Summary1_PSK"/>
									<!-- #include virtual="/Course/Employ/Summary2_PSK.asp"-->
									<c:import url="/course/employ/Summary2_PSK"/>
								</div>
							</div>
							<!-- //참여기업 Summary -->
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
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<tbody>
										<tr>
											<th>과목</th>
											<th>교육내용</th>
										</tr>
										<tr>
											<td class="darker c" scope="col">C Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>표준 C언어의 사용 및 활용 방법 이해</li>
													<li>컴파일, 전처리 및 파일 입출력 등의 기초 지식 습득</li>
													<li>배열과 포인터</li>
													<li>데이터 표현 및 모듈화 프로그래밍</li>
													<li>자료구조와 알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">Embedded C <br/>Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템에서의 프로그래밍 이해</li>
													<li>C 기반의 임베디드 시스템 프로그래밍 이해 및 활용</li>
													<li>임베디드 보드를 활용한 펌웨어 프로그래밍</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 시스템 개론</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템 소개</li>
													<li>임베디드 시스템 개발 환경</li>
													<li>임베디드 시스템 아키텍쳐 (마이크로프로세서의 동작원리)</li>
													<li>임베디드 프로그래밍</li>
													<li>인터럽트, 주변 장치 이해</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM 구조 및 <br/>어셈블리 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템 구조 이해</li>
													<li>ARM 프로세서 이해</li>
													<li>ARM 소프트웨어 개발</li>
													<li>ARM 프로세서 제어</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM 디바이스 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>시스템 초기화 과정 이해</li>
													<li>메모리 시스템 이해</li>
													<li>디바이스에 대한 기초 개념 습득</li>
													<li>버스 인터페이스에대한 기초 개념 습득</li>
													<li>디바이스 제어 기법 습득</li>
													<li>멀티미디어 디바이스 제어</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">RTOS 구조 및 활용</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>실시간 시스템 소개</li>
													<li>태스크 운용</li>
													<li>태스크 통신(IPC)</li>
													<li>ARM 프로세스</li>
													<li>MicroC/OS-II 포팅</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">리눅스 시스템 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>리눅스 입문 (명령어, 개발환경, 시스템 운용관리)</li>
													<li>임베디드 리눅스 시스템 개발 환경 이해</li>
													<li>임베디드 리눅스 시스템 보드 개발 환경</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 커널 포팅</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 리눅스 개요</li>
													<li>교차 개발 환경이해 및 구축</li>
													<li>부트로더</li>
													<li>커널 분석</li>
													<li>루트 파일 시스템</li>
													<li>시스템 패키징</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 <br/>디바이스 드라이버</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>디바이스 드라이버 소개</li>
													<li>커널 모둘 빌드</li>
													<li>커널 서비스</li>
													<li>리눅스 디바이스 드라이버 개발 모델</li>
													<li>캐릭터 디바이스 드라이버 개발</li>
													<li>블록 디바이스 드라이버 개발</li>
												</ul>
											</td>
										</tr>									
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 <br/>네트워크 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>네트워크 통신의 개용</li>
													<li>네트워크 프로토콜 스택</li>
													<li>기타 데이터 통신</li>
													<li>BSD소켓 프로그래밍</li>
												</ul>
											</td>
										</tr>
									</tbody>
										<tr>
											<td class="darker c" scope="col" colspan="3" class="tit">비트 프로젝트 (2개월)</td>
										</tr>
										<tr>
											<td class="l" colspan="3">
												<ul class="ul_dot_gray">
													<li>5인 내외의 인원으로 팀을 구성하여 최신의 프로젝트 주제를 선정하여 2 개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행.</li>
													<li>프로젝트 주제는 현재 임베디드 시스템 분야에서 필요로 하는 주제로 이수 후에 관련 분야의 취업과 연계할 수 있도록 함.</li>
													<li>주제 선정 후에는 관련된 자료 수집, 필요기술 학습, 명세 확정, 일정 수립, 개발 환경 구축 등, 개발, 통합 테스트 등을 거쳐 개발을 완료하고 외부 업체 관계자들의 참관 하에 최종 전시회를 갖도록 함.</li>
													<li>프로젝트 수행의 각 과정에서 제안서, 중간보고서, 최종보고서 및 상세설계서 테스트 시나리오 등 필요한 산출물들을 제출하도록 함으로써 프로젝트 수행 싸이클에 익숙해지도록 함.</li>
													<li>프로젝트 수행 과정에서 S/W Engineering 기법을 실제로 적용함으로써 효과적인 시간관리, 일정관리, 소프트웨어 품질관리 등에 대한 프로젝트 관리 기법을 익히도록 함. </li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="con_wrap1709">
							<h5>프로젝트유형</h5>
							<ul class="ul_dot_gray">
								<li>새로운 HCI 개발 : 무선 한글 입력 도구, 영상 인식 입력 시스템, 무선 Dual mouse, 눈동자 추적 display 시스템, 음성 인식 시스템 등</li>
								<li>임베디드 가상화 : 가상 보드(Virtual board) 개발, MMPS2 보드에 Dual OSes 시스템, 카멜레온 부트 로더, 스토리지 기반 컴퓨터, IP on Zigbee, 감성 GUI 등</li>
								<li>새로운 보드 개발 : 지능형 무선 차량, LCD 기반 경량 임베디드 시스템, Dual mode(master/slave) USB, OBD 기반 차량용 네비게이터, Display 공유기, Bluetooth 기반 무선 분산 시스템</li>
								<li>회사 연계 프로젝트: Settop box, IPTV, LED 기반 무선 display 시스템, 임베디드 GUI 시스템</li>
							</ul>
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
				<!-- // Content -->
			</div>
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