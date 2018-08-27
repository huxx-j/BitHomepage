<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
SubjectName = "[방학특강] C Programming"
CourseID = "cVacation"
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
				<!-- # i n clude virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
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
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/><a href="/Course/ShortCourse/Course_Summer2018.asp"/>여름방학특강</a>
						</p>
						<h4><%=SubjectName%></h4>
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
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cVacation.inc" -->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cVacation.inc" -->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>394,440원 <!--<span class="blueTxt">(재직자 환급 가능)</span>--></td>
											<th>교육비지원</th>
											<td>고용보험 비환급 <!--<a href="#" id="btnOpenSaGn1" class="btnBlueBorder">자세히보기</a>--></td>
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
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:45%">
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
											<td scope="row" class="c darker">1일차</td>
											<td>
프로그래밍의 이해와 기초기식
											</td>
											<td>
코딩환경, 컴파일러,진수,기본입출력, 연산자
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">2일차</td>
											<td>
제어문의 구조를 이해하고 실행흐름을 학습
											</td>
											<td>
조건문, 반복문,분기문
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">3일차</td>
											<td>
리스트 기본이 되는 배열을 학습
											</td>
											<td>
1차원배열, 문자열
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">4일차</td>
											<td>
문자열 관련 함수의 이해
											</td>
											<td>
문자열함수
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">5일차</td>
											<td>
여러가지 프로그램들 계속적으로 실습하여 개별 코딩능력 향상
											</td>
											<td>
1주차 연속 실습
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">6일차</td>
											<td>
배열구조의 핵심인 2차원배열을 학습하여 메모리구조의 완전학습
											</td>
											<td>
2차원배열,3차원 배열, 간접연산자
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">7일차</td>
											<td>
메모리 처리의 정석인 포인터를 이해와 학습
											</td>
											<td>
단일포인터, 이중포인터, 포인터 연산
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">8일차</td>
											<td>
다른 형태의 포인터와 처리과정을 이해와 학습
											</td>
											<td>
배열포인터,포인터배열, 
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">9일차</td>
											<td>
한단계 향상된 포인터의 학습
											</td>
											<td>
함수포인터,범용포인터, typedef
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">10일차</td>
											<td>
조별 프로젝트를 통해 함께 구현하는 능력 향상
											</td>
											<td>
2주차 프로젝트
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">11일차</td>
											<td>
컴파일 전에 일어나는 과정들을 구현 및 학습
											</td>
											<td>
스토리지클래스,전처리기
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">12일차</td>
											<td>
동적메모리 할당을 사용하여 큰 메모리를 요구하는 프로그램 구현 학습
											</td>
											<td>
동적할당
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">13일차</td>
											<td>
자료구조의 근간이 되는 구조체 구조의 이해와 실습.
											</td>
											<td>
구조체
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">14일차</td>
											<td>
파일 입출력을  통하여 저장방법과 처리에 대한 학습
											</td>
											<td>
파일입출력
											</td>
										</tr>
										<tr>
											<td scope="row" class="c darker">15일차</td>
											<td>
종합 프로젝트의 구현
											</td>
											<td>
3주차 프로젝트
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="blueTxt">*. 이론 60 : 실습 40</p>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap1709 -->

						<br/>
						
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