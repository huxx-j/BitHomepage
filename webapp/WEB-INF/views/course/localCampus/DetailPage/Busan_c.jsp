<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
			/* <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 /* <!--#include virtual="/Include/HeaderScriptReady1709.inc"--> */
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(2).addClass("on");  			// [부산] 부산캠퍼스
			$(".snb_1709 .newdepth3_wrap.no3").addClass("on").css('display','block');	// [부산] 부산캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no3 .newdepth3:eq(1)").addClass("on");		// C 프로그래밍 ON 
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

		<div id="Container_Wrap" style="min-height:initial;">
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[부산]부산캠퍼스
						</p>
						<h4>C 프로그래밍</h4>
					</div>
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<!-- # i n c l ude virtual="/Include/CourseDateTime/LocalCampus_Busan_C_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__BS_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__BS_C.jsp"/>
												<!--2017.12.26(화) ~ 2018.01.09(화)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__BS_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__BS_C.jsp"/>
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 부산캠퍼스 C Programming -->										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
										
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_form?cID=bitcam" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p class="mar_b10">본 과정은 C언어는 접해보았지만, 정확한 개념이 없는 분, C언어를 처음 배우시는 분들을 대상으로, 기본 문법에서 코딩까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래머의 첫 관문으로 프로그래밍 언어에 대한 자신감 고취</li>
								<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
								<li>프로그래밍 강화로 본인만의 능력 구축</li>
								<li>문법적인 공부를 탈피하여 스스로 생각하여 프로그램을 작성할 수 있는 능력배양 (이론:실습 = 3:7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C를 처음 배우는 분</li>
								<li>비전공자이지만 프로그래밍에 관심이 있는 분</li>
								<li>C를 배웠으나 기초지식이 부족하여 실력 향상이 안 되는 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>부산외대 비트교육센터<img style="margin-top:-68px; height:100px;" src="${pageContext.request.contextPath}/assets/Images/img_qrcode_Busan.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>부산캠퍼스 C Programming 커리큘럼</caption>
									<colgroup>
										<col style="width:25%">
										<col style="width:25%">
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
												<td class="darker c" rowspan="6">C언어 기본구조</td>
												<td>C언어 환경</td>
												<td>C언어 틀징, 컴파일러 사용법</td>
											</tr>
											<tr>
												<td>C언어 구조</td>
												<td>데이터 형, 변수 사용법</td>
											</tr>
											<tr>
												<td>C언어 기본문법</td>
												<td>기본 입출력 함수, 연산자</td>
											</tr>
											<tr>
												<td>C언어 기본문법</td>
												<td>조건문</td>
											</tr>
											<tr>
												<td>C언어 기본문법</td>
												<td>반복문</td>
											</tr>
											<tr>
												<td>C언어 기본문법</td>
												<td>C기본 문법에 대한 실습</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="10">포인터와 배열</td>
												<td rowspan="4">배열</td>
												<td>1차원 배열 이론</td>
											</tr>
											<tr>
												<td>1차원 배열 이론</td>
											</tr>
											<tr>
												<td>2차원 배열 이론</td>
											</tr>
											<tr>
												<td>2차원 배열 이론</td>
											</tr>
											<tr>
												<td rowspan="2">함수</td>
												<td>함수의 이론</td>
											</tr>
											<tr>
												<td>함수와 포인터의 관계</td>
											</tr>
											<tr>
												<td rowspan="4">포인터</td>
												<td>1차원 배열과 포인터</td>
											</tr>
											<tr>
												<td>문자열과 포인터</td>
											</tr>
											<tr>
												<td>2차원 배열과 포인터</td>
											</tr>
											<tr>
												<td>메모리 관리와 동적할당</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="4">C언어의 확장</td>
												<td rowspan="2">구조체</td>
												<td>구조체 이론</td>
											</tr>
											<tr>
												<td>구조체 배열과 포인터</td>
											</tr>
											<tr>
												<td>전처리기</td>
												<td>매크로와 전처리기</td>
											</tr>
											<tr>
												<td>파일입출력</td>
												<td>파일입출력 이론 및 실습</td>
											</tr>
										</tbody>
								</table>
							</div>
							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>-->
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
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