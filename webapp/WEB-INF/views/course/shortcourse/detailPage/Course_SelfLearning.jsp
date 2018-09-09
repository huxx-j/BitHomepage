<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- <%
	dim CourseDateTime
	CourseDateTime = ""
	dim CourseID
	CourseID = "SelfLearnPrg"
%> --%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<c:import url="/WEB-INF/views/Include/Meta.jsp"/>
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
	<!-- #include virtual="/Include/Script.asp"-->
	<c:import url="/WEB-INF/views/Include/Script.jsp"/>
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
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
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");							// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.no7").addClass("on"); 								// SW 자율학습 지도 커뮤니티 ON
			//$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// 자료구조/알고리즘 ON
			//$(".snb_1709 .newdepth4_wrap.no4 li:eq(0) a").addClass("on");				// 주말/초급 자료구조 ON
			
		});
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
		<div id="Container_Wrap" style="min-height:990px;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
						</p>
						<h4>SW 자율학습 지도 커뮤니티</h4>
					</div>

					<section class="section">
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<p>
								비트교육센터 전임 강사의 질의 응답을 통해 궁금한 점을 바로 해결하며,
								부족한 과목에 대한 교육과정 로드맵 및 취업 상담을 진행합니다.
							</p>
							<ul class="ul_dot_gray">
								<li>1:1 소프트웨어 멘토링 운영</li>
								<li>개인 독서실처럼 공부할 수 있는 교육시설 조성</li>
								<li>지도강사가 상시로 상주하여, 질의 응답을 통해 궁금한 점을 바로 해결</li>
								<li>개인 또는 그룹으로 프로젝트 산출물에 대한 프로젝트 지도</li>
								<li>창업을 희망하는 경우, 기술지원, 솔루션의 산출물 제작, 교육지원</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;">
							<h5>교육과정</h5>
							<h5 class="small" style="margin-top:0px;">- 이론 멘토링 교육</h5>
							<p>
								<!--- 이론 멘토링 교육<br/>-->
								   * C Programming<br/>
								   * Java Programming<br/>
								   * C++ Programming<br/>
								   * Python Programming <br/>
									 - 비용 : 300,000원 /1개월(주말제외)<br/>
									 - 노트북 : 개인 지참 <br/>
								   * 개강일 : 1/2 (선착순 마감)
							</p>
							<h5 class="small mar_t20">- 프로젝트 멘토링 교육</h5>
							<p class="">
								<!--- 프로젝트 멘토링 교육<br/>-->
								   * 닷넷 계열<br/>
								   * 자바 계열<br/>
								   * 안드로이드 계열<br/>
								   * 임베디드 계열     <br/>
									 - 비용 : 1,000,000원 / 1개월<br/>
										 ※ 프로젝트 수준에 따라 기간이 변동 됨<br/>
									 - 노트북 : 개인 지참<br/>
								   * 개강일 : 1/2 (선착순 마감)
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>중,고등학생</li>
								<li>대학생</li>
								<li>미취업자 외 etc</li>
							</div>
						<!-- con_wrap1709 -->
						
						<div class="con_wrap1709" style="text-align:center; margin-top:50px;">
							<!-- 수강신청btn -->
							<a href="/register/request/register_form?cID=short" title="수강신청" style="margin:22px 0;" class="btnApply c">
								<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
							</a>
							<div style="clear:both; "></div>
						</div>
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=SelfLearnPrg" class="btn mid green1">지원하기</a>
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