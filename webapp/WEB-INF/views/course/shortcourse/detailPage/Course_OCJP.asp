<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("OCJP")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">Java 자격증 취득 과정</p></h3>
				<!--<h4></h4>-->
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
					<table>
					<div class="hGroup">
						<div>
							<h4 class="fl" style="font-size:16px; margin-top:5px;">Java 자격증 취득 과정</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_OCJP" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">Java 자격증 취득 과정</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Java 자격증 취득 과정</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Java 자격증 취득 과정</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li>2015.10.12 ~ 2015.10.30 (15일 / 총 45시간)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>450,000원<!--<span class="greenTxt"> 마일리지 5%적립 (25,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 : 147,240원 | 사업주 훈련 : 우선지원대상 기업기준 147,240원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_2.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육과정 개요</h5>
							<p>
								Java Programming에 대한 교육과 더불어 자격증을 취득 할 수 있는 과정 입니다.<br/>
								다양한 형태의 자격증 취득 문제 해결을 위해 프로그램 코딩을 통해 실습과 더불어 이론을 익힐 수 있는 과정 입니다.<br/>
								다양한 문제 풀이를 통해 자격증 취득 확률을 높일 수 있습니다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상 및 선수지식</h5>
							<!--
							<ul class="ul_dot_gray">
								<li></li>
							</ul>
							-->
							<ul class="ul_dot_gray">
								<li>프로그램에 대한 기본 지식을 가지고 있는 개발자 및 웹 시스템 운영자</li>
								<li>자격증 취득 준비생</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
<!--
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>관련된 제품 제작에 흥미가 있거나, 이를 주 업무로 시작 하는 인원</li>
							</ul>
						</div>
-->
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>C Programming <a href="/Course/ShortCourse/DetailPage/Course_c.asp" class="btn sml blue">저녁반</a></li>
								<li>System Programming <span style="color:blue;">(리눅스 시스템에 대한 전반적인 이해)</span></li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>사용 실습기자재</h5>
							<ul class="ul_dot_gray">
								<li>PC</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
												
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>Java 자격증 취득 과정 커리큘럼</caption>
								<colgroup>
									<col style="width:15%">
									<col style="width:15%">
									<col style="width:60%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">주제</th>
										<th scope="col">목표</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="3">Java 기초</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>What is Java</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java 특징</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>개발 환경</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">Program 구문</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>다양한 프로그램 구문 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>다양한 프로그램 코딩 및 문제풀이</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">OOP</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>OOP 개념 이해 및 특징 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>OOP 프로그램 코딩 및 문제풀이</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">Exception</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Exception 구조 개념 및 구조 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Exception 프로그램 코딩 및 문제풀이</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">API</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java API 활용 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Java API 활용을 통한 프로그램 코딩 및 문제풀이</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="2">문제 풀이</th>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>각 Chapter 별 문제 특징 및 문제 풀이</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>통합 문제 풀이</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423 (bithrd@bit.kr)</p>
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Java_OCJP" class="btn mid green1">지원하기</a>
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