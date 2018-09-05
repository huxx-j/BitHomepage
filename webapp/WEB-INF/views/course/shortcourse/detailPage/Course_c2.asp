<!DOCTYPE html>
<%
	'(old) 자료구조 및 초급 알고리즘
	'자료구조
	CourseID = "cds2_core"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<!-- 좌측메뉴에 직접적으로 해당 과목을 첨부하기 전에 사용하던 소스
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
		});
	</script>
	-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../../../../../../../../Desktop/shortcourse%20(2)/detailpage/Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no4").addClass("on").removeClass("plus").addClass("minus");	// 자료구조/알고리즘 ON
			$(".snb_1709 .newdepth4_wrap.no4").addClass("on").css('display','block');	// 자료구조/알고리즘 ON
			$(".snb_1709 .newdepth4_wrap.no4 li:eq(0) a").addClass("on");				// 자료구조 ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>자료구조/알고리즘
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주말반
						</p>
						<h4>[주말반] 자료구조</h4>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
					</div>
					<section class="section">
						
						<!-- con_wrap -->
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cds2_core.inc" -->
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cds2_core.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th scope="row" class="tit">정원</th>
											<td>30명</td>
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
							
						</div>
						<!-- //con_wrap -->

						<div style="clear:both;"></div>

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- 로드맵 -->
						<div class="con_wrap1709">
							<h5>과정 로드맵</h5>
							<div>
								<img src="img_Roadmap_C2.png" style="width:100%;"/>
							</div>
						</div>
						<!-- //로드맵 -->

<!--						
<div class="myBlackBox" style="font-size:13pt;">
	<p>데이터의 구조는 컴퓨터 분야의 필수 조건이 되었습니다.</p>
	<p>사고방식은 곧 프로그램의 능력입니다.</p>
	<p>능력을 업그레이드하며 프로그램을 완성해 갑니다.</p>
	<p>기본적 과정에서 학습한 것을 연계하여 학습함으로서 문제 해결능력을 향상 시킵니다.</p>
</div>
-->					
						<!-- con_wrap -->
						<div class="con_wrap1709"> <!-- style="z-index:1;">--> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<!--<h5>누가 수강하면 좋을까요?</h5>-->
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C programming 과정을 수강하신 분</li>
								<li>자료구조에 대해서 자세한 학습이 필요하신분</li>
								<li>프로그래밍 및 소스코드 분석 능력 향상을 원하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:35%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">교육일자</th>
											<th scope="col" class="c">교육목표</th>
											<th scope="col" class="c">교육내용 및 실습주제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row"  class="c">1일차</td>
											<td>
												기본형 메모리 구조와 구조체의 이해, 자료구조와 알고리즘의 기본 개념 학습
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>메모리 구조</li>
													<li>구조체</li>
													<li>자료구조와 알고리즘</li>
													<li>재귀</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">2일차</td>
											<td>
												리스트의 구조 이해와 실습
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>싱글링크드리스트</li>
													<li>배열</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">3일차</td>
											<td>
												간단한 정렬들을 비교함으로써 성능이 우수한 정렬의 내부구조를 분석<br/>
												라이브러리 함수의 사용방법을 알아본다.
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>버블,선택,삽입,삽입간접,쉘,퀵(라이브러리퀵),합병</li>
													<li>라이브러리 qsort()</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">4일차</td>
											<td>
												환형과 더블링크드 리스트 구조 학습
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>환형링크드 리스트 그림그리기</li>
													<li>더블링크드 리스트 이해와 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">5일차</td>
											<td>
												시스템의 콜 스택을 직접 구현과 이해<br/>
												큐의 기본개념과 간단한 응용프로그램 학습 
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>비트처리실습, 시스템 콜 스택, 컴파일러 스택 사용 예</li>
													<li>큐, 큐를 이용한 직접기수 정렬 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">6일차</td>
											<td>
												트리 구조의 이해  트리와 탐색
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>tree정렬, 트리순회, 균형트리</li>
													<li>순차 탐색, 이진탐색이해와 구현</li>
													<li>bsearch()함수 사용하기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">7일차</td>
											<td>
												이진탐색트리의 개념을 이해
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>이진탐색트리 이해와 구현
													<li>red-black트리
													<li>해쉬의 이해와 실습
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">8일차</td>
											<td>
												그래프의 표현과 저장, 맹목적탐색과 경험적탐색 학습
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>커널의 더블링크드 리스트 이해와 실습</li>
													<li>다익스트라, A-star 알고리즘</li>
													<li>프로젝트 실습</li>
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

					</section>
				</div>
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