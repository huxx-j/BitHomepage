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
				<h3><span class="courseName">여름특강 - C# Programming</span></h3>
				<h4>프로그래밍에 관심을 갖고 있지만 처음 접하시는 분, 다른 프로그래밍 언어는 접해 보았지만 C# 언어는<br> 모르시는 분, C# 언어를 배우기는 했지만 정확한 개념이 없는 분들을 대상으로, 기본 문법과 OOP 및 구현까지 체계적으로 학습하는 과정</h4>
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
						<h4 class="fl">여름특강 - C# Programming</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">여름특강 - C# Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>여름특강 - C# Programming</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">여름특강 - C# Programming</td>
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
											1차 : 14:00 ~ 18:00 (1일 4시간 / 월 ~ 금)<br>
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
							<p>본 과정은 프로그래밍에 관심을 갖고 있지만 처음 접하시는 분, 다른 프로그래밍 언어는 접해 보았지만 C# 언어는 모르시는 분, C# 언어를 배우기는 했지만 정확한 개념이 없는 분들을 대상으로, 기본 문법과 OOP 및 구현까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C#언어와 OOP의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래머의 기본인 프로그래밍 언어에 대한 자신감 고취 </li>
								<li>OOP 특징을 기반으로 효과적인 설계 및 구현 능력 배양 </li>
								<li>문법, 설계, 구현 능력을 균형있게 교육 (이론:실습 = 3:7) </li>
								<li>NET 기반의 응용 프로그래밍에 필요한 C# 언어 구사 능력 배양</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>C# Programming 커리큘럼</caption>
								<colgroup>
									<col style="width:20%">
									<col style="width:20%">
									<col style="width:60%">
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
										<th scope="row" rowspan="4">C# 기본 문법</th>
										<td class="c">소개</td>
										<td>
											<ul class="ul_dot_gray">
												<li>.NET Framework 구조</li>
												<li>C# 콘솔 응용 프로젝트 소스 구조</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">C# 구성 요소</td>
										<td>
											<ul class="ul_dot_gray">
												<li>형식 개요, 변수 개요</li>
												<li>연산자, 제어문</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">형식 개요</td>
										<td>
											<ul class="ul_dot_gray">
												<li>Objec, Boxing과 UnBoxing</li>
												<li>배열, 문자열</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="c">값 형식</td>
										<td>
											<ul class="ul_dot_gray">
												<li>구조체(정수, 부동 소수점 형식, decimal, bool, 사용자 정의 구조체) 열거형</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row" rowspan="3">OOP</th>
										<td rowspan="3" class="c">캡슐화</td>
										<td>캡슐화 대상</td>
									</tr>
									<tr>
										<td>메소드 오버로딩과 생성자를 학습한다.</td>
									</tr>
									<tr>
										<td>개체의 멤버와 정적 멤버</td>
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