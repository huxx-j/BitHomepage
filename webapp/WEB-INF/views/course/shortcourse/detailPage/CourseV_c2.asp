<!DOCTYPE html>
<%
	SubjectName = "[방학특강] 자료구조 및 실습"
	CourseID = "cdsVacation"
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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");								
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
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>여름방학특강</a>
						</p>
						<h4><%=SubjectName%></h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cdsVacation.inc" -->
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cdsVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>394,440원</td>
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
							<img src="Images/C-Master.PNG" style="text-align:center; width:100%;"/>
							<div style="clear;both; height:10px;"></div>
							<!--<img src="img_Roadmap_C2.png" style="width:100%;"/>-->
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
										<col style="width:45%">
										<col style="width:45%">
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
												포인터와 구조체의 이해, 자료구조의 종류
											</td>
											<td>
C프로그래밍의 복습, 자료구조의 이해, 기본적 프로그래밍, 재귀함수
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">2일차</td>
											<td>
리스트구조의 이해와 실습
											</td>
											<td>
싱글리스트 종합
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">3일차</td>
											<td>
정렬의 내부구조를 분석 라이브러리 함수의 사용방법
											</td>
											<td>
정렬종합, 라이브러리 사용방법
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">4일차</td>
											<td>
함수포인터와 void*를 완전하게 이해 한다.
											</td>
											<td>
범용라이브러리의 구조의 이해와 구현, typedef의 이해
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">5일차</td>
											<td>
미니 프로젝을 통해 개별 코딩능력 향상
											</td>
											<td>
1주차 미니 프로젝트
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">6일차</td>
											<td>
더블링크드리스트를 통하여 링크드리스트에 대한 정복
											</td>
											<td>
환형링크드 리스트, 더블링크드 리스트
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">7일차</td>
											<td>
비트 처리를 통해 시스템의 콜스택을 이해한다.
											</td>
											<td>
비트처리, 시스템 콜스택,  컴파일러 스택사용 예
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">8일차</td>
											<td>
큐의 기본개념과 실습
											</td>
											<td>
큐의 이해, 기수정렬
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">9일차</td>
											<td>
트리의 이해와 heap을 사용한 우선순위 큐
											</td>
											<td>
tree의 이해와 순회, 힙구조의 이해
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">10일차</td>
											<td>
조별 프로젝을 통해 개별 코딩능력 향상
											</td>
											<td>
2주차 프로젝트
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">11일차</td>
											<td>
탐색의 이해
											</td>
											<td>
순차탐색 , 이진탐색, 라이브러리탐색 이해
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">12일차</td>
											<td>
BST의 이해, hash의 이해
											</td>
											<td>
이진탐색트리, rea-black트리, 해쉬
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">13일차</td>
											<td>
더블링크의 응용, 그래프 학습
											</td>
											<td>
리눅스커널리스트의 실습, 다익스트라, A-star 알고리즘
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">14일차</td>
											<td>
문자열검색알고리즘, make
											</td>
											<td>
여러가지 알고리즘, make파일의 이해
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row"  class="c">15일차</td>
											<td>
3주차 프로젝을 통해 개별 코딩능력 향상
											</td>
											<td>
3주차 프로젝트
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="blueTxt">*. 이론 60 : 실습 40</p>
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