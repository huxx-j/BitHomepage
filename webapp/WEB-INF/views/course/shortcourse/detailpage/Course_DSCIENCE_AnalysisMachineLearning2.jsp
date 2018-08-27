<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%-- <%
strCourseID = "DSci_AnalysisMLearn2"
%>

<%
dim strDate
strDate="2017.11.06 ~ 2017.11.14 (월~금)"

strSubject="R을 사용한 데이터 분석과 머신러닝 (중급)"

indexDepth3 = 1
%> --%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
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
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(1).addClass("on");  	// R을 사용한 데이터 분석과 머신러닝 (중급) ON
		});
	</script>
	<script language="javascript">
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Data Science
						</p>
						<%-- <h4><%=strSubject%></h4> --%>
					</div>

					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_AnalysisMLearn2.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DSci_AnalysisMLearn2.jsp"/>
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_AnalysisMLearn2.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DSci_AnalysisMLearn2.jsp"/>
												<!--7일 21시간(1일 3시간)<br/>19:00 ~ 22:00-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>600,000원</td>
											<th>교육비지원</th>
											<td>비환급과정</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>20명</td>
											<th>문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table> 
								<!--
								<a href="/Register/Request/register_shortCourse.asp?cID=<%-- <%=strCourseID%> --%>" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
								-->
								<!-- 수강신청btn -->
								<a href="/register/request/register_shortCourse.asp<%-- ?cID=<%=strCourseID%> --%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
							
						</div>
						<!-- //con_wrap1709 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								통계와 머신러닝 등 데이터 분석의 핵심 기술에 대한 중급 수준을 목표로 합니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정 특징</h5>
							<p>
								<b>“데이터 분석과 머신러닝의 구체적인 지식 습득”</b><br/><br/>
								데이터 분석과 머신러닝에 체계적으로 접근하여 구체적인 지식 습득을 목표로 합니다. 특히 이론과 실습을 번갈아 가면서 학습 내용에 대한 자신감과 성숙도를 더해 갑니다. <br/><br/>
								<b>“부트캠프의 중급 과정”</b><br/><br/>
								해외 유수 부트캠프 과정을 벤치마킹하여 짧은 시간동안 강도 높은 학습으로 튼튼한 기초를 다집니다.  데이터 전문가로서의 방향을 로드맵으로 제시해 드립니다.<br/><br/>
								<b>“좋은 문제를 발견하는 것이 그 해결 방법을 찾는 것보다 중요합니다.”</b><br/><br/>
								항상 “왜?” 또는 “어떻게?”라는 질문을 던져서 강사님과 수강생 함께 재미있고 의미있는 문제를 찾아갑니다.<br/><br/>
								<b>“데이터 분석은 스토리 텔링입니다!”</b><br/><br/>
								데이터에서 재미있는 스토리를 발견하고 이것을 통찰력으로 활용할 때 데이터를 통한 새로운 가치가 창출됩니다. 모두 21세기의 최고 스토리 텔러가 되어 보십시요!<br/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<p><img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_Roadmap.jpg" style="width:100%;"/></p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p>
								- 	과거 최소 한가지 이상의 프로그래밍 언어를 공부해 본 적이 있으신 분. 예를 들자면 for루프가 무었인지 if ~ then이 왜 필요한지 알고 실수와 정수 자료형의 차이를 아시는 분.  <br/>
								- 	통계 용어 중 평균, 표준편차, 정규분포가 무엇인지 아시는 분.<br/>
								- 	Excel과 같은 프로그램을 사용해서 산점도, 히스토그램 등 데이터의 시각화를 적용해 본 경험이 있는 분.<br/>
								- 	업무에서 데이터 활용 방법에 대해서 실질적인 고민을 하시고 있으신 분<br/>
								- 	IT 분야 취업준비를 위해서 짧은 시간 안에 데이터 분석과 개발 능력을 겸비하고자 하시는 분. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수과목</h5>
							<p>
								R을 활용한 데이터 분석과 머신러닝(초급)
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<div class="con_wrap1709 dnone">
							<h5>개강일</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:9.33%">
										<col style="width:9.33%">
										<col style="width:9.33%">
									</colgroup>
									<tr>
										<th>1월</th>
										<th>2월</th>
										<th>3월</th>
										<th>4월</th>
										<th>5월</th>
										<th>6월</th>
										<th>7월</th>
										<th>8월</th>
										<th>9월</th>
										<th>10월</th>
										<th>11월</th>
										<th>12월</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td>3/19</td>
										<td></td>
										<td></td>
										<td></td>
										<td>7/2</td>
										<td></td>
										<td></td>
										<td>10/12</td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:85%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">교육일정</th>
											<th scope="col" class="c">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" class="darker c">1일</td>
											<td>
												<b>머신러닝 개요</b><br/>
												- 머신러닝의 원리와 기초<br/>
												- 베이즈 통계법과 적용 (나이브 베이즈 분류법)<br/>
												- R과 RStudio. 머신러닝을 위한 패키지 소개<br/>
												- R 프로그래밍 언어 리뷰<br/>
												- 예문 실습 &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2일</td>
											<td>
												<b>통계, 데이터 가공, 시각화 심화</b><br/>
												- 기술 통계, 통계적 추론, 가설 검정<br/>
												- 실용 예문으로 살펴보는 통계의 적용<br/>
												- plyr, dplyr, tidyr 패키지 사용한 데이터 가공과 요약 리뷰<br/>
												- ggplot2, ggthemes 패키지 사용한 시각화<br/>
												- 예문 실습 &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3일</td>
											<td>
												<b>지도형 머신러닝I</b><br/>
												- 머신러닝의 고전 선형회귀 심화<br/>
												- 선형회귀 모형의 최적화. 정보량과 분산분석(ANOVA)<br/>
												- 잔차와 레버리지 분석<br/>
												- Ridge회귀, Lasso회귀, 다항회귀<br/>
												- 예문 실습 &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4일</td>
											<td>
												<b>지도형 머신러닝II</b><br/>
												- 분류형, 머신러닝의 기초 로지스틱 회귀<br/>
												- ROC곡선, 혼동행렬, 성과분석, 민감도와 특이도 활용<br/>
												- 예문 실습 &amp; Mini-Project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5일</td>
											<td>
												<b>지도형 머신러닝III</b><br/>
												- Caret 패키지를 사용한 머신러닝<br/>
												- 학습과 테스트. Cross validation. 데이터 전처리.<br/>
												- 분류 알고리즘 (SVM, KNN, Tree, Random Forest)의 원리와 적용 방법. <br/>
												- 편향-분산 트레이드오프 (bias-variance tradeoff).<br/>
												- 예문 실습 &amp; Mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6일</td>
											<td>
												<b>비지도형 머신러닝</b><br/>
												- 클러스터 분석 (k-means, DBSCAN, Hierarchical)의 원리와 비교<br/>
												- 주성분 분석의 원리<br/>
												- 디멘전 축소와 데이터 압축의 원리와 실습 (이미지 데이터 사용).<br/>
												- 클러스터의 최적 시각화.<br/>
												- 예문 실습 &amp; Mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">7일</td>
											<td>
												<b>시계열, 텍스트 마이닝, 끝맺음</b><br/>
												- 시계열 분석과 시뮬레이션을 통한 예측(주식 가격 동향 예측 실습)<br/>
												- 텍스트 마이닝의 목적과 원리. 정규표현식, TM 패키지 활용<br/>
												- 예문 실습 &amp; Mini-Project<br/>
												- 데이터 전문가 로드맵<br/>
												- 질의 응답
											</td>
										</tr>
									</tbody>
								</table>
								<!--<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용 예제</h5>
							<p>
								<b>"SVM, KNN, 랜덤 포레스트와 같은 지도학습을 쉽게 적용하는 방법을 알려주세요. 그리고 전처리는 어떻게 하나요?"</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig3_01.png" style="margin-left:20%;"/><br/>
								<b>"Tree 분류형 알고리즘의 사용법을 알려주세요."</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig3_02.png" style="margin-left:20%;"/><br/>
								<b>"계층적 클러스터링, k-means, DBSCAN 등과 같은 군집분석 방법의 장단점을 비교해 주세요."</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig3_03.png" style="margin-left:20%;"/><br/>
								<b>"신용불량 진단, 암 진단과 같이 드물게 발생하지만 임팩트가 큰 이벤트를 예측하고 성과를 진단하는 방법을 알려주세요."</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig3_04.png" style="margin-left:20%;"/><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig3_05.png" style="margin-left:20%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의 기획의도</h5>
							<p>
								흔히 데이터 분석은 시간과의 싸움이라고도 합니다. 그리고 다수의 실무 데이터는 매우 불완전 하며 결측치, 오류 등이 많이 포함되어 있습니다. 그러므로 데이터 분석에는 정답이 없고 제한적 시간 내에 쓸만한 결과를 얻는 것이 목적인 경우가 많습니다. 최신, 최고의 머신러닝 알고리즘을 적용하는 것 보다 데이터를 잘 가공하고 통계와 시각화를 통한 탐색적 분석으로 직관적 이해를 구하는 것이 매우 중요합니다.  큰 그림을 시작으로 하는 하향식 접근법 (top down approach)도 중요하지만 소소한 디테일에서 부터 시작하는 상향식 접근법 (bottom up approach) 또한 중요합니다. 강사님은 실제 데이터 분석에서 자주 마주치는 어려움을 하나씩 차근차근 풀어나가서 의미있는 결과를 만들어 가는 프로세스 정리의 필요성을 느끼던 중 이번 강의를 기획하게 되었습니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
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