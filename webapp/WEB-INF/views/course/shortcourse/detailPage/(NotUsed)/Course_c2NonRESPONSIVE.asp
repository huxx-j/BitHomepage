<!DOCTYPE html>
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
			<% roadmapPageNum=2 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C2")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(2) a").addClass("on");
			
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
				<h3><span class="courseName">자료구조 및 초급 알고리즘</span></h3>
				<h4>문법을 올바르게 사용하고 또한 생각하는 대로 프로그램을 작성할 수 있도록 도와드리며 실습위주의 <br>교육운영으로 효율적인 프로그램 코드를 작성하는 능력을 향상</h4>
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
						<h4 class="fl">자료구조 및 초급 알고리즘</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1 fl mar_l10">지원하기</a>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">자료구조 및 초급 알고리즘</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>자료구조 및 초급 알고리즘</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">자료구조 및 초급 알고리즘</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li><span class="blueTxt">2017.04.01 ~ 2017.04.23</span></li>
												</ul>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li> 13:00 ~ 18:00(5시간 / 토,일 / 총40시간)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<!--394,440원--> <span class="blueTxt">(자체교재 제공)</span></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3"> <span class="blueTxt">(재직자 환급 문의)</span> </td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- 로드맵 -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //로드맵 -->

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
								font-size:14pt; 
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
							<p>데이터의 구조는 컴퓨터 분야의 필수 조건이 되었습니다.</p>
							<p>사고방식은 곧 프로그램의 능력입니다.</p>
							<p>능력을 업그레이드하며 프로그램을 완성해 갑니다.</p>
							<p>기본적 과정에서 학습한 것을 연계하여 학습함으로서</p>
							<p>문제 해결능력을 향상 시킵니다.</p>
						</div>
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>누가 수강하면 좋을까요?</h5>
							<ul class="ul_dot_gray">
								<li>C programming 과정을 수강하신 분</li>
								<li>자료구조에 대해서 자세한 학습이 필요하신분</li>
								<li>프로그래밍 및 소스코드 분석 능력 향상을 원하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>무엇을 배울까요?</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>자료구조와 알고리즘의 기본개념을 이해합니다.</li>
									<li>링크드 리스트를 완벽하게 학습니다.</li>
									<li>정렬을 통해 데이터를 다시 변경하는 것을 학습합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<td>
											자료구조와 알고리즘의 기본 개념 학습<br/>
											리스트의 기본 개념 학습
										</td>
										<td>
											<ul class="ul_dot_gray l">
 												<li>자료구조와 알고리즘</li>
												<li>재귀</li>
												<li>싱글링크드 리스트</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row">2일차</th>
										<td>간단한 정렬들을 비교함으로써 성능이 우수한 정렬의 내부구조를 분석한다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>버블,선택,삽입,삽입간접,쉘,퀵(라이브러리퀵),합병</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>더블링크드 리스트의 구조를 이해합니다.</li>
									<li>배열 또는 링크드 구조를 통해 스택을 구현합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<td>환형과 더블링크드 리스트 구조를 학습합니다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>환형링크드 리스트</li>
												<li>더블링크드 리스트</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row">4일차</th>
										<td>시스템의 콜 스택을 직접 구현하고 이해합니다.</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>비트처리실습, 시스템 콜 스택, 컴파일러 스택사용예</li>
											</ul>
										</td>
									</tr>
									
								</tbody>
							</table>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>큐와 트리에 대하여 개념을 이해하고 구현합니다.</li>
									<li>커널의 더블 링크드 리스트를 학습 및 구현합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
										<td>
											큐의 기본개념과 간단한 응용프로램 학습
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>큐,큐를 이용한 직접기수 정렬,커널의더블링크드리스트</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">6일차</th>
										<td>
											트리 구조의 이해
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>트리, tree정렬, 트리순회, 균형트리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>탐색을 하기 위한 자료구조를 학습합니다.</li>
									<li>그래프의 기본개념과 탐색을 학습합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:15%">
									<col style="width:45%">
									<col style="width:40%">
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
											탐색의 개선과 응용, 이진탐색트리의 개념을 이해한다.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>순차 탐색, 이진탐색, 이진탐색트리, red-black트리, 해쉬</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">8일차</th>
										<td>
											그래프의 표현과 저장, 맹목적탐색과 경험적탐색을 학습한다.
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>다익스트라, A-star 알고리즘</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1421 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=cds2_core" class="btn mid green1">지원하기</a>
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cdsVacation" class="btn mid green1">지원하기</a>-->
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