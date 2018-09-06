<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
strCourseID = "DSci_AnalysisMLearn1"
%>

<%
strSubject="R을 사용한 데이터 분석과 머신러닝 (초급)"
'//strSubject="R을 사용한 데이터 분석과 머신러닝 초급(빅데이터)"

indexDepth3=0
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
						
			/* page load 직후 SNB 셋팅 */
			//방특 $(".snb_1709 a.newdepth1").eq(8).addClass("on");								// R을 사용한 데이터분석과 머신러닝 초급(빅데이터) ON
			
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(0).addClass("on");  	// R을 사용한 데이터 분석과 머신러닝 (초급) ON
			
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
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- # i n c lude virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						-->
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Data Science
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_AnalysisMLearn1.inc" -->
												<!--
												2018.1.8 ~ 2018.1.12 <span class='greenTxt'>(오후반)</span><br/>
												2018.1.29 ~ 2018.2.2 <span class='greenTxt'>(오후반)</span><br/>
												2018.2.19 ~ 2018.2.23 <span class='greenTxt'>(오후반)</span><br/>
												2017.12.11 ~ 2017.12.22 <span class='greenTxt'>(월,수,금/저녁반)</span>
												-->
											</td>
											<th>강의시간</th>
											<td class="spacing-2px">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_AnalysisMLearn1.inc" -->
												<!--
												오후반 14:00~18:00 (4시간 / 5일 / 총18시간)<br/>
												저녁반 19:00~22:00 (3시간 / 6일 / 총18시간)
												-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>500,000원</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
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
									<img src="/Images/Btns/btn_Kakao.png"/>
								</a>
								
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=strCourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
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
								빅데이터의 핵심이라 할 수 있는 데이터분석과 머신러닝을 기초부터 배웁니다. 특히 통계 프로그래밍 언어 R을 사용하여 데이터가공, 시각화, 통계, 머신러닝을 집중학습합니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정특징</h5>
							<p>
								<b>"좋은 문제를 발견하는 것이 그 해결 방법을 찾는 것보다 중요합니다!”</b><br/><br/>
								항상 "왜?” 또는 "어떻게?”라는 질문을 던져서 강사님과 수강생 함께 재미있고 의미있는 문제를 찾아갑니다. 기계적인 학습과 계산은 컴퓨터에게 맡기고 데이터의 활용 방법을 브레인스톰 해봅니다. <br/><br/>
								<b>"데이터분석은 스토리텔링입니다!”</b><br/><br/>
								데이터에서 재미있는 스토리를 발견하고 이것을 통찰력으로 활용할 때 데이터를 통한 새로운 가치가 창출됩니다. 모두 21세기의 최고 스토리텔러가 되어 보십시요!<br/><br/>
								<b>"데이터분석과 머신러닝의 체계적인 지식 습득”</b><br/><br/>
								문제정의, 데이터가공, 탐색적분석, 머신러닝 알고리즘 적용, 보고서 작성의 순서로 데이터분석에 단계별로 체계적으로 접근합니다. 특히 이론과 실습을 번갈아가면서 학습 내용에 대한 자신감과 성숙도를 더해갑니다. <br/><br/>
								<b>"부트캠프의 초급 과정”</b><br/><br/>
								해외 유수 부트캠프 과정을 벤치마킹하여 짧은 시간동안 강도 높은 학습으로 튼튼한 기초를 다집니다. 데이터전문가로서의 방향을 로드맵으로 제시해 드립니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<p><img src="Images/Course_DSCIENCE_Roadmap.jpg" style="width:100%;"/></p>
							<!--
							<div style="margin-left:80px;">
								<p class="pRoadmap">
									<span style="margin-left:270px;">→ </span>
									<a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="aRoadmap">R을 활용한 데이터 분석과 머신러닝 (중급)</a><br/><br/>
									<a href="" class="aRoadmap">R을 활용한 데이터 분석과 머신러닝 (초급)</a> <br/><br/>
									<span style="margin-left:270px;">→ </span>
									<a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="aRoadmap">R을 사용한 통계 분석의 실용적 활용</a>
								</p>
							</div>
							-->
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p>
								-	과거 최소 한가지 이상의 프로그래밍 언어를 공부해 본 적이 있으신 분. 예를 들자면 for루프가 무었인지 if ~ then이 왜 필요한지 알고 실수와 정수 자료형의 차이를 아시는 분. <br/>
								-	통계 용어 중 평균, 표준편차, 정규분포가 무었인지 아시는 분.<br/>
								-	Excel과 같은 프로그램을 사용해서 산점도, 히스토그램 등 데이터의 시각화를 적용해 본 경험이 있는 분.<br/>
								-	업무에서 데이터 활용 방법에 대해서 실질적인 고민을 하시고 있으신 분<br/>
								-	IT 분야 취업준비를 위해서 짧은 시간 안에 데이터 분석과 개발 능력을 겸비하고자 하시는 분.  
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
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
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
										<td>2/19</td>
										<td></td>
										<td></td>
										<td></td>
										<td>6/14</td>
										<td></td>
										<td></td>
										<td>9/3</td>
										<td></td>
										<td></td>
										<td>12/3</td>
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
											<td scope="row" class="darker c">1일차(3h)</td>
											<td>
												<b>데이터 분석 개요</b><br/>
												+흥미로운 예제를 통해서 알아보는 확률과 통계.<br/>
												+데이터 분석을 위한 도구 소개.<br/>
												+데이터 분석의 적용 사례 소개: 금융, 마케팅, 고객관리, 스타트업, 물류, 산업, 등.<br/>
												+R과 RStudio 살펴보기. Package 소개.<br/>
												+예문 실습과 mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">2일차(3h)</td>
											<td>
												<b>R 프로그래밍 언어</b><br/>
												+R의 특징: 자료형, 벡터 연산, 데이터 프레임 객체, 등.<br/>
												+빅데이터 분석을 위한 팁.<br/>
												+데이터의 검색과 가공.<br/>
												+예문 실습과 mini-project										
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">3일차(3h)</td>
											<td>
												<b>데이터 가공과 탐색적 분석</b><br/>
												+데이터를 분석 가능한 형태로 정제하고 요약하는 방법.<br/>
												+탐색적 시각화 (바플롯, 박스플롯, 산점도, 히스토그램) 소개.<br/>
												+목적에 따른 시각화의 원리.<br/>
												+예문 실습과 mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">4일차(3h)</td>
											<td>
												<b>시각화와 통계를 사용한 탐색적 분석</b><br/>
												+시각화 실습.<br/>
												+기술 통계값 구하기.<br/>
												+통계적 추론으로 모집단의 특성 구하기.<br/>
												+가설 검정을 적용한 모형의 진단.<br/>
												+예문 실습과 mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">5일차(3h)</td>
											<td>
												<b>머신러닝 기초</b><br/>
												+자율학습 k-means 클러스터 분석의 원리와 활용 방법.<br/>
												+지도학습의 고전 선형 회귀분석의 기초 원리.<br/>
												+설명변수를 밝혀내는 목적과 종속변수 예측의 목적으로 사용되는 선형회귀.<br/>
												+예문 실습과 mini-project.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">6일차(3h)</td>
											<td>
												<b>머신러닝 심화와 끝맺음</b><br/>
												+로지스틱 회귀의 원리와 활용 방법.<br/>
												+R markdown을 사용한 코드와 텍스트 혼재 보고서 작성.<br/>
												+예문 실습과 mini-project.<br/>
												+질의 응답
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
								<b>+"R에서 빅데이터를 빨리 읽어들이는 방법을 알려주세요.” </b><br/>
								<img src="Images/Course_DSCIENCE_fig_01.png" style="width:100%;"/><br/>
								<b>+"dplyr 패키지 함수를 사용해서 데이터를 가공하고 요약하는 방법을 알려주세요."</b><br/>
								<img src="Images/Course_DSCIENCE_fig_02.png" style="width:100%;"/><br/>
								<b>+"투자가인데 R의 군집분석을 적용해서 투자 종목을 두개의 포트폴리오로 클러스터링해서 관리하고 싶습니다.”</b><br/>
								<img src="Images/Course_DSCIENCE_fig_3a.png" style="width:100%;"/><br/>
								<img src="Images/Course_DSCIENCE_fig_3b.png" style="width:50%; margin-left:150px;"/><br/>
								<b>+"통계 초짜인데요, 데이터의 탐색적 분석을 위해서 통계와 시각화를 적용하고 싶습니다.” </b><br/>
								<img src="Images/Course_DSCIENCE_fig_4.png" style="width:50%; margin-left:150px;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의 기획의도</h5>
							<p>
								흔히 데이터 분석은 시간과의 싸움이라고도 합니다. 그리고 다수의 실무 데이터는 매우 불완전 하며 결측치,
								오류 등이 많이 포함되어 있습니다. 그러므로 데이터 분석에는 정답이 없고 제한적 시간 내에 쓸만한 결과를
								얻는 것이 목적인 경우가 많습니다. 최신, 최고의 머신러닝 알고리즘을 적용하는 것 보다 데이터를 잘
								가공하고 통계와 시각화를 통한 탐색적 분석으로 직관적 이해를 구하는 것이 매우 중요합니다. 큰 그림을
								시작으로 하는 하향식 접근법 (top down approach)도 중요하지만 소소한 디테일에서 부터 시작하는 상향식
								접근법 (bottom up approach) 또한 중요합니다. 강사님은 실제 데이터 분석에서 자주 마주치는 어려움을
								하나씩 차근차근 풀어나가서 의미있는 결과를 만들어 가는 프로세스 정리의 필요성을 느끼던 중 이번 강의를
								기획하게 되었습니다. 또한 오랜 전통의 IT 양성기관 비트교육센터의 비전과 목표에 부합한 데이터
								전문가로서의 첫 걸음이 되는 심도 있는 내용을 담았습니다.
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
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>