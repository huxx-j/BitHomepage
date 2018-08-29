<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(11).addClass("on");
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
				<h3><span class="courseName">웹디자이너를 위한 웹퍼블리싱 실무과정</span></h3>
				<!--<h4>HTML, CSS를 다루기 위한 개발 도구의 소개. <br>개발도구의 사용방법을 비롯하여 각각의 기술 요소에 대한 개념과 활용방법에 대하여 학습</h4>-->
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
						<h4 class="fl">웹디자이너를 위한 웹퍼블리싱 실무과정</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">웹퍼블리싱 실무과정</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>웹디자이너를 위한 웹퍼블리싱 실무과정</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">웹디자이너를 위한 웹퍼블리싱 실무과정</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li>2016.03.12(토), 19(토), 26(토) (3일 / 21시간)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>10:00 ~ 18:00 (1일 7시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>360,000원 <!--<span class="greenTxt"> 마일리지 5%적립 (27,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 (정규직 : 189,330원 | 비정규직 : 236,660원) | 사업주 훈련 : 우선지원대상 기업기준 189,330원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 247,118 원 | 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap first">
							<h5>교육소개</h5>
							<p>본 과정은 웹디자이너가 웹퍼블리셔로 성장하기위한 디딤돌 과정이다. HTML은 웹개발과 디자인 분야에 가장 기본적인 언어이며, 최근 웹표준이 부각되면서 HTML과 더불어 CSS의 중요도가 높아진 상황이다. 본 과정은 HTML과 CSS를 이용하여 모바일 웹이나 데스크탑 웹 서비스를 제작할 수 있도록 HTML의 기초부터 실무예제를 체계적으로 공부할 수 있다. HTML에서 제공하는 멀티미디어 요소를 예제를 통해 쉽고 흥미있게 학습을 진행한다.</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>HTML5기반의 표준 웹 사이트 개발과 관련 기술을 습득</li>
								<li>HTML5의 주요 기술을 익히고 API를 활용한 프로그래밍 기술을 습득</li>
								<li>차세대 모던 웹 UI 디자인 습득</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>HTML5(HTML + CSS + JavaScript + jQuery)를 습득하고자 하는 웹디자이너</li>
								<li>HTML5기반의 웹/모바일 웹 페이지 제작을 희망하는 자</li>
								<li>반응형 웹 구현을 희망하는 자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 일정</h5>
							<table class="table_col_type2">
								<caption>웹디자이너를 위한 웹퍼블리싱 실무과정 교육일정</caption>
								<colgroup>
									<col style="width:10%">
									<col style="width:25%">
									<col style="width:25%">
									<col style="width:10%">
									<col style="width:30%">
								</colgroup>		
								<tbody>
									<tr>
										<th colspan="2" class="tit">교육일정</th>
										<th class="tit">교육시간</th>
										<th class="tit">교육비</th>
										<th class="tit">참고서적 제공</th>
									</tr>
									<tr>
										<td>3월</td>
										<td>12일, 19일, 26일</td>
										<td rowspan="10">총21시간<br/>(7시간, 3일,<br/>10:00~18:00)</td>
										<td rowspan="10">36만원</td>
										<td rowspan="10"><img src="/Images/Content/img_BookCover_JS_jQuery_Basic.jpg"/></td>
									</tr>
									<tr>
										<td>4월</td><td>9일, 18일, 23일</td>
									</tr>
									<tr>
										<td>5월</td><td>7일, 21일, 28일</td>
									</tr>
									<tr>
										<td>6월</td><td>4일, 11일, 18일</td>
									</tr>
									<tr>
										<td>7월</td><td>9일, 16일, 23일</td>
									</tr>
									<tr>
										<td>8월</td><td>13일, 20일, 27일</td>
									</tr>
									<tr>
										<td>9월</td><td>10일, 17일, 24일</td>
									</tr>
									<tr>
										<td>10월</td><td>8일, 15일, 22일</td>
									</tr>
									<tr>
										<td>11월</td><td>12일, 19일, 26일</td>
									</tr>
									<tr>
										<td>12월</td><td>10일, 17일, 24일</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 커리큘럼</h5>
							<table class="table_col_type1">
								<caption>웹디자이너를 위한 웹퍼블리싱 실무과정 커리큘럼</caption>
								<colgroup>
									<col style="width:25%">
									<col style="width:75%">
								</colgroup>		
								<tbody>
									<tr>
										<th class="tit">교육일자</th>
										<th class="tit">교육내용</th>
									</tr>
									<tr>
										<th rowspan="3">1일차</th>
										<td>HTML5 개요 및 문서기본</td>
									</tr>
									<tr>
										<td>링크와 멀티미디어</td>
									</tr>
									<tr>
										<td>웹폼</td>
									</tr>
									<tr>
										<th rowspan="4">2일차</th>
										<td>CSS 스타일 시트</td>
									</tr>
									<tr>
										<td>자바스크립트 기초</td>
									</tr>
									<tr>
										<td>DOM과 자바스크립트</td>
									</tr>
									<tr>
										<td>캔버스</td>
									</tr>
									<tr>									
										<th rowspan="3">3일차</th>
										<td>JavaScript 적용시 jQuery 라이브러리를 적용하는 방법</td>
									</tr>
									<tr>
										<td>라이브러리의 주요 구현기능 점검</td>
									</tr>
									<tr>
										<td>Ajax</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423 (e-mail : egchung@bit.kr)</p>
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