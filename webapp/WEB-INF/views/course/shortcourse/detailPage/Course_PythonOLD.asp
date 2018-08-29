<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

SubjectName = "Python 프로그래밍"
CourseID = "Python"
%>

<%
	dim strDate
	strDate = "2017.12.11 ~ 2018.1.3"
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

			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
		
			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
			$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
			$(".snb_1709 .newdepth3.newwrap.no5").addClass("on").removeClass("plus").addClass("minus");	// Python 프로그래밍 ON 
			$(".snb_1709 .newdepth4_wrap.no5").addClass("on").css('display','block');	// Python 프로그래밍 SUB - OPEN
			$(".snb_1709 .newdepth4_wrap.no5 li:eq(0) a").addClass("on");				// 주중반 ON
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_Python.asp";
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
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기프로그래밍
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Python 프로그래밍
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>주중반
						</p>
						<h4>Python 프로그래밍</h4>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Python Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li style="min-height:20px;"><%=strDate%><span class="greenTxt">(저녁반)</span></li>
													
													
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 16일 / 총48시간)</li>
													
												</ul>
												<!--<span>* 오전/오후반은 방학특강 기간에만 진행됩니다.</span><br/>-->
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>
												350,000원 <span class="blueTxt">(재직자 환급은 저녁반만 해당)</span><br/>
												<span>* 18,800원 상당 시중교재 제공</span>
											</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear:both; height:10px;"></div>

								<div> <!-- div 환급비 -->
									<h4 style="font-family:'Nanum Gothic Bold'; font-size:14px; color:#8b6338; margin-top:10px; margin-bottom:3px;">
										사업주위탁훈련 <a href="javascript:openSa();" id="btnOpenSa" class="mar_l10 btn sml blue">환급금액 자세히보기</a>
										<!--<span class="btn_wrap c"><a href="/Upload/company.zip" class="btn sml green1">훈련비신청서류다운</a></span>-->
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
													<td rowspan="4">350,000</td>
													<td>315,552</td>
													<td>34,448</td>
													<td>90%</td>
													<!--<td rowspan="4"></td>-->
												</tr>
												<tr>
													<td>50명 이상</td>
													<!--<td>314,899</td>-->
													<td>283,996</td>
													<td>66,004</td>
													<td>81%</td>
												</tr>
												<tr>
													<td rowspan="2">중견 또는 대기업</td>
													<td>1,000명 미만</td>
													<td>189,331</td>
													<td>160,669</td>
													<td>54%</td>
												</tr>
												<tr>
													<td>1,000명 이상</td>
													<td>126,220</td>
													<td>223,780</td>
													<td>36%</td>
												</tr>
											</tbody>
										</table>
										<!--<span class="redTxt">※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다</span><br/>-->
										<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
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
													<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
													<td>비정규직</td>
													<td rowspan="9">350,000</td>
													<td rowspan="4">34,440</td>
													<td rowspan="4">10%</td>
													<!--<td rowspan="9"></td>-->
												</tr>
												<tr>
													<td>이직 예정자</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
												</tr>
												<tr>
													<td>정규직</td>
 												</tr>
												<tr>
													<td rowspan="5">중견 또는 대기업</td>
													<td>비정규직</td>
													<td>34,440</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>이직 예정자</td>
													<td>97,550</td>
													<td>28%</td>
												</tr>
												<tr>
													<td>무급 휴직자</td>
													<td>34,440</td>
													<td>10%</td>
												</tr>
												<tr>
													<td>정규직(50세이상)</td>
													<td>97,550</td>
													<td>28%</td>
												</tr>
												<tr>
													<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
													<td>97,550</td>
													<td>28%</td>
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

						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>교육 소개 및 특장점</h5>
							<p>파이썬(Python)은 초보자로부터 전문가까지 폭넓은 사용자층을 보유하고 있습니다. 다양한 플랫폼에서 쓸 수 있고, 라이브러리(모듈)가 풍부하여 대학을 비롯한 여러 교육 기관, 연구 기관 및 산업계에서 이용이 증가하고 있습니다. 깔끔하고 쉬운 문법이 특징인 파이썬은 대학 컴퓨터 관련 학과의 저학년을 대상으로 한 프로그래밍 입문 언어로 최근 중요성이 부각되고 있는 코딩 교육을 시작하기에 적합한 언어로 평가 받고 있으며, 구글, 드롭박스, 유튜브, 넷플릭스 등 해외 유수의 IT기업에서도 개발언어로 채택하고 있는 추세입니다.</p>
							<p>본 과정에서는 파이썬 프로그램을 개발하기 위하여 필수적으로 알아야 하는 기본문법들을 숙지하고, 파이썬 프로그램의 구조와 컴파일 과정에 대해 이해를 하도록 하여 프로그래밍에 대한 전반적 이해를 돕습니다. 그리고 실제 개발과정에서의 활용을 돕기 위해 여러 활용법을 학습합니다.</p>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>과정 소개</h5>
							<!--<img src="/Images/Main/img_LOGO_Python.png" style="width:180px;"/>-->
							<p>파이썬 프로그래밍은 초보자로부터 전문가까지 폭넓은 사용자층을 보유하고 있습니다. </p>
							<p>복잡한 문법을 필요로 하는 Perl이나 C, C++에 비해 문법이 간단합니다. 따라서 배우기 쉽다는 장점이 있습니다. </p>
							<p>파이썬은 대학 컴퓨터 관련 학과의 저학년을 대상으로 한 프로그래밍 입문 언어로 최근 중요성이 부각되고 있는 코딩 교육을 시작하기에 적합한 언어로 평가 받고 있으며, 구글, 드롭박스, 유튜브, 넷플릭스 등 해외 유수의 IT기업에서도 개발언어로 채택하고 있는 추세입니다.</p>
							<p>C와 비교했을 때, 포인터와 같은 배우기 힘든 개념이 없기 때문에, 상대적으로 많은 시간을 프로그램 구조와 디자인 등에 투자할 수 있습니다. C++과 비교했을때, OOP의 기본적인 사항들은 더욱 빠르게 배울 수 있습니다.기본적으로 인터프리터 방식이기 때문에, 코드의 결과를 바로바로 확인해 볼 수 있고, 다양한 운영체제를 지원합니다. 실행 파일(.exe)을 만들어 낼 수도 있습니다. </p>
							<p>다양한 라이브러리를 지원하기 때문에, 상대적으로 적은 양의 코드만으로도 GUI 프로그램, game, CGI 프로그램 등을 빠르게 만들 수 있습니다. </p>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>C/ C++ 프로그래밍 외에도 파이썬을 배워야 하는 이유</h5>
							<p>C/C++ 그리고 Bourne shell과 유사한 문법을 가지고 있기 때문에, 기타 다른 스크립트 언어에 비해 익히는 속도가 매우 빠릅니다.</p>
							<p>OS에 관련된 기능들 (예: POSIX interface)대부분 C/C++에서 제공되는 함수와 같은 이름을 쓰고,익혀야하는 함수들이 타 스크립트 언어와 비교할 때 많지 않습니다.</p>
							<p>class, virtual function, 제한적인 operator overloading을 지원하기 때문에 C++에서 썼던 디자인 방식 그대로 적용할 수 있습니다.</p>
							<p>Mixed language programming - Python은 기타 다른 스크립트 언어에 비해 C/C++로 python module을 작성하기가 매우 쉽다 할 수 있습니다.</p>
							<p>제한적이나마 lambda expression을 제공하기 때문에, LISP/Scheme 등에 익숙한 사람들도 비슷한 코드를 쉽게 만들 수 있다. map(), apply() 함수 제공, closure 제공</p>
							<p>다른 스크립트 언어에 비해 문서화가 잘 되어 있으며 (Tutorial, Library Reference, Language Reference 제공), 문법 자체에 LISP/Scheme과 마찬가지로 documentation string을 집어 넣을 수 있고, built-in 함수인 dir()을 쓰면, 함수, 모듈, 오브젝트가 제공하는 심볼 테이블을 바로 볼 수 있기 때문에 다른 스크립트 언어를 쓸 때에 비해, 따로 문서를 찾아보는 빈도가 낮아집니다.</p>
							<p>함수, 클래스 또는 변수에 Decorator를 직접 제작할 수 있습니다. Decorator란 C/C++ 문법상 qualifier에 해당하는 것으로 다양한 wrapper를 만들거나 class인 경우 static, class method를 지정할 수 있습니다.</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>예상 진로</h5>
							<ul class="ul_dot_gray">
								<li>웹 프로그래밍</li>
								<li>빅테이터 분석 프로그래밍</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<div style="float:left; width:180px;">
								<h5>교재 제공</h5>
								<img src="/Images/Content/img_BookCover_JumpToPython.jpg" style="margin-left:15px; width:160px;  border:solid 1px #565656;"/>
							</div>
							<div style="float:left; width:350px; margin-top:27px; margin-left:15px;">
								<p style="margin-top:210px;">
									'Do it! 점프 투 파이썬' <Br/>박응용 저 / 이지스퍼블리싱
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>프로그래밍 입문을 위해 파이썬 프로그래밍 언어를 익히고 알고리즘을 적용할 수 있는 프로그래밍 사고력 훈련</li>
								<li>파이썬의 사용법과 활용방법 및 다양한 응용 능력 함양</li>
								<li>파이썬 클래스 및 패키지 와 구문 등의 다양한 기본 내용 숙지</li>
								<li>실무 또는 다양한 전산 문제를 해결할 수 있는 코딩 능력 함양</li>
							</ul>
							
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>프로그래밍을 처음 배우거나 파이썬 문법을 체계적으로 배우고자 하는 분</li>
								<li>파이썬 개발 방법 및 기본 문법에 대해서 알고자 하는 C언어, 자바나 어셈블리언어 개발자 </li>

							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<h5>예상 진로 (및 공부 방향)</h5>
							<ul class="ul_dot_gray">
								<li>기본 프로그래밍 능력 습득 / 알고리즘 실습 언어</li>
								<li>웹 응용 프로그램 개발 / 네트워크 서버 개발</li>
								<li>데이터베이스 응용 프로그램 개발</li>
								<li>텍스트 처리</li>
								<li>수치연산 (이공계)</li>
								<li>병렬연산 처리</li>
								<li>컴퓨터 그래픽스</li>
							</ul>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!--
						<style>
							table.table_col_type2 tbody tr th {
								vertical-align: top !important;
							}
						</style>
						-->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:25%">
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
											<td class="darker c" scope="row">기본</td>
											<td class="darker c" scope="row">
												1. 파이썬 소개<br/>
												2. 파이썬 자료형<br/>
												3. 파이썬의 기본 구문
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬 설치 및 실행환경 구성 및 실행</li>
													<li>파이썬의 자료형(숫자형, 문자열, 리스트, 튜플, 딕셔너리, 집합)과 변수</li>
													<li>제어문(조건문과 반복문)</li>
													<li>함수</li>
													<li>콘솔 입출력</li>
													<li>파일 읽고 쓰기</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">심화</td>
											<td class="darker c" scope="row">
												1. 클래스와 객체지향 프로그래밍<br/>
												2. 모듈 제작 및 사용 방안<br/>
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬 객체지향 프로그래밍</li>
													<li>클래스</li>
													<li>상속</li>
													<li>다형성</li>
													<li>모듈</li>
													<li>패키지</li>
													<li>예외처리</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">활용</td>
											<td class="darker c" scope="row">
												1. 파이썬 정규식과 문서다루기
											</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>파이썬의 내장함수와 외장함수</li>
													<li>정규 표현식</li>
													<li>XML 문서 다루기</li>
												</ul>
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

							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 &nbsp;(bithrd@bit.kr)</p>-->
						</div>
						<!-- con_wrap -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Python" class="btn mid green1">지원하기</a>
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