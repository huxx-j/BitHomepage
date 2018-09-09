<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "Spring_SQL_core";
String SubjectName = "Spring Data + noSQL";
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
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(3).addClass("on");  	// Spring Data + noSQL ON
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
													<!--
													<li><del>2015.04.20 ~ 2015.04.24 (5일 / 총 40시간)</del></li>
													<li><del>2015.07.20 ~ 2015.07.24 (5일 / 총 40시간)</del></li>
													<li>2015.10.19 ~ 2015.10.23 (5일 / 총 40시간)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>09:00 ~ 18:00 (1일 8시간 / 월 ~ 금)</td>-->
											<td>문의</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>800,000원<!--<span class="greenTxt"> 마일리지 5%적립 (40,000원)</span>--></td>
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
							<p>본 과정은 NoSQL중에서 가장 인기리에 사용하고 있는 MongoDB와 MongoDB라이브러리에 대하여 다룬다. 또한, MongoDB를 Spring개발환경에서 다루기 위한 Spring DATA에 대하여 다룬다 MongoDB 서버를 다루기 위한 방법과 MongoDB Document의 구조를 올바르게 정의하는 방법까지 함께 다룸으로써 MongoDB와 활용방법에 대한 A-Z까지 다루게 된다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<!--<li>객체지향 자바프로그래밍</li>-->
								<li>JAVA Programming<a href="/course/shortcourse/detailPage/Course_Java" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>NO SQL 소개</td>
										</tr>
										<tr>
											<td>MongoDB 소개</td>
										</tr>
										<tr>
											<td>MongoDB 설치</td>
										</tr>
										<tr>
											<td>MongoDB 기초 - Shell 사용, 데이터베이스, 컬렉션 생성</td>
										</tr>
										<tr>
											<td>문서의 생성, 갱신, 삭제</td>
										</tr>
										<tr>
											<td>쿼리 - 쿼리 기본</td>
										</tr>
										<tr>
											<td>쿼리 - 정규식을 이용한 쿼리, 형특정 쿼리, 배열 쿼리, $where</td>
										</tr>
										<tr>
											<td>쿼리 - cursor, limit(), skip(), sort(), 공간정보 쿼리</td>
										</tr>
										<tr>
											<td>쿼리 - 다양한 제한자</td>
										</tr>
										<tr>
											<td>인덱스 - 설정과 조회</td>
										</tr>
										<tr>
											<td>Aggregation - count, distinct</td>
										</tr>
										<tr>
											<td>Aggregation - MapReduce</td>
										</tr>
										<tr>
											<td>Aggregation - Aggregation Framework</td>
										</tr>
										<tr>
											<td>고급 기능 - 데이터베이스 명령어, 제한 컬렉션</td>
										</tr>
										<tr>
											<td>고급 기능 - GridFS, DBRef</td>
										</tr>
										<tr>
											<td>관리 - 모니터링</td>
										</tr>
										<tr>
											<td>관리 - 보안과 인증</td>
										</tr>
										<tr>
											<td>관리 - 백업 및 복구</td>
										</tr>
										<tr>
											<td>복제 - Master/Slave</td>
										</tr>
										<tr>
											<td>복제 - Replica Set</td>
										</tr>
										<tr>
											<td>복제 - Slave에서의 작업 수행</td>
										</tr>
										<tr>
											<td>복제 - 작동방식과 관리</td>
										</tr>
										<tr>
											<td>샤딩 - 개요</td>
										</tr>
										<tr>
											<td>샤딩 - 샤딩 설정하기</td>
										</tr>
										<tr>
											<td>샤딩 - 관리</td>
										</tr>
										<tr>
											<td>Java Driver 사용하기 - 기본 드라이버 사용</td>
										</tr>
										<tr>
											<td>Java Driver 사용하기 - Object Mapping(Jongo)</td>
										</tr>
										<tr>
											<td>데이터 모델링</td>
										</tr>
										<tr>
											<td>Spring DATA 개요</td>
										</tr>
										<tr>
											<td>Spring과 Spring DATA 연동</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
								-->
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Spring_SQL_core" class="btn mid green1">지원하기</a>
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