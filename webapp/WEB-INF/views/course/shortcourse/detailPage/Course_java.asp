<%
CourseID = "JAVA_core"
SubjectName = "[주중반] JAVA 프로그래밍"
'//SubjectName = "JAVA 프로그래밍"

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
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			/********************* 고용보험환급 div, btn 관련. *******************************************************/
			$("#btnOpenSaGn1").on("click", function(event) {
				var height = document.body.scrollHeight * 1;
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
			//$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Java Programming ON
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//elm_xPos2 = $(".btn_refundView2").offset().left + $(".btn_refundView2").width()/2;

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3.newwrap.no2").addClass("on").removeClass("plus").addClass("minus");	// Java 프로그래밍 ON 
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no2").addClass("on").css('display','block');	// Java 프로그래밍 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no2 li:eq(0) a").addClass("on");				// 주중반 ON
		});
		
	</script>
	<script language="javascript"> 
	/********
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Java.asp";
	**********/
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
				<!-- # i n clude virtual = "/Include/SNB_CourseVacation_1709.asp"-->				
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<!--
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						<h4>Java 프로그래밍</h4>
						-->
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Java 프로그래밍
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주중반
						</p>
						<h4>[주중반] JAVA 프로그래밍</h4>
					</div>
					<section class="section">
						<!-- con_wrap1709 -->
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
											<th>교육기간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__JAVA_core.inc" -->
												<!--
												2017.12.21 ~ 2018.1.12 <span class='greenTxt'>(오전반)</span><br/>
												2018.1.15 ~ 2018.2.2 <span class='greenTxt'>(오후반)</span><br/>
												2017.12.18 ~ 2018.1.16 <span class='greenTxt'>(저녁반)</span><br/>
												< ! - - 2018.2.5 ~ 2018.2.27 <span class='greenTxt'>(오전반)</span> - - > 
												-->
											</td>
											<th>강의시간</th>
											<td class="long">
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__JAVA_core.inc" -->
												<!--
												오전반 9:00 ~ 13:00 (4시간/총60시간)<br/>
												오후반 14:00 ~ 18:00 (4시간/총60시간)<br/>
												저녁반 19:00 ~ 22:00 (3시간/총60시간)
												-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>
												394,440원  <span class="blueTxt">(재직자 환급 가능)</span>
											</td>
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

						<div class="con_wrap1709 ">
							<h5>과정로드맵</h5>
							<img src="Images/JAVA-P.PNG" style="text-align:center; width:100%;"/>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709" style="z-index:1;"> <!-- otherwise, 환급내용 자세히보기 div와 z-index problem happens -->
							<h5>교육소개</h5>
							<p>JAVA언어는 국내 산업 현장에서 수요가 가장 많은 객체지향언어입니다. 웹 개발 전반에 걸쳐 두루 활용될 뿐만 아니라 코드 재사용성이 높아 유지보수가 용이한 언어로 안드로이드 어플개발 등 요즘 화두가 되고 있는 여러 it 기술의 중요한 기초가 되는 언어입니다. 본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하는 과정으로 JAVA의 기본 문법을 탄탄히 다질 수 있는 기초 과정입니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하여 설명할 수 있다.</li>
								<li>자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용할 수 있다.</li>
								<li>입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다. </li>
								<li>스레드를 이해하고 실무에 적용할 수 있다.</li>
								<li>네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성할 수 있다. </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>Java 언어를 처음 배우시는 분</li>
								<!--<li>Java 언어의 기초 구문부터 시작하려는 분 </li>-->
								<li>객체지향 프로그래밍의 개념을 배우고자 하시는 분</li>
								<li>안드로이드 어플 개발에 관심이 있는 분</li>
								<li>웹 개발 관련 기술을 습득하고자 하시는 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<!--<img src="/Images/Content/img_BookCover_iamjava.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>-->
								<img src="Images/이것이자바다.png" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:230px;">
									'이것이 자바다' <Br/>신용권 저 / 한빛미디어
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
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
											<td class="darker c" scope="row" rowspan="4">Java Beginning</td>
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
											<td class="darker c" scope="row" rowspan="6">Java Fundamental</td>
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
											<td class="darker c" scope="row" rowspan="10">Java Advanced</td>
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
							</div>
							<!--<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>-->
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>

							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
	
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
									<a href="/Upload/company2.zip" class="btnBlueBorder" style="margin:10px auto;">사업주 위탁훈련 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
								
								<div class="divTable">
									<table>
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
												<td rowspan="4" class="long">394,440</td>
												<td class="long">394,440</td>
												<td class="redTxt" style="font-weight:900;">없음</td>
												<td>100%</td>
												<!--<td rowspan="4"></td>-->
											</tr>
											<tr>
												<td>50명 이상</td>
												<!--<td>314,899</td>-->
												<td class="long">354,990</td>
												<td>39,450</td>
												<td>90%</td>
											</tr>
											<tr>
												<td rowspan="2">중견 또는 대기업</td>
												<td>1,000명 미만</td>
												<td class="long">236,660</td>
												<td>157,780</td>
												<td>60%</td>
											</tr>
											<tr>
												<td>1,000명 이상</td>
												<td class="long">157,770</td>
												<td>236,670</td>
												<td>40%</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--<span class="redTxt">※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다</span><br/>-->
								<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 394,440원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
								<span class="redTxt"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
							</div>
							
							<div id="divGn" style="DISPLAY:NONE;"> <!-- class="con_wrap1709ul">-->
								<h5>근로자 직무능력향상지원</h5>
								<p>고용보험이 납부되는 재직자 개인이 <b>'재직자 내일배움카드'</b>를 발급받아 수강료 지원을 받는 제도</p>
								
								<h5>지원대상</h5>
								<p>- 우선지원 대상자 근로자, 고용보험 임의가입 자영업자, 기간제 근로자, 단시간 근로자, 파견 근로자, 일용 근로자</p>

								<h5>지원내용</h5>
								<p>지원한도금액은 1인당 년간 200만원 한도 내에서 훈련과정에 따라 60~100% 지원</p>
								
								<div style="text-align:center;">
									<a href="/Upload/employ2.zip" class="btnBlueBorder" style="margin:10px auto;">근로자 직무능력향상지원 신청서류 다운로드</a>
									<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
								</div>
								<div class="divTable">
									<table>
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
												<td rowspan="9" class="long">394,440</td>
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
								</div>
							</div>
						</div>
						<!-- //con_wrap1709 고용보험환급 -->
						
						<div style="height:30px;"></div>
						<!-- 자격증과정 소개 -->
						<!-- # i n clude virtual="/Course/ShortCourse/DetailPage/Common_IntroducingBCJPM.asp"-->
						<!-- /자격증과정 소개 -->
						
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=JAVA_core" class="btn mid green1">지원하기</a>-->
						<!--<a href="/Register/Request/register_shortCourse.asp?cID=javaVacation" class="btn mid green1">지원하기</a>-->
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

