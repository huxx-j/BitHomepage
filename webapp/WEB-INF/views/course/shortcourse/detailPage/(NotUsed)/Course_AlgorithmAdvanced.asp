<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "문제해결을 위한 고급 알고리즘"
CourseID = "DS_Advanced"
%>

<%
	dim strDate
	'//strDate = "2017.12.9~2017.12.31"
	strDate = "(문의)"
%>
<!DOCTYPE html>

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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no4").addClass("on").removeClass("plus").addClass("minus");	// 자료구조/알고리즘 ON 
			$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// 자료구조/알고리즘 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(2) a").addClass("on");				// 주말/고급 ON
		});
		
		
	</script>
	<script language="javascript"> 
/*******	
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
************/			   
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>자료구조/알고리즘
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주말/고급 알고리즘
						</p>
						<h4>문제해결을 위한 고급 알고리즘</h4>
					</div>
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">문제해결을 위한 고급 알고리즘</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li><%=strDate%></li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li>13:00 ~ 18:00 (5시간 / 토,일 / 총40시간)</li>
												</ul>
											</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>900,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>

							</div>
<!--
<div class="myBlackBox">
	<p>SW문제해결 역량이란? <span class="myYellow">모든 문제에 대한 해결을 할 수 있는 능력</span>을 말합니다.</p>
	<p>선수과정에서 진행된 중급 알고르짐의 문제해결 능력을 이용하여 좀 더 <span class="myYellow">실무에서 사용되는 고급 알고르짐 문제해결을 할 수 있는 능력을 키워줍니다.</span></p>
	<p>문제해결능력은 많은 제약조건과 요구사항을 이해하고 최선의 방법을 찾아내는 것이다.</p>
	<p>주어진 문제에 맞게 효율적으로 문제를 해결하는 절차와 방법론에 대한 충분한 훈련이 필요합니다.</p>
	<p><span class="myYellow">출제경향분석, 모의문제 등을 제시하여 실전에 대비하는 과정입니다.</span></p>
</div>
-->
						</div>
						<!-- //con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<div>
								<img src="img_Roadmap_C4.png" style="width:100%;"/>
							</div>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li><a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" target="_blank">중급알고리즘</a>을 수강하신 분</li>
								<li>SW 문제 해결역량을 향상시켜야 되는 분</li>
								<li>대기업 취업을 원하시는 분</li>
								<li>SW 특기로 대학에 진학하고 싶은 분</li>
								<li>각종 경진대회를 준비하는 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육내용</h5>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>알고리즘 기초를 학습한 후, 향상된 알고리즘을 학습한다.</li>
		<li>다양한 알고리즘의 기본적인 원리와 적용방법을 적용하여 문제를 해결한다.</li>
		<li>효율적인 알고리즘의 필요성을 이해하고 알고리즘의 성능측정방법 중 하나인 시간복잡도에 대해 이해한다.</li>
		<li>SW 문제해결역량이란 무엇인가를 이해하고 역량을 강화하는 방법을 이해한다.</li>
	</ul>
</div>
-->
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">교육일자</th>
											<th scope="col">교육목표</th>
											<th scope="col">교육내용 및 실습주제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="2">1일차</td>
											<td rowspan="2">
												재귀적 알고리즘의 특성을 이해하고 재귀호출을 학습한다.<br/>
												탐욕알고리즘의 응용방법 및 문제해결능력을 배양한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>복잡도 분석, 알고리즘 효율, 비트연산</li>
													<li>탐욕알고리즘, 팩토리얼재귀함수, 완전검색기법</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>순열, 여행사세일기법, 부분집합생성 및 검증</li>
													<li>배낭짐싸기</li>
													<li>문제풀이</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">2일차</td>
											<td rowspan="2">
												분할정복기법을 이해하고 퀵정렬과 병합정렬을 학습한다.<br/>
												백트래킹 알고리즘을 적용하고 학습한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>분할정복 및 백트래킹, 병합정렬, 이진검색, 퀵정렬</li>
													<li>완전검색 그리디</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>상대공간트리, 계산기 문제풀이</li>
													<li>배열을 이용한 트리표현</li>
													<li>문제풀이</li>
												</ul>
											</td>
										</tr>
										
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>탐색 알고리즘 및 힙의 개념과 응용범위에 대해서 학습한다.</li>
		<li>그래프의 기본개념 및 응용알고리즘을 구현하고 성능을 비교해본다.</li>
		<li>알고리즘 성능분석을 수행하는 방법을 학습한다. 또는 예로 재귀 알고리즘 성능분석을 실행한다.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">3일차</td>
											<td rowspan="2">유연한 그래프와 탐욕기법을 이용하여 최소 신장트리 알고리즘을 학습한다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>인접행렬, 그래프탐색, DFS, BFS, 상호배타표현</li>
													<li>최소비용 신장트리, 이진탐색트리, 집합알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>프림 알고리즘, KRUSKAL 알고리즘, Dijkstra 알고리즘</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">4일차</td>
											<td rowspan="2">허프만 알고리즘에 대해 학습하고 피보나치방법을 응용해본다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>허프만알고리즘, 패턴매칭, 트라이알고리즘</li>
													<li>데이터압축, 최장경로, 집합커버</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>피보나치응용, 동적계획알고리즘, 상대공간트리탐색</li>
												</ul>
											</td>
										</tr>
									
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>결정적 알고리즘 및 다양한 문제해결능력을 배양한다.</li>
		<li>정보올림피아드 기출문제를 풀이한다.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">5일차</td>
											<td rowspan="2">
												문제풀이 해결기법을 학습하고 다양한 기출문제를 풀이함으로서 실전 해결 능력을 배양한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>결정알고리즘, 비결정적알고리즘, 파티션, 최장경로</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>기출문제풀이 및 실전문제 해결전략법</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">6일차</td>
											<td rowspan="2">
												문제풀이 해결기법을 학습하고 다양한 기출문제를 풀이함으로서 실전 해결 능력을 배양한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>작업 스케쥴링, 최적 일주 여행 경로</li>
													<li>모든쌍 최장경로</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>기출문제 문제풀이 및 실전문제 해결전략법</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>알고리즘의 수학적 접근법을 이해하고 적용해본다.</li>
		<li>실전문제 및 모의고사를 적용해보고 실전에 대비한다.</li>
	</ul>
</div>
-->

										<tr>
											<td class="darker c" scope="row" rowspan="2">7일차</td>
											<td rowspan="2">
												문제풀이 기법을 이해하고 알고리즘 해결의 수학적 접근을 정리하고 훈련한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>수학적 근사법, 정수론</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>기출문제 문제풀이 및 실전문제 해결전략법</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">8일차</td>
											<td rowspan="2">
												과정을 최종적으로 정리하면서 다양한 문제패턴을 학습하고 모의고사를 실행한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>수학식을 이용하는 알고리즘 문제 풀이</li>
													<li>동적 계획법 응용</li>
													<li>백트래킹 응용</li>
													<li>탐욕 알고리즘 응용</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>기출문제 문제풀이 및 실전문제 해결전략법</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<!-- 자격증과정 소개 -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /자격증과정 소개 -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=DS_Advanced" class="btn mid green1">지원하기</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<!--<hr>-->
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>