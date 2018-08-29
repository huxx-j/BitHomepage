<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "WebPublish_core";
String SubjectName = "Web Publishing 실무";
%>

<%!
	//dim strDate
	String strDate = "<span class='blueTxt'>2017.11.28 ~ 2017.11.30 </span>";
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
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(3).addClass("on");  	// Web Publishing 실무 ON
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
						<div class="con_wrap1709 first last">
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
												(문의)
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												(문의)
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>270,000원 <!--<span class="greenTxt"> 마일리지 5%적립 (27,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">고용보험 비환급<!--근로자카드 (정규직 : 126,230원 | 비정규직 : 157,780원) | 사업주 환급 : 최대 157,780원--><!--<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a>--></td>
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
							<p><!--본 과정은 웹디자이너가 웹퍼블리셔로 성장하기위한 디딤돌 과정입니다.--> HTML은 웹개발과 디자인 분야에 가장 기본적인 언어이며, 최근 웹표준이 부각되면서 HTML과 더불어 CSS의 중요도가 높아진 상황입니다. 본 과정은 HTML과 CSS를 이용하여 모바일 웹이나 데스크탑 웹 서비스를 제작할 수 있도록 HTML의 기초부터 실무예제를 체계적으로 공부할 수 있습니다. HTML에서 제공하는 멀티미디어 요소를 예제를 통해 쉽고 흥미있게 학습을 진행합니다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>HTML5기반의 표준 웹 사이트 개발과 관련 기술을 습득</li>
								<li>HTML5의 주요 기술을 익히고 API를 활용한 프로그래밍 기술을 습득</li>
								<li>차세대 모던 웹 UI 디자인 습득</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>HTML5(HTML + CSS + JavaScript + jQuery)를 습득하고자 하는 웹디자이너</li>
								<li>HTML5기반의 웹/모바일 웹 페이지 제작을 희망하는 자</li>
								<li>반응형 웹 구현을 희망하는 자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 일정</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:35%">
										<col style="width:35%">
										<col style="width:30%">
									</colgroup>		
									<tbody>
										<tr>
											<th class="tit">교육일정</th>
											<th class="tit">교육비</th>
											<th class="tit">참고서적 제공</th>
										</tr>
										<tr>
											<td>3일 24h (09:00 ~ 18:00, 1일 8h)</td>
											<td class="c">27만원<!--<br/>재직자 환급비:<br/>최대 157,776원--></td>
											<td><img src="${pageContext.request.contextPath}/assets/Images/Content/img_BookCover_HTML5_WebProgramming_Hanbit.jpg" style="width:200px; border:1px solid #000;"/></td>
										</tr>
									</tbody>
								</table>
							</div>
							<br/>
						</div>
						
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 last">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>		
									<tbody>
										<tr>
											<th class="tit">대주제</th>
											<th class="tit">교육내용</th>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">HTML5</td>
											<td>HTML5 개요 및 문서기본</td>
										</tr>
										<tr>
											<td>링크와 멀티미디어</td>
										</tr>
										<tr>
											<td>웹폼</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">CSS3 & JavaScript</td>
											<td>CSS 스타일 시트</td>
										</tr>
										<tr>
											<td>자바스크립트 기초</td>
										</tr>
										<tr>
											<td>DOM과 자바스크립트</td>
										</tr>
										<tr>
											<td>캔버스</td>
										</tr>
										<tr>									
											<td class="darker c" rowspan="3">jQuery & Ajax</td>
											<td>JavaScript 적용시 jQuery 라이브러리를 적용하는 방법</td>
										</tr>
										<tr>
											<td>라이브러리의 주요 구현기능 점검</td>
										</tr>
										<tr>
											<td>Ajax</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=WebPublish_core" class="btn mid green1">지원하기</a>
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