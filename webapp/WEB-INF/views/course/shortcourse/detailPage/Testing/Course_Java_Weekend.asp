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
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(10).addClass("on");
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
				<h3><span class="courseName">JAVA Programming (주말)</span></h3>
				<h4>프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 <br>만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정</h4>
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
						<h4 class="fl">JAVA Programming (주말)</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">JAVA Programming (주말)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JAVA Programming (주말)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">JAVA Programming (주말)</td>
										</tr>

										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li style="min-height:20px;">2016.02.13 ~ 2016.03.06 (토/일)</li>-->
													<!--<li style="min-height:20px;">2016.03.12 ~ 2016.04.03 (토/일)</li>-->
													<li style="min-height:20px;">2016.04.09 ~ 2016.05.01 (토/일)</li>
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>방학특강</a> <span class="blueTxt">2015.12.21 ~ 2016.01.12</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">1일 7.5시간 * 8일(총 60시간) </span>
												
												<ul class="ul_dot_gray">
													<li>강의 : 9:30 ~ 18:00(7.5시간)</li>
												</ul>
												
											</td>
										</tr>
										

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>350,000원 <!--<span class="greenTxt">마일리지<span class="blueTxt"> 5%</span>적립(17,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 280,000원 | 비정규직 : 350,000원) / 사업주 환급 : 우선지원대상기업 기준 279,840원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
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
							<p>본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하고, 자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용하고 입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 학습하며 스레드를 이해하고 실무에 적용할 수 있도록 하며 네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성한다. 프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정이다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하여 설명할 수 있다.</li>
								<li>자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용할 수 있다.</li>
								<li>입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다. </li>
								<li>스레드를 이해하고 실무에 적용할 수 있다.</li>
								<li>네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성할 수 있다. </li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>Java 언어를 처음 배우시는 분</li>
								<li>Java 언어의 기초 구문부터 시작하려는 분 </li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>JAVA Web 커리큘럼</caption>
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
										<th scope="row" rowspan="4">Java Beginning</th>
										<td rowspan="4" class="c">자바 기본문법</td>
										<td>자바의 개요와 개발 환경 구축, 데이터의 구분을 위한 자바의 자료형을 학습한다.</td>
									</tr>
									<tr>
										<td>데이터를 조작하기 위한 연산자, 필요한 작업만을 선택적으로 해야 할 경우 사용하는 선택문 학습한다.</td>
									</tr>
									<tr>
										<td>특정 부분의 문장을 반복하게 만들어 주는 반복문 학습 한다.</td>
									</tr>
									<tr>
										<td>자료형이 동일한 여러 개의 값을 연이어 저장할 수 있도록 하는 기억 공간의 집합체인 배열과 메소드 정의와 호출방법을 익힌다.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="6">Java Fundamental</th>
										<td rowspan="2" class="c">객체 지향 프로그래밍</td>
										<td>객체지향의 개념과 클래스 설계, 객체 인스턴스 생성 학습한다.</td>
									</tr>
									<tr>
										<td>메소드 오버로딩과 생성자를 학습한다.</td>
									</tr>
									<tr>
										<td rowspan="4" class="c">상속</td>
										<td>코드 재활용을 위한 상속을 이해한다.</td>
									</tr>
									<tr>
										<td>메소드 오버라이딩과 업캐스팅 다운 캐스팅을 학습한다</td>
									</tr>
									<tr>
										<td>추상 클래스를 이해하고 정의하는 방법을 익힌다.</td>
									</tr>
									<tr>
										<td>인터페이스를 사용한 다중 상속에 대해 알아본다.</td>
									</tr>

									<tr>
										<th scope="row" rowspan="10">Java Advanced</th>
										<td rowspan="3" class="c">자바 주요 클래스</td>
										<td>자바 패키지 중 자주 사용되는 클래스를 살핀다.</td>
									</tr>
									<tr>
										<td>자료구조인 컬렉션에 대해서 학습한다.</td>
									</tr>
									<tr>
										<td>자바클래스 실습</td>
									</tr>
									<tr>
										<td rowspan="5" class="c">IO/스레드</td>
										<td>입출력 프로그램에 대해서 이해한다.</td>
									</tr>
									<tr>
										<td>java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다.</td>
									</tr>
									<tr>
										<td>스레드를 이해하고 실무에 적용할 수 있다.</td>
									</tr>
									<tr>
										<td>멀티스레드 프로그래밍을 학습한다.</td>
									</tr>
									<tr>
										<td>스레드의 동기화에 대해서 학습한다.</td>
									</tr>
									<tr>
										<td rowspan="2" class="c">네트워크</td>
										<td>네트워크에 대해서 이해하고 에코서버를 작성할 수 있다.</td>
									</tr>
									<tr>
										<td>채팅서버 프로그램을 작성할 수 있다.</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(egchung@bit.kr)</p>
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