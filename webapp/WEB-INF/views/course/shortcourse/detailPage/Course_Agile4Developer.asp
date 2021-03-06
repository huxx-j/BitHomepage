<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "Agile"
SubjectName = "Agile 소프트웨어 개발 실무"
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(5).addClass("on");								// Project Management
			$(".snb_1709 .newdepth2_wrap").eq(5).addClass("on");						// Project Management SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no6 .newdepth2").eq(0).addClass("on");  	// Agile 소프트웨어 개발 실무 ON
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Project Management
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
												<ul>
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">개인바우처 = 우선지원대상기업 기준 : 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<!--<td colspan="3">근로자카드 / 바우처 : 263,520원 | 사업주 훈련 : 우선지원대상 기업기준 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">고용보험 비환급<!--근로자카드(정규직 : 175,770원 | 비정규직 : 219,720원) | 사업주 환급 : 최대 219,720원 <a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a>--></td>
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
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>
								애자일(agile) 모델은 요즘 소프트웨어 개발시장에서 각광받고 있는  개발방법론으로 특히  소규모 프로젝트에서 많은 이점을 지니고 있어 소프트웨어 개발 시장에서 그 비중이 점점 높아지고 있습니다. 그러나 현재 소프트웨어 관련 서적들을 보면 애자일 개발 실무 자체보다는 애자일의 가치와 관리 방법을 서술하는 수준에 머무르고 있는 것이 현실입니다.<br/>
								본 교육과정은 애자일을 배우고자 하는 개발자 혹은 애자일 개발 실무를 지휘하는 관리자를 위한 교육과정으로 Scrum을 기반으로 애자일 실무 사례를 다양하게 제시함으로써 애자일 개발 실무를 구체적이고 종합적으로 이해하는 데 도움을 줍니다. 
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<p></p>
						-->
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						<!--
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>애자일을 실천하고자 하는 초,중급 개발자</li>
								<li>애자일 개발 과정을 이해하고자 하는 관리자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
																		
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>세부내용</h5>
							<ul class="ul_dot_gray">
								<li>1. 검색 엔진이란? </li>
								<li>2. 검색 엔진 만들기 요구 분석 및 정의</li>
								<li>3. 검색 엔진 만들기 아키텍쳐링</li>
								<li>4. DB 설계</li>
								<li>5. Core 검색 엔진 컴포넌트 만들기</li>
								<li>6. 검색 로봇 만들기</li>
								<li>7. 형태소 분석기 만들기</li>
								<li>8. 색인기 만들기</li>
								<li>9. 랭커 만들기</li>
								<li>10. 검색 엔진 서비스를 이용하는 응용 만들기</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>강의운영방식 : 이론 / 실습</h5>
							<p>
								본 강의는 크게 이론과 개발 방법론 실습 세 가지 방법으로 진행한다 먼저 검색 엔진의 소개에서 이론을 다루고 이후에 과정은 개발 방법론에 의거하여 단계 별로 다이어그램을 작성하고 이에 맞게 프로그래밍 실습으로 이루어진다. 이 과정을 통해 얻은 지식은 다양한 형태의 지식 정보 기반 프로젝트에서 효과적인 검색 서비스를 제공하는 기술을 익힐 수 있다								
							</p>							
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>OOP 언어(C++, Java, C#)</li>
								<li>SQL(MySQL, Oracle, MS SQL)</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"></th>
											<th scope="col">강의 내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row">1~2일차</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>애자일 방법론 개요</li>
													<li>Scrum 개발 프로세스</li>
													<li>요구와 백로그</li>												
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">3~4일차</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>사용자 스토리 작성</li>
													<li>사용자 스토리 산정</li>
													<li>스프린트0: 소프트웨어 아키텍처</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">5~6일차</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>애자일 아키텍처 설계</li>
													<li>애자일 아키텍처 문서화</li>
													<li>애자일 아키텍처 평가</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">7~8일차</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>스프린트 #: 분석과 설계, 모델링 </li>
													<li>도메인 주도 설계</li>
													<li>데이터 설계</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">9~10일차</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>디자인 패턴</li>
													<li>리팩토링</li>
													<li>테스트 주도 개발</li>
													<li>연속적 통합</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Agile" class="btn mid green1">지원하기</a>
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