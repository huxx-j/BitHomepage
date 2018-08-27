<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "C2_core"
%>

<%
dim strDate
strDate="2017.05.12 ~ 2017.06.09 <span class='greenTxt'>(저녁반)</span>"
%>
<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			<% roadmapPageNum=1 %>
			<!--#include file="Common_eventHandlers_CRoadmap.inc"-->

			
			/************************ 4[CourseReview] (pre3) *************************************/
			$(".courseReview_Subject").on("mouseover", function() {
				//alert($(this).attr("idx"));
				$(this).css("text-decoration","underline");
				$(this).css("color","blue");
			})
			.on("mouseleave", function() {
				$(this).css("text-decoration","");
				$(this).css("color","#000");
			})
			.on("click", function() {
			
				var idx = $(this).attr("idx");
				var display = $("#trCourseReview_Content"+idx).css("DISPLAY").toUpperCase();
				if(display == "NONE") {
					//alert("펼쳐");
					$("#trCourseReview_Content"+idx).show();
				}
				if(display == "BLOCK" || display == "TABLE-ROW" ) {
					//alert("감춰");
					$("#trCourseReview_Content"+idx).hide();
					
				}
			})
			
			$(".radioStar").on("change", function() {
				//alert( $(this).attr("id").substring(5) + "점");
				$("#inputNRate").val( $(this).attr("id").substring(5) );
			})
			
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
			/************************ //4[CourseReview] *************************************/
			
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load 직후 SNB 셋팅 */
			$(".snb_1702 a.newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");
			
			onLoadGotoCourseReview(); // 4[CourseReview] (pre4)

			function onLoadGotoCourseReview() {			// 2016-11-26-YG : 페이지 열릴 때 page쿼리스트링 값이 존재하면 자동스크롤.
				//alert("과정신청 페이지입니다. cID : " + getUrlParams().cID);
				if(typeof getUrlParams().page != "undefined") {
					/*
					$('html, body').animate({
						scrollTop: ($('#divCourseReview').offset().top-50)
					},500);
					*/
					$('html, body').animate({
						scrollTop: 2950
					},500);
					
				}
			}
		
		});
		
		/****************************************** 4[CourseReview] (pre5) ********************************************************/
		// QueryString to JSON (from GOOGLING)
		function getUrlParams() {					// 2016-11-26-YG : 자동선택기능 자동스크롤 추가.
			var params = {};
			window.location.search.replace(
				/[?&]+([^=&]+)=([^&]*)/gi,
				function(str, key, value) { params[key] = value; }
			);
			return params;
		}
		
		function onLoadGotoCourseReview() {			// 2016-11-26-YG : 페이지 열릴 때 page쿼리스트링 값이 존재하면 자동스크롤.
			//alert("과정신청 페이지입니다. cID : " + getUrlParams().cID);
			if(typeof getUrlParams().page != "undefined") {
				$('html, body').animate({
					scrollTop: ($('#divCourseReview').offset().top-50)
				},500);
				
			}
		}
		
		function checkForm() {
			if( $("#inputNRate").val()==null || $("#inputNRate").val()=="" ) alert("종합평가 점수를 선택해주세요.");
			else document.Form1.submit();
		}
		/****************************************** //4[CourseReview] ********************************************************/
		
	</script>
	<script language="javascript">
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_C.asp";
	*/
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>

