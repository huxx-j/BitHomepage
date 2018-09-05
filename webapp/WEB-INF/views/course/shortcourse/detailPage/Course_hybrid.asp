<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("HYBRID")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no4").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no4").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no4 li:eq(1) a").addClass("on");
			
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
				<h3><span class="courseName">하이브리드 프로그래밍</span></h3>
				<h4>안드로이드에서 하이브리드 앱을 만들기 위한 방법을 학습</h4>
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
						<h4 class="fl">하이브리드 프로그래밍</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=hybrid_core" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">하이브리드 프로그래밍</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>하이브리드 프로그래밍</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">하이브리드 프로그래밍</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul class="ul_dot_gray">
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간, 월 ~ 목)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>360,000원<!--600,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">근로자카드(정규직 : 480,000원 | 비정규직 : 600,000원) | 사업주 훈련 : 우선지원대상 기업기준 247,118원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">근로자카드 (정규직 : 189,320원 | 비정규직 : 236,660원) | 사업주 환급 : 최대 236,660원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										
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
						<div class="con_wrap">
							<h5>교육소개</h5>
							<!--<p>본 과정은 안드로이드에서 하이브리드 앱을 만들기 위한 방법을 학습한다. 안드로이드에서 실습을 하면서 진행하지만, 아이폰으로 전환할때 주의해야할 부분도, 함께 학습하기 때문에 아이폰 프로그래밍을 학습할 경우 쉽게 안드로이드와 아이폰에서 함께 동작하는 하이브리드 앱을 작성할 수 있다. WebView컴포넌트를 직접 다루어 하이브리드 앱을 만드는 방법부터 비롯하여, 하이브리드 앱을 만들기 위한 도구들 중에서 가장 널리 사용하고 있는 폰갭까지 함께 학습함으로써 하이브리드 앱의 구성요소, 동작원리 그리고 활용방법까지 다룰 수 있게 된다.</p>-->
							<p>본 과정은 안드로이드에서 하이브리드 앱을 만들기 위한 방법을 학습합니다. 안드로이드에서 실습을 하면서 진행하지만, 아이폰으로 전환할때 주의해야할 부분도 함께 학습하기 때문에 아이폰 프로그래밍을 학습할 경우 쉽게 안드로이드와 아이폰에서 함께 동작하는 하이브리드 앱을 작성할 수 있습니다. WebView 컴포넌트를 직접 다루어 하이브리드 앱 만드는 방법을 비롯하여, 하이브리드 앱을 만들기 위한 도구들 중에서 가장 널리 사용하고 있는 폰갭까지 함께 학습함으로써 하이브리드 앱의 구성요소, 동작원리 그리고 활용방법까지 학습하는 과정입니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>안드로이드 App 개발을 위한 환경을 이해하고 기초적인 App 개발이 가능하신 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<!--<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">자세히보기</a></li>-->
								<!--<li>객체지향 자바프로그래밍</li>-->
								<li>HTML5(HTML + CSS) + JavaScript<a href="/Course/ShortCourse/DetailPage/Course_html5.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->




						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>하이브리드 프로그래밍</caption>
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
										<th scope="row" rowspan="9">하이브리드 앱 개요<br>및 개발준비</th>
										<td rowspan="4" class="c">개요</td>
										<td>애플리케이션 형태</td>
									</tr>
									<tr>
										<td>하이브리드 앱의 구조</td>
									</tr>
									<tr>
										<td>하이브리드 앱의 장단점</td>
									</tr>
									<tr>
										<td>하이브리드 앱의 사례</td>
									</tr>
									<tr>
										<td class="c">기반 기술 및 개발 환경</td>
										<td>웹 기술, 모바일 플랫폼 개발 환경 등</td>
									</tr>
									<tr>
										<td rowspan="2" class="c">개발 프레임워크</td>
										<td>프레임워크 개요, 코르도바(폰갭) 들의 하이브리드 앱 프레임워크 소개</td>
									</tr>
									<tr>
										<td>서버 클라우드 환경</td>
									</tr>
									<tr>
										<td rowspan="2" class="c">코르도바(Cordova)<br>프레임워크</td>
										<td>코르도바 개발 환경 구축</td>
									</tr>
									<tr>
										<td>코르도바 CLI</td>
									</tr>

									<tr>
										<th scope="row" rowspan="5">하이브리드 앱 개발 실전</th>
										<td class="c">모바일 환경의 특징</td>
										<td>터치, 제스쳐, 오리엔테이션 감지</td>
									</tr>
									<tr>
										<td class="c">스토리지</td>
										<td>웹 스토리지, 로컬 스토리지, WebSQL, 모바일 Baas 등</td>
									</tr>
									<tr>
										<td class="c">자바스크립트와<br>네이티브 API의 연결</td>
										<td>자바스크립트를 이용한 모바일 플랫폼 네이티브 API 사용하기</td>
									</tr>
									<tr>
										<td class="c">WebView로<br>하이브리드 앱 개발</td>
										<td>안드로이드 및 iOS의 WebView로 하이브리드 앱 개발하기</td>
									</tr>
									<tr>
										<td class="c">하이브리드 앱 개발 팁</td>
										<td>HTML5, 자바스크립트 팁</td>
									</tr>

								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>



<!--

						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>C Programming MasterⅠ 커리큘럼</caption>
								<thead>
									<tr>
										<th scope="col">교육내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Mobile 과 Web 환경에 대한 고찰 및 현 시점에서의 개발 방법론</td>
									</tr>
									<tr>
										<td>Mobile 에서의 UI/UX 모범 사례 및 고려사항</td>
									</tr>
									<tr>
										<td>Mobile UI Framework - Jquery Mobile</td>
									</tr>
									<tr>
										<td>Mobile UI Framework - Sencha Touch</td>
									</tr>
									<tr>
										<td>Device API (DAP, WAC) 활용 방법</td>
									</tr>
									<tr>
										<td>Mobile Web 환경을 위한 Server Side 고려사항</td>
									</tr>
									<tr>
										<td>Hybrid App 과 Native App 에서의 Web Content 활용방법</td>
									</tr>
									<tr>
										<td>Hybrid App 을 위한 WebApp Framework(폰갭)</td>
									</tr>
									<tr>
										<td>실전! 하이브리드 앱 실습</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423</p>
						</div>

-->
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=hybrid_core" class="btn mid green1">지원하기</a>
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