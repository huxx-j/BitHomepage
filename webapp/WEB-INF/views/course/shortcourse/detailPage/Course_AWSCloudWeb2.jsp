<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- <%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>
 --%>
<%!
String strCourseID = "AWSCloudWeb2";
%>

<%!
//dim strDate
String strDate="2018...";
String strSubject = "AWS를 활용한 클라우드 기반 웹 개발";

int indexDepth3=2;
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
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
						
			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(4).addClass("on");  	// AWS를 활용한 클라우드 기반 웹 개발 ON
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
						<h4><%=strSubject%></h4>
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
											<th>교육기간</th>
											<td>
											<!-- #include virtual="/Include/CourseDateTime/Date/Date__AWSCloudWeb2.inc" -->
											<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__AWSCloudWeb2.jsp"/>
											</td>
											<th>강의시간</th>
											<td>
											<!-- #include virtual="/Include/CourseDateTime/Time/Time__AWSCloudWeb2.inc" -->
											<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__AWSCloudWeb2.jsp"/>
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
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=strCourseID%>" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
								-->
								<!-- 수강신청btn -->
								<a href="https://pf.kakao.com/_SmhqV" title="카카오톡 상담신청" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Kakao.png"/>
								</a>
								<a href="/register/request/register_shortCourse.asp?cID=<%=strCourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
							
						</div>
						<!-- //con_wrap1709 -->
						<div style="clear:both;"></div>

						<img src="${pageContext.request.contextPath}/assets/Images/DetailPage_Course_DSCIENCE_AWSCloudWeb2_2.png" class="mar_l10"/> <!-- style="width:720px;"/>-->

						<div class="dnone">						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								머신러닝을 처음 접하시는 분들을 위해서 기초부터 차근차근 배워 나가는 교육과정 입니다. 짧은 시간 안에 머신러닝의 원리와 활용 방법의 기초를 배울 수 있도록 기획하였습니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정특징</h5>
							<p>
								<b>“머신러닝의 빠른 입문”</b><br/><br/>
								시간이 많지 않은 수강자를 위해서 군더더기 없는 깔끔하고 컴팩트한 진행으로 머신러닝의 원리를 알아갑니다.  많은 실습을 통해서 직관적인 이해도를 높혀 갑니다. <br/><br/>
								<b>“다양한 Python 패키지 활용”</b><br/><br/>
								“바퀴를 재발명할 필요가 없다”라는 격언이 있듯이 Python이 제공하는 패키지를 활용하여 최소의 코딩으로 최고의 효과를 얻는 방법을 알아봅니다. <br/><br/>
								<b>“부트캠프 초급과정”</b><br/><br/>
								해외 유수 부트캠프 과정을 벤치마킹하여 짧은 시간동안 강도 높은 학습으로 튼튼한 기초를 다집니다.  머신러닝 전문가로서의 방향을 로드맵으로 제시해 드립니다.<br/><br/>
								<b>“좋은 문제를 발견하는 것이 그 해결 방법을 찾는 것보다 중요합니다!”</b><br/><br/>
								항상 “왜?” 또는 “어떻게?”라는 질문을 던져서 강사님과 수강생 함께 재미있고 의미있는 문제를 찾아갑니다.<br/><br/>
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
								- 	파이썬과 머신러닝 두 마리의 토끼를 한번에 잡고자 하시는 분들.<br/>
								- 	혼자서 머신러닝 전문서적을 읽고 공부해 보았지만 한계를 느끼시는 분들.<br/>
								- 	실제 머신러닝을 어떻게 활용할 수 있는지 구체적인 필요성을 느끼시는 분들.
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
										<td></td>
										<td>4/23</td>
										<td></td>
										<td></td>
										<td></td>
										<td>8/20</td>
										<td></td>
										<td></td>
										<td>11/5</td>
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
											<td scope="row" class="darker c">1일차</td>
											<td>
												머신러닝 개요와 기초지식<br/>
												머신러닝 활용사례 소개<br/>
												Python 언어 기초<br/>
												Jupyter 노트북 사용 기초<br/>
												예문 실습과 mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2일차</td>
											<td>
												Python의 패키지 Numpy, Pandas, Scipy, Matplotlib 활용한 데이터 가공과 시각화<br/>
												Python의 머신러닝 패키지 scikit-learn 소개<br/>
												Scikit-learn 패키지를 활용한 데이터 전처리와 교차검증 원리<br/>
												예문 실습과 mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3일차</td>
											<td>
												분류형 머신러닝의 기초 로지스틱 회귀의 원리<br/>
												ROC곡선. 혼돈행렬. 성과분석. 민감도와 특이도 활용<br/>
												예문 실습과 mini-project
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4일차</td>
											<td>
												KNN (k-최인접이웃) 알고리즘 적용<br/>
												편향-분산 트레이드오프 (bias-variance tradeoff)<br/>
												랜덤포레스트 알고리즘 적용<br/>
												그리드 서치 (grid search), 랜덤 서치 (random search), 병렬화<br/>
												예문 실습과 mini-project<br/>
												데이터 분석과 머신러닝 향후 로드맵<br/>
												질의응답
											</td>
										</tr>