<%
'// 4[CourseReview] (pre6)
%>
<!--#include virtual="/job/include/dbconn.inc"-->
<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

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
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">C Programming (평일)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">지원하기</a>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">C Programming (평일)</a>
						</p>
					</div>
					<section class="section">
					
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>C Programming (평일)</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">C Programming (평일)</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li><%=strDate%></li>
													<!--<li> <span class="blueTxt">2017.02.01 ~ 2017.02.21 (오전반)</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!--<span>(총 60시간) </span>-->
												<ul class="ul_dot_gray">
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 20일 / 총60시간)</li>
													<!--<li>오전반 09:00 ~ 13:00(4시간 / 15일 / 총60시간)</li>-->
												</ul>
												<!--
												<span>* 오전/오후반은 방학특강 기간에만 진행됩니다.</span><br/>
												<span>* 별도의 그룹스터디 진행 가능 </span>
												-->
											</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<!--<td>350,000원</td>-->
											<!--<td>350,000원 <span class="blueTxt">(재직자 환급은 저녁반만 해당)</span></td>-->
											<td>
												394,440원 <span class="blueTxt">(재직자 환급은 저녁반만 해당)</span><br/>
												<span>* 25,000원 상당 시중교재 제공</span>
											</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 279,980원 | 비정규직 : 349,980원) / 사업주 환급 : 최대 349,980원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용자세히보기</a></td>
										</tr>
										-->
									</tbody>
								</table>
								
								<div> <!-- div 환급비 -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련 <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap2">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster2.asp"-->
									</div>
									<!-- //고용보험환급안내 -->
									
									<div id="divSa" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										
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
													<th>상시근로자 수</th>
													<th>교육비</th>
													<th>환급금</th>
													<th>기업부담금</th>
													<th>환급비율</th>
													<!--<th>환급금내용 자세히보기</th>-->
												</tr>
												<tr>
													<td rowspan="2">우선지원대상기업<br/>(중소기업)</td>
													<td>50명 미만</td>
													<td rowspan="4">394,440</td>
													<td>394,440</td>
													<td class="redTxt" style="font-weight:900;">없음</td>
													<td>100%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50명 이상</td>
													<!--<td>314,899</td>-->
													<td>354,990</td>
													<td>39,450</td>
													<td>90%</td>
												</tr>
												<tr>
													<td rowspan="2">중견 또는 대기업</td>
													<td>1,000명 미만</td>
													<td>236,660</td>
													<td>157,780</td>
													<td>60%</td>
												</tr>
												<tr>
													<td>1,000명 이상</td>
													<td>157,770</td>
													<td>236,670</td>
													<td>40%</td>
												</tr>
											</tbody>
										</table>
										<!--<span class="redTxt">※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다</span><br/>-->
										<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 394,440원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
										<span class="redTxt"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
									</div>
									
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										근로자 직무능력향상지원  <a href="javascript:openGn();" id="btnOpenGn" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
									</h4>
									<!-- 고용보험환급안내-->
									<div class="refundInfo_wrap">
										<!-- #include virtual="/Common/Tab/refundInfo_languageMaster.asp"-->							
									</div>
									<!-- //고용보험환급안내 -->
									
									<div id="divGn" style="DISPLAY:NONE;">
										<span style="float:right;"><a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></span>
										<div style="clear:both;"></div>
										
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
												<col style="width:34%">
												<col style="width:8%">
												<col style="width:12%">
												<col style="width:10%">
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
													<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
													<td>비정규직</td>
													<td rowspan="9">394,440</td>
													<td class="redTxt" style="font-weight:900;">없음</td>
													<td rowspan="4">0%</td>
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
													<td class="redTxt" style="font-weight:900;">없음</td>
												</tr>
												<tr>
													<td rowspan="5">중견 또는 대기업</td>
													<td>비정규직</td>
													<td class="redTxt" style="font-weight:900;">없음</td>
													<td>0%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
													<td class="redTxt" style="font-weight:900;">없음</td>
													<td>0%</td>
												</tr>
												<tr>
													<td>정규직(50세이상)</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
												<tr>
													<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
													<td>78,880</td>
													<td>20%</td>
												</tr>
											</tbody>
										</table>
										<!--
										<span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
										<span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
										-->
									</div>
										
								</div> <!-- // div 환급비 -->
							</div>
							
						</div>
						<!-- //con_wrap -->
						<div style="clear:both;"></div>
						
						<!-- 로드맵 -->
						<!--#include file="Common_roadmap_C_v2_1100.inc"-->
						<!-- //로드맵 -->
						
						<!-- con_wrap -->
						<div class="con_wrap first">
							<style>
								.myYellow {
									color:#FFFF00;
								}
								.myBlackBox {
									width:94%; 
									background-color:#404040; 
									margin:1%; 
									padding:2%; 
									color:white; 
									text-align:center; 
									font-size:11pt; 
									box-shadow:1px 4px 4px #7f7f7f;
								}
								.myBlueBox {
									background-color:#094472;
									margin:0;
									padding:2%;
									color:white;
									text-align:left;
									font-size:11pt;
								}
							</style>
							<div class="myBlackBox">
								<p>초,중,고 의무교육과정의 필수가 되는 시대!</p>
								<p>비전공자도 어렵다는 소프트웨어를 충분히 이해하고 구현 할 수 있습니다.</p>
								<p>전공자도 기초를 다시 한번 튼튼히 하는 계기가 될 것입니다.</p>
								<p>우리에게 필요한 것은 자신을 위한 열정.</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						
						
						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>어떤 내용을 배울까요?</h5>
							<ul class="ul_dot_gray">
								<li>C언어는 모든 컴퓨터 시스템에서 사용할 수 있는 프로그래밍 언어 입니다.</li>
								<li>C로부터 많은 언어가 파생되어 나왔습니다. C++, JAVA, C#, Python이 대표적 입니다.</li>
								<li>정확하게 배우지 않으면 뿌연 안개처럼 자신의 실력을가늠할 수 없겠지요?</li>
								<li>취미로 수영을 한다와 국가대표로 수영을 한다 는 많은 차이가 날 수 밖에 없습니다.</li>
								<li>기초적인언어지만 정확하게 배우면 여려분의 실력의 가늠자과 될 수 있는 막강한 언어이기도 합니다.</li>
								<li>국가대표처럼요!</li>
								<li>비전공자는 열정으로 전공자는 제대로 실력을 가다듬을 수 있는 본 과정을 수강하세요.</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>누가 수강하면 좋을까요?</h5>
							<ul class="ul_dot_gray">
								<li>비전공자이면서 컴퓨터에 취미가 있어 열정이 넘치시는 분</li>
								<li>전공을 바꿔 잠시 프로그램의 세계에 푹 빠지려 하시는 분</li>
								<li>전공자지만 정확하게 다시 C언어를 알아가고 업그레이드 하실 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap ">
							<h5>커리큘럼</h5>
							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>컴파일이란 우리가 구현한 프로그램을 컴퓨터가 알아듣도록 번역해주는 과정을 말하는 것입니다.</li>
									<li>컴파일러는 잘못된 코드나 문법에 대하여 가르쳐 줍니다</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">교육일자</th>
										<th scope="col">교육목표</th>
										<th scope="col">교육내용 및 실습주제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1주차</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>C언어의 이해와 기초지식</li>
												<li>조건,반복,분기를 통하여 프로그램의 실행흐름을 학습한다.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>컴파일러와 사람, 10진수,2진수,16진수의 이해, 기본입출력, 연산자</li>
												<li>조건문, 반복문, 분기문</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>모든 프로그래밍 언어는 길게 늘어선 메모리들을 편리하게 처리합니다.</li>
									<li>모든 언어의 모태인 C언어가 어떻게 메모리들을 처리할까요?</li>
									<li>상식적이고도 그럴수 밖에 없는 개념을 이해합니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">교육일자</th>
										<th scope="col">교육목표</th>
										<th scope="col">교육내용 및 실습주제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">2주차</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>원하는 정보(숫자,문자,문자열)를 다양한 방법으로 저장하여 처리하는 방법을 학습한다.</li>
												<li>1차원보다 진화된 2차원배열을 자세히 학습하여 3차원배열을 쉽게 이해한다.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>주소연산자, 1차원 배열, 문자열</li>
												<li>2차원 배열, 3차원 배열, 간접연산자</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>수많은 공학도들을 좌절 시키게 한 포인터!</li>
									<li>수많은 공학도들을 강의실 밖으로 밀쳐낸 포인터!</li>
									<li>과연 그 포인터가 어렵기만 할까요?</li>
									<li>대학에서 가르쳐주지 않았던 자세한 포인터의 처리과정을 정확하게 이해하다.</li>
									<li>보면 여러분은 강의실 안으로 변함 없이 들어올 것 입니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">교육일자</th>
										<th scope="col">교육목표</th>
										<th scope="col">교육내용 및 실습주제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">3주차</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>메모리 처리의 정석인 포인터를 이해하고 학습합니다.</li>
												<li>C언어의 핵심류에 속하는 함수! 함수간의 메모리전달을 완벽하게 학습한다.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>단일포인터, 이중포인터, 포인터 연산</li>
												<li>배열포인터, 포인터배열, 함수간 포인터처리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							<div class="myBlueBox">
								<ul class="ul_dot_gray">
									<li>앞서 배운 포인터가 충분히 이해되었다면 앞으로는 매우 쉽게 학습 할 수 있습니다.</li>
									<li>포인터가 어느곳에 어떠한 방법으로 응용되어 쓰이는지 궁금합니다.</li>
									<li>여러분의 궁금증이 조금씩 풀려 갈 것입니다.</li>
								</ul>
							</div>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:45%">
									<col style="width:45%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">교육일자</th>
										<th scope="col">교육목표</th>
										<th scope="col">교육내용 및 실습주제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">4주차</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>다른 형태의 포인터와 처리과정을 이해하고 학습한다.</li>
												<li>컴파일 전에 일어나는 과정들을 구현 및 학습한다.</li>
												<li>동적으로 만들수 있는 메모리의 학습과 처리.</li>
												<li>자료구조의 근간이 되는 구조체 구조의 이해와 실습.</li>
												<li>큰 프로그램을 위한 파일 입출력을 학습한다.</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>함수포인터, 범용포인터, typedef, 스토리지클래스</li>
												<li>동적할당, 구조체, 파일입출력</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>

							
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1423 &nbsp;(email:egchung@bit.kr)</p>-->
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1421 &nbsp;(kimyj0723@bit.kr)</p>
						</div>
						<!-- con_wrap -->


						
						
