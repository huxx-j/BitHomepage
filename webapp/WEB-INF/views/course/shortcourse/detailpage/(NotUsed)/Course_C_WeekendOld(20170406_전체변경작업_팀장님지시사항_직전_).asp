<!DOCTYPE html>
<%
	dim strDateTime
	strDateTime	= "2017.05.13 ~ 2017.06.04"
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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			<% roadmapPageNum=1 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->
		
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C_WEEKEND")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(1) a").addClass("on");

			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">C Programming (주말)</span></h3>
				<h4>이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 <br>있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</h4>
			</div>
		</div>
		
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">C Programming (주말)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=C_Weekend" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">C Programming (주말)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming (주말)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">과목명</th>
											<td colspan="3">C Programming (주말)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDateTime%></li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">1일 5시간 * 8일(총 40시간) </span>
												<ul class="ul_dot_gray">
													<li>토/일</li>
													<li>강의 : 13:00 ~ 18:00(5시간)</li>
												</ul>												
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원 <!--262,960원 --><span class="blueTxt">(재직자 환급 가능)</span> </td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">* 본 과정은 상시모집이며 개강 최소인원이 모였을 때, 일정 조율 후 누적지원자들에게 연락하여 개강됩니다.</span>
								
								<div> <!-- div 환급비 -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련 <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>-->
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //고용보험환급안내 -->

									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:19%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:11%">
												<col style="width:8%">
												<!--<col style="width:21%">-->
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>지원대상 분류</th>
													<th>상시근로자 수</th>
													<th>교육비</th>
													<th>환급금</th>
													<th>기업부담금</th>
													<th>환급비율</th>
													<!--<th>환급금내용 자세히보기</th>-->
												</tr>
												<tr>
													<td rowspan="2">우선지원대상기업<br/>(중소기업)</td>
													<td>50명 미만</td>
													<td rowspan="4">400,000원</td>
													<td>262,960원</td>
													<td>137,040원</td>
													<td>65%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50명 이상</td>
													<td>236,660원</td>
													<td>163,340원</td>
													<td>59%</td>
												</tr>
												<tr>
													<td rowspan="2">중견 또는 대기업</td>
													<td>1,000명 미만</td>
													<td>157,770원</td>
													<td>242,230원</td>
													<td>39%</td>
												</tr>
												<tr>
													<td>1,000명 이상</td>
													<td>105,180원</td>
													<td>294,820원</td>
													<td>26%</td>
												</tr>
												
											</tbody>
										</table>
										<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 400,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
										<span class="redTxt"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										근로자 직무능력향상지원 <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>-->
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //고용보험환급안내 -->

									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										
										<table class="table_col_type1">
											<colgroup>
												<col style="width:19%">
												<col style="width:26%">
												<col style="width:10%">
												<col style="width:12%">
												<col style="width:12%">
											</colgroup>
											<tbody style="text-align:center;">
												<tr>
													<th>지원대상 분류</th>
													<th>대상</th>
													<th>교육비</th>
													<th>개인부담금</th>
													<th>자부담비율</th>
													
												</tr>
												<tr>
													<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
													<td>비정규직</td>
													<td rowspan="9">400,000원</td>
													<td rowspan="4">137,040원</td>
													<td rowspan="4">34%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
												</tr>
												<tr>
													<td>정규직</td>
												</tr>
												<tr>
													<td rowspan="5">중견 또는 대기업</td>
													<td>비정규직</td>
													<td>137,040원</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
													<td>137,040원</td>
													<td>34%</td>
												</tr>
												<tr>
													<td>정규직(50세이상)</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
												<tr>
													<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
													<td>189,630원</td>
													<td>47%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
										<span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
										-->
									</div>
								</div> <!-- // div 환급비 -->
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- 로드맵 -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //로드맵 -->
						
						
						<!-- con_wrap -->
						<div class="con_wrap first">
							<style>
								.myYellow {
									color:#FFFF00;
								}
								.myBlackBox {
									width:94%; 
									background-color:#404040; 
									margin:1%; 
									padding:2%; 
									color:white; 
									text-align:center; 
									font-size:11pt; 
									box-shadow:1px 4px 4px #7f7f7f;
								}
								.myBlueBox {
									background-color:#094472;
									margin:0;
									padding:2%;
									color:white;
									text-align:left;
									font-size:11pt;
								}
							</style>
							<div class="myBlackBox">
								<p>초,중,고 의무교육과정의 필수가 되는 시대!</p>
								<p>비전공자도 어렵다는 소프트웨어를 충분히 이해하고 구현 할 수 있습니다.</p>
								<p>전공자도 기초를 다시 한번 튼튼히 하는 계기가 될 것입니다.</p>
								<p>우리에게 필요한 것은 자신을 위한 열정.</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>어떤 내용을 배울까요?</h5>
							<ul class="ul_dot_gray">
								<li>C언어는 모든 컴퓨터 시스템에서 사용할 수 있는 프로그래밍 언어 입니다.</li>
								<li>C로부터 많은 언어가 파생되어 나왔습니다. C++, JAVA, C#, Python이 대표적 입니다.</li>
								<li>정확하게 배우지 않으면 뿌연 안개처럼 자신의 실력을가늠할 수 없겠지요?</li>
								<li>취미로 수영을 한다와 국가대표로 수영을 한다 는 많은 차이가 날 수 밖에 없습니다.</li>
								<li>기초적인언어지만 정확하게 배우면 여려분의 실력의 가늠자과 될 수 있는 막강한 언어이기도 합니다.</li>
								<li>국가대표처럼요!</li>
								<li>비전공자는 열정으로 전공자는 제대로 실력을 가다듬을 수 있는 본 과정을 수강하세요.</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>누가 수강하면 좋을까요?</h5>
							<ul class="ul_dot_gray">
								<li>비전공자이면서 컴퓨터에 취미가 있어 열정이 넘치시는 분</li>
								<li>전공을 바꿔 잠시 프로그램의 세계에 푹 빠지려 하시는 분</li>
								<li>전공자지만 정확하게 다시 C언어를 알아가고 업그레이드 하실 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>커리큘럼</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>컴파일이란 우리가 구현한 프로그램을 컴퓨터가 알아듣도록 번역해주는 과정을 말하는 것입니다.</li>
									<li>컴파일러는 잘못된 코드나 문법에 대하여 가르쳐 줍니다</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
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
										<th scope="row">1일차</th>
										<td>C언어의 이해와 기초지식</td>
										<td>컴파일러와 사람, 10진수,2진수,16진수의 이해, 기본입출력, 연산자</td>
									</tr>
									<tr>
										<th scope="row">2일차</th>
										<td>조건,반복,분기를 통하여 프로그램의 실행흐름을 학습한다.</td>
										<td>조건문, 반복문, 분기문</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>모든 프로그래밍 언어는 길게 늘어선 메모리들을 편리하게 처리합니다.</li>
									<li>모든 언어의 모태인 C언어가 어떻게 메모리들을 처리할까요?</li>
									<li>상식적이고도 그럴수 밖에 없는 개념을 이해합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
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
										<th scope="row">3일차</th>
										<td>원하는 정보(숫자,문자,문자열)를 다양한 방법으로 저장하여 처리하는 방법을 학습한다.</td>
										<td>주소연산자, 1차원 배열, 문자열</td>
									</tr>
									<tr>
										<th scope="row">4일차</th>
										<td>1차원보다 진화된 2차원배열을 자세히 학습하여 3차원배열을 쉽게 이해한다.</td>
										<td>2차원 배열, 3차원 배열, 간접연산자</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>수많은 공학도들을 좌절 시키게 한 포인터!</li>
									<li>수많은 공학도들을 강의실 밖으로 밀쳐낸 포인터!</li>
									<li>과연 그 포인터가 어렵기만 할까요?</li>
									<li>대학에서 가르쳐주지 않았던 자세한 포인터의 처리과정을 정확하게 이해하다보면</li>
									<li>여러분은 강의실 안으로 변함 없이 들어올 것 입니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
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
										<th scope="row">5일차</th>
										<td>메모리 처리의 정석인 포인터를 이해하고 학습합니다.</td>
										<td>단일포인터, 이중포인터, 포인터 연산</td>
									</tr>
									<tr>
										<th scope="row">6일차</th>
										<td>C언어의 핵심류에 속하는 함수! 함수간의 메모리전달을 완벽하게 학습한다.</td>
										<td>배열포인터, 포인터배열, 함수간 포인터처리</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>앞서 배운 포인터가 충분히 이해되었다면 7,8일차는 매우 쉽게 학습 할 수 있습니다.</li>
									<li>포인터가 어느 곳에 어떠한 방법으로 응용되어 쓰이는지 궁금합니다.</li>
									<li>여러분의 궁금증이 조금씩 풀려 갈 것입니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
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
										<th scope="row">7일차</th>
										<td>
											<ul class="ul_dot_gray">
												<li>다른 형태의 포인터와 처리과정을 이해하고 학습한다.</li>
												<li>컴파일 전에 일어나는 과정들을 구현 및 학습한다.</li>
											</ul>
										</td>
										<td>함수포인터, 범용포인터, typedef, 스토리지클래스</td>
									</tr>
									<tr>
										<th scope="row">8일차</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>동적으로 만들수 있는 메모리의 학습과 처리.</li>
												<li>자료구조의 근간이 되는 구조체 구조의 이해와 실습.</li>
												<li>큰 프로그램을 위한 파일 입출력을 학습한다.</li>
											</ul>
										</td>
										<td>동적할당, 구조체, 파일입출력</td>
									</tr>
								</tbody>
							</table>
							
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->

						
						<!-- 자격증과정 소개 -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /자격증과정 소개 -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C_Weekend" class="btn mid green1">지원하기</a>
						</div>
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>