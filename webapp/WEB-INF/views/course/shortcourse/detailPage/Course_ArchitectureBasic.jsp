<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "Architecture_Basic";
String SubjectName = "소프트웨어 아키텍처 입문";
%>

<!DOCTYPE html>
<html lang="ko">
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

			$(".snb_1709 a.newdepth1").eq(5).addClass("on");								// Project Management
			$(".snb_1709 .newdepth2_wrap").eq(5).addClass("on");						// Project Management SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no6 .newdepth2").eq(1).addClass("on");  	// 소프트웨어 아키텍처 입문 ON
			
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Project Management
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
												<ul>
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">개인바우처 = 우선지원대상기업 기준 : 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<!--<td colspan="3">근로자카드 / 바우처 : 263,520원 | 사업주 훈련 : 우선지원대상 기업기준 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">고용보험 비환급<!--근로자카드(정규직 : 175,770원 | 비정규직 : 219,720원) | 사업주환급 : 최대 219,720원 <a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>아키텍트는 소프트웨어 개발 과정 전반을 좌우하는 중요한 직책입니다. 그러나 우리나라에는 소프트웨어 개발 초급인력은 넘쳐나지만, 전체 프로젝트를 지휘할 중급 이상의 아키텍트 인력이 부족한 것이 현실입니다. 그리고 우리나라 소프트웨어 업계의 현실을 감안할 때 초급 개발자가 아키텍처 업무를 체계적으로 배우기가 어렵습니다.
								<br/>본 교육과정은 소프트웨어 아키텍트를 꿈꾸는 초급 개발자 분들을 위한 교육과정으로 소프트웨어 아키텍처 분야의 교과서라 할 수 있는 Software Architecture in Practice 3rd Edition(Bass 외, Addison-Wesley, 2013)를 바탕으로 실제 소프트웨어 아키텍처 사례를 분석하여 아키텍처 실무를 이해하는 데에 초점을 두고 있습니다.</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<p></p>
						-->
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						<!--
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>아키텍트가 되기를 원하는 중급 개발자</li>
								<li>아키텍처 업무를 이해하고자 하는 프로젝트 관리자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
																		
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>세부내용</h5>
							<ul class="ul_dot_gray">
								<li>1. 검색 엔진이란? </li>
								<li>2. 검색 엔진 만들기 요구 분석 및 정의</li>
								<li>3. 검색 엔진 만들기 아키텍쳐링</li>
								<li>4. DB 설계</li>
								<li>5. Core 검색 엔진 컴포넌트 만들기</li>
								<li>6. 검색 로봇 만들기</li>
								<li>7. 형태소 분석기 만들기</li>
								<li>8. 색인기 만들기</li>
								<li>9. 랭커 만들기</li>
								<li>10. 검색 엔진 서비스를 이용하는 응용 만들기</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>강의운영방식 : 이론 / 실습</h5>
							<p>
								본 강의는 크게 이론과 개발 방법론 실습 세 가지 방법으로 진행한다 먼저 검색 엔진의 소개에서 이론을 다루고 이후에 과정은 개발 방법론에 의거하여 단계 별로 다이어그램을 작성하고 이에 맞게 프로그래밍 실습으로 이루어진다. 이 과정을 통해 얻은 지식은 다양한 형태의 지식 정보 기반 프로젝트에서 효과적인 검색 서비스를 제공하는 기술을 익힐 수 있다								
							</p>							
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>OOP 언어(C++, Java, C#)</li>
								<li>SQL(MySQL, Oracle, MS SQL)</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>개발실무자를 위한 소프트웨어 아키텍처 입문</caption>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">소프트웨어 아키텍처 개요</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>프롤로그</li>
													<li>소프트웨어 아키텍처란</li>
													<li>소프트웨어 아키텍처가 왜 중요한가</li>
													<li>소프트웨어 아키텍처의 다양한 배경</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">품질 속성</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>품질 속성의 이해</li>
													<li>가용성</li>
													<li>상호운영성</li>
													<li>변경용이성</li>
													<li>성능</li>
													<li>보안</li>
													<li>테스트 용이성</li>
													<li>사용편의성</li>
													<li>기타 품질 특성</li>
													<li>아키텍처 전술과 패턴</li>
													<li>품질 속성 모델링과 분석</li>												
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">라이프사이클에서의 아키텍처</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>애자일 프로젝트에서의 아키텍처</li>
													<li>아키텍처와 요구</li>
													<li>아키텍처 설계</li>
													<li>아키텍처 문서화</li>
													<li>아키텍처, 구현과 테스트</li>
													<li>아키텍처 재구축</li>
													<li>아키텍처 평가</li>
													<li>관리와 거버넌스</li>
													<li>아키텍처 역량</li>												
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Architecture_Basic" class="btn mid green1">지원하기</a>
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