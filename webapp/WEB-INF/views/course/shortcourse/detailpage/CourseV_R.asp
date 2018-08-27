<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "[방학특강] R Programming"
CourseID = "rVacation"
%>

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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			/*
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			*/
			/********************* 고용보험환급 div, btn 관련. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1.0;
				$( 'html, body' ).stop().animate( { scrollTop : height }, 100, function() { } );

				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				setTimeout(function() {
					$("#divSa").slideDown("slow", "easeOutQuint", function() {});
					$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				}, 100);
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#btnOpenSaGn2").on("click", function(event) {
				//$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
				$("#divSa").slideDown("slow", "easeOutQuint", function() {});
				$("#divGn").slideDown("slow", "easeOutQuint", function() {});
				$("#divBtnOpenSaGn2").css("display","none");
				$("#imgBtnClose").css("display","block");
				event.stopPropagation();
				event.preventDefault();
			})
			
			$("#imgBtnClose").on("click", function(event) {
				$("#imgBtnClose").css("display","none");
				$("#divSa").slideUp("fast", "easeOutQuint", function() {});
				$("#divGn").slideUp("fast", "easeOutQuint", function() {$("#divBtnOpenSaGn2").css("display","block");});
				
			})
			/*********************************************************************************************************/

			//$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// 방학특강 - R 프로그래밍

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			//ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Web.asp";
		*/
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
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>여름방학특강</a>
						</p>
						<h4><%=SubjectName%></h4>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교육기간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__rVacation.inc" -->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__rVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비용</th>
											<td>
												394,440원
											</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-1780 &nbsp;(<a href="mailto:kang.i.y@bit.kr" class="email">kang.i.y@bit.kr</a>)</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>과정소개</h5>
							<p>
								본 과정은 빅데이터에 대한 전반적 이해를 기반으로 데이터 수집, 처리, 분석에 이르는 전체 과정을 이해하는 것을 목적으로 합니다.<br/>
								통계 처리 언어 R을 활용, 기초 스크립트부터 데이터 수집, 처리, 기초 통계 분석 및 시각화 등을 학습하고 데이터 분석 과정을 이해할 수 있습니다.
							</p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>과정특징</h5>
							<ul class="ul_dot_gray">
								<li>빅데이터의 전반적 지식 습득</li>
								<li>빅데이터 분석 및 처리의 기초를 다질 수 있음</li>
							<ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>빅데이터와 빅데이터 산업 및 시장 이해</li>
								<li>빅데이터 분석 및 처리를 위한 R 프로그래밍 기술 학습</li>
								<li>데이터 처리, 시각화, 통계, 보고서 작성 능력 습득</li>
							<ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:20%">
										<col style="width:80%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">일정</th>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="l">1일차</td>
											<td class="l">빅데이터 산업 동향, R과 RStudio</td>
										</tr>
										<tr>
											<td class="l">2일차</td>
											<td class="l">R 프로그래밍 언어 문법 I</td>
										</tr>
										<tr>
											<td class="l">3일차</td>
											<td class="l">R 프로그래밍 언어 문법 II</td>
										</tr>
										<tr>
											<td class="l">4일차</td>
											<td class="l">벡터와 행렬의 연산</td>
										</tr>
										<tr>
											<td class="l">5일차</td>
											<td class="l">그래프와 데이터의 이해, 데이터 프레임</td>
										</tr>
										<tr>
											<td class="l">6일차</td>
											<td class="l">데이터 다루기 (데이터 생성과 외부 데이터 활용)</td>
										</tr>
										<tr>
											<td class="l">7일차</td>
											<td class="l">데이터 다루기 (데이터 추출과 데이터 정제)</td>
										</tr>
										<tr>
											<td class="l">8일차</td>
											<td class="l">데이터 다루기 (데이터 활용)</td>
										</tr>
										<tr>
											<td class="l">9일차</td>
											<td class="l">데이터 시각화와 보고서 작성</td>
										</tr>
										<tr>
											<td class="l">10일차</td>
											<td class="l">데이터 연습, 요약 및 마무리</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1780 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->

					</section>
				</div>
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