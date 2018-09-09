<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
String CourseID = "SER_JSP_core";
String SubjectName = "Servlet & JSP 프로그래밍";
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
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
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
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(0).addClass("on");  	// Servlet & JSP 프로그래밍 ON
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__SER_JSP_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__SER_JSP_core.jsp"/>
												<!--
												<ul class="ul_dot_gray">
													<li>문의</li>
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__SER_JSP_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__SER_JSP_core.jsp"/>
												<!--19:00 ~ 22:00 (1일 3시간)-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>390,000원 <!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->
							<c:import url="/WEB-INF/views/common/tab/refundInfo_123.jsp"/>							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 소개</h5>
							<!--<p>Servlet과 JSP 기술의 구현 방법과 활용 방법을 학습하는 과정입니다. Servlet과 JSP 기술에 대한 탄탄한 이론 지식을 습득하고, Servlet과 JSP의 개발, 테스트 환경 구축방법을 파악합니다. JSP 태그와 내장 객체 그리고 JavaBeans 활용 방법을 습득하고,Servlet과 JSP를 활용한 Web 서버 응용 프로그램 개발의 장점과 개발 구조를 파악하며, 이론 교육과 실습 교육을 병행하여 진행함 여러가지 다양한 환경설정 방법도 익힙니다.</p>-->
							<p>TCP/IP 기반의 Internet를 이해하고 응용 계층의 HTTP 프로토콜 및 웹 서비스의 전반적인 이해를 바탕으로 자바 웹프로그래밍의 핵심인 Servlet 프로그래밍을 배우는 과정입니다. 특히, MVC 패턴에 대한 이해를 바탕으로 이를 적용한  웹 애플리케이션의 작성 방법을 배우게 됩니다.  JSP작성을 위한 JSTL/EL 배우고 데이터베이스 프로그래밍을 위한 JDBC를 배우게 됩니다. Servlet을 기반으로 한 J2EE를 이해하게 되며 Servlet를 관리하는 WAS(tomcat)의 작동원리와 설정 방법등도 함께 학습합니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>Network에 대한 전반적인 지식을 습득하고 특히, TCP/IP 기반의 Internet 그리고 HTTP에 대한 이해</li>
								<li>Servlet에 대한 이해</li>
								<li>Model1 그리고 Model2(MVC) 웹 애플리케이션 작성 및 차이점 이해</li>
								<li>JDBC 프로그래밍과 웹 애플리케이션에 적용 방법 습득</li>
								<li>WAS(Tomcat)에 대한 이해 및 설정 방법 습득</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>Java 기초를 이미 학습하고 그 지식을 웹 개발을 통해 응용하고 싶은 개발자</li>
								<li>Java 웹 프로그래밍과 J2EE(Enterprise Application 개발)에 관심이 있는 개발자</li>
								<li>JDBC 프로그래밍을 배우고 싶은 개발자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수 과목</h5>
							<p>Java 입문(Java 객체지향프로그래밍) 과정 <a href='/course/shortcourse/detailPage/Course_Java' class='mar_l10 btnBlueBorder small' target="_blank">자세히 보기</a></p>
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
										<td>2/19</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>8/16</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">웹 프로그래밍에 대한 개요</td>
											<td>
												<ul><li>인터넷(네트워크)에 대한 이해</li>
												<li>HTTP 프로토콜</li>
												<li>웹 프로그래밍과 웹 애플리케이션에 대한 이해</li>
												<li>J2EE 개발환경 설정</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Servlet & JSP 기초</td>
											<td>
												<ul><li>Servlet 에 대한 이해</li>
												<li>Servlet 작성 방법</li>
												<li>Request 와 Response</li>
												<li>web.xml 자세히 알아보기</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">JDBC 프로그래밍</td>
											<td>
												<ul><li>JDBC의 이해</li>
												<li>JDBC 드라이버란?</li>
												<li>JDBC 사용해 보기</li>
												<li>Connection, Statement, ResultSet</li>
												<li>DAO 패턴의 이해와 작성</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">JSP 프로그래밍</td>
											<td>
												<ul><li>JSP 작성방법</li>
												<li>JSP 에서 객체 사용하기</li>
												<li>JSP 태그</li>
												<li>Servlet 변환 이해하기</li>
												<li>JSTL & EL</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Servlet 프로그래밍</td>
											<td>
												<ul><li>MVC 의 이해</li>
												<li>Redirect 와 Forwarding</li>
												<li>Serlvet Mapping</li>
												<li>Servlet 생명주기</li>
												<li>Bean Scope 이해</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Session 처리</td>
											<td>
												<ul><li>Cookie 와 Session</li>
												<li>로그인과 로그아웃</li></ul>
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
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=SER_JSP_core" class="btn mid green1">지원하기</a>
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