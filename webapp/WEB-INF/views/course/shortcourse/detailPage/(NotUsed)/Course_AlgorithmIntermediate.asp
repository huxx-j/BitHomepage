<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "문제해결을 위한 중급 알고리즘"
CourseID = "DS_Intermediate"
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
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(1) a").addClass("on");				// 주말/중급 ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주말/중급 알고리즘
						</p>
						<h4>문제해결을 위한 중급 알고리즘</h4>
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
											<td colspan="3">문제해결을 위한 중급 알고리즘</td>
											
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
											<td>750,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
								
							</div>
<!--
<div class="myBlackBox">
	<p>SW문제해결 역량이란? <span class="myYellow">모든 문제에 대한 해결을 할 수 있는 능력</span>을 말합니다.</p>
	<p>초급 프로그래머가 고급 프로그래머로 성장하는 과정에서 가장 큰 어려움을 알고리즘 문제를 이해하고 해결하는 능력입니다.</p>
	<p>이러한 이유로 많은 IT 관련 기업들이 <span>프로그래머 채용시 코딩 테스트 중심의 면접과정을 진행하여 알고리즘 이해도를 측정하고 있는 추세</span>입니다.</p>
	<p>따라서 본 과정은 이러한 추세에 맞춰 다양한 문제를 해결할 수 있도록 만들어 줍니다.</p>
</div>
-->
						</div>
						<!-- //con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<div>
								<img src="img_Roadmap_C3.png" style="width:100%;"/>
							</div>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li><a href="#">C언어</a>와 <a href="#">자료구조 기본</a>을 수강하신 분</li>
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
		<li>SW 문제를 해결하고 역량을 강화한다.</li>
		<li>효율적인 알고리즘을 적용하고 성능측정방법을 연구하고 학습한다.</li>
		<li>다양한 알고리즘의 기본적인 원리와 적용방법을 직접 구현하면서 익힌다.</li>
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
											<td rowspan="2">기본적인 자료구조를 이용하여 알고리즘 접근법을 학습한다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>환형 연결리스트, 스택, 큐</li>
													<li>연결리스트로 구현하는 스택</li>
													<li>연결리스트로 구현하는 큐</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>배열로 구현하는 스택</li>
													<li>사칙연산 계산기</li>
													<li>순환큐, 링크드리스트큐</li>
													<li>가상메모리 프레임관리</li>
													<li>재시도 페이지 교체</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">2일차</td>
											<td rowspan="2">트리와 정렬을 이용하여 개념을 정리하고 실습을 통하여 정리한다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>트리기본개념, 이진트리, AVL Tree</li>
													<li>버블정렬, 삽입정렬, 퀵정렬, 합병정렬, 카운팅정렬, 기수정렬</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>수식트리, 분리집합, 정렬</li>
													<li>디렉토리리스팅</li>
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
											<td rowspan="2">탐색 알고리즘과 힙에 대해서 학습하고 철자검사와 개방주소법을 이용한 문제풀이를 한다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>순차탐색, 이진탐색, 이진탐색트리, 레드블랙박스트리</li>
													<li>우선순위큐와 힙, 해시테이블</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>체이닝, 개방주소법, 철자검사</li>
													<li>문제풀이</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td class="darker c" scope="row" rowspan="2">4일차</td>
											<td rowspan="2">그래프의 기본개념을 이해하고 알고리즘 성능분석을 학습한다.</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>그래프, 그래프순회, 위상정렬, 최소신장트리, 프림알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>카프-라빈 알고리즘, 크루스칼알고리즘, 다익스트라알고리즘</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>분할정복 및 응용 개념인 병합정렬, 거듭제곱, 피보나치수를 학습한다.</li>
		<li>동적계획법을 학습하고 LCS 알고리즘을 구현해본다.</li>
		<li>정보올림피아드 기출문제를 풀이한다.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">5일차</td>
											<td rowspan="2">
												문자열 알고리즘 및 패턴매칭 알고리즘 성능분석을 학습하고 문제풀이를 진행한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>문자열검색, 보이어-무어 알고리즘, 알고리즘 성능분석</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>KMP알고리즘, 재귀알고리즘 성능분석, 문자열 검색</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">6일차</td>
											<td rowspan="2">
												분할정복의 개념을 학섭하고 다양한 문제 적응 능력을 향상시킨다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>분할정복, 재귀 알고리즘의 분석</li>
													<li>LCS 알고리즘, 최장공통 순서</li>
													<li>허프만 코딩</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>정보올림피아드 기출문제풀이</li>
													<li>대기업 역량 TEST 문제풀이</li>
												</ul>
											</td>
										</tr>
<!--
<div class="myBlueBox">
	<ul class="ul_dot_gray">
		<li>동적계획법을 학습하고 다양한 사례를 연구한다.</li>
		<li>정보올림피아드 기출문제를 풀이한다.</li>
	</ul>
</div>
-->
										<tr>
											<td class="darker c" scope="row" rowspan="2">7일차</td>
											<td rowspan="2">
												탐욕 알고리즘과 동적계획법의 기본개념을 숙지하고 다양한 문제유형을 분석한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>동적계획법, 탐욕알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>배낭채우기, 동전나누기, N-Queens</li>
													<li>유전자 알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="2">8일차</td>
											<td rowspan="2">
												기출문제와 예상문제를 바탕으로 문제풀이를 진행하고 학습방향을 제시한다.
											</td>
											<td>
												<교육내용><br/>
												<ul class="ul_dot_gray l">
													<li>영역크기 나누기, 체스를 이용한 러닝알고리즘</li>
													<li>배수로공사</li>
													<li>도시 방문 알고리즘, 배낭여행을 이용한 동적계획법</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>
												<실습주제><br/>
												<ul class="ul_dot_gray l">
													<li>정보올림피아드 기출문제풀이</li>
													<li>대기업 역량 TEST 문제풀이</li>
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

							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<!-- 자격증과정 소개 -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /자격증과정 소개 -->

						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=DS_Intermediate" class="btn mid green1">지원하기</a>
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