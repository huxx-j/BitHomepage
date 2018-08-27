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
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(2) a").addClass("on");
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
				<h3><span class="courseName">아산캠퍼스 - C++ Programming</span></h3>
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
						<h4>아산캠퍼스 C++ Programming<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">지원하기</a></h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">대학비트</a>
							<a href="#this" class="last on">아산캠퍼스 C++ Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C++ Programming</caption>
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
											<td colspan="4">아산캠퍼스 C++ Programming</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_Cpp_DetailPageTR.inc" -->
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
							<p class="mar_b10">본 과정은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C++ 프로그래밍의 전반적인 흐름 파악</li>
								<li>객체지향 프로그래밍 능력 함양</li>
								<li>프로그래밍 개발 공정을 이해 및 활용 능력 함양</li>
								<li>응용이 가능한 실무 프로젝트 적응력 향상</li>
								<li>시나리오를 통해 각 개발 공정에서 해야 할 일들이 무엇이고 어떻게 해 나가야 하는지를 실습 위주의 강의로 진행 (이론 : 실습 = 3 : 7)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C개념, C기본문법</li>
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
								<caption>아산캠퍼스 C++ Programming 커리큘럼</caption>
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="col" colspan="2">강의 방법 및 실습 시나리오 소개</th>
									</tr>
									<tr>
										<td rowspan="2">C언어와 다른 C++ 문법 및 객체지향</td>
										<td>입출력, 함수 오버로딩, 레퍼런스</td>
									</tr>
									<tr>
										<td>new, delete 연산자 등</td>
									</tr>
									<tr>
										<td rowspan="2">객체지향과 클래스 및 프로그램 실습</td>
										<td>객체, 인터페이스, 인스턴스, const 함수</td>
									</tr>
									<tr>
										<td>생성자, 소멸자, this, static 함수, friend 함수</td>
									</tr>
									<tr>
										<td rowspan="2">상속과 다형성 및 프로그램 실습</td>
										<td>가상함수, 부모 클래스, 자식 클래스</td>
									</tr>
									<tr>
										<td>추상 클래스, 순수 가상함수</td>
									</tr>
									<tr>
										<td>연산자 중복과 예외 처리, 형변환 및 프로그램 실습</td>
										<td>- [], +=, == 등, try, catch, throw 등</td>
									</tr>
									<tr>
										<td rowspan="2">Template과 STL 및 프로그램 실습</td>
										<td>클래스 템플릿, 함수템플릿, 컨테이너</td>
									</tr>
									<tr>
										<td>반복자, 함수 객체, 알고리즘</td>
									</tr>
									<tr>
										<td colspan="2">개발 공정 및 각 공정에서 해야 할 일과 산출물 </td>
									</tr>
									<tr>
										<td rowspan="2">요구 분석 및 정의 단계</td>
										<td>요구 분석에서 해야 할 일들</td>
									</tr>
									<tr>
										<td>유즈케이스 다이어그램</td>
									</tr>
									<tr>
										<td rowspan="6">설계 단계</td>
										<td>클래스 관계</td>
									</tr>
									<tr>
										<td>클래스 다이어그램</td>
									</tr>
									<tr>
										<td>시퀀스 다이어그램</td>
									</tr>
									<tr>
										<td>단일체 패턴</td>
									</tr>
									<tr>
										<td>클래스 다이어그램을 프로젝트에 반영</td>
									</tr>
									<tr>
										<td>시퀀스 다이어그램을 프로젝트에 반영</td>
									</tr>
									<tr>
										<td rowspan="2">구현단계</td>
										<td>시퀀스 다이어그램</td>
									</tr>
									<tr>
										<td>시퀀스 다이어그램을 프로젝트에 반영</td>
									</tr>
									<tr>
										<td colspan="2">배포 및 테스트 단계, Overview</td>
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