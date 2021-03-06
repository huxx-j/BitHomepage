<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

CourseID = "JAVA_core"
%>
<%
dim strDate
'strDate = "2017.06.12 ~ 2017.07.07 <span class='greenTxt'>(저녁반)</span>" 
strDate = "2017.06.12 ~ 2017.07.07 <span class='greenTxt'>(저녁반)</span><br/>"  &_
		"2017.06.28 ~ 2017.07.18 <span class='greenTxt'>(오전/오후반)</span><br/>"  &_
		"2017.07.19 ~ 2017.08.08 <span class='greenTxt'>(오전/오후반)</span><br/>"  &_
		"2017.08.09 ~ 2017.08.31 <span class='greenTxt'>(오전/오후반)</span>"

%>
<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

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
			
			//ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
			
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;
			
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("JAVA")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no8").addClass("on").removeClass("down").addClass("up"); 	
			$(".snb_1702 .newdepth3_wrap.no8").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no8 li:eq(0) a").addClass("on");
			
			onLoadGotoCourseReview(); // 4[CourseReview] (pre4)
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
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Java.asp";
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
				<h3><span class="courseName">JAVA Programming</span></h3>
				<!--<h4>프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 <br>만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정</h4>-->
				<h4 style="margin-top:10px;">대표적인 객체지향언어인 JAVA언어의 기본문법을 탄탄히 다질 수 있는 과정</h4>
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
						<h4 class="fl">JAVA Programming (평일)</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=JAVA_core" class="btn mid green1 fl mar_l10">지원하기</a>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=javaVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍</a>
							<a href="#this">JAVA</a>
							<a href="#this" class="last on">JAVA Programming (평일)</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>JAVA Programming (평일)</caption>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">JAVA Programming (평일)</td>
										</tr>

										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDate%></li>
													<!--<li><span class="blueTxt">2017.02.01 ~ 2017.02.21 (오전반)</span></li>-->
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!--<span class="blueTxt">(총 60시간) </span>-->
												<ul class="ul_dot_gray">
													<li>오전반 : 09:00 ~ 13:00 (4시간 / 15일 / 총60시간)</li>
													<li>오후반 : 14:00 ~ 18:00 (4시간 / 15일 / 총60시간)</li>
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 20일 / 총60시간)</li>
													
												</ul>
												<!--
												<span>* 오전/오후반은 방학특강 기간에만 진행됩니다.</span><br/>
												<span>* 별도의 그룹스터디 진행 가능</span>
												-->
											</td>
										</tr>
										

										<tr>
											<th scope="row" class="tit">교육비</th>
											<!--<td>350,000원</td>-->
											<!--<td>350,000원 <span class="blueTxt">(재직자 환급은 저녁반만 해당)</span></td>-->
											<td>
												394,440원 <span class="blueTxt">(재직자 환급은 저녁반만 해당)</span><br/>
												<span>* 28,000원 상당 시중교재 제공</span>
											</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비<br/><span style="color:#767676;">(저녁반만 해당)</span></th>
											<td colspan="3">근로자카드 / 바우처 (정규직 : 279,840원 | 비정규직 : 349,800원) / 사업주 환급 : 최대 349,800원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
										
										
									</tbody>
								</table>
								<div> <!-- div 환급비 -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련 <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span class="btn_wrap c"><a href="/Upload/company.zip" class="btn sml green1">훈련비신청서류다운</a></span>-->
									</h4>

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
								<!--<div>  div 환급비 -- substituted on 2016-08-20 
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련
										<span style="margin-left:663px;"><a href="#this" class="mar_l10 btn sml blue btn_refundView2">환급내용 자세히보기</a></span>
									</h4>
									< ! - - 고용보험환급안내 - - >
									<div class="refundInfo_wrap2">
										< ! - - #include virtual="/Common/Tab/refundInfo_languageMaster2.asp" - - >
									</div>
									< ! - - //고용보험환급안내 - - >

									<table class="table_col_type1">
										<colgroup>
											<col style="width:16%">
											<col style="width:28%">
											<col style="width:8%">
											<col style="width:8%">
											<col style="width:11%">
											<col style="width:8%">
										</colgroup>
										<tbody style="text-align:center;">
											<tr>
												<th>지원대상 분류</th>
												<th>상시근로자 수</th>
												<th>교육비</th>
												<th>환급금</th>
												<th>기업부담금</th>
												<th>환급비율</th>
											</tr>
											<tr>
												<td rowspan="2">우선지원대상기업<br/>(중소기업)</td>
												<td>50명 미만</td>
												<td rowspan="4">350,000</td>
												<td>350,000</td>
												<td class="redTxt" style="font-weight:900;">없음</td>
												<td>100%</td>
											</tr>
											<tr>
												<td>50명 이상</td>
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
									</h4>
									< ! - - 고용보험환급안내 - - >
									<div class="refundInfo_wrap">
										< ! - - #include virtual="/Common/Tab/refundInfo_languageMaster.asp" - - >							
									</div>
									<! - -  //고용보험환급안내 - - >

									<table class="table_col_type1">
										<colgroup>
											<col style="width:16%">
											<col style="width:36%">
											<col style="width:8%">
											<col style="width:11%">
											<col style="width:8%">
										</colgroup>
										<tbody style="text-align:center;">
											<tr>
												<th>지원대상 분류</th>
												<th>대상</th>
												<th>교육비</th>
												<th>개인부담금</th>
												<th>자부담비율</th>
											</tr>
											<tr>
												<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
												<td>비정규직</td>
												<td rowspan="9">350,000</td>
												<td class="redTxt" style="font-weight:900;">없음</td>
												<td rowspan="3">0%</td>
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
								</div>  // div 환급비 -- substituted on 2016-08-20 -->
								
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육소개</h5>
							<!--<p>본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하고, 자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용하고 입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 학습하며 스레드를 이해하고 실무에 적용할 수 있도록 하며 네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성한다. 프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정이다.</p>-->
							<p>JAVA언어는 국내 산업 현장에서 수요가 가장 많은 객체지향언어입니다. 웹 개발 전반에 걸쳐 두루 활용될 뿐만 아니라 코드 재사용성이 높아 유지보수가 용이한 언어로 안드로이드 어플개발 등 요즘 화두가 되고 있는 여러 it 기술의 중요한 기초가 되는 언어입니다. 본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하는 과정으로 JAVA의 기본 문법을 탄탄히 다질 수 있는 기초 과정입니다.</p>
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
								<!--<li>Java 언어의 기초 구문부터 시작하려는 분 </li>-->
								<li>객체지향 프로그래밍의 개념을 배우고자 하시는 분</li>
								<li>안드로이드 어플 개발에 관심이 있는 분</li>
								<li>웹 개발 관련 기술을 습득하고자 하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<img src="/Images/Content/img_BookCover_iamjava.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:650px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:236px;">
									'난 정말 JAVA를 공부한 적이 없다구요' <Br/>윤성우 저 / 오렌지미디어
									
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1" style="margin-left:2%;">
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
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>
						</div>
						
						

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
						<!-- #include virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCJPM.asp"-->
						<!-- /자격증과정 소개 -->
						
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JAVA_core" class="btn mid green1">지원하기</a>
							<!--<a href="/Register/Request/register_shortCourse.asp?cID=javaVacation" class="btn mid green1">지원하기</a>-->
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