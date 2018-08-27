<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->

			/* page load 직후 SNB 셋팅 */
			$(".snb_1702 a.newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.Uno1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(3) a").addClass("on");
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
				<h3><span class="courseName">아산캠퍼스 - 자료구조/알고리즘</span></h3>
				<h4> 프로그래밍 언어를 배운 후 처음으로 TOOL과 SKILL을 접해볼 수 있는 과정으로 <br>
				현업에 필요한 이론교육 및 그룹 프로젝트 수행을 통해 역량 강화할 수 과정</h4>
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
						<h4>아산캠퍼스 자료구조/알고리즘<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">지원하기</a></h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">대학비트</a>
							<a href="#this" class="last on">자료구조/알고리즘</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>자료구조/알고리즘</caption>
									<colgroup>
										<!--<col style="width:10%">-->
										<col style="width:15%">
										
										<col style="width:35%">
										<col style="width:10%">
										<col style="width:10%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교육과목</th>
											<td colspan="4">아산캠퍼스 자료구조/알고리즘</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_DS_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit" colspan="2">교육문의</th>
											<td> 02-3486-1422</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">교육과목</th>
											<td colspan="4">Java Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit" rowspan="3">강의일정</th>
											<td rowspan="3">
												<ul>
													<li>2015.07.13 ~ 2015.07.31</li>
												</ul>
											</td>
											<th scope="row" class="tit" rowspan="3">강의시간</th>
											<th scope="row" class="tit">오전반</th>
											<td>09:00 ~ 12:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 17:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit" colspan="2">교육문의</th>
											<td> 02-3486-1422</td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p class="mar_b10">프로그래밍 언어는 배웠으나 활용을 못하는 분들을 위한 과정입니다.<br>
							이 강좌를 통해 문법을 올바르게 사용하고 또한 생각하는 대로 프로그램을 작성할 수 있도록 도와드리며 실습위주의 교육운영으로 효율적인 프로그램 코드를 작성하는 능력을 향상시켜드립니다. </p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그램을 작성하기 위한 프로그램 문법 실력 배양</li>
								<li>자료구조를 통한 효율적인 알고리즘 구성 능력 배양</li>
								<li>약 2000줄 정도의 코드를 작성할 수 있는 자신감 고취</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C프로그래밍 중급이상</li>
								<li>자료구조 기초 시작</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C Programming</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>충남 아산시 탕정면 갈산리 100 선문대학교 원화관 5층</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>아산캠퍼스 자료구조/알고리즘 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
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
										<td>탐색</td>
										<td>정렬</td>
										<td>정렬의 이론과 실습</td>
									</tr>
									<tr>
										<td rowspan="7">선형구조</td>
										<td rowspan="3">단순연결리스트</td>
										<td>단순연결리스트의 개념 및 구조이해</td>
									</tr>
									<tr>
										<td>단순연결리스트의 실습 및 응용</td>
									</tr>
									<tr>
										<td>단순연결리스트의 실습 및 응용</td>
									</tr>
									<tr>
										<td rowspan="2">이중연결리스트</td>
										<td>이중연결리스트의 개념 및 구조이해</td>
									</tr>
									<tr>
										<td>이중연결리스트의 실습 및 응용</td>
									</tr>
									<tr>
										<td rowspan="2">스택&amp;큐</td>
										<td>스택과 큐의 개념 및 장단점 비교</td>
									</tr>
									<tr>
										<td>스택과 큐의 실습</td>
									</tr>
									<tr>
										<td rowspan="3">비선형구조</td>
										<td rowspan="3">트리</td>
										<td>트리의 개념 및 구조이해</td>
									</tr>
									<tr>
										<td>트리의 실습</td>
									</tr>
									<tr>
										<td>트리의 실습 및 확장형태이해</td>
									</tr>
								</tbody>
							</table>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
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