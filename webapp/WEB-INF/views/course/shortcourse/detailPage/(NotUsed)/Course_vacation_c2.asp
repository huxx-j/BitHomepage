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

	<script type="text/javascript">
		$(document).ready(function(){
			ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(1).addClass("on");
		});
	</script>

</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">여름특강 - 자료구조(C 기반)</span></h3>
				<h4>문법을 올바르게 사용하고 또한 생각하는 대로 프로그램을 작성할 수 있도록 도와드리며 실습위주의 <br>교육운영으로 효율적인 프로그램 코드를 작성하는 능력을 향상</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">여름특강 - 자료구조(C 기반)</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">여름특강 - 자료구조(C 기반)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>여름특강 - 자료구조(C 기반)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">여름특강 - 자료구조(C 기반)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
											1차 : 2015.06.23 ~ 2015.07.13 (15일 / 총 60시간)<br>
											2차 : 2015.07.14 ~ 2015.08.03 (15일 / 총 60시간)<br>
											3차 : 2015.08.04 ~ 2015.07.24 (15일 / 총 60시간)
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
											1차 : 09:00 ~ 13:00 (1일 4시간 / 월 ~ 금)<br>
											2차 : 09:00 ~ 13:00 (1일 4시간 / 월 ~ 금)<br>
											3차 : 14:00 ~ 18:00 (1일 4시간 / 월 ~ 금)
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>350,000원 <span class="greenTxt">마일리지 <span class="blueTxt">10%</span>적립 (35,000원)</span></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
									</tbody>
								</table>
								<p class="mar_t5 redTxt fb">* 환급불가 / 더블 마일리지 혜택</p>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>프로그래밍 언어는 배웠으나 활용을 못하는 분들을 위한 과정입니다. <br>이 강좌를 통해 문법을 올바르게 사용하고 또한 생각하는 대로 프로그램을 작성할 수 있도록 도와드리며 실습위주의 교육운영으로 효율적인 프로그램 코드를 작성하는 능력을 향상시켜드립니다. </p>
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
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>자료구조(C 기반) 커리큘럼</caption>
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
										<th scope="row">탐색</th>
										<td>정렬</td>
										<td>정렬의 이론과 실습</td>
									</tr>

									<tr>
										<th scope="row" rowspan="7">선형구조</th>
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
										<th scope="row" rowspan="3">비선형구조</th>
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
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1421</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1">지원하기</a>
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