<!--
										<tr>
											<td scope="row" class="darker c">1일차</td>
											<td>
												데이터 사이언스 개요.<br/>
												빅데이터 분석을 위한 도구 및 기초 지식.<br/>
												R과RStudio 설치 및 환경 설정/사용법.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2일차</td>
											<td>
												R 프로그래밍 언어.<br/>
												기초 프로그래밍1.<br/>
												기초 프로그래밍2.								
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3일차</td>
											<td>
												데이터 다루기 실습1.<br/>
												데이터 다루기 실습2.<br/>
												시각화와 데이터에 대한 이해:바플롯, 박스플롯, 산점도, 히스토그램.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4일차</td>
											<td>
												시각화실습.<br/>
												기술 통계값 구하기.<br/>
												통계적 추론. 가설 검정.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5일차</td>
											<td>
												클러스터 분석 기초.<br/>
												회귀분석 기초.<br/>
												머신러닝 실습1.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6일차</td>
											<td>
												머신러닝 실습2.<br/>
												보고서 작성.<br/>
												질의 응답
											</td>
										</tr>
-->
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
								<b>"Python 초보입니다. Jupyter노트북 사용법을 알려주세요"</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig2_01.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"지도학습 알고리즘을 쉽게 적용하는 방법을 알려주세요. 그리고 전처리는 어떻게 하나요?"</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig2_02.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"평향-분산 트레이드오프 (bias-variance tradeoff)가 KNN 알고리즘에서 어떻게 나타나는지 알려주세요"</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig2_03.png" style="margin-left:10%; width:80%;"/><br/>
								<b>"신용불량 진단, 암 진단과 같이 드물게 발생하지만 임팩트가 큰 이벤트를 예측하고 성과를 진단하는 방법을 알려주세요"</b><br/>
								<img src="${pageContext.request.contextPath}/assets/Images/Course_DSCIENCE_fig2_04.png" style="margin-left:10%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의 기획의도</h5>
							<p>
								최근 4차산업을 위시한 데이터의 중요성은 많은 분들이 이미 공감하고 있습니다. 또한 머신러닝, AI와 같이 이전에는 생소했던 용어도 이미 미디어를 통해서 일상적으로 접하고 있습니다. 하지만 대다수는 머신러닝을 본인과는 상관이 없는 막연한 개념으로만 인식하고 있는 것도 사실입니다. 업무에 실제로 활용할 수 있는 실용적 가치의 머신러닝의 필요성을 감안하여 가장 배우기 쉬운 언어인 파이썬(Python)과 패키지를 활용한 저비용(노력) 고효율의 초급 과정을 기획하게 되었습니다. 
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
					</div>						
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