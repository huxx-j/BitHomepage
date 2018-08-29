<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'//(DEPRECATED) SubjectName = "[주중반] C 프로그래밍"
SubjectName = "[주중반] C Master"
CourseID = "C2_core"
'//CourseID = "cVacation"
' C Programming
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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
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
			//$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// 방학특강 C Programming
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1").addClass("on").css('display','block');	// C Master SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no1 li:eq(0) a").addClass("on");				// 주중반 ON
			
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
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- # i n c lude virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<style>
					img {
						vertical-align:top;
					}
					.hGroup1709 {
						color:#909090;
						font-size:15px;
					}
					.hGroup1709 h4 {
						color:#000;
						font-size:36px;
						font-weight:600;
						letter-spacing:-2px;
						margin-top:20px;
						margin-bottom:20px;
					}
				</style>
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						<h4>C 프로그래밍</h4>
						-->
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>C Master
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주중반
						</p>
						<h4>[주중반] C Master</h4>
					</div>
					<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1 fl mar_l10">지원하기</a>-->
					<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1 fl mar_l10">지원하기</a>-->
					<section class="section">
					
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__C2_core.inc" -->
												<!--
												2017.12.21 ~ 2018.1.12 <span class='greenTxt'>(오전반)</span><br/>
												2018.1.15 ~ 2018.2.2 <span class='greenTxt'>(오후반)</span><br/>
												2017.12.18 ~ 2018.1.16 <span class='greenTxt'>(저녁반)</span><br/>
												< ! - - 2018.2.5 ~ 2018.2.27 <span class='greenTxt'>(오전반)</span><br/> - - > 
												-->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__C2_core.inc" -->
												<!--
												오전반 9:00 ~ 13:00(4시간/총 60시간)<br/>
												오후반 14:00 ~ 18:00(4시간/총 60시간)<br/>
												저녁반 19:00 ~ 22:00(3시간/총 60시간)
												-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>394,440원 <span class="blueTxt">(재직자 환급 가능)</span></td>
											<th>교육비지원</th>
											<td>고용보험 환급 <a href="#" id="btnOpenSaGn1" class="btnBlueBorder">자세히보기</a></td>
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
								<div style="clear;both; height:10px;"></div>
																
							</div>
							
						</div>
						<!-- //con_wrap1709 -->
						<div style="clear:both;"></div>

						<div class="con_wrap1709 first">
							<h5>과정로드맵</h5>
							<img src="Images/C-Master.PNG" style="text-align:center; width:100%;"/>
							<div style="clear;both; height:10px;"></div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>과정소개</h5>
							<p>
								본 과정은 기본프로그래밍에서부터 중급 이상의 프로그래머가 되기 위한 과정으로서 프로그램의 초석을 다지고자 하는 자에게 필요한 실습 위주의 과정입니다. <br/>
								개별적 문법의 이해와 구현능력 향상, 조별 프로젝트를 통한 협력개발과 발표를 통해 다양한 개발환경에 사용 되는 자료구조 및 알고리즘에 대하여 학습하는 과정입니다. 
							</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>기본 문법에서 고급 프로그래밍까지 단기간에 습득</li>
								<li>기본 프로그래밍 지식을 토대로 한 체계적인 학습 </li>
								<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>C 프로그래밍의 기본적인 사항부터 차근차근 체계적으로 학습하고 싶으신 분</li>
								<li>컴퓨터 관련 및 전기/전자 전공자</li>
								<li>임베디드 시스템 혹은 로봇공학에 흥미가 있는 분</li>
								<li>윈도우 플랫폼 기반의 프로그램 개발을 희망하는 분</li>
								<li>게임 프로그래밍을 배우고자 하는 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<img src="Images/열혈C프로그래밍.png" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:239px;">
									'윤성우의 열혈 C 프로그래밍' <Br/>윤성우 저 / 오렌지미디어
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5>교육내용</h5>
							<div class="divTable">
								<table style="width:100%;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">교육일정</th>
											<th scope="col" class="c">구분</th>
											<th scope="col" class="c">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row" rowspan="2" class="c darker">1주</td>
											<td>
												C언어 기본구조
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>C 언어 특징, 컴파일러 사용법</li>
													<li>데이터형, 변수 사용법 </li>
													<li>기본 입출력 함수, 연산자 </li>
													<li>조건문 </li>
													<li>반복문</li>
													<li>C 기본 문법에 대한 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>실습(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">2주</td>
											<td>
												포인터와 배열
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>1차원 배열 이론</li>
													<li>2차원 배열 이론</li>
													<li>함수의 이론</li>
													<li>함수와 포인터의 관계</li>
													<li>1차원 배열과 포인터</li>
													<li>문자열과 포인터</li>
													<li>2차원 배열과 포인터</li>
													<li>메모리 관리와 동적할당</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>실습(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">3주</td>
											<td>
												C언어의 확장
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>구조체 이론</li>
													<li>구조체 배열과 포인터</li>
													<li>매크로와 전처리기</li>
													<li>파일입출력 이론 및 실습</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>실습(Unit test)</li>
											</td>
										</tr>
										
										<tr>
											<td scope="row" rowspan="2" class="c darker">4주</td>
											<td>
												자료구조
											</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>자료구조 개요 및 알고리즘의 이해</li>
													<li>선형자료구조(배열, 연결 리스트)</li>
													<li>선형 자료구조의 활용, 실습 프로젝트 I</li>
													<li>스택과 큐, 실습 프로젝트 II</li>
													<li>자료구조의 활용, 실습 프로젝트 III</li>
													<li>트리, 실습 프로젝트 IV</li>
													<li>STL과 일반화 프로그래밍</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<li>실습(Unit test)</li>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<br/>
						
						<!-- con_wrap1709 고용보험환급 -->
						<div class="con_wrap1709">
							<h5 style="float:left;">고용보험 환급 </h5>
							<div id="divBtnOpenSaGn2" style="float:left; margin-top:47px; margin-left:7px;"><a href="#" id="btnOpenSaGn2" class="btnBlueBorder">자세히보기</a></div>
							<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
							<div style="clear:both;"></div>
														
							<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1709ul">
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
									<a href="/Upload/company2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">사업주 위탁훈련 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
							
								<div class="divTable">
									<table>
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
								</div>
								<p>※ 사업주 위탁훈련은 출석률 80% 이상인 경우만 정부환급금을 받을 수 있다.</p>
							</div>

							<div id="divGn" style="DISPLAY:NONE;"> <!-- class="con_wrap1709ul">-->
								<h5>근로자 직무능력향상지원</h5>
								<p>고용보험이 납부되는 재직자 개인이 <b>'재직자 내일배움카드'</b>를 발급받아 수강료 지원을 받는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 우선지원 대상자 근로자, 고용보험 임의가입 자영업자, 기간제 근로자, 단시간 근로자, 파견 근로자, 일용 근로자</p>

								<h5>지원내용</h5>
								<p>지원한도금액은 1인당 년간 200만원 한도 내에서 훈련과정에 따라 60~100% 지원</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">근로자 직무능력향상지원 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
								<div class="divTable">
									<table>
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
							
						</div>
						<!-- //con_wrap1709 고용보험환급 -->
		
						<!-- 자격증과정 소개 -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCCPM1704.asp"-->
						<!-- /자격증과정 소개 -->
						
						<%
						'<div class="btn_wrap c">
						'	<a href="/Register/Request/register_shortCourse.asp?cID=C2_core"><img src="/Images/Btns/btn_ApplyCourse.png"/></a>
						'	<!--<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">수강신청</a>-->
						'	<!--<a href="/Register/Request/register_shortCourse.asp?cID=cVacation" class="btn mid green1">지원하기</a>-->
						'</div>
						%>
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