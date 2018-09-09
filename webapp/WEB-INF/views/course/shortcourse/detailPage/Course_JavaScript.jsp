<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "JavaScript";
String SubjectName = "웹개발자를 위한 JavaScript & Ajax";
%>

<%!
    //dim strDate
    String strDate = "2017.07.10 ~ 2017.07.27 (월~목) (12일 / 총 36시간)";
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(2).addClass("on");  	// 웹개발자를 위한 JavaScript & Ajax ON

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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>JavaScript
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
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JavaScript.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__JavaScript.jsp"/>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JavaScript.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__JavaScript.jsp"/>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>390,000원<!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->
							<c:import url="/WEB-INF/views/common/tab/refundInfo_2.jsp"/>								
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육과정 개요</h5>
							<p>
								최근 가장 이슈가 되고 있는 다양한 멀티 디바이스에서 동작될 수 있는 Web Application 개발에 있어 꼭 필요한 기술들을 교육 합니다.<br/>
								HTML5에서 제공하는 다양한 API를 이용하기 위해 필요한 프로그램 기술을 익힐 수 있습니다.<br/>
								모바일에서 동작 가능한 Mobile Web을 만들기 위한 기본 기술을 익힐 수 있습니다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상 및 선수지식</h5>
							<ul class="ul_dot_gray">
								<li>프로그램에 대한 기본 지식을 가지고 있는 개발자 및 웹 시스템 운영자</li>
								<li>웹 애플리케이션에 대한 기본 지식을 가지고 있는 개발자 및 웹 시스템 운영자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>이 교육과정을 통해서</h5>
							<ul class="ul_dot_gray">
								<li>W3C에서 발표한 웹 표준에 근거한 웹 애플리케이션을 개발 할 수 있습니다.</li>
								<li>본 과정을 통해 다양한 브라우져에서 동작 가능 한 크로스브라우징이 가능한 웹 애플리케이션을 개발 할 수 있습니다.</li>
								<li>본 과정을 통해 반응형 웹 애플리케이션 및 반응형 모바일 웹 앱을 개발 할 수 있습니다.</li>
								<li>AJAX를 이용한 비동기 통신 방식의 웹 애플리케이션을 개발 할 수 있습니다.</li>
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
										<td>5/9</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>12/3</td>
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
										<col style="width:30%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주제</th>
											<th scope="col">목표</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="2">HTML5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>HTML5의 주요 특징</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>HTML5의 주요 API</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="2">JavaScript</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>JavaScript Programming 기본</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>JavaScript를 이용한 Web Client Application</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">jQuery</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery 기본 구조 및 문법 이해</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery 를 이용한 Programming</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">jQuery Mobile</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery Mobile 구조 이해</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>jQuery Mobile을 이용한 Mobile Web 개발</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">AJAX</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>AJAX의 기본 개념 이해 및 구조 이해</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>AJAX를 이용한 Open API 연동</li>
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
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JavaScript" class="btn mid green1">지원하기</a>
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