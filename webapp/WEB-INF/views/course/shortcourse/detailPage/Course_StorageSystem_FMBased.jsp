<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "StorageSystem_FM";
%>

<%
//Flash Memory 기반<br/>Storage System
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

			$(".snb_1709 a.newdepth1").eq(8).addClass("on");								// Embedded 
			$(".snb_1709 .newdepth2_wrap").eq(8).addClass("on");						// Embedded - OPEN
			$(".snb_1709 .newdepth2_wrap.no9 .newdepth2").eq(1).addClass("on");  	// Flash Memory 기반 Storage System ON
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
		<div id="Container_Wrap" style="min-height:1600px;">
			
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Embedded
						</p>
						<h4>Flash Memory 기반 Storage System</h4>
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
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Flash Memory 기반 Storage System</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2016.09.06 ~ 2016.09.08 (3일 / 총 21시간)</li>-->
													<li>(문의)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>09:30 ~ 17:30 (1일 7시간)</td>-->
											<td>(문의)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>370,000<!--500,000-->원<!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3" >고용보험 비환급<!--근로자카드 (정규직 : 110,440원 | 비정규직 : 138,050원) | 사업주 환급 : 최대 138,050원<a href="#this" class="mar_l10 btn btnBlueBorder small btn_refundView">환급내용 자세히보기</a>--></td>
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
							<c:import url="/WEB-INF/views/common/tab/refundInfo_12.jsp"/>								
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>소프트웨어 개발 전반의 과정을 발주자(고객), 관리자(PM), 개발자 등 이해관계자 모두가 쉽게 공유하기 위해서는 일정체계와 툴(tools)이 필요한데, 비용과 시간 등 여러 여건상 구축하기 어려운 것이 현실입니다. <br>
									이를 해결하기 위해 개발된 모델이 Software Visualization 입니다.</p>
						</div>
						-->
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정소개 및 목표</h5>
							<p>
								최근 Flash memory 기반 저장장치의 성능향상으로 인해, 모바일 장치로부터 서버급 컴퓨터에 이르기 까지 다양한 분야에서 활발히 도입되고 있다. Flash memory는 기존 저장장치 대비 높은 성능과 저전력 소모의 장점을 가지고 있으나, 삭제 연산의 존재, 한정된 횟수의 삭제 연산 가능, R/W/E 연산 단위의 상이 및 각 연산 수행 시간이 서로 다른 등  HDD로 대변되는 기존 저장장치와는 매우 다른 특성을 가지고 있다. 따라서 별도의 관리 소프트웨어를 필요로 하며, 이는 저장장치의 성능을 결정하는 중요한 요소가 된다. 이에 따라, 본 과정에서는 Flash memory기반 저장 장치의 이해와 개발 기술 함양, 또한 연관 개발자 양성을 목적으로, 이론 및 실습을 포함한 교육을 실시한다. 
							</p>
							<p>
								구체적으로 Flash memory 칩의 기본적인 특성에 대한 이해를 바탕으로 칩 드라이버 작성에 대해 살펴보며, Flash memory를 위한 소프트웨어 구조에 대해 알아본다. Flash memory의 특성을 감추고 상위 수준에 R/W 연산을 제공해주는 FTL(Flash Translation Layer)의 기본 개념을 배우며, 이를 통해 기본적인 기능을 제공하는 FTL을 직접 제작한다. 한편, Flash memory기반 SSD의 내부구조를 살펴본 후, 이를 위한 FTL 기능을 구현한다. 또한 Flash memroy 전용 파일 시스템에 대해 구체적으로 알아본다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>소프트웨어 품질관리자</li>
								<li>소프트웨어 개발자 및 프로젝트 관리자(PM)</li>
								<li>소프트웨어 발주부서(IT 기획)</li>
								<li>PMO 관계자</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의운영방식 : 이론 / 실습</h5>
							<!--
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
							-->
							<p>
								본 강의는 크게 이론과 실습, 두 가지의 방법을 통해 이뤄진다. 구체적으로, 이론 수업을 통해배운 지식을 바탕으로, flash memory를 위한 익힌 FTL을 실제로 제작해 봄으로써 FTL의 내부구조에 대해 깊이 있는 이해를 도모하며, SSD를 위한 부가 기능을 고려하여 이를 확장한다.
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>관련된 제품 제작에 흥미가 있거나, 이를 주 업무로 시작 하는 인원</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>C Programming <a href="/course/shortcourse/detailPage/Course_C" class="btnBlueBorder">자세히보기</a></li>
								<li>System Programming <span class="colorBitBlue">(리눅스 시스템에 대한 전반적인 이해)</span></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>사용 실습기자재</h5>
							<ul class="ul_dot_gray">
								<li>PC</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
												
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">일차</th>
											<th scope="col">시수</th>
											<th scope="col">세부내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="3">1일차</th>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory 특성 및 기본 이론</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory chip driver</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>Flash memory를 위한 software architecture</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">2일차</th>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>FTL 기본이론 : mapping, recovery 등</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>BasicFTL 개발 환경 구축 및 기본 동작 구현</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>추가 기능 구현</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">3일차</th>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>SSD internal</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">3</td>
											<td class="l">
												<ul>
													<li>SSD를 위한 BasicFTL의 확장 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">2</td>
											<td class="l">
												<ul>
													<li>Flash memory aware file system</li>
												</ul>
											</td>
										</tr>									
									</tbody>
								</table>
								<!--<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>
								<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr) </p>-->
							</div>							
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=StorageSystem_FM" class="btn mid green1">지원하기</a>
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