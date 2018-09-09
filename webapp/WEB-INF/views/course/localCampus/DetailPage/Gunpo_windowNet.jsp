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
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth2_wrap.no4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1709 .newdepth2_wrap.no4 li:eq(1) a").addClass("on");
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
				<!-- #include virtual = "/Include/SNB_CourseHigh_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseHigh_1709.jsp"/>
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>고급과정
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[군포]군포캠퍼스
						</p>
						<h4>
							Windows .NET 고급과정
							<a href="/course/localCampus/localCampus_Gunpo_introduction?beginwith=booklet" title="프로젝트 살펴보기" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">프로젝트 살펴보기</a>
							<a href="/course/localCampus/localCampus_Gunpo_introduction?beginwith=entryWorks" title="공모전 출품작" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">공모전 출품작</a>
						</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_WinHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<!--<td class="l">2016.08.29 ~ 2017.12.30 (4개월)</td>-->
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_WINHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GP_WINHIGH.jsp"/>
												<!--2017.08.29 ~ 2017.12.30 (4개월)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_WINHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GP_WINHIGH.jsp"/>
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 군포캠퍼스 Windows .NET 고급과정 -->
										
										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>3,700,000원</td>
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
							<p class="mar_b10">윈도우 응용프로그램 작성에 필수 언어요소인 C/C++언어를 이해하고 다양한 자료구조 및 알고리즘 작성 능력 향상하여WinNT 기반에서 동작하는 다양한 응용 프로그램을 개발에 최적인 C#언어로 OOP와 .NET 플랫폼의 강력한 기술인 .NET 리모팅, 웹 서비스, 윈도우즈 서비스, Windows Form with C#, XML.NET, ADO.NET 등을 활용하여 다양한 형태의 응용 프로그램과 비즈니스 솔루션을 구축할 수 있는 능력을 배양함.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C# 언어 문법과 OOP의 이해 및 활용</li>
								<li>NET Framework의 구조 이해</li>
								<li>설계 패턴의 이해와 프로그램 설계에 도입 </li>
								<li>NET의 강력한 서비스를 활용하여 비즈니스 솔루션 구축 능력 배양 </li>
								<li>NET의 강력한 기술인 XML.NET, ADO.NET 등을 효과적으로 구사할 수 있는 능력 배양 </li>
								<li>Windows Form With C#을 이용한 윈도우 프로그래밍 능력 배양</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>경기도 군포시 당정동 604-5 한세대학교 <img style="margin-top:-68px; height:100px;" src="${pageContext.request.contextPath}/assets/Images/img_qrcode_Gunpo.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:35%">
										<col style="width:65%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="4">Windows API Programing</td>
											<td class="l">Windows 핵심 원리 이해</td>
										</tr>
										<tr>
											<td class="l">API이해와 응용</td>
										</tr>
										<tr>
											<td class="l">Windows GUI 프로그래밍</td>
										</tr>
										<tr>
											<td class="l">Windows System 프로그래밍</td>
										</tr>
										<tr>
											<td rowspan="3">Windows Network Programing</td>
											<td class="l">네트워크의 이해와 기본 개념</td>
										</tr>
										<tr>
											<td class="l">Winsock 라이브러리의 이해</td>
										</tr>
										<tr>
											<td class="l">Winsock을 이용한 Networking 프로그램 작성 </td>
										</tr>
										<tr>
											<td rowspan="3">MFC</td>
											<td class="l">MFC의 구조와 원리</td>
										</tr>
										<tr>
											<td class="l">MFC 와 OOP</td>
										</tr>
										<tr>
											<td class="l">MFC를 활용한 Windows 응용프로그래밍</td>
										</tr>
										<tr>
											<td rowspan="3">.NET과 C#</td>
											<td class="l">C# 기본 문법</td>
										</tr>
										<tr>
											<td class="l">OOP의 이해 와 활용</td>
										</tr>
										<tr>
											<td class="l">인터페이스와 컬렉션, 대리자</td>
										</tr>
										<tr>
											<td rowspan="2">GoF의 디자인 패턴</td>
											<td class="l">설계 패턴 이해</td>
										</tr>
										<tr>
											<td class="l">프로그램 설계에 패턴 적용</td>
										</tr>
										<tr>
											<td rowspan="3">서비스</td>
											<td class="l">NET 리모팅 서비스 이해 및 제작</td>
										</tr>
										<tr>
											<td class="l">NET 리모팅 서비스 이해 및 제작</td>
										</tr>
										<tr>
											<td class="l">윈도우즈 서비스 작성 및 활용</td>
										</tr>
										<tr>
											<td rowspan="3">Windows Form with C#</td>
											<td class="l">XML.NET 기술을 활용 및 데이터 표준화</td>
										</tr>
										<tr>
											<td class="l">Open API와 XML.NET 기술을 이용한 프로그래밍</td>
										</tr>
										<tr>
											<td class="l">ADO.NET 기술 활용 및 프로그래밍</td>
										</tr>
										<tr>
											<td rowspan="4">프로젝트</td>
											<td class="l">이론 과정에서 습득한 기술을 활용하여 새로운 솔루션을 산출해보는 단계</td>
										</tr>
										<tr>
											<td class="l">한 프로젝트 당 인원은 4~6 내외로 구성</td>
										</tr>
										<tr>
											<td class="l">최신 기술 동향 등을 파악하여 프로젝트 주제 선정</td>
										</tr>
										<tr>
											<td class="l">소프트웨어 개발 방법론에 입각한 단계별 작업을 수행</td>
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