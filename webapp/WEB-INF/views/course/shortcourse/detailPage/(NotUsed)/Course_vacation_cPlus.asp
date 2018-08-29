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
				<h3><span class="courseName">여름특강 - C++ Programming</span></h3>
				<h4>C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를<br> 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상</h4>
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
						<h4 class="fl">여름특강 - C++ Programming</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">단기 / 핵심역량과정</a>
							<a href="#this" class="last on">여름특강 - C++ Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>여름특강 - C++ Programming</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">여름특강 - C++ Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<s>1차 : 2015.06.23 ~ 2015.07.13 (15일 / 총 60시간)</s><b> (마감)</b><br>
												<s>2차 : 2015.07.14 ~ 2015.08.03 (15일 / 총 60시간)</s><b> (마감)</b><br>
												3차 : 2015.08.06 ~ 2015.08.26 (15일 / 총 60시간)
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<s>1차 : 14:00 ~ 18:00 (1일 4시간 / 월 ~ 금)</s><br>
												<s>2차 : 14:00 ~ 18:00 (1일 4시간 / 월 ~ 금)</s><br>
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
							<p>본 과정은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
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
							<h5>커리큘럼</h5>

							<!--
							<table class="table_col_type1">
								<caption>C++ Programming 커리큘럼</caption>
								<thead>
									<tr>
										<th scope="col">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>강의 방법 및 실습 시나리오 소개</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>C언어와 다른 C++ 문법 및 객체지향</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>입출력, 함수 오버로딩, 레퍼런스</li>
														<li>new, delete 연산자 등</li>
													</ul>
												</dd>
												<dt>객체지향과 클래스 및 프로그램 실습</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>객체, 인터페이스, 인스턴스, const 함수</li>
														<li>생성자, 소멸자, this, static 함수, friend 함수</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>상속과 다형성 및 프로그램 실습</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>가상함수, 부모 클래스, 자식 클래스</li>
														<li>추상 클래스, 순수 가상함수</li>
													</ul>
												</dd>
												<dt>연산자 중복과 예외 처리, 형변환 및 프로그램 실습</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>- [], +=, == 등, try, catch, throw 등</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>Template과 STL 및 프로그램 실습</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>클래스 템플릿, 함수템플릿, 컨테이너</li>
														<li>반복자, 함수 객체, 알고리즘</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>개발 공정 및 각 공정에서 해야 할 일과 산출물</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>요구 분석 및 정의 단계</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>요구 분석에서 해야 할 일들</li>
														<li>유즈케이스 다이어그램</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>설계 단계</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>클래스 관계</li>
														<li>클래스 다이어그램</li>
														<li>시퀀스 다이어그램</li>
														<li>단일체 패턴</li>
														<li>클래스 다이어그램을 프로젝트에 반영</li>
														<li>시퀀스 다이어그램을 프로젝트에 반영</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>구현 단계</dt>
												<dd>
													<ul class="ul_dot_gray">
														<li>시퀀스 다이어그램</li>
														<li>시퀀스 다이어그램을 프로젝트에 반영</li>
													</ul>
												</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>배포 및 테스트 단계, Overview</td>
									</tr>
								</tbody>
							</table>
							-->

							<table class="table_col_type2">
								<caption>C++ Programming 커리큘럼</caption>
								<thead>
									<tr>
										<th scope="col">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>강의 방법 및 실습 시나리오 소개</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>C언어와 다른 C++ 문법 및 객체지향</dt>
												<dd>입출력, 함수 오버로딩, 레퍼런스</dd>
												<dd>new, delete 연산자 등	</dd>
												<dt>객체지향과 클래스 및 프로그램 실습</dt>
												<dd>객체, 인터페이스, 인스턴스, const 함수</dd>
												<dd>생성자, 소멸자, this, static 함수, friend 함수</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>상속과 다형성 및 프로그램 실습</dt>
												<dd>가상함수, 부모 클래스, 자식 클래스</dd>
												<dd>추상 클래스, 순수 가상함수</dd>
												<dt>연산자 중복과 예외 처리, 형변환 및 프로그램 실습</dt>
												<dd>- [], +=, == 등, try, catch, throw 등</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>Template과 STL 및 프로그램 실습</dt>
												<dd>클래스 템플릿, 함수템플릿, 컨테이너</dd>
												<dd>반복자, 함수 객체, 알고리즘</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>개발 공정 및 각 공정에서 해야 할 일과 산출물</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>요구 분석 및 정의 단계</dt>
												<dd>요구 분석에서 해야 할 일들</dd>
												<dd>유즈케이스 다이어그램</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>설계 단계</dt>
												<dd>클래스 관계</dd>
												<dd>클래스 다이어그램</dd>
												<dd>시퀀스 다이어그램</dd>
												<dd>단일체 패턴</dd>
												<dd>클래스 다이어그램을 프로젝트에 반영</dd>
												<dd>시퀀스 다이어그램을 프로젝트에 반영</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>
											<dl>
												<dt>구현 단계</dt>
												<dd>시퀀스 다이어그램</dd>
												<dd>시퀀스 다이어그램을 프로젝트에 반영</dd>
											</dl>
										</td>
									</tr>
									<tr>
										<td>배포 및 테스트 단계, Overview</td>
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