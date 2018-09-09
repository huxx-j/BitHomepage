<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "HTML5_core";
String SubjectName = "웹개발자를 위한 HTML5(HTML5+CSS3)";
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

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(0).addClass("on");  	// 웹개발자를 위한 HTML5(HTML5+CSS3) ON
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
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2016.03.07 ~ 2016.03.24 (월 ~ 목 / 12일 / 36시간)</li>-->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>200,000원 <!--<span class="greenTxt"> 마일리지 5%적립 (27,500원)</span>--></td>
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
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>HTML은 웹개발/디자인 분야에서 가장 기본적인 언어이며 이를 Base로 하여 웹디자인/개발이 이루어지고 있습니다. 최근 웹표준이 부각되면서 HTML과 더불어 CSS의 중요도가 높아진 상황입니다. 
							본 과정은 디자이너 및 웹퍼블리셔가 지금 당장 HTML과 CSS를 이용하여 모바일 웹이나 데스크탑 웹 서비스를 제작할 수 있도록 HTML의 기초부터 실무예제를 체계적으로 공부할 수 있습니다. HTML에서 제공하는 멀티미디어 요소에 대해 예제를 통한 쉽고 흥미있는 학습을 진행합니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p class="blueTxt fb">HTML5와 CSS3의 새로워진 내용들을 습득하고자 하는 웹 디자이너나 웹 퍼블리셔</p>
							<ul class="ul_dot_gray">
								<li> HTML5를 기반으로 하는 웹 페이지 및 모바일 웹 페이지의 제작과정을 이해하고자 하는 웹 디자이너나 웹 퍼블리셔.</li>
								<li>반응형 웹을 구성하고자 하는 웹 디자이너나 웹 퍼블리셔</li>
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
											<th class="c" scope="col">대주제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>HTML5 소개/배경/표준문서 등</td>
										</tr>
										<tr>
											<td>HTML5 구조와 문법</td>
										</tr>
										<tr>
											<td>HTML5 요소와 속성, 예제</td>
										</tr>
										<tr>
											<td>HTML 4.0과의 비교</td>
										</tr>
										<tr>
											<td>CSS2와 CSS3의 차이점</td>
										</tr>
										<tr>
											<td>CSS의 개념 및 적용방법</td>
										</tr>
										<tr>
											<td>CSS3 선택자 및 속성, 예제</td>
										</tr>
										<tr>
											<td>HTML5 미디어 요소</td>
										</tr>
										<tr>
											<td>HTML5 의 다양한 API</td>
										</tr>
										<tr>
											<td>실습(웹사이트, 모바일, 반응형 웹 디자인)</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=HTML5_core" class="btn mid green1">지원하기</a>
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