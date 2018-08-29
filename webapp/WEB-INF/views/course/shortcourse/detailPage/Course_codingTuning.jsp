<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "JCT_core";
String SubjectName = "Java JDBC 기반의 SQL 성능튜닝";
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
			/* <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 /* <!--#include virtual="/Include/HeaderScriptReady1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// SW Engineering
			$(".snb_1709 .newdepth2_wrap").eq(7).addClass("on");						// SW Engineering - OPEN
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(4).addClass("on");  	// 자바 성능향상을 위한 코딩습관과 튜닝 ON
			
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
									<caption>자바 성능향상을 위한 코딩습관과 튜닝</caption>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JCT_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__JCT_core.jsp"/>
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><s>2015.06.09 ~ 2015.06.24 (12일 / 36시간)</s></li>
													<li>2015.09.09 ~ 2015.09.24 (12일 / 36시간)</li>
													<li>2015.12.07 ~ 2015.12.22 (12일 / 36시간)</li>
													<li>2015.11.09 ~ 2015.11.26 (12일 / 36시간)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 목)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JCT_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__JCT_core.jsp"/>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비용</th>
											<td>500,000원<!--<span class="greenTxt"> 마일리지 5%적립 (40,000원)</span>--></td>
											<th scope="row" class="tit">문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 247,118원* 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

							<img src="${pageContext.request.contextPath}/assets/Images/DetailPage_Course_codingTuning.png" style="width:720px;"/>

						<div class="dnone">						
						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>JDBC 기반 데이터베이스  어플리케이션 개발시 성능을 고려한 코딩 방법과  대용량 데이터 기반 배치 처리시  고려할 사항을  이론과 실습을 통해 학습하며  DBMS 아키텍처 이해를  기반으로   SQL 실행 원리 와 성능 튜닝 원리를  학습하는 과정으로, IT  개발자 , 관리자(DBA) 또는 기술 지원 인력이 실제 업무시  발생하는 상황을  이해하고  실습을 통해 체득 한다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/course/shortcourse/detailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>오라클과 데이터베이스 연동 프로그래밍<a href="/course/shortcourse/detailPage/Course_sqlJdbc.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>Servlet &amp; JSP<a href="/course/shortcourse/detailPage/Course_servletJsp.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>커리큘럼</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">일차</th>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">1</td>
											<td>
												<ul class="ul_dot_gray">
													<li>JDBC 구조</li>
													<li>대용량 데이터 생성</li>
													<li>
														자바 기반 배치 프로그램 방식 성능 비교/분석 
														<br/>Statement/Prepared/Callable/addBatch
													</li>
													<li>절차적/비절차적 프로그래밍 , Array Processing </li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Oracle DBMS 아키텍처 (튜닝관점) <br/>Instance/database , 논리적/물리적 저장구조</li>
													<li>SQL 처리 과정<br/>Parsing/Execute/Fetch , Physical/Logical read, Cache Hit, DML/SELECT</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Connection/Session </li>
													<li>Optimizer <br/>CBOStatistics/Execution/Histogram </li>
													<li>Index 아키텍처</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">4</td>
											<td>
												<ul class="ul_dot_gray">
													<li>SQL 튜닝 원리</li>
													<li>SQL 성능 비교/분석</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">5</td>
											<td>
												<ul class="ul_dot_gray">
													<li>모니터링 및 분석<br/>GC / Heavy SQL / DBMS Instance</li>
												</ul>
											</td>
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
</div>						
						
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JCT_core" class="btn mid green1">지원하기</a>
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