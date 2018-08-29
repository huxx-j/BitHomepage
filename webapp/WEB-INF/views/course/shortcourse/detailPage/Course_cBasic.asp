<!DOCTYPE html>
<html lang="ko">
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
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("CBASIC")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">C 기초</span></h3>
				<h4>프로그래밍을 처음 접하시는 분들이 부담없이 수강하실 수 있는 과정!</h4>
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
						<h4 class="fl">C 기초 (주말반)</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">C 기초</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C 기초</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">C 기초 (주말반)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li>2015.11.7 ~ 2015.11.28<br/>(4주/매주 토요일)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">1일 8시간 * 4일(총 32시간) </span>
												<ul class="ul_dot_gray">
													<li>강의 : 09:00 ~ 18:00(8시간)</li>
												</ul>

											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>250,000원 <!--<span class="greenTxt">마일리지<span class="blueTxt"> 5%</span>적립(17,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 280,000원 | 비정규직 : 350,000원) / 사업주 환급 : 우선지원대상기업 기준 279,980원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용자세히보기</a></td>
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
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>본 과정은 프로그래밍 언어를 처음 배우시는 분들을 대상으로, 기본 문법에서 코딩까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>
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
							<table class="table_col_type2" style="width:60%">
								<caption>C Programming 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">구분</th>
										<th scope="col">상세내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="4">1일차</th>
										<td rowspan="2">툴사용법</td>
										<td>컴파일과 디버깅</td>
									</tr>
									<tr>
										<td>Visual Studio 접근</td>
									</tr>
									<tr>
										<td rowspan="2">기본문법</td>
										<td>이진수와 변수, 연산자</td>
									</tr>
									<tr>
										<td>기초함수, 선택문, 반복문</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">2일차</th>
										<td rowspan="2">함수</td>
										<td>함수의 종류 및 이해</td>
									</tr>
									<tr>
										<td>함수호출 및 실습</td>
									</tr>
									<tr>
										<td rowspan="2">배열</td>
										<td>변수와 1차원배열</td>
									</tr>
									<tr>
										<td>문자열과 문자열함수</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">3일차</th>
										<td>배열</td>
										<td>2차원배열</td>
									</tr>
									<tr>
										<td rowspan="3">포인터</td>
										<td>싱글포인터</td>
									</tr>
									<tr>
										<td>더블포인터</td>
									</tr>
									<tr>
										<td>다차원포인터</td>
									</tr>

									<tr>
										<th scope="row" rowspan="4">4일차</th>
										<td rowspan="2">동적할당</td>
										<td>전처리기의 이해</td>
									</tr>
									<tr>
										<td>동적할당이해 및 실습</td>
									</tr>
									<tr>
										<td rowspan="2">구조체</td>
										<td>스토리지 클래스</td>
									</tr>
									<tr>
										<td>구조체 이해 및 파일입출력</td>
									</tr>

								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:bithrd@bit.kr)</p>
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