<!------------------------------------------ FROM HERE : [MODULE] 수강평(CourseReview) --------------------------------------------------------->
						<%
							''Response.write(sql)
							'Set Rs = Dbcon.Execute(sql)
							'set rs = server.CreateObject("adodb.recordset") 
						'	
						'	Count = 0
						'	if Rs.eof = false then
						'		Count = Rs(0)
						'	End IF
						%>	

							
						<!-- con_wrap -->
						<style>
							.myTable {
								width:85%;
								border-top:2px solid #37379f;
								border-bottom:2px solid #37379f;
							} /* margin-left:5%; */
							.myTable th {
								border-bottom:1px solid #37379f;
								background-color:#d6e2f5;
							}
							.myTable tr.trCourseReview_Content {
								background-color:#f9f9f9;
								border-top:none;
							}
							.myTable td {
								border-bottom:1px solid #d3d3ef;
							}
						</style>
						<div class="con_wrap" id="divCourseReview" style="DISPLAY:NONE;">
							<h5>수강평</h5>
							
							<!-- Write my CourseReview -->
								<%
								Studid = TRIM(session("Studid"))
								if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
								else
									sql="SELECT LoginID, NameHan FROM db_bit.dbo.Member WHERE studid=" & studid
									Set Rs = Dbcon.Execute(sql)
									if not Rs.EOF then										
										LoginID = Rs("LoginID")
										NameHan = Rs("NameHan")
									end if
									Rs.Close
								end if
								%>
							
								<%
									'IF DateDiff("y",InputStartDate,Date)>=0 AND DateDiff("y",Date,InputEndDate)>=0 AND Status="open" THEN			'강의평가입력기간임
									
									sql="SELECT * FROM db_bit.dbo.Lesson_CourseReview_Ongoing_Member WHERE CourseID='"&CourseID&"' AND LoginID='"&LoginID&"' AND Status='open'"
									Set Rs = Dbcon.Execute(sql)
									IF not Rs.EOF THEN
										Response.Write "<div style='width:85%; margin:0.5em 0 2em -0.5em;  background-color:#ffffef; padding:0.5em; box-shadow:3px 3px 8px #373737;'>"&_
														"<div style='color:#37377f;'>" & NameHan & "(" & LoginID & ") 님, 수강평을 작성해주세요.</div>"&_
														"<form method='post' action='Common_InputCourseReview_Complete.asp' name='Form1' onSubmit='checkForm(); return false;'>"&_
														"	<input type='hidden' name='LoginID' value='"&LoginID&"'/>"&_
														"	<input type='hidden' name='CourseID' value='"&CourseID&"'/>"&_
														"	<input type='hidden' name='NameHan' value='"&NameHan&"'/>"&_
														"	<input type='hidden' name='InputDate' value='"&Date&"'/>"&_
														"	<input id='inputNRate' type='hidden' name='nRate' />"&_
														"	<table class='myTable' style='width:100%; margin-left:0;'>"&_
														"		<colgroup>"&_
														"			<col style='width:15%;'>"&_
														"			<col style='width:85%;'>"&_
														"		</colgroup>"&_
														"		<tbody>"&_
														"			<tr>"&_
														"				<th>종합평가</th>"&_
														"				<td style='padding-left:1em; background-color:#fff;'>"&_
														"					<input id='score5' type='radio' value='5' class='radioStar' name='radioStar'>"&_
														"					<label for='score5'><img src='/Images/Common/icn_stars_05_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score4' type='radio' value='4' class='radioStar' name='radioStar'>"&_
														"					<label for='score4'><img src='/Images/Common/icn_stars_04_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score3' type='radio' value='3' class='radioStar' name='radioStar'>"&_
														"					<label for='score3'><img src='/Images/Common/icn_stars_03_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score2' type='radio' value='2' class='radioStar' name='radioStar'>"&_
														"					<label for='score2'><img src='/Images/Common/icn_stars_02_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score1' type='radio' value='1' class='radioStar' name='radioStar'>"&_
														"					<label for='score1'><img src='/Images/Common/icn_stars_01_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score0' type='radio' value='0' class='radioStar' name='radioStar'>"&_
														"					<label for='score0'><img src='/Images/Common/icn_stars_00_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"				</td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>제목</th>"&_
														"				<td><input type='text' name='Subject' style='width:98%;' REQUIRED/></td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>내용</th>"&_
														"				<td><textarea name='Content' style='width:100%;' rows='10' REQUIRED></textarea></td>"&_
														"			</tr>"&_
														"		</tbody>"&_
														"	</table>"&_
														"	<input type='submit' class='btn mid red' value='작성완료' style='float:right; margin-top:5px;'/>"&_
														"	<div style='clear:both;'></div>"&_
														"</form>"&_
														"</div><!--//Write my CourseReview -->"
									END IF
								%>
								
								
						
						
							<%
								'//Preparation for a paging.
								page = Request.QueryString("page")
								IF IsNull(page) OR page=0 THEN
									page = "1"
								END IF
								
								set Rs = server.CreateObject("adodb.recordset") 
								sql = "SELECT * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
								Rs.PageSize = 5 '페이지의 사이즈를 정함 ...반드시 레크드셋오픈전에 지정해주어야 한다.
								Rs.Open sql, oConn, 1 '레코드 커서 타입(1)을 지정해 주어야 한다. 만일 지정이 안되면 페이징이 안된대.

								IF NOT Rs.EOF THEN
									totalpage =Rs.PageCount 
									Rs.AbsolutePage = page
									Count = Rs.RecordCount 
								ELSE
									Count = 0
								END IF
								
								'Response.Write "totalpage = " & totalpage & "<br/>"
								'Response.Write "Count = " & Count & "<br/>"
								'Response.end
								
							%>
							<%
								IF Count>0 THEN
							%>
							<div style="float:right; margin-right:15%;">총 <span style="color:#3737FF;"><b><%=Count%></b></span> 개의 수강평이 있습니다.</div>
							<%
								END IF
							%>
							<div style="clear:both;"></div>
							
							<table class="myTable">
								<colgroup>
									<col style="width:30%;">
									<col style="width:10%;">
									<col style="width:6%;">
									<col style="width:4%;">
								</colgroup>
								<tbody>
									<tr>
										<th>제목</th>
										<th>글쓴이</th>
										<th>등록일</th>
										<th>종합평가</th>
									</tr>
									<%
									'	sql = "SELECT TOP " & pageSize & " * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
									'	'Response.write(sql)
									'	Set Rs = Dbcon.Execute(sql)
									
										IF Count = 0 Then
									%>
									<tr>
										<td colspan="4" style="text-align:center;">등록된 수강평이 없습니다.</td>
									</tr>
									<%
										ELSE
											FOR i=1 TO Rs.PageSize STEP 1
												IF NOT Rs.EOF THEN

													NameHan_LoginID = Left(Rs("NameHan"),2)&"**("&Left(Rs("LoginID"),4)&"****)"
													Content = Rs("Content")
													IF IsNull(Content) THEN
														Content = ""
													END IF
									%>
									<tr>
										<td style="text-align:left; padding-left:1em; cursor:pointer;"><a class="courseReview_Subject" idx="<%=Rs("idx")%>" style="color:#000;"><%=Rs("Subject")%></a></td>
										<td style="text-align:center;"><%=nameHan_LoginID%></td>
										<td style="text-align:center;"><%=Rs("InputDate")%></td>
										<td style="text-align:center;"><img src="/Images/Common/icn_stars_0<%=Rs("nRate")%>_595by100.png" style="width:80px;"/></td>
									</tr>
									<tr id="trCourseReview_Content<%=Rs("idx")%>" class="trCourseReview_Content" style="DISPLAY:NONE;">
										<td colspan="4">
											<%=replace(Content, chr(13), "<br/>") %>
										</td>
									</tr>
									<%
													Rs.moveNext
												END IF
											NEXT
										END IF 
									%>
								</tbody>
							</table>

							<!-- Paging -->
							<%
								Dim pagingStartNum 
								Dim pagingEndNum
								Dim pagingPrevNum
								Dim pagingNextNum
								
								pagingStartNum = page - (page mod Rs.PageSize) + 1
								pagingEndNum = page - (page mod Rs.PageSize) + 10
								IF (page mod Rs.PageSize) = 0 THEN
									pagingStartNum = PagingStartNum - Rs.PageSize
									pagingEndNum = PagingEndNum - Rs.PageSize
								END IF
								IF pagingEndNum > totalpage THEN
									pagingEndNum = totalpage
								END IF
								
								pagingPrevNum = pagingStartNum - 10
								pagingNextNum = pagingStartNum + 10
								IF pagingPrevNum < 1 THEN
									pagingPrevNum = 1
								END IF
								IF pagingNextNum > totalpage THEN
									pagingNextNum = totalpage - (totalpage mod Rs.PageSize) + 1
								END IF
								
							%>
							<style>
								.pagingButton {
									float:left;
									font-size:0.9em;
									border:1px solid #c9c9c9;
									border-radius:1px;
									margin-left:-1px;
									width:1.9em;
									height:1.8em;
									padding-top:0.2em;
									cursor:pointer;
								}
							</style>
							<%
								IF Count>0 THEN
							%>
							<div style="text-align:center; margin:1em 1.25em 1em 15.25em; font-weight:800; font-size:1.25em;"> 
								<a href="Course_androidR.asp?page=<%=pagingPrevNum %>" ><div class="pagingButton"><</div></a>
								<%
									FOR i=pagingStartNum TO pagingEndNum STEP 1
								%>
									<%
										IF Cint(page) = Cint(i) THEN
									%>
											<div class="pagingButton" style="background-color:#ffffa6; color:red;" ><%=i %></div> 
									<%
										ELSE
									%>
											<a href="Course_androidR.asp?page=<%=i %>" ><div class="pagingButton" ><%=i %></div></a>
									<%
										END IF
									%>
								<%
									NEXT
								%>
								<a href="Course_androidR.asp?page=<%=pagingNextNum %>" ><div  class="pagingButton" >></div></a>
								<div style="clear:both; "></div>
							</div>			
							<%
								END IF
							%>
								
						</div>
						<!-- //con_wrap -->						
<!------------------------------------------ //UNTIL HERE : [MODULE] 수강평(CourseReview) --------------------------------------------------------->
		
						<!-- 자격증과정 소개 -->
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM.asp"-->
						<!-- /자격증과정 소개 -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">지원하기</a>
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1">지원하기</a>-->
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