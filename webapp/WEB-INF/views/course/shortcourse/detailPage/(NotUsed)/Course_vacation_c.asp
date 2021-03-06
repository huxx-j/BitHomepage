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
				<h3><span class="courseName">여름특강 - C Programming</span></h3>
				<h4>이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 <br>있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</h4>
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
						<h4 class="fl">여름특강 - C Programming</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">여름특강 - C Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>여름특강 - C Programming</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">여름특강 - C Programming</td>
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
											2차 : 14:00 ~ 18:00 (1일 4시간 / 월 ~ 금)<br>
											3차 : 09:00 ~ 13:00 (1일 4시간 / 월 ~ 금)
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
							<p>본 과정은 C언어는 접해보았지만, 정확한 개념이 없는 분, C언어를 처음 배우시는 분들을 대상으로, 기본 문법에서 코딩까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래머의 첫 관문으로 프로그래밍 언어에 대한 자신감 고취</li>
								<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
								<li>프로그래밍 강화로 본인만의 능력 구축</li>
								<li>문법적인 공부를 탈피하여 스스로 생각하여 프로그램을 작성할 수 있는 능력배양 (이론:실습 = 3:7)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>C Programming 커리큘럼</caption>
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
										<th scope="row" rowspan="6">C언어 기본구조</th>
										<td>C언어 환경</td>
										<td>C언어 특징, 컴파일러 사용법</td>
									</tr>
									<tr>
										<td>C언어 구조</td>
										<td>데이터 형, 변수 사용법</td>
									</tr>
									<tr>
										<td rowspan="4">C언어 기본문법</td>
										<td>기본 입출력 함수, 연산자</td>
									</tr>
									<tr>
										<td>조건문</td>
									</tr>
									<tr>
										<td>반복문</td>
									</tr>
									<tr>
										<td>C기본 문법에 대한 실습</td>
									</tr>

									<tr>
										<th scope="row" rowspan="8">포인터와 배열</th>
										<td rowspan="2">배열</td>
										<td>1차원 배열 이론</td>
									</tr>
									<tr>
										<td>2차원 배열 이론</td>
									</tr>
									<tr>
										<td rowspan="2">함수</td>
										<td>함수의 이론</td>
									</tr>
									<tr>
										<td>함수와 포인터의 관계</td>
									</tr>
									<tr>
										<td rowspan="4">포인터</td>
										<td>1차원 배열과 포인터</td>
									</tr>
									<tr>
										<td>문자열과 포인터</td>
									</tr>
									<tr>
										<td>2차원 배열과 포인터</td>
									</tr>
									<tr>
										<td>메모리 관리와 동적할당</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">C언어의 확장</th>
										<td rowspan="2">구조체</td>
										<td>구조체 이론</td>
									</tr>
									<tr>
										<td>구조체 배열과 포인터</td>
									</tr>
									<tr>
										<td>전처리기</td>
										<td>매크로와 전처리기</td>
									</tr>
									<tr>
										<td>파일입출력</td>
										<td>파일입출력 이론 및 실습</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423</p>
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