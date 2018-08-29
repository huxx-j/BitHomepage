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
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("UNIXADMIN")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">유닉스 어드민</p></h3>
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
							<h4 class="fl" style="font-size:16px; margin-top:5px;">유닉스 어드민</h4>
							<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">유닉스 어드민</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>유닉스 어드민</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">유닉스 어드민</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2016.01.18 ~ 2016.01.29 (10일 / 총 30시간)</li>-->
													<li>8시간씩 4일 / 총 32시간</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간)</td>-->
											<td>문의</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<!--<td>600,000원</td>-->
											<td>문의</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1423</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>-->
											<!--<td colspan="3">개인바우처 = 우선지원대상기업 기준 : 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<!--<td colspan="3">근로자카드 / 바우처 : 263,520원 | 사업주 훈련 : 우선지원대상 기업기준 263,520원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<!--<td colspan="3">개인환급(정규직 : 175,770원 / 비정규직 : 219,720원) / 사업주환급(우선지원대상기업 기준 : 175,770원) <a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>-->
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
							<h5>교육과정 소개</h5>
							<p>
								유닉스(리눅스) 시스템을 처음 접해보는 사용자를 위한 과정으로 시스템 사용에 필요한 개념과 원리에 관한 실습을 통해 시스템 운영에 대한 내용을 습득할 수 있다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>교육 목표</h5>
							<p></p>
						-->
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						<!--
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>유닉스(리눅스)를 처음 접하는 사용자</li>
							</ul>
						</div>
						<!-- //con_wrap -->
									
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>난이도</h5>
							<ul class="ul_dot_gray">
								<li>초급자</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육내용</h5>
							<ul class="ul_dot_gray">
								<li>유닉스 시스템</li>
								<li>기본 설정 및 기본 명령어</li>
								<li>사용자 관리와 파일 속성</li>
								<li>관리 명령어</li>
								<li>디렉터리 및 파일 구조의 이해</li>
								<li>Vi 편집기 사용법</li>
								<li>쉘 소개</li>
								<li>쉘 프로그래밍</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육효과</h5>
							<ul class="ul_dot_gray">
								<li>처음 접하는 유닉스 환경에 적응하고 원하는 일반적인 작업을 수행 할 수 있다</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap">
							<h5>강의운영방식 : 이론 / 실습</h5>
							<p>
								본 강의는 크게 이론과 개발 방법론 실습 세 가지 방법으로 진행한다 먼저 검색 엔진의 소개에서 이론을 다루고 이후에 과정은 개발 방법론에 의거하여 단계 별로 다이어그램을 작성하고 이에 맞게 프로그래밍 실습으로 이루어진다. 이 과정을 통해 얻은 지식은 다양한 형태의 지식 정보 기반 프로젝트에서 효과적인 검색 서비스를 제공하는 기술을 익힐 수 있다								
							</p>							
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<ul class="ul_dot_gray">
								<li>(없음)</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:70%;">
								<caption>유닉스 어드민</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:60%">
									<col style="width:10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">대주제</th>
										<th scope="col">교육내용</th>
										<th scope="col">시수</th>										
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">유닉스 시스템</th>
										<td class="l">
											유닉스 시스템의 구조 설명
										</td>
										<td>2</td>
									</tr>
									
									<tr>
										<th scope="row">기본설정 및 기본 명령어</th>
										<td class="l">
											유닉스 시스템을 운용하기 위한 기본명령어를 실습을 통하여 유닉스 구조을 이해
										</td>
										<td>8</td>
									</tr>
									
									<tr>
										<th scope="row">사용자 관리와 파일 속성</th>
										<td class="l">
											멀티유저용 운영체제의 특징으로 여러 사용자가 접속하여 운영체제를 사용하므로 관리자가 사용자를 관리 및 사용자의 파일을 관리해야 하므로 이러한 특성들을 실습을 통해 습득한다.
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">관리명령어</th>
										<td class="l">
											유닉스 시스템 관리명령어를 실습을 통해 습득한다
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">Vi 에디터</th>
										<td class="l">
											Vi 에디터 환경설정 및 사용방법등을 실습을 통해 습득한다
										</td>
										<td>4</td>
									</tr>
									
									<tr>
										<th scope="row">쉘 프로그래밍</th>
										<td class="l">
											유닉스 쉘의 이해 및 배시 쉘 프로그래밍 실습
										</td>
										<td>10</td>
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