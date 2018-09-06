<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- <%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%> --%>

<%!
String CourseID = "OptimizationAlgorithms";
String SubjectName = "최적화 알고리즘을 통한 SW개발 역량 강화";
%>

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
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
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
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(5).addClass("on");  	// 최적화 알고리즘을 통한 SW개발 역량 강화 ON
			
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
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교육기간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__OptimizationAlgorithms.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__OptimizationAlgorithms.jsp"/>
												<!--<li><del>2015.05.13 ~ 2015.05.22 (8일 / 24시간)</del></li>-->
												<!--<li>2015.08.10 ~ 2015.08.20 (8일 / 24시간)</li>-->
												<!--<li>2015.11.16 ~ 2015.11.26 (8일 / 24시간)</li>-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 목)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__OptimizationAlgorithms.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__OptimizationAlgorithms.jsp"/>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비용</th>
											<td>350,000원</td>
											<th scope="row" class="tit">교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육정원</th>
											<td>20명</td>
											<th scope="row" class="tit">문의</th>
											<td>02-3486-3456 (<a href="mailto:jhj426@bit.kr" class="email">jhj426@bit.kr</a>)</td>
										</tr>
										
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 165,691원 | 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="https://pf.kakao.com/_SmhqV" title="카카오톡 상담신청" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Kakao.png"/>
								</a>
								<a href="/register/request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<img src="${pageContext.request.contextPath}/assets/Images/DetailPage_Course_OptimizationAlgorithms.png" class="mar_l10"/>

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap dnone">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->	
							<c:import url="/WEB-INF/views/common/tab/refundInfo_1234.jsp"/>						
						</div>
						<!-- //고용보험환급안내 -->

						<div class="dnone">						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>SW구현에 필요한 최적화 알고리즘 구현을 통하여 효율적인 프로그램을 작성하는데 필요한 역량을 키우며, SW개발에 대한 문제해결 능력을 향상</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>디자인패턴을 자바로 학습하려는 분</li>
								<li>디자인패턴의 쓰임새가 궁금하신 분</li>
								<li>자바기본은 알고있으나, 패턴과 같은 고급지식이 필요하신 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">교육일정</th>
											<th scope="col" class="c">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c">1일차</td>
											<td>
												<b>트리개요</b>
												<ul class="ul_dot_gray">
													<li>PRIM알고리즘</li>
													<li>Kruskal 알고리즘</li>
													<li>Dijkstra 알고리즘</li>
													<li>최소신장트리 실습1,2</li>
													<li>최단거리 실습 1,2</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">2일차</td>
											<td>
												<b>동적계획법 개요</b>
												<ul class="ul_dot_gray">
													<li>팩토리얼, 피보나치, 타일붙이기</li>
													<li>최장증가수열, 중복순열의 합</li>
													<li>최장거리</li>
													<li>타일붙이기, 최장증가수열, 중복순열의 합 실습</li>
													<li>최장거리 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">3일차</td>
											<td>
												<b>경로의 최대합</b>
												<ul class="ul_dot_gray">
													<li>이항계수</li>
													<li>중복조합의 합</li>
													<li>최장공통 부분 수열</li>
													<li>경로문제, 이항계수, 중복조합의 합 실습</li>
													<li>최장 공통 부분 수열</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c">4일차</td>
											<td>
												<b>부분집합의 합</b>
												<ul class="ul_dot_gray">
													<li>이진수의 개수</li>
													<li>색칠하기, 이동하기2</li>
													<li>최소동전, 배낭짐싸기</li>
													<li>배열의 부분합</li>
													<li>이진수의 개수, 색칠하기, 이동하기2, 배열의 부분합 실습</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>

							</div>
						</div>
</div>						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=OD_core" class="btn mid green1">지원하기</a>
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