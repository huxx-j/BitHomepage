<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="Common_getIndex.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->

	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("ITTELECOM") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_ITtelecom.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>국비지원무료과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>신입사원 채용교육
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>㈜아이티텔레콤
						</p>
						<h4 style="float:left;">㈜아이티텔레콤 신입사원채용교육</h4>
						<!-- 수강신청btn -->
						<a href="/Register/Request/register_employment1.asp" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							지원하기
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>-->
					<section class="section" style="margin-top:5px;">
						<div class="con_wrap1709 first">
							<!--<h5>지원시 유의사항</h5>-->
							<!--<p>㈜아이티텔레콤 신입사원채용교육은 인재상, 조직문화, 업무특성에 맞는 인재를 인턴형태로 선발하여 조기 양성 한다는 취지로 IT전문 교육기관인 비트교육센터의 강도 높은 교육과정을 전형절차에 포함시켰습니다. 이론과 실습을 포함한 6개월 동안의 본 과정을 정상적으로 이수 후 ㈜아이티텔레콤의 직원으로 정식채용이 확정됩니다.<br> (단, 교육비용은 회사가 전액 부담합니다.) </p>-->
							<p>신입사원채용프로그램은 ㈜아이티텔레콤의 인재상, 조직문화, 업무특성에 맞는 인재를 비트교육센터과 공동으로 선발하여 정직원으로 채용 후 사내교육의 일환으로 기업은 비트교육센터의 강도높은 전문가과정에 신입사원연수를 위탁, 실시하는 프로그램입니다. 교육 전 정직원으로 채용이 확정되므로 신입사원의 교육비 전액은 기업에서 지원합니다. 지금까지 비트교육센터의 신입사원채용프로그램을 통해 1,000여명(2018년 기준) 이상의 인재가 SW전문개발자로써 채용되었습니다.</p>
						</div>
						<div class="con_wrap1709">
							<h5 class="mar_t40 redTxt">교육특전</h5>
							<ul>
								<li>1. 교육비: 무료</li>
								<li>2. 훈련수당 지원 지급</li>
								<li>3. 식비지원</li>
								<li>4. 전원 신입사원으로 채용</li>
							</ul>
						</div>
						<div class="con_wrap1709">
							<h5>기업소개</h5>
							<!-- #include virtual="/Course/Employ/Summary1_ITtelecom.asp"-->
							<!--
							<p class="mar_t20 mar_b20">
								<img src="/Images/Content/company_logo/img_LOGO_ITtelecom.jpg" style="width:300px;"/>
							</p>
							<p>
								㈜아이티텔레콤은 DSRC 및 V2X WAVE 노변기지국(RSE) 및 차량용 단말기(OBU)를 개발, 판매하는 회사로 100% 자체기술력을 확보하고 있음 
								- LG전자, LG-Nortel과 전략적 Partnership을 맺고 DSRC를 이용한 ETC용 ASIC과 단말기를 개발 완료 및 판매함 <br/>
								- 현재 대전시, 광주시, 성남시 등 많은 지방자치제에서 운용중인 ITS DSRC 망에 진보된 노변기지국인 uRSE H/W, S/W를 제공, 우수한 기술력을 인정받고 있음  <br/>
								- 현재 DSRC 국내 시장 점유율 1~2 위를 유지하고 있음 (2013 기준)  <br/>
								- 국내 대형 SI사업자와 (삼성SDS, LG CNS, SK C&C) 파트너쉽 체결 및 현대자동차에 DSRC Chipset 및 소프트웨어를 공급함  <br/>
								- 세계적으로 급성장이 예상되는 신기술(WAVE)을 선도적으로 개발하여 17차 부산ITS World Congress에서 세계최초 WAVE 기술 시연회 성공함  <br/>
								- 현재 미국,멕시코,호주,요르단,아르헨티나등 해외 ITS전문 SI업체와 MOU를 체결 및 현지 업체를 통한 글로벌 마케팅 전개중임 
							</p>
							<a href="http://www.it-telecom.co.kr/" class="blueTxt fb" target="_blank">홈페이지 주소 : http://www.it-telecom.co.kr/</a>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>복지사항</h5>
							<p>
								4대보험 가입 , 중식/석식 제공, 경조사비 지원, 리프레시 휴가 제도
							</p>
						</div>
						
						<div class="con_wrap1709">
							<!-- #include virtual="/Course/Employ/Summary2_ITtelecom.asp"-->
							<!--
							<h5>채용 분야 및 응시자격</h5>
							<div class="divTable">
								<table>
									<caption>채용분야, 인원, 응시자격</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:15%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">채용분야</th>
											<th scope="col">인원</th>
											<th scope="col">응시자격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">Embedded S/W, F/W 개발</td>
											<td class="c">3~5 명</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>전산 및 컴퓨터관련 졸업예정자 및 졸업자</li>
													<li>해외여행에 결격사유가 없는 자</li>
													<li>병역필 또는 면제자</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							-->
						</div>
						
						<div class="con_wrap1709">
							<h5>접수 방법</h5>
							<ul>
								<li>1. 비트교육센터<a href="http://www.bitacademy.com" class="blueTxt">(http://www.bitacademy.com)</a> 회원가입 후</li>
								<li>수강안내 → 신규지원 → 신입사원채용교육 → 아이티텔레콤 지원</li>
								<li>※ 온라인 지원자는 누구나 1차, 2차 전형을 합니다. (서류전형 없음)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>접수기간</h5>
							<!--<p>~ 2018년 2월 5일(월) 까지</p>-->
							<!--#include virtual="/Course/Employ/Common_Date1.asp"-->
						</div>
						
						<div class="con_wrap1709">
							<h5>전형 방법 및 일정</h5>
							<p class="redTxt fb">전형 : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2018년 2월 6일(화) 오전 10시--> - 필기시험(C)</p>
							<ul class="ul_dot_gray">
								<li>1차 전형 : 필기시험(C 프로그래밍)</li>
								<li>2차 전형 : 면접(아이티텔레콤 임원진) - 1차 합격자에 한해 알림</li>
								<li>※ 일정은 사정에 따라 조정될 수 있으며, 조정시 해당자에 한하여 사전 안내합니다.</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>교육과정 안내</h5>
							<ul class="ul_dot_gray">
								<li>교육과정 : Embedded System 전문가과정(6개월, 이론 3개월+프로젝트 3개월)</li>
								<!--<li>2015년 04월 ~ 09월(6개월과정)</li>-->
								<li>교 육 비 : 무료</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:40%">
										<col style="width:60%">
									</colgroup>
									<tbody>
										<tr>
											<th>과목</th>
											<th>교육내용</th>
										</tr>
										<tr>
											<td class="darker c" scope="col">C Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>표준 C언어의 사용 및 활용 방법 이해</li>
													<li>컴파일, 전처리 및 파일 입출력 등의 기초 지식 습득</li>
													<li>배열과 포인터</li>
													<li>데이터 표현 및 모듈화 프로그래밍</li>
													<li>자료구조와 알고리즘</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">Embedded C Programming</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템에서의 프로그래밍 이해</li>
													<li>C 기반의 임베디드 시스템 프로그래밍 이해 및 활용</li>
													<li>임베디드 보드를 활용한 펌웨어 프로그래밍</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 시스템 개론</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템 소개</li>
													<li>임베디드 시스템 개발 환경</li>
													<li>임베디드 시스템 아키텍쳐 (마이크로프로세서의 동작원리)</li>
													<li>임베디드 프로그래밍</li>
													<li>인터럽트, 주변 장치 이해</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM 구조 및 어셈블리 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 시스템 구조 이해</li>
													<li>ARM 프로세서 이해</li>
													<li>ARM 소프트웨어 개발</li>
													<li>ARM 프로세서 제어</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">ARM 디바이스 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>시스템 초기화 과정 이해</li>
													<li>메모리 시스템 이해</li>
													<li>디바이스에 대한 기초 개념 습득</li>
													<li>버스 인터페이스에대한 기초 개념 습득</li>
													<li>디바이스 제어 기법 습득</li>
													<li>멀티미디어 디바이스 제어</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">RTOS 구조 및 활용</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>실시간 시스템 소개</li>
													<li>태스크 운용</li>
													<li>태스크 통신(IPC)</li>
													<li>ARM 프로세스</li>
													<li>MicroC/OS-II 포팅</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">리눅스 시스템 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>리눅스 입문 (명령어, 개발환경, 시스템 운용관리)</li>
													<li>임베디드 리눅스 시스템 개발 환경 이해</li>
													<li>임베디드 리눅스 시스템 보드 개발 환경</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 커널 포팅</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>임베디드 리눅스 개요</li>
													<li>교차 개발 환경이해 및 구축</li>
													<li>부트로더</li>
													<li>커널 분석</li>
													<li>루트 파일 시스템</li>
													<li>시스템 패키징</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 디바이스 드라이버</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>디바이스 드라이버 소개</li>
													<li>커널 모둘 빌드</li>
													<li>커널 서비스</li>
													<li>리눅스 디바이스 드라이버 개발 모델</li>
													<li>캐릭터 디바이스 드라이버 개발</li>
													<li>블록 디바이스 드라이버 개발</li>
												</ul>
											</td>
										</tr>									
										<tr>
											<td class="darker c" scope="col">임베디드 리눅스 네트워크 프로그래밍</td>
											<td class="l">
												<ul class="ul_dot_gray">
													<li>네트워크 통신의 개용</li>
													<li>네트워크 프로토콜 스택</li>
													<li>기타 데이터 통신</li>
													<li>BSD소켓 프로그래밍</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="col" colspan="3" class="tit">비트 프로젝트 (3개월)</th>
										</tr>
										<tr>
											<td class="l" colspan="3">
												<ul class="ul_dot_gray">
													<li>5인 내외의 인원으로 팀을 구성하여 최신의 프로젝트 주제를 선정하여 2 개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행.</li>
													<li>프로젝트 주제는 현재 임베디드 시스템 분야에서 필요로 하는 주제로 이수 후에 관련 분야의 취업과 연계할 수 있도록 함.</li>
													<li>주제 선정 후에는 관련된 자료 수집, 필요기술 학습, 명세 확정, 일정 수립, 개발 환경 구축 등, 개발, 통합 테스트 등을 거쳐 개발을 완료하고 외부 업체 관계자들의 참관 하에 최종 전시회를 갖도록 함.</li>
													<li>프로젝트 수행의 각 과정에서 제안서, 중간보고서, 최종보고서 및 상세설계서 테스트 시나리오 등 필요한 산출물들을 제출하도록 함으로써 프로젝트 수행 싸이클에 익숙해지도록 함.</li>
													<li>프로젝트 수행 과정에서 S/W Engineering 기법을 실제로 적용함으로써 효과적인 시간관리, 일정관리, 소프트웨어 품질관리 등에 대한 프로젝트 관리 기법을 익히도록 함. </li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="con_wrap1709">
							<h5>문의</h5>
							<p>02-3486-1780 (<a href="mailto:expert@bit.kr" class="email">expert@bit.kr</a>)</p>
						</div>
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