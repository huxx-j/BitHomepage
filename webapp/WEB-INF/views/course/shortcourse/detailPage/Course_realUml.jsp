<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "UML1_core";
String SubjectName = "UML 실전에서는 이것만 쓴다.";
%>

<!DOCTYPE html>
<html lang="ko">
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
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// SW Engineering
			$(".snb_1709 .newdepth2_wrap").eq(7).addClass("on");						// SW Engineering - OPEN
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(1).addClass("on");  	// UML 실전에서는 이것만 쓴다 ON
			
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
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>SW Engineering
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">UML 실전에서는 이것만 쓴다.</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												(문의)
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><del>2015.02.09 ~ 2015.02.25 (8일 / 총 24시간)</del></li>
													<li><del>2015.05.11 ~ 2015.05.20 (8일 / 총 24시간)</del></li>
													-->
													<!--
													<li>2015.08.04 ~ 2015.08.13 (8일 / 총 24시간)</li>
													<li>2015.11.09 ~ 2015.11.19 (8일 / 총 24시간)</li>
													<li>2015.11.09 ~ 2015.11.18 (8일 / 총 24시간)</li>
													-->
													
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 금)</td>-->
											<td>(문의)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_form?cID=short" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->
							<c:import url="/WEB-INF/views/common/tab/refundInfo_1234.jsp"/>								
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>건물을 만들기 위하여 설계사무소에서 설계를 하고, 그 설계도를 보고 건설회사에서 건물을 만든다. SW는 그렇다면 어떻게 만들까? 건물을 만드는 것과 유사하게 요구사항정의/분석/설계/구현이라는 과정을 거친다. 해당 과정은 이해당사자마다 작성하고 봐야할 산출물들이 달라진다. 이러한 산출물들은 표준적인 방법으로 표현되고, 사용되어져야만 한다. UML은 이러한 표현방법의 표준이라고 생각하면 된다. 그러나, 이러한 UML을 사용한다는 것은 결코 쉬운 일이 아니다. 해당 과정은 UML중에서도 요구사항정의/분석/설계시에 자주사용되는 다이어그램을 중심으로 어떻게 UML을 사용하는 것인지 설명한다. 실제 프로젝트를 예로 들어 실습을 통하여 학습함으로써 UML에 대한 내용을 이해하고, 사용할 수 있도록 한다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>UML을 이용한 분석/설계를 하려는 분석/설계자</li>
								<li>UML로 작성된 산출물을 기반으로 개발하려는 개발자</li>
								<li>UML의 기본과 산출물을 이해하려는 관리자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/course/shortcourse/detailPage/Course_Java" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<tbody>
										<tr>
											<td>방법론이란?</td>
										</tr>
										<tr>
											<td>SW개발 프로세스</td>
										</tr>
										<tr>
											<td>CBD방법론과 OO방법론에 따라서 작성해야 할 산출물</td>
										</tr>
										<tr>
											<td>애자일 방법론에서는 UML을 사용하지 않는가?</td>
										</tr>
										<tr>
											<td>실제 예제를 통하여 각 프로세스 단계별 필요한 UML산출물과 산출물 작성방법 학습</td>
										</tr>
										<tr>
											<td>각자 작성한 산출물을 함께 보면서 리뷰</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
								-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=UML1_core" class="btn mid green1">지원하기</a>
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