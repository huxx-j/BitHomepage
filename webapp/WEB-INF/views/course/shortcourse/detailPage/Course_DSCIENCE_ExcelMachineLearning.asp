<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
strCourseID = "DSci_ExcelMLearn"
%>

<%
dim strDate
strDate="(문의)"

strSubject="즉각 활용하는 Excel을 사용한 데이터 사이언스 입문"

indexDepth3=2
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
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								// Data Science
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");							// Data Science SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(3).addClass("on");  		// 즉각 활용하는 Excel을 사용한 데이터 사이언스 입문 ON
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
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DSci_ExcelMLearn.inc" -->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DSci_ExcelMLearn.inc" -->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>250,000원</td>
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
							<h5>과정개요</h5>
							<p>
								데이터 분석과 머신러닝의 입문 과정이며 코딩 경험이 없는 초보자를 위한 교육과정입니다. 다른 어느 곳에서도 접할 수 없는 독창적인 컨텐츠로 이루어진 교육 과정입니다. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정특징</h5>
							<p>
								<b>“코딩이 필요 없습니다.”</b><br/><br/>
								모두에게 친숙한Excel을 기초로 하여 코딩이 필요 없습니다. R, 파이썬과 같은 프로그래밍 언어를 배울 필요가 없습니다.  <br/><br/>
								<b>“플러그인 활용”</b><br/><br/>
								플러그인을 사용하여 Excel을 훌륭한 머신러닝 툴로 활용할 수 있습니다. <br/>
								1인 1라이센스 추가비용없이 제공(93,500원 상당).<br/>
								<img src="Images/img_PrimaXL.png" style="width:130px;"/><br/><br/>
								<b>“실용성 중시”</b><br/><br/>
								실용성을 중시하며 기본 개념에 충실한 교육과정입니다.<br/><br/>
								<b>“좋은 문제를 발견하는 것이 그 해결 방법을 찾는 것보다 중요합니다!”</b><br/><br/>
								항상 “왜?” 또는 “어떻게?”라는 질문을 던져서 강사님과 수강생 함께 재미있고 의미있는 문제를 찾아갑니다.<br/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<p><img src="Images/Course_DSCIENCE_Roadmap.jpg" style="width:100%;"/></p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p>
								 - 데이터 분석과 머신러닝을 당장 실전에 응용해보고 싶으신 분<br/>
								 - 새로운 프로그래밍 언어를 배우는데 시간적 여유가 없으신 분<br/>
								 - 노력과 비용의 투자 대비 최고의 효과를 원하시는 분
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
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:8%">
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
										<td></td>
										<td>5/14</td>
										<td></td>
										<td></td>
										<td></td>
										<td>9/17</td>
										<td></td>
										<td></td>
										<td>12/17</td>
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
											<th scope="col" class="c">일자</th>
											<th scope="col" class="c">세부교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" class="darker c" rowspan="3">1일차 (3H)</td>
											<td>
												데이터 분석과 머신러닝 개요.<br/>실제 적용 사례. 데이터를 통한 가치 생성.
											</td>
										</tr>
										<tr>
											<td>
												기술 통계. 통계적 추론. 가설검정.
											</td>
										</tr>
										<tr>
											<td>
												시각화의 원리. 시각화를 통한 스토리 텔링.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">2일차 (3H)</td>
											<td>
												머신러닝의 원리와 기초 이론.<br/>선형회귀 분석의 원리.
											</td>
										</tr>
										<tr>
											<td>
												선형회귀 모형의 최적화.<br/>자동차 연비 분석 실습.
											</td>
										</tr>
										<tr>
											<td>
												분산분석. 정보량 활용.<br/>잔차와 레버리지.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">3일차 (3H)</td>
											<td>
												k-means 클러스터 분석.<br/>금융 시장 데이터를 사용한 포트폴리오 만들기 실습.
											</td>
										</tr>
										<tr>
											<td>
												네트워크 분석.<br/>붓꽃 데이터를 사용한 실습.
											</td>
										</tr>
										<tr>
											<td>
												시계열 분석과 시뮬레이션을 통한 예측.<br/>주식 데이터를 사용한 향후 주가 동향 예측 실습.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">4일차 (3H)</td>
											<td>
												로지스틱 회귀의 원리.
											</td>
										</tr>
										<tr>
											<td>
												온라인 쇼핑몰 고객 데이터 사용한 마케팅 전략 실습.<br/>타이타닉호 생존자 데이터 분석 실습.<br/>대학 입학 데이터를 사용한 당락 요인 분석 실습.
											</td>
										</tr>
										<tr>
											<td>
												분류 알고리즘의 활용.
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c" rowspan="3">5일차 (3H)</td>
											<td>
												주성분 분석의 원리. 디멘전 축소와 영상 데이터 압축 실습. <br/>클러스터의 최적 시각화의 원리와 실습.
											</td>
										</tr>
										<tr>
											<td>
												인공신경망의 원리와 응용 실습.
											</td>
										</tr>
										<tr>
											<td>
												질의 응답
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
								<b>- "클러스터 분석은 무엇이고 왜 하나요?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_01.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "주성분 분석은 어떻게 활용할 수 있나요?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_02.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "선형회귀 결과는 어떻게 해석하나요?"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_03.png" style="margin-left:10%; width:60%;"/><br/>
								<b>- "인공신경망에 대해서 알려주세요"</b><br/>
								<img src="Images/Course_DSCIENCE_fig4_04.png" style="margin-left:10%;"/><br/>
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의 기획의도</h5>
							<p>
								최저의 비용과 노력, 그리고 최고의 효율을 목표로 하며 일반인도 쉽게 접근할 수 있는 데이터 분석과 머신러닝 교육과정 입니다. 
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