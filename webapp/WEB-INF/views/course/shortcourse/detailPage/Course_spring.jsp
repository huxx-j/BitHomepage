<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "Spring_core";
String SubjectName = "Spring Framework 과정";
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
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// Java
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");						// Java SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(1).addClass("on");  	// Sprint Framework 과정 ON
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Java
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__Spring_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__Spring_core.jsp"/>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__Spring_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__Spring_core.jsp"/>
												<!--
												09:00 ~ 18:00 (1일 8시간 / 월 ~ 금)
												-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>700,000원 </td>
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
							<p>프레임워크중 가장 인지도가 높고, 자주 사용되는 프레임워크를 물어본다면 당연 Spring이다. 스프링은 정부종합 표준 프레임워크의 핵심 프레임워크이기도 하다. 이러한 스프링은 강력한 성능만큼 복잡한 구조를 가지고 있다. 시중에 판매되는 스프링 책중에서는 2000페이지가 넘는 경우도 있다. 2000페이지가 넘는 페이지에도 불구하고, 실전에서 사용되는 모든 내용이 기술되어 있는 것이 아니다. 본 과정에서는 스프링을 이미 사용하고 있거나, 사용하고자 하는 분들을 대상으로 하여 스프링의 동작원리와 스프링을 사용하기 위한 고급내용까지 다룬다. 단순히 스프링의 기능만을 설명하는 것이 아니라, 스프링의 핵심 기능들을 예제와 함께 학습하고 실습함으로써 실전에서 스프링을 바로 적용할 수 있도록 안내한다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/course/shortcourse/detailPage/Course_java" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>SQL &amp; JDBC<a href="/course/shortcourse/detailPage/Course_sqlJdbc" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>Servlet &amp; JSP<a href="/course/shortcourse/detailPage/Course_servletJsp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<div class="con_wrap1709 dnone">
							<h5>개강일</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
									</colgroup>
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
										<td></td>
										<td></td>
										<td>3/12</td>
										<td></td>
										<td></td>
										<td></td>
										<td>7/2</td>
										<td></td>
										<td></td>
										<td></td>
										<td>11/5</td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:50%">
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
											<td scope="row" rowspan="2">기본</td>
											<td>스프링의 개요와 DI</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Framework 개요 및 특징</li>
													<li>Spring Framework 개요</li>
													<li>Spring Framework 와 디자인 패턴</li>
													<li>DI (Dependency Injection)</li>
													<li>빈의 라이프 사이클</li>
													<li>어노테이션 기반 설정</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>AOP</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>AOP(Aspect Oriented Programming) 개요</li>
													<li>Spring AOP 패턴 매핑</li>
													<li>스키마 기반의 AOP 설정</li>
													<li>어노테이션 기반의 AOP 설정</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>심화</td>
											<td>스프링 기반의 웹개발과 데이터베이스</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>웹 개발 모델</li>
													<li>스프링 MVC 개요</li>
													<li>스프링 MVC 적용</li>
													<li>어노테이션 기반 설정</li>
													<li>스프링 AJAX의 개요</li>
													<li>스프링 AJAX 구현</li>
													<li>MyBatis 프레임워크 개요</li>
													<li>SqlSession API</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>활용</td>
											<td>트렌젝션 관리와 보안</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>스프링과 MyBatis 연동</li>
													<li>스프링 트렌젝션 개요</li>
													<li>스프링 트렌젝션 관리</li>
													<li>스프링 보안의 개요</li>
													<li>스프링 보안 설정</li>
													<li>스프링 보안 구현</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr) </p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Spring_core" class="btn mid green1">지원하기</a>
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