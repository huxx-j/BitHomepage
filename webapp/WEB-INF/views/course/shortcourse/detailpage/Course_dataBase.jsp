<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "DB_core";
String SubjectName = "데이터베이스 성능튜닝";
%>

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

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(2).addClass("on");  	// 데이터베이스 성능튜닝 ON
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Database
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
											<th scope="row" class="tit">강의일정</th>
											<td>
												문의
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--<li>2015.11.16 ~ 2015.11.26 (월 ~ 목 / 8일 / 총 24시간)</li>-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 목)</td>-->
											<td>문의</td>
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
								<a href="/register/request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
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
							<p>개개의 튜닝 기법에 대한 학습보다는 DBMS구조에 대한 개념 학습을 통해 DBMS의 잠재적인 성능 병목 구조에 대한 기본 이해를 하고 이를 기반으로 SQL 성능 병목의 원인을 학습자 개인이 유추 할수 있도록 하는 과정</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<p>ORACLE ARCHITECTURE이해를 기반으로 한 SQL TUNING 학습을 통해 향상된 성능의 데이터베이스 프로그래밍이 가능하도록 하는 과정</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>데이타베이스 관리자</li>
								<li>기술 지원 전문가</li>
								<li>시스템 관리자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>커리큘럼</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>튜닝관점의 ORACLE 구조(ARCHITECTURE) 이해</td>
										</tr>
										<tr>
											<td>데이터저장구조(LOGICAL/PHYSICAL) 이해</td>
										</tr>
										<tr>
											<td>SQL 처리과정 이해 (SELECT,DML)</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Optimizer 이해</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>옵티마이저의 한계</li>
															<li>통계정보</li>
															<li>카디널리티/히스토그램</li>
															<li>비용</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>Tuning 개요 및 Tool</td>
										</tr>
										<tr>
											<td>Tuning 분류 및 절차</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>성능 모니터링</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>AWR 실습</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>SQL 튜닝</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>SQL Trace&amp;TKPROF 실습</li>
															<li>AUTOTRACE 실습</li>
															<li>실행계획 추출/해석/이해</li>
															<li>Access Path 이해</li>
															<li>통계정보와 Optimizer</li>
															<li>Optimizer의 한계</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Index</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>Index 구조/종류</li>
															<li>Index Scan 와 성능 상관관계</li>
															<li>Index 실습</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>
												<dl>
													<dt>Join</dt>
													<dd>
														<ul class="ul_dot_gray">
															<li>종류 및 처리방식</li>
															<li>순서</li>
															<li>Join 실습</li>
														</ul>
													</dd>
												</dl>
											</td>
										</tr>
										<tr>
											<td>병렬처리</td>
										</tr>
										<tr>
											<td>Array Processing 실습</td>
										</tr>
										<tr>
											<td>OBJECT 튜닝(Mview/Partition Table) 실습</td>
										</tr>
										<tr>
											<td>절차적/비절차적 처리 실습</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=DB_core" class="btn mid green1">지원하기</a>
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