<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "ITILv3_ITSM";
String SubjectName = "ITILv3 기반 IT Service Management";
%>

<!DOCTYPE html>
<html lang="ko">
<head>
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(5).addClass("on");								// Project Management
			$(".snb_1709 .newdepth2_wrap").eq(5).addClass("on");						// Project Management SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no6 .newdepth2").eq(2).addClass("on");  	// ITILv3 기반 IT Service Management ON

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
													<li>(문의)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>09:00 ~ 18:00 (1일 8시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>480,000원<!--650,000원--> </td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 (정규직 : 126,270원 | 비정규직 : 157,840원) | 사업주 환급 : 최대 157,840원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
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
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->	
							<c:import url="/WEB-INF/views/common/tab/refundInfo_2.jsp"/>						
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육개요</h5>
							<p>
								IT 거버넌스의 한 분야인 IT 서비스 관리를 ITILv3를 통해 학습하며, ITILv3를 이용한 조직내의 IT 서비스 프로세스를 확립하도록 하며, IT 서비스 수준 향상과 효율적인 IT 조직운영 및 필요한 지식과 다양한 사례를 학습한다. 또한 ITIL에서 정의하는 Best Practices와 Good Practices를 이해하고 서비스 수명 주기와 관리 방법을 학습한다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>조직의 IT 서비스를 운영/지원하는 IT 관리자, 기획, 운영자</li>
								<li>IT 서비스 관리에 대한 종합적인 내용에 대한 학습을 희망하는 분</li>
								<li>ITSM이 도입된 기업의 임직원으로 해당 프로세스의 이해가 필요한 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>전제조건</h5>
							<ul class="ul_dot_gray">
								<li>기본적인 조직내의 IT 프로세스의 이해</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>IT 서비스 관리 수명주기를 이해한다.</li>
								<li>IT 서비스 관리에 대한 세부 프로세스를 이해한다.</li>
								<li>IT 서비스 관리의 중요성을 이해한다.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육효과</h5>
							<ul class="ul_dot_gray">
								<li>Business와 IT Service 간의 연계 강화 </li>
								<li>기업 거버넌스와 IT 거버넌스의 이해 및 IT 서비스에 연관 관계 이해 및 적용</li>
								<li>서비스 생명주기의 실무 적용</li>
								<li>구축된 IT서비스 관리를 제대로 사용하고 개선할 수 있도록 한다.</li>
								<li>조직원의 IT 서비스 관리의 올바른 이해와 왜 필요한지, 왜 적용되어야 하는지를 이해한다.</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:32%">
										<col style="width:8%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">목차</th>
											<th scope="col">시수</th>
											<th scope="col">교육 내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">Service Strategy</td>
											<td class="c">6</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Business Relationship Management</li>
													<li>Service Portfolio</li>
													<li>Demand Management</li>
													<li>Financial Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Design</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Service Level Management</li>
													<li>Service Catalogue Management</li>
													<li>Supplier Management</li>
													<li>Available Management</li>
													<li>IT Service Continually Management</li>
													<li>Capacity Management</li>
													<li>Information Security Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Transition</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Change Management</li>
													<li>CAB</li>
													<li>Service Asset and Configuration Management</li>
													<li>Knowledge Management</li>
													<li>Release and Deployment Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Service Operation</td>
											<td class="c">5</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Service Desk</li>
													<li>Operations Management<br/>(Operation Control, Facilities Management)</li>
													<li>Technical Management</li>
													<li>Event Management</li>
													<li>Incident Management</li>
													<li>Request Fulfilment</li>
													<li>Problem Management</li>
													<li>Access Management</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Continual Service Improvement</td>
											<td class="c">3</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>Deming Cycle</li>
													<li>CSI Model</li>
													<li>7 Step Improvement Process</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=ITILv3_ITSM" class="btn mid green1">지원하기</a>
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