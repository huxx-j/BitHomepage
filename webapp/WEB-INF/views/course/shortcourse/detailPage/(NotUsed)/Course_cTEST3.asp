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
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;
			$(".snb .depth1").eq(4).addClass("on");
			$(".snb .depth2_wrap").eq(4).addClass("on");
			$(".snb .depth2_wrap.no5").find("li a").eq(5).addClass("on");
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
				<h3><span class="courseName">C Programming</span></h3>
				<h4>이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 <br>있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</h4>
				<!--<h4></h4>-->
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
						<h4 class="fl">C Programming</h4>
						<a href="/Register/Request/register_shortCourse.asp" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">C Programming</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td>C Programming</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<span class="blueTxt">(총 60시간) </span>
												<ul class="ul_dot_gray">
													<!--<li>강의 : 19:00 ~ 22:00(3시간)</li>-->
													<!--<li>오후반 : 14:00 ~ 18:00 (4시간 / 15일)</li>-->
													<!--<li>오전반 : 09:00 ~ 13:00 (4시간 / 15일)</li>-->
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 20일)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li style="min-height:20px;">2015.12.02 ~ 2015.12.30</li>-->
													<!--<li>2016.02.03 ~ 2016.02.26 <span class="greenTxt">(오전반)</span></li>-->
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>방학특강</a> <span class="blueTxt">2016.02.03 ~ 2016.02.26 (오전반)</span></li>-->
													<!--<li>2016.02.01 ~ 2016.03.03 <span class="greenTxt">(저녁반)</span></li>-->
													<!--<li>2016.03.03 ~ 2016.03.30 <span class="greenTxt">(저녁반)</span></li>-->
													<li>2016.04.01 ~ 2016.04.28 <span class="greenTxt">(저녁반)</span></li>
													
													<!--<li><a href='/Course/ShortCourse/Course_shortCourse_vacation_winter_2015.asp' class='btn sml blue'>방학특강</a> <span class="blueTxt">2015.12.21 ~ 2016.01.12 (오후반)</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td colspan="3">
												350,000원
											</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 279,980원 | 비정규직 : 349,980원) / 사업주 환급 : 최대 349,980원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
								<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
									사업주위탁훈련
									<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>
									<!--<span class="btn_wrap c"><a href="/Upload/company.zip" class="btn sml green1">훈련비신청서류다운</a></span>-->
								</h4>
								<!-- 고용보험환급안내-->
								<div class="refundInfo_wrap2">
									<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
								</div>
								<!-- //고용보험환급안내 -->

								<table class="table_col_type1">
									<colgroup>
										<col style="width:16%">
										<col style="width:28%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:11%">
										<col style="width:8%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
										<tr>
											<th>지원대상 분류</th>
											<th>직원수</th>
											<th>교육비</th>
											<th>환급금</th>
											<th>기업부담금</th>
											<th>환급비율</th>
											<!--<th>환급금내용 자세히보기</th>-->
										</tr>
										<tr>
											<td rowspan="2">우선지원대상기업</td>
											<td>50명 미만</td>
											<td rowspan="4">350,000</td>
											<td>350,000</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
											<td>100%</td>
											<!--<td rowspan="4"></td>-->
										</tr>
										<tr>
											<td>50명 이상</td>
											<!--<td>314,899</td>-->
											<td>315,000</td>
											<td>35,000</td>
											<td>90%</td>
										</tr>
										<tr>
											<td rowspan="2">중견 또는 대기업</td>
											<td>1,000명 미만</td>
											<td>210,000</td>
											<td>140,000</td>
											<td>60%</td>
										</tr>
										<tr>
											<td>1,000명 이상</td>
											<td>140,000</td>
											<td>210,000</td>
											<td>40%</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다</span><br/>
								
								<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
									근로자 직무능력향상지원
									<span style="margin-left:607px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>
									<!--<span class="btn_wrap c"><a href="/Upload/employ.zip" class="btn sml green1">훈련비신청서류다운</a></span>-->
								</h4>
								<!-- 고용보험환급안내-->
								<div class="refundInfo_wrap">
									<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
								</div>
								<!-- //고용보험환급안내 -->

								<table class="table_col_type1">
									<colgroup>
										<!--
										<col style="width:20%">
										<col style="width:34%">
										<col style="width:8%">
										<col style="width:10%">
										<col style="width:10%">
										<col style="width:18%">-->
										<col style="width:16%">
										<col style="width:36%">
										<col style="width:8%">
										<col style="width:11%">
										<col style="width:8%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
										<tr>
											<th>지원대상 분류</th>
											<th>대상</th>
											<th>교육비</th>
											<th>개인부담금</th>
											<th>자부담비율</th>
											<!--<th>환급금내용 자세히보기</th>-->
										</tr>
										<tr>
											<td rowspan="4">우선지원대상기업</td>
											<td>비정규직</td>
											<td rowspan="9">350,000</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
											<td rowspan="3">0%</td>
											<!--<td rowspan="9"></td>-->
										</tr>
										<tr>
											<td>이직 예정자</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
										</tr>
										<tr>
											<td>무급 휴직자</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
										</tr>
										<tr>
											<td>정규직</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td rowspan="5">중견 또는 대기업</td>
											<td>비정규직</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
											<td>0%</td>
										</tr>
										<tr>
											<td>이직 예정자</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td>무급 휴직자</td>
											<td class="redTxt" style="font-weight:900;">없음</td>
											<td>0%</td>
										</tr>
										<tr>
											<td>정규직(50세이상)</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
										<tr>
											<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
											<td>70,000</td>
											<td>20%</td>
										</tr>
									</tbody>
								</table>
								<span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
								<span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
							</div>
							
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<!--<p>본 과정은 C언어는 접해보았지만, 정확한 개념이 없는 분, C언어를 처음 배우시는 분들을 대상으로, 기본 문법에서 코딩까지 체계적으로 학습하는 과정입니다. 이론과 실습을 병행하여 진행하며 C언어의 핵심을 파악하여 다양한 분야의 응용 프로그램을 개발할 수 있는 폭 넓은 지식 및 기술을 습득하여 실무에 적용 가능 하도록 교육하는 과정</p>-->
							<p>C언어는 프로그래밍의 디펙토 스탠다드로 여겨지는 절차지향언어로 C++, C#, JAVA 등 많은 후속 언어의 모태가 된 언어입니다. 국내에서는 체계적인 프로그래밍 공부를 위한 첫 프로그래밍 언어의 표준으로 인식되고 있으며 윈도우 프로그래밍 혹은 게임 프로그래밍을 희망하는 예비 개발자에게 특히 중요한 언어입니다. 본 교육과정은 C언어의 기본 문법을 처음부터 공부하는 교육과정으로 프로그래밍 언어를 처음 접하는 분과 프로그래밍 언어의 기초를 확실히 다지고자 하는 컴퓨터 전공자 모두에게 적합한 교육과정입니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<!--
								<li>프로그래머의 첫 관문으로 프로그래밍 언어에 대한 자신감 고취</li>
								<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
								<li>프로그래밍 강화로 본인만의 능력 구축</li>
								<li>문법적인 공부를 탈피하여 스스로 생각하여 프로그램을 작성할 수 있는 능력배양 (이론:실습 = 3:7)</li>
								-->
								<li>C언어의 기본 구문을 적절히 활용할 수 있다.</li>
								<li>프로그래밍의 기본 과정을 이해할 수 있다.</li>
								<li>절차지향언어의 특성을 이해하고 이에 따라 코드를 작성할 수 있다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>프로그래밍을 처음 배우시는 분</li>
								<li>임베디드시스템 혹은 로봇공학에 흥미가 있는 분</li>
								<li>윈도우 플랫폼 기반의 프로그램 개발을 희망하는 분</li>
								<li>게임 프로그래밍을 배우고자 하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!--#include virtual="/Course/ShortCourse/DetailPage/Course_c_curriculum2.asp"-->
						
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap last">
							<h5>커리큘럼</h5>
							<div class="tap_header">
								<ul class="tapMenu">
									<li class="on"><a href="#this" title="오전반" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp')">오전반</a></li>
									<li><a href="#this" title="저녁반" onClick="javascript:ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum2.asp')">저녁반</a></li>
								</ul>
							</div>
							<div id="ConDetail" class="tap_content">
							</div>
						</div>
						-->
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