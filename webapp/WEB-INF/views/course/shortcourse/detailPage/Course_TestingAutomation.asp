<!DOCTYPE html>
<html lang="ko">
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
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("TESTINGAUTOMATION")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no5").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no5").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no5 li:eq(0) a").addClass("on");
			
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
				<h3><span class="courseName">SW 테스팅 기법 및 GUI 테스팅 자동화</span></h3>
				
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
						<h4 class="fl">SW 테스팅 기법 및 GUI 테스팅 자동화</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=TestingAutomation" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap" style="width:360px; top:25px;">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this" class="last on">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" style="margin-left:44px;"></a>
							<a href="#this" class="last on"><span style="float:left;">SW 테스팅 기법 및 GUI 테스팅 자동화</span></a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>SW 테스팅 기법 및 GUI 테스팅 자동화</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">SW 테스팅 기법 및 GUI 테스팅 자동화</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												문의
												
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>문의</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>문의</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 247,118원* 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
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
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p>
								소프트웨어 테스팅은 안정화된 소프트웨어를 구현하기 위한 필수 과정입니다.<br/>
								본 과정은 소프트웨어 테스팅 적용에 중점을 두어 테스트에 필요한 기술과 실행법, 결과 기록 등 테스팅에 필요한 단계별 기법에 대해 학습합니다.<br/>
								그리고 소프트웨어 자동화 개념과 필요성에 대해 알아본 후, GUI 테스팅 자동화 구현 기법을 제시하고 실습합니다.
							</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>소프트웨어 공학</li>
								<!--
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
								<li>SQL & JDBC<a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
								<li>Servlet & JSP<a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
								<li>객체지향 자바프로그래밍</li>
								<li>실전! SQL & JDBC 프로그래밍</li>
								<li>실전! Servlet & JSP 프로그래밍</li>
								<li>UML 실전에서는 이것만 쓴다<a href="/Course/ShortCourse/DetailPage/Course_realUml.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
								-->
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>SW 테스팅 기법 및 GUI 테스팅 자동화 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<tbody>
									<tr>
										<th scope="col">대주제</th>
										<th scope="col">소주제</th>
										<th scope="col">교육내용</th>
									</tr>
									<tr>
										<td rowspan="2">소프트웨어 테스팅</td>
										<td>기본 개념</td>
										<td>
											<ul>
												<li>블랙박스, 화이트박스 테스팅</li>
												<li>프로그램 인스펙션과 워크스루</li>
												<li>테스트 케이스 설계</li>
												<li>모듈 테스팅, 디버깅</li>
												<li>익스트림 테스팅</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>테스트 케이스 생성 실습</td>
										<td>사례를 기반으로 실습 진행</td>
									</tr>
									<tr>
										<td rowspan="2">소프트웨어 테스팅 자동화</td>
										<td>자동화 사례 연구</td>
										<td>
											<ul>
												<li>테스트 자동화 사례</li>
												<li>데이터베이스 테스트 자동화 사례</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>GUI 테스팅 자동화 도구 구현 실습</td>
										<td>GUI 테스트 자동화 도구 구현 및 토론</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=TestingAutomation" class="btn mid green1">지원하기</a>
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