<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(3).addClass("on");  			// [군포] 군포캠퍼스
			$(".snb_1709 .newdepth3_wrap.no4").addClass("on").css('display','block');	// [군포] 군포캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no4 .newdepth3:eq(3)").addClass("on");		// 자료구조/알고리즘 ON 
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[군포]군포캠퍼스
						</p>
						<h4>자료구조/알고리즘</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Gunpo_DS_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__GP_DS.inc" -->
												<!--2018.01.30(화) ~ 2018.02.14(수)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__GP_DS.inc" -->
												<!--09:00 ~ 15:00 (5시간)-->
											</td>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
											-->
										</tr>
										<!-- 군포캠퍼스 자료구조/알고리즘 -->										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit" >교육문의</th>
											<td> 02-3486-7588</td>
										</tr>
										
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p class="mar_b10">프로그래밍 언어는 배웠으나 활용을 못하는 분들을 위한 과정입니다.<br>
							이 강좌를 통해 문법을 올바르게 사용하고 또한 생각하는 대로 프로그램을 작성할 수 있도록 도와드리며 실습위주의 교육운영으로 효율적인 프로그램 코드를 작성하는 능력을 향상시켜드립니다. </p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그램을 작성하기 위한 프로그램 문법 실력 배양</li>
								<li>자료구조를 통한 효율적인 알고리즘 구성 능력 배양 </li>
								<li>약 2000줄 정도의 코드를 작성할 수 있는 자신감 고취</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C프로그래밍 중급이상</li>
								<li>자료구조 기초 시작</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C Programming</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>경기도 군포시 당정동 604-5 한세대학교<img style="margin-top:-68px; height:100px;" src="img_qrcode_Gunpo.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:30%">
										<col style="width:40%">
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
											<td>탐색</td>
											<td>정렬</td>
											<td>정렬의 이론과 실습</td>
										</tr>
										<tr>
											<td rowspan="7">선형구조</td>
											<td rowspan="3">단순연결리스트</td>
											<td class="l">단순연결리스트의 개념 및 구조이해</td>
										</tr>
										<tr>
											<td class="l">단순연결리스트의 실습 및 응용</td>
										</tr>
										<tr>
											<td class="l">단순연결리스트의 실습 및 응용</td>
										</tr>
										<tr>
											<td rowspan="2">이중연결리스트</td>
											<td class="l">이중연결리스트의 개념 및 구조이해</td>
										</tr>
										<tr>
											<td class="l">이중연결리스트의 실습 및 응용</td>
										</tr>
										<tr>
											<td rowspan="2">스택&amp;큐</td>
											<td class="l">스택과 큐의 개념 및 장단점 비교</td>
										</tr>
										<tr>
											<td class="l">스택과 큐의 실습</td>
										</tr>
										<tr>
											<td rowspan="3">비선형구조</td>
											<td rowspan="3">트리</td>
											<td class="l">트리의 개념 및 구조이해</td>
										</tr>
										<tr>
											<td class="l">트리의 실습</td>
										</tr>
										<tr>
											<td class="l">트리의 실습 및 확장형태이해</td>
										</tr>
									</tbody>
								</table>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>