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

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(3).addClass("on");  			// [군포] 군포캠퍼스
			$(".snb_1709 .newdepth3_wrap.no4").addClass("on").css('display','block');	// [군포] 군포캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no4 .newdepth3:eq(2)").addClass("on");		// C++ 프로그래밍 ON 
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[군포]군포캠퍼스
						</p>
						<h4>C++ 프로그래밍</h4>
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
										<!-- # i n clude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_Cpp_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GP_Cpp.jsp"/>
												<!--2018.01.12(금) ~ 2018.01.29(월)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GP_Cpp.jsp"/>
												<!--09:00 ~ 15:00 (5시간)-->
											</td>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>					
											-->
										</tr>
										<!-- 군포캠퍼스 C++ Programming -->										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
								
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p class="mar_b10">본 과정은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C++ 프로그래밍의 전반적인 흐름 파악</li>
								<li>객체지향 프로그래밍 능력 함양</li>
								<li>프로그래밍 개발 공정을 이해 및 활용 능력 함양</li>
								<li>응용이 가능한 실무 프로젝트 적응력 향상</li>
								<li>시나리오를 통해 각 개발 공정에서 해야 할 일들이 무엇이고 어떻게 해 나가야 하는지를 실습 위주의 강의로 진행 (이론 : 실습 = 3 : 7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C개념, C기본문법</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>경기도 군포시 당정동 604-5 한세대학교<img style="margin-top:-68px; height:100px;" src="${pageContext.request.contextPath}/assets/Images/img_qrcode_Gunpo.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="col" colspan="2">강의 방법 및 실습 시나리오 소개</td>
										</tr>
										<tr>
											<td rowspan="2">C언어와 다른 C++ 문법 및 객체지향</td>
											<td>입출력, 함수 오버로딩, 레퍼런스</td>
										</tr>
										<tr>
											<td>new, delete 연산자 등</td>
										</tr>
										<tr>
											<td rowspan="2">객체지향과 클래스 및 프로그램 실습</td>
											<td>객체, 인터페이스, 인스턴스, const 함수</td>
										</tr>
										<tr>
											<td>생성자, 소멸자, this, static 함수, friend 함수</td>
										</tr>
										<tr>
											<td rowspan="2">상속과 다형성 및 프로그램 실습</td>
											<td>가상함수, 부모 클래스, 자식 클래스</td>
										</tr>
										<tr>
											<td>추상 클래스, 순수 가상함수</td>
										</tr>
										<tr>
											<td>연산자 중복과 예외 처리, 형변환 및 프로그램 실습</td>
											<td>- [], +=, == 등, try, catch, throw 등</td>
										</tr>
										<tr>
											<td rowspan="2">Template과 STL 및 프로그램 실습</td>
											<td>클래스 템플릿, 함수템플릿, 컨테이너</td>
										</tr>
										<tr>
											<td>반복자, 함수 객체, 알고리즘</td>
										</tr>
										<tr>
											<td colspan="2">개발 공정 및 각 공정에서 해야 할 일과 산출물 </td>
										</tr>
										<tr>
											<td rowspan="2">요구 분석 및 정의 단계</td>
											<td>요구 분석에서 해야 할 일들</td>
										</tr>
										<tr>
											<td>유즈케이스 다이어그램</td>
										</tr>
										<tr>
											<td rowspan="6">설계 단계</td>
											<td>클래스 관계</td>
										</tr>
										<tr>
											<td>클래스 다이어그램</td>
										</tr>
										<tr>
											<td>시퀀스 다이어그램</td>
										</tr>
										<tr>
											<td>단일체 패턴</td>
										</tr>
										<tr>
											<td>클래스 다이어그램을 프로젝트에 반영</td>
										</tr>
										<tr>
											<td>시퀀스 다이어그램을 프로젝트에 반영</td>
										</tr>
										<tr>
											<td rowspan="2">구현단계</td>
											<td>시퀀스 다이어그램</td>
										</tr>
										<tr>
											<td>시퀀스 다이어그램을 프로젝트에 반영</td>
										</tr>
										<tr>
											<td colspan="2">배포 및 테스트 단계, Overview</td>
										</tr>
									</tbody>
								</table>
								<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>-->
							</div>
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