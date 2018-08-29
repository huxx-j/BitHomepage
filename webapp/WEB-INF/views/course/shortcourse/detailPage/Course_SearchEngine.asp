<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "Search_Engine"
SubjectName = "맞춤형 검색엔진"
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(0).addClass("on");  	// 맞춤형 검색엔진 ON
			
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
									<caption>맞춤형 검색 엔진 제작</caption>
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
											<!--<td>10:00 ~ 18:00 (1일 7시간)</td>-->
											<td>09:30 ~ 17:30 (1일 7시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원<!--500,000원--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">
												고용보험 비환급<!--근로자카드 (정규직 : 110,440원 | 비정규직 : 138,050원) | 사업주 훈련 : 최대 138,050원<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a>-->
											</td>
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
								비지니스 서비스의 발달과 소셜의 등장 등 으로 방대한 데이터를 활용할 필요성은 점점 커지고 있습니다. 하지만 방대한 데이터에서 원하는 데이터를 찾기 위해 좋은 효율을 갖는 검색 엔진이 필요합니다. 앞으로 이와 같은 기능이 필요한 곳은 많지만 실제 기술을 갖고 있는 이들은 절대적으로 부족합니다.<br/>
								본 과정 에서는 비지니스 서비스나 소셜, 빅데이터 구축 등 의 다양한 분야에서 요구하는 검색 엔진을 소개하고CBD개발 방법론에 맞추어 개발하는 전체과정을 진행합니다. 교육과정에서 다루는 사항은 웹 검색엔진을 구성하는 웹 로봇, 형태소분석기, 색인기, 랭커의 소개 및 CBD 개발 방법론에 따른 개발실습입니다.
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>역파일 생성기 제작 실습을 통한 목적에 맞는 검색 엔진 개발능력 함양</li>
								<li>형태소 분석기 제작 실습을 통한 데이터 파싱 능력 함양</li>
								<li>TF-IDF 랭커 개발을 통한 시멘틱 랭커 및 시멘틱 검색엔진 개발능력 함양</li>
								<li>CBD 개발 방법론의 공정에 따른 실습을 통한 효과적인 개발 공정이해</li>
								<li>데이터베이스설계 및 이를 활용하는 응용프로그램 제작기술 함양</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>검색 엔진을 개발하거나 학습하고자 하는 분</li>
								<li>빅데이터를 분석 및 재구성 서비스에 관한 업무를 하거나 원하는 분</li>
								<li>비지니스 서비스의 데이터 검색 관련 일을 원하시는 분</li>
								<li>실무 개발 방법론을 적용하는 방법을 익히고자 하는 분</li>
								<li>C++/Java/C#프로그래밍 언어 중에서 하나라도 사용할 수 있는 분</li>
								<li>Oracle/MySQL/MSSQ과 같은 DBMS와 연동하여 프로그래밍을 해보신 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>예상진로 (공부방향)</h5>
							<ul class="ul_dot_gray">
								<li>비지니스 서비스구축</li>
								<li>검색엔진 개발</li>
								<li>빅데이터 활용</li>
								<li>자연어연구</li>								
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>맞춤형 검색 엔진 제작 과정</caption>
									<colgroup>
										<col style="width:15%">
										<col style="width:15%">
										<col style="width:60%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" colspan="2">구분</th>
											<th scope="col">학습내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" scope="row" rowspan="7">1일차</td>
											<td>1교시</td>
											<td class="l">
												<ul>
													<li>오리엔테이션</li>
													<li>검색엔진 소개</li>
													<li>개발 시나리오</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2교시</td>
											<td class="l">
												<ul>
													<li>요구 기술 살펴보기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3교시</td>
											<td class="l">
												<ul>
													<li>요구 기술 살펴보기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4교시</td>
											<td class="l">
												<ul>
													<li>요구 분석 및 정의</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5교시</td>
											<td class="l">
												<ul>
													<li>유즈케이스 상세 기술</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6교시</td>
											<td class="l">
												<ul>
													<li>유즈케이스 상세 기술</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7교시</td>
											<td class="l">
												<ul>
													<li>아키텍쳐링(컴포넌트)</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c"  scope="row" rowspan="7">2일차</td>
											<td>1교시</td>
											<td class="l">
												<ul>
													<li>아키텍쳐링(시퀀스)</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2교시</td>
											<td class="l">
												<ul>
													<li>아키텍쳐링(시퀀스)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3교시</td>
											<td class="l">
												<ul>
													<li>DB 설계</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4교시</td>
											<td class="l">
												<ul>
													<li>프로토타이핑</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5교시</td>
											<td class="l">
												<ul>
													<li>Core 설계 및 구현</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6교시</td>
											<td class="l">
												<ul>
													<li>저장 프로시저 구현</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7교시</td>
											<td class="l">
												<ul>
													<li>저장 프로시저 구현</li>
												</ul>
											</td>
										</tr>

										<tr>
											<td class="darker c" scope="row" rowspan="7">3일차</td>
											<td>1교시</td>
											<td class="l">
												<ul>
													<li>웹 로봇 만들기</li>
												</ul>
											</td>
										</tr>
										
										<tr>
											<td>2교시</td>
											<td class="l">
												<ul>
													<li>형태소 분석기 만들기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>3교시</td>
											<td class="l">
												<ul>
													<li>역파일 생성기 만들기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>4교시</td>
											<td class="l">
												<ul>
													<li>랭커 만들기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>5교시</td>
											<td class="l">
												<ul>
													<li>검색 서비스 만들기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>6교시</td>
											<td class="l">
												<ul>
													<li>관리자 응용 만들기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td>7교시</td>
											<td class="l">
												<ul>
													<li>검색 응용 만들기</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=Search_Engine" class="btn mid green1">지원하기</a>
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