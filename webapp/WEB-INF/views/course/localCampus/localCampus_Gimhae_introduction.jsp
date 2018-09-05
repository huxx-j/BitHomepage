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

	<!-- 프로젝트 살펴보기 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/masonry.pkgd.min.js"></script>
	<script src="https://npmcdn.com/imagesloaded@4.1/imagesloaded.pkgd.min.js"></script>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/hash.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/turn.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/JS/main/zoom.js"></script>

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
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(4).addClass("on");  			// [김해] 김해캠퍼스
			$(".snb_1709 .newdepth3_wrap.no5").addClass("on").css('display','block');	// [김해] 김해캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no5 .newdepth3:eq(0)").addClass("on");		// 김해캠퍼스 소개 ON
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[김해]김해캠퍼스
						</p>
						<h4>김해캠퍼스 소개</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>김해캠퍼스 소개</h5>
							<p class="mar_b10">서울에 오셔서 교육을 받아야 하는 현실이 많이 불편하셨죠? 더 이상 소프트웨어 프로그래밍 교육을 받기 위해 서울까지 상경할 필요가 없습니다. 체계적인 교육시스템과 최고의 교육시설로 김해캠퍼스를 OPEN 했습니다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<h5 class="small">4차 산업혁명 대비 빅데이터 엔지니어링 실무적용 코스웨어(총 9개월)</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/roadmap_Gimhae.png" style="width:100%;"/>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>단기과정</h5>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Gimhae_C.asp">C Programming</a></h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GH_C.jsp"/>
												<!--2017.12.18(월) ~ 2018.01.10(수)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_C.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GH_C.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
											<!--
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 18:00 (4시간)</td>
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
										</tr>
										<!-- 김해캠퍼스 C Programming -->
										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Gimhae_Java.asp">Java Programming</a></h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_JAVA.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GH_JAVA.jsp"/>
												<!--2018.01.11(목) ~ 2018.01.30(화)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_JAVA.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GH_JAVA.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
										</tr>
										<!-- 김해캠퍼스 JAVA Programming -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
							</div>
							<h5 class="small"><a href="/course/localCampus/DetailPage/Gimhae_DS.asp">자료구조/알고리즘</a></h5>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_DS.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GH_DS.jsp"/>
												<!--2018.02.01(목) ~ 2018.02.22(목)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_DS.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GH_DS.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 18:00 (4시간)</td>											
											-->
										</tr>
										<!-- 김해캠퍼스 자료구조/알고리즘 -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply" >
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>
								고급과정
							</h5>
							<h5 class="small"><a href="javascript:alert('준비중입니다.(문의 02-3486-7588)'); // /course/localCampus/DetailPage/Gimhae_Bigdata.asp">빅데이터 엔지니어링 실무적용 고급과정</a></h5>
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
											<td class="l">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GH_BIGDATAHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__GH_BIGDATAHIGH.jsp"/>
												<!--2017.08.28 ~ 2018.02.28 (6개월)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GH_BIGDATAHIGH.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__GH_BIGDATAHIGH.jsp"/>
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 김해캠퍼스 빅데이터 엔지니어링 실무적용 고급과정 -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>4,200,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
										</tr>									
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="javascript:alert('준비중입니다.(문의 02-3486-7588)'); // /register/request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>오시는 길</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/location_Gimhae.png" style="width:640px;"/>
						</div>
						<!-- //con_wrap1709 -->
						

					</section>
				</div>
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