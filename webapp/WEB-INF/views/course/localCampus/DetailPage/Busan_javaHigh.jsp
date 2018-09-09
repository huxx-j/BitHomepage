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
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(3).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth2_wrap.no3").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1709 .newdepth2_wrap.no3 li:eq(1) a").addClass("on");
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[부산]부산비트캠퍼스
						</p>
						<h4>
							JAVA 고급과정
							<a href="/course/localCampus/localCampus_Busan_introduction?beginwith=booklet" title="프로젝트 살펴보기" class="btnRedBorder" style="font-size:15px; padding:0 5px; margin-left:10px; border-radius:0px; letter-spacing:-1.5px;">프로젝트 살펴보기</a>
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
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Busan_JavaHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<!--<td>2017.03.02(목) ~ 2017.08.31(목) (6개월)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__BS_JAVAHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__BS_JAVAHIGH.jsp"/>
												<!--2017.09.25 ~ 2018.02.28 (6개월)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__BS_JAVAHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__BS_JAVAHIGH.jsp"/>
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 부산캠퍼스 JAVA 고급과정 -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>3,700,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-7588</td>
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
							<p class="mar_b10">본 과정은 JAVA를 중심으로 객체지향 기법과 설계, 분석능력을 함양하고 데이터베이스, 각 서버와의 연동, Servlet/JSP, MVC, Struts, Spring등 JAVA 기술들을 활용하여 다양한 형태의 응용 프로그램과 비즈니스 솔루션을 구축할 수 있는 능력을 배양함.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>자바언어를 배워 객체지향 언어의 필요성과 객체지향 프로그래밍에 대한 지식을 습득할 수 있다.</li>
								<li>자바에서 운영될 수 있는 플랫폼인 J2SE, J2EE, J2ME를 이용할 수 있는 기술들을 습득 </li>
								<li>실무에서 많이 사용되고 있는 협업 도구들과 통합개발 환경에 대한 학습 및 실습도 병행한다.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>부산외대 트리니티홀 특성화교육원 D413호 <img style="margin-top:-68px; height:100px;" src="${pageContext.request.contextPath}/assets/Images/img_qrcode_Busan.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="3">Advanced JAVA</td>
											<td class="l">Java API(Application Programming Interface)를 학습하는 과정</td>
										</tr>
										<tr>
											<td class="l">Java 언어의 문법과 개념들을 이해</td>
										</tr>
										<tr>
											<td class="l">프로그래밍을 보다 구체적으로 실습하고 학습하는 과정</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">Oracle&amp;JDBC</td>
											<td class="l">데이터베이스, SQL에 대한 시스템을 이해하고 운영 및 유지보수 기술을 학습</td>
										</tr>
										<tr>
											<td class="l">Java를 이용해서 database에 엑세스 하여 SQL을 핸들하는 기술을 습득</td>
										</tr>
										<tr>
											<td class="l">순수 PI만으로도 데이터베이스 응용업무를 만들수 있도록 학습하는 과정</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="2">Servlet & JSP</td>
											<td class="l">웹의 기본기술인 HTTP프로토콜에 대한 이해를 기반으로 자바에서 제공하는 웹프로그래밍</td>
										</tr>
										<tr>
											<td class="l">솔루션인 JSP(Servlet)를 통해 게시판, 쇼핑몰 등 웹애플리케이션 구축기술 습득</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="3">Ajax & Jquery</td>
											<td class="l">웹2.0기술의 기반인 비동기자바스크립트에 대해 이해</td>
										</tr>
										<tr>
											<td class="l">OPrototype과 같은 라이브러리에 대해 학습</td>
										</tr>
										<tr>
											<td class="l">JSON과 같은 데이터표현 기술에 대해 학습</td>
										</tr>
										<tr>
											<td class="darker c">iBatis</td>
											<td class="l">iBatis에 대한 소개와 설치 및 설정을 통한 소프트웨어 application 의 persistence layer를 위한 복합적인 솔루션인 iBatis에 대하여 학습</td>
										</tr>
										<tr>
											<td class="darker c">Struts</td>
											<td class="l">MVC 프레임워크를 사용해 MVC아키텍처의 특장점에 대해 학습</td>
										</tr>
										<tr>
											<td class="darker c">Android & Java</td>
											<td class="l">안드로이드SDK를 이용하여 안드로이드에서 동작하는 어플리케이션 프로그래밍에 대하여 실습</td>
										</tr>
										<tr>
											<td class="darker c">프로젝트</td>
											<td class="l">
												이론 과정에서 습득한 기술을 활용하여 새로운 솔루션을 산출해보는 단계
												<ul class="ul_hyphen_gray">
													<li>한 프로젝트 당 인원은 4~6 내외로 구성</li>
													<li>최신 기술 동향 등을 파악하여 프로젝트 주제 선정</li>
													<li>소프트웨어 개발 방법론에 입각한 단계별 작업을 수행</li>
													<li> 핵심 요소 기술 분석, 시스템 설계, 시스템 구현, 최종 시연회 및 최종보고서 제출의 단계로 팀장의 지휘하에 모든 조원들이 상호 협력하여 진행</li>
												</ul>
											</td>
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