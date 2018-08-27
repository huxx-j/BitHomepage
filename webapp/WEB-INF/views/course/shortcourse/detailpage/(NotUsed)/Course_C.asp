<%
CourseID = "C2_core"
%>

<%
dim strDate
strDate="2017.10.16 ~ 2017.11.10 <span class='greenTxt'>(저녁반)</span>"

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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->
			
			/********************* 고용보험환급 div, btn 관련. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight / 2;
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
			
			
			ajaxLoad('#ConDetail', '', '/Course/ShortCourse/DetailPage/Course_c_curriculum1.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;	<!-- added -->
			
			/* page load 직후 SNB 셋팅 */
			$(".snb_1702 a.newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("C")).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.no1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");

		});
		
		
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
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

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
						<h4 class="fl">[주중반] C Programming</h4>
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
						<p class="lineMap" >
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍</a>
							<a href="#this">C</a>
							<a href="#this" class="last on">[주중반] C Programming</a>
						</p>
					</div>
					<section class="section">
					
						<!-- con_wrap1703 -->
						<div class="con_wrap1703 first">
							<div class="form_type1 mar_b20">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:15%">
										<col style="width:35%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td><%=strDate%></td>
											<th>강의시간</th>
											<!--<td>19:00 ~ 22:00(3시간/총 60시간)</td>-->
											<td>
												저녁반 19:00 ~ 22:00(3시간/총 60시간)
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>394,440원</td>
											<th>교육비지원</th>
											<td>고용보험 환급 <a href="#" id="btnOpenSaGn1" class="mar_l10 btn sml blue">자세히보기</a></td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table> 
								<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1" title="수강신청" style="float:right; margin:5px 0;">수강신청</a>
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1703 -->
						<div style="clear:both;"></div>
						
						<!-- con_wrap1703 -->
						<div class="con_wrap1703" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								본 과정은 C언어를 통해 프로그래밍 마인드를 확립시키고자 한다. 구체적으로 기본적인 C 문법에서부터 좀더 심화된 구조체와 파일입출력까지 학습을 하며, 매주 금요일에는 실습(Unit test)을 통해 프로그래밍 능력을 한 단계 업그레이드 할 수 있는 과정이다.<br/>
								<br/>※ C 프로그래밍을 마스터 하셨다면, 다음은 자료구조/알고리즘을 학습하세요.
							</p>
						</div>
						<!-- //con_wrap1703 -->

						<style>
							.aRoadmap {
								border-radius:5px;
								border:1px solid #848484;
								padding:3px;
							}
							.pRoadmap {
								margin-top:10px;
							}
						</style>
						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>과정 로드맵</h5>
							<div style="margin-left:80px;">
								<p class="pRoadmap"><a href="" class="aRoadmap">C 언어</a> → <a href="/Course/ShortCourse/DetailPage/Course_C2.asp" class="aRoadmap">자료구조/알고리즘</a></p>
								<p class="pRoadmap" style="margin-left:170px;">→ <a href="/Course/ShortCourse/DetailPage/Course_AlgorithmIntermediate.asp" class="aRoadmap">문제해결을 위한 중급 알고리즘</a></p>
								<p class="pRoadmap" style="margin-left:380px;">→ <a href="/Course/ShortCourse/DetailPage/Course_AlgorithmAdvanced.asp" class="aRoadmap">문제해결을 위한 고급 알고리즘</a></p>
							</div>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C 프로그래밍 활용 능력을 키우고 싶으신 분</li>
								<li>하드웨어를 제어하기 위한 임베디드 프로그램 개발하고 싶으신 분</li>
							</ul>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703">
							<h5>개강일정</h5>
							<table class="table_col_type1 tableSchedule">
								<tr>
									<td>1월 2일</td>
									<td>2월 1일</td>
									<td>3월 2일</td>
									<td>4월 3일</td>
									<td>5월 12일</td>
									<td>6월 1일</td>
								</tr>
								<tr>
									<td>7월 3일</td>
									<td>8월 1일</td>
									<td>9월 1일</td>
									<td>10월 13일</td>
									<td>11월 1일</td>
									<td>12월 1일</td>
								</tr>
							</table>
						</div>
						<!-- //con_wrap1703 -->

						<!-- con_wrap1703 -->
						<div class="con_wrap1703 ">
							<h5>교육내용</h5>
							<table class="table_col_type2" style="width:100%;">
								<colgroup>
									<col style="width:10%">
									<col style="width:35%">
									<col style="width:55%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="c">교육일정</th>
										<th scope="col" class="c">교육</th>
										<th scope="col" class="c">교육목표</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="2" class="c">1주</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>컴파일러와 사람</li>
												<li>10진수, 2진수, 16진수의 이해</li>
												<li>기본 입출력, 연산자</li>
												<li>조건문, 반복문, 분기문</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>C 언어의 이해와 기초지식</li>
												<li>조건, 반복, 분기를 통해 프로그램의 실행흐름 학습</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>실습(Unit test)</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">2주</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>주소연산자, 문자열</li>
												<li>1차, 2차, 3차배열, 간접연산자</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>원하는 정보(숫자, 문자, 문자열)를 다양한 방법으로 저장하고 처리하는 방법을 학습</li>
												<li>1차원 보다 진화된 2차원 배열을 자세히 학습하여 3차원 배열을 쉽게 이해</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>실습(Unit test)</li>
											</ul>
										</td>
									</tr>
									
									<tr>
										<th scope="row" rowspan="2" class="c">3주</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>단일포인터, 이중포인터</li>
												<li>포인터연산, 배열포인터</li>
												<li>포인터배열, 함수간 포인터처리</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>메모리 처리의 정석인 포인터를 이해하고 학습</li>
												<li>C 언어의 핵심 류에 속하는 함수! 함수간의 메모리 전달을 완벽하게 학습</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>실습(Unit test)</li>
											</ul>
										</td>
									</tr>

									<tr>
										<th scope="row" rowspan="2" class="c">4주</th>
										<td>
											<ul class="ul_dot_gray l">
												<li>함수포인터, 범용포인터</li>
												<li>Typedef, 스토리지 클래스</li>
												<li>동적할당, 구조체, 파일입출력</li>
											</ul>
										</td>
										<td>
											<ul class="ul_dot_gray l">
												<li>다른 형태의 포인터와 처리과정을 이해하고 학습</li>
												<li>컴파일 전에 일어나는 과정을 구현 및 학습</li>
												<li>동적으로 만들 수 있는 메모리의 학습과 처리</li>
												<li>자료구조의 근간이 되는 구조체의 구조의 이해와 실습</li>
												<li>큰 프로그램을 위한 파일입출력 학습</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<ul class="ul_dot_gray l">
												<li>실습(Unit test)</li>
											</ul>
										</td>
									</tr>

								</tbody>
							</table>
							
							<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1703 -->

						<br/>
						
						<!-- con_wrap1703 고용보험환급 -->
						<div class="con_wrap1703">
							<h5 style="float:left;">고용보험 환급 </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:22px;"><a href="#" id="btnOpenSaGn2" class="mar_l10 btn sml blue">자세히보기</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
														
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1703ul">
								<h5>사업주 위탁훈련</h5>
								<p>사업주가 훈련비용을 부담하여 재직근로자 대상으로 직무향상을 지원하는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 고용보험에 가입한 사업주로서 소속근로자에게 사전에 고용노동부 장관으로부터 과정인정을 받아 교육훈련을 직접 또는 위탁하여 실시하는 사업주</p>

								<h5>훈련대상</h5>
								<p>- 고용보험 피보험자</p>
								<p>- 고용보험 피보험자가 아닌 자로서 해당 사업주에게 고용된 자</p>
								<p>- 해당 사업이나 그 사업과 관련되는 사업에서 고용하려는 자(채용예정자)</p>
								<p>- 직업안정기구에 구직 등록한 자</p>
								
								<div style="text-align:center;">
									<a href="/Upload/company2.zip" class="mar_l10 btn sml blue" style="margin:10px auto;">사업주 위탁훈련 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 bithrd@bit.kr로 보내주시기 바랍니다.</p>
								</div>
							
								<table class="table_col_type1">
									<tr>
										<th>지원대상 분류</th>
										<th>상시 근로자수</th>
										<th>정부환급금</th>
										<th>기업부담금</th>
									</tr>
									<tr>
										<td rowspan="2">우선지원 대상기업</td>
										<td>50명 미만</td>
										<td>394,440원</td>
										<td>0원</td>
									</tr>
									<tr>
										<td>50명 이상</td>
										<td>354,990원</td>
										<td>39,450원</td>
									</tr>
									<tr>
										<td rowspan="2">중견 또는 대기업</td>
										<td>1,000명 미만</td>
										<td>236,660원</td>
										<td>157,780원</td>
									</tr>
									<tr>
										<td>1,000명 이상</td>
										<td>157,770원</td>
										<td>236,670원</td>
									</tr>
								</table>
								<p>※ 사업주 위탁훈련은 출석률 80% 이상인 경우만 정부환급금을 받을 수 있다.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1703ul">
								<h5>근로자 직무능력향상지원</h5>
								<p>고용보험이 납부되는 재직자 개인이 <b>'재직자 내일배움카드'</b>를 발급받아 수강료 지원을 받는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 우선지원 대상자 근로자, 고용보험 임의가입 자영업자, 기간제 근로자, 단시간 근로자, 파견 근로자, 일용 근로자</p>

								<h5>지원내용</h5>
								<p>지원한도금액은 1인당 년간 200만원 한도 내에서 훈련과정에 따라 60~100% 지원</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btn sml blue" style="margin:10px auto;">근로자 직무능력향상지원 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 bithrd@bit.kr로 보내주시기 바랍니다.</p>
								</div>
								<table class="table_col_type1">
									<tr>
										<th>지원대상 분류</th>
										<th>대상</th>
										<th>개인부담금</th>
									</tr>
									<tr>
										<td>우선지원 대상기업</td>
										<td>비정규직, 이직 예정자<br/>무급 휴직자, 정규직</td>
										<td>없음</td>
									</tr>
									<tr>
										<td rowspan="2">중견 또는 대기업</td>
										<td>비정규직, 무급 휴직자</td>
										<td>없음</td>
									</tr>
									<tr>
										<td>이직 예정자, 정규직</td>
										<td>78,880원</td>
									</tr>
								</table>
								
							</div>
							
						</div>
						<!-- //con_wrap1703 고용보험환급 -->
		
						<!-- 자격증과정 소개 -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1704.asp"-->
						<!-- /자격증과정 소개 -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">수강신청</a>
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