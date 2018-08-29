<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "db_modeling_core"
SubjectName = "데이터베이스 모델링"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(1).addClass("on");  	// 데이터베이스 모델링 ON
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Database
						</p>
						<h4><%=SubjectName%></h4>
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
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__db_modeling_core.inc" -->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>주4일(월,화,수,목) 2주간<br/>19:00 ~ 22:00 (1일 3시간)</td>-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__db_modeling_core.inc" -->
												<!--19:00 ~ 22:00 (1일 3시간)-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>240,000원<!--500,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 165,691원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">고용보험 비환급<!--근로자카드 (정규직 : 126,210원 | 비정규직 : 157,770원) | 사업주 환급 : 최대 157,770원<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a>--></td>
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
						<!-- //con_wrap1709 -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>
								본 과정은 최근 각 기업들의 주요 관심사로 떠오르고 있는 비즈니스 프로세스 관리(BPM) 기법과 기업의 핵심 인프라라고 할 수 있는 데이터베이스 아키텍처를 연동을 학습함으로써, 기업의 전산 담당자들에게 비즈니스 프로세스 관리에 대한 체계적인 이론과 방법을 소개하고 이를 데이터베이스로 구축하거나 아니면 기존에 구축되어있는 시스템과 비즈니스 프로세스를 연동시켜서 기업의 효율적인 전산 인프라를 구축하는 방법을 학습하게 된다. <br/>
								비즈니스 프로세스를 설계하기 위한 모델로 BPMN 2.0을 사용하고 있는데, BPMN(Business Process Modeling and Notation)은 OMG(Object Management Group, UML 표준화 주관단체)에서 제정한 비즈니스 프로세스를 표현하기 위한 새로운 국제 표준 표기법으로 가장 최신 버전은 2011년 1월에 릴리즈된 BPMN 2.0이다. <br/>
								이러한 BPMN 2.0은 비즈니스 프로세스를 표현하기 위한 훨씬 더 정교하고 다양한 표기법이 등장했으며, 이렇게 작성된 다이어그램을 메타데이터(UML)과 데이터베이스 모델링과 연동시킬 수 있도록 하기 위해 메타데이터 연동에 대한 정의도 강화되었기 때문에 진정한 엔터프라이즈 아키텍처의 핵심 표기법이라 할 수 있다. <br/>
								그러므로 본 과정을 이수하게 되면, 담당자는 기업의 핵심 인프라라고 할 수 있는 비즈니스 프로세스를 BPMN 2.0을 통해서 정확히 정의하고 이를 효율적으로 수행할 수 있는 수단과 방법을 익힐 수 있으며, 이를 기업의 핵심 인프라인 데이터베이스 아키텍처를 설계하고 연동하는 기술에 대해서도 학습하게 된다.
							</p>							
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<p>
								이 과정을 통해 데이터베이스 설계와 관련한 전체 레이아웃과 실무에 적용하면서 발생하는 다양한 팁과 테크닉 등을 체계적으로 학습할 수 있으며, 데이터 표준화와 이를 적용하는 방법 등을 학습함으로써 전사 차원의 데이터 품질관리 역량을 키울 수 있다.
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<p>모든 데이터베이스 학습자 및 프로그램 개발자</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>예상 진로 (및 공부방향)</h5>
							<p>데이터베이스 및 프로그램 개발</p>
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
										<td>5/9</td>
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
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:25%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
											<th scope="col">상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="2">BPMN과 EA</td>
											<td class="darker c" scope="row">BPMN 소개</td>
											<td>
												<ul class="ul_dot_gray">
													<li>비즈니스  프로세스 관리(BPM) 개요</li>
													<li>BPMN(Business Process Modeling and Notation) 소개</li>
													<li>엔터프라이즈 아키텍처(Enterprise Architecture) 소개</li>
													<li>BPMN과 BPEL 그리고 SOA 아키텍처</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">BPMN 표기법</td>
											<td>
												<ul class="ul_dot_gray">
													<li>게이트웨이(Gateway)</li>
													<li>이벤트(Event)</li>
													<li>협업 모델(Collaboration)</li>
													<li>액티비티(Activity)</li>
													<li>예외 처리(Exception Handling)</li>
													<li>트랜잭션(Transaction)과 보상(Compensation) 프로세스<br/>- 보상 프로세스 직접 호출</li>
													<li>프로세스 안의 데이터 객체(Data Object)</li>												
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">관계형 데이터 모델링</td>
											<td class="darker c" scope="row">데이터 표준화</td>
											<td>
												<ul class="ul_dot_gray">
													<li>데이터 품질 관리</li>
													<li>데이터 요건 분석</li>
													<li>데이터 표준화 절차</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">관계형 데이터베이스 소개</td>
											<td>
												<ul class="ul_dot_gray">
													<li>데이터 모델링이란?</li>
													<li>관계형 데이터베이스 관리 시스템 </li>
													<li>예제를 통한 관계형 데이터베이스에 대한 이해</li>
													<li>데이터 무결성</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">데이터 무결성</td>
											<td>
												<ul class="ul_dot_gray">
													<li>참조 무결성</li>
													<li>엔티티 무결성</li>
													<li>도메인 무결성</li>
													<li>사용자 정의 무결성</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">데이터 모델링</td>
											<td class="darker c" scope="row">개념적 데이터 모델링</td>
											<td>
												<ul class="ul_dot_gray">
													<li>개념적 데이터 모델링 정의</li>
													<li>실체 정의</li>
													<li>속성 정의</li>
													<li>식별자 정의</li>
													<li>관계 정의</li>
													<li>차수 정의</li>
													<li>선택성 정의</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">논리적 데이터 모델링</td>
											<td>
												<ul class="ul_dot_gray">
													<li>논리적 데이터 모델링 정의</li>
													<li>정규정의 종류</li>
													<li>제 1 정규형</li>
													<li>제 2 정규형</li>
													<li>제 3 정규형</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">물리적 데이터 모델링</td>
											<td>
												<ul class="ul_dot_gray">
													<li>물리적 데이터 모델링 정의</li>
													<li>데이터 사용량과 사용자들의 프로세스 분석</li>
													<li>역정규화 방법</li>
													<li>테이블 설계서 작성</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row" rowspan="3">모델링 실습</td>
											<td class="darker c" scope="row">모델링 툴 사용방법</td>
											<td>
												<ul class="ul_dot_gray">
													<li>모델링 툴에 대한 소개</li>
													<li>설치 및 환경 구성</li>
													<li>사용 방법 소개</li>
													<li>모델링 예제 작성</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">대여 샵 모델링 실습</td>
											<td>
												<ul class="ul_dot_gray">
													<li>업무 분석 및 업무 프로세스 모델링</li>
													<li>데이터 표준화 방법</li>
													<li>개념적 데이터 모델링</li>
													<li>논리적 데이터 모델링</li>
													<li>물리적 데이터 모델링</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">모델링 실습</td>
											<td>
												<ul class="ul_dot_gray">
													<li>인터넷 서점 데이터  모델링 실습</li>
													<li>온라인 경매 데이터  모델링 실습</li>
												</ul>
											</td>
										</tr>
										
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 <span>(e-mail : bithrd@bit.kr)</span></p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=db_modeling_core" class="btn mid green1">지원하기</a>
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
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>