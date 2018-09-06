<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");				// 국가기간전략산업직종
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");		// 국가기간전략산업직종
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(2).addClass("on");  // 라즈베리파이를 활용한 IoT 서비스 고급인력 양성과정
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_EmbeddedLinux_2017.asp";
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


#kakao{

    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid #1b499b;
    color: #1b499b;
    background-color: #ffeb33;

}

 

#jiwon{
    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid black;
    color: black;
    background-color: white;

}

</style>





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
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>무료취업과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>국가기간전략산업직종
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>임베디드기반 IoT SW개발 고급인력양성 과정
						</p>
						<h4 style="float:left; letter-spacing:0px;" >임베디드기반 IoT SW개발 고급인력양성 과정</h4>
						<!-- 수강신청btn -->
<!--
<a href="https://pf.kakao.com/_SmhqV" id = "kakao" title = "카카오톡상담받기" style = "float:right; margin-top:24px; font-size:20px;">카카오톡 상담하기</a>

<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED" id = "jiwon" title = "신청하기" style = "float:right; margin-top:24px; margin-right:5px; font-size:20px;">지원하기</a>
-->

						<a href="https://pf.kakao.com/_SmhqV"  title="카카오톡 상담신청" style="float:right; margin:12px 0px 12px 12px;">
							<img src="/Images/Btns/btn_Kakao.png"/>
						</a>

						<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="수강신청" style="float:right; margin:12px 0;">
							<img src="/Images/Btns/btn_ApplyCourse.png"/>
						</a>

					
						<div style="clear:both; height:10px;"></div>
					</div>

					<section>
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
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_ED.inc" -->
											</td>
											<th>강의시간</th>
											<td>
												<%
												'//<!-- # i n c  lude virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" -->
												%>
												09:00 ~ 18:00 (총960시간 / 6개월)
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>무료</td>
											<th>훈련장려금</th>
											<td>월 약 30만원</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>20명</td>
											<th>문의</th>
											<td>임지훈 매니저: 02-3486-1248</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							
							
						</div>
<!-- con_wrap1709 -->


						<div class="con_wrap1709 ">
							<h5>과정소개</h5>
							<p>
								임베디드 시스템 분야에서 폭 넓게 사용되고 있는 ARM 기반 프로세서 구조 및 디바이스 제어기술, 어셈블리 프로그래밍, RTOS, Embedded C등의 임베디드 핵심기술과 IoT 플랫폼의 이해, IoT 통신 프로토콜, IoT 시스템 프로그래밍, IoT 디바이스 프로그래밍 등, 4차 산업혁명의 핵심분야인 IoT(사물인터넷)관련 기술을 융합한 프로젝트를 수행하고 임베디드, IoT분야로 진출을 목적으로 하는 과정입니다.
							</p>
						</div>


						<div class="con_wrap1709 ">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<!--
									<thead>
										<tr>
											<th scope="col" class="c">대주제</th>
											<th scope="col" class="c">세부내용</th>
										</tr>
									</thead>
									-->
									
									<tbody>
										<tr>
											<td scope="row" class="darker c">
C Programming	
											</td>
											<td>
	- 표준 C언어의 사용 및 활용 방법 이해<br>
	- 컴파일, 전처리 및 파일 입출력 등의 기초 지식 습득<br>
	- 배열과 포인터<br>
	- 데이터 표현 및 모듈화 프로그래밍<br>
	- 자료구조와 알고리즘
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
임베디드 C
											</td>
											<td>
	- 임베디드 시스템에서의 프로그래밍 이해<br>
	- C 기반의 임베디드 시스템 프로그래밍 이해 및 활용<br>
	- 임베디드 보드를 활용한 펌웨어 프로그래밍
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
사물인터넷 서비스 및 플랫폼에 대한 이해
											</td>
											<td>
	- 사물 인터넷의 개념 및 서비스 구조<br>
	- 사물 인터넷 디바이스 개념 및 응용 서비스 사례 연구<br> 
	- 사물 인터넷 플랫폼과 클라우드, 오픈소스 플랫폼 <br>
	- 오픈소스 하드웨어에 대한 이해<br>
	- 사물 인터넷과 임베디드 시스템  개론
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
ARM 구조및 어셈블리 <br>프로그래밍
											</td>
											<td>
	- 임베디드 시스템 구조 이해<br>
	- ARM 프로세서 이해<br>
	- ARM 소프트웨어 개발<br>
	- ARM 프로세서 제어
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
ARM 디바이스 프로그래밍

											</td>
											<td>
	- 시스템 초기화 과정 이해<br>
	- 메모리 시스템 이해<br>
	- 디바이스에 대한 기초 개념 습득<br>
	- 버스 인터페이스에대한 기초 개념 습득<br>
	- 디바이스 제어 기법 습득<br>
	- 멀티미디어 디바이스 제어
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
RTOS 구조및 활용

											</td>
											<td>
	- 실시간 시스템 소개<br>
	- 태스크 운용<br>
	- 태스크 통신(IPC)<br>
	- ARM 프로세스<br>
	- MicroC/OS-II 포팅
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT 시스템 프로그래밍

											</td>
											<td>
	- 리눅스 입문 (명령어, 개발환경, 시스템 운용관리)<br>
	- 임베디드 리눅스 시스템 개발 환경 이해<br>
	- 임베디드 리눅스 시스템 보드 개발 환경

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT를 위한  OS 포팅
											</td>
											<td>
	- 임베디드 리눅스 개요<br>
	- 교차 개발 환경이해 및 구축<br>
	- 부트로더<br>
	- 커널 분석<br>
	- 루트 파일 시스템<br>
	- 시스템 패키징

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT 디바이스 드라이버 
											</td>
											<td>
	- 디바이스 드라이버 소개<br>
	- 커널 모둘 빌드<br>
	- 커널 서비스<br>
	- 리눅스 디바이스 드라이버 개발 모델<br>
	- 캐릭터 디바이스 드라이버 개발<br>
	- 블록 디바이스 드라이버 개발

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
IoT통신 프로토콜 및<br> 
네트워크 프로그래밍 

											</td>
											<td>
	- 네트워크 통신의 개용<br>
	- 네트워크 프로토콜 스택<br>
	- 기타 데이터 통신<br>
	- BSD소켓 프로그래밍
											</td>
										</tr>

										<tr>
											<td scope="row" class="darker c">
Team Project

											</td>
											<td>
	- 지금까지 배운 모든 기술을 통해서 실무 현업에 맞는 프로젝트로 개발해 보는 단계로 4인 내외로 팀을 구성<br>
	- 최신 프로젝트 주제를 선정하여 3개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행하며, 주제 선정<br> 
	- 관련된 자료 수집, 필요기술 학습, 명세확정, 일정 수립, 개발환경구축 등 개발, 통합테스트 등을 거쳐 개발을 완료<br>
	- 외부업체 관계자들의 참관 하에 최종 전시회를 갖도록 한다. <br>
											</td>
										</tr>
										
										
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->

						<div class="con_wrap1709 ">
							<h5>교육특전/혜택</h5>
							<p>
								1. 교육비 무료 <br>
  								2. 훈련수당 지원 ( 약 30만원/월 )<br>
 								3. 취업지원프로그램 제공
							</p>
						</div>


						<div class="con_wrap1709 ">
							<h5>수강대상 및 신청방법</h5>
								
							<p>
								<b>-수강대상</b><br>								
								IoT, 임베디드 분야에 관심있는 미취업자, 졸업예정자, 내일배움카드 발급 가능자
							</p>
							<br><br>
							<p>
								<b>-신청방법</b><br>								
								1. 비트교육센터 회원가입 → 온라인 신청 → 레벨테스트 및 면담<br>
   								2. 주거지관할 고용센터 방문 후, 내일배움카드 신청
							</p>
							
						</div>
						<br><br>

						<!-- con_wrap1709 -->

						<div class="con_wrap1709">
							<img src="Images/proce.png" style="width:630px"/><br><br>
						</div>

						
						<div class="con_wrap1709" style="text-align: center;">

							<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED" id = "jiwon" title = "신청하기" style = "margin-top:24px; margin-right:10px; font-size:20px;">지원하기</a>

							<a href="https://pf.kakao.com/_SmhqV" id = "kakao" title = "카카오톡상담받기" style = " margin-top:24px; font-size:20px;">카카오톡 상담하기</a>

							
						</div>
<br><br>




							<!--
						<div class="con_wrap1709">
							<h5>1. 과정 소개</h5>
							<p>
								모든 사물을 인터넷을 기반으로 연결하여 사람과 사물, 사물과 사물간의 정보를 상호 소통하는 기술과 서비스인 사물인터넷에 대한 관심이 증대되고 있다. 이에 본 과정은 사물인터넷 플랫폼 서비스 개발 및 디바이스에 대한 지식과 개발능력을 배양하기 위해 IoT에 대한 이해 및 개발을 배우기 위한 지식 및 IoT 디바이스 및 서비스 개발에 기초가 되는 다양한 프로그래밍 언어부터 습득 한 후, IoT 디바이스로 대표적인 오픈소스 하드웨어 라즈베리 파이와 아두이노 기반으로 하드웨어에 대한 지식과 드라이버 개발 커널 빌드등 시스템 및 네트워크 프로그래밍을 학습하고 직접 실습한다. 이 후, 디바이스 개발에 대한 충분한 경험을 바탕으로 IoT 서비스 개발에 필요한 다양한 클라이언트, 서버 기술들을 습득하게 된다.
							</p>
						</div>

						<div class="con_wrap1709">
							<h5>2. 교육 특전</h5>
							<ul class="pd_l5">
								<li> - 교육비 전액 무료</li>
								<li> - 훈련수당 최대 총 1,896,000원 지급 (지원대상에 따라 훈련수당은 변동됩니다.)</li>
								<li> - 교육수료 후 취업 지원</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>3. 교육 대상</h5>
							<ul class="pd_15">
								<li>사물 인터넷에 대한 경험이 필요한 초급 엔지니어</li>
								<li>사물인터넷 디바이스 및 서비스 개발에 관심있는 자</li>
								<li>사물인터넷 서비스 관련 신규 사업을 기획(준비)하는 창업 준비자</li>
								<li>사물인터넷 분야로 진로를 결정한 대학(원)생 및 미취업자</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>4. 모집기간 및 정원</h5>
							<p>선착순 마감 / 25명</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>5. 신청방법</h5>
							<p>온라인 수강신청 후 면담신청<br/>전화 - 02-3486-3456<br/>카카오톡 - 플러스친구(비트교육센터 검색)</p>
						</div>

						<div class="con_wrap1709">
							<h5>6. 교육시간</h5>
							<p>
-->
<%							
'// < ! - -  #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" - - >
%>
								<!--08:50 ~ 18:00 (그룹스터디 포함 22:00까지)<br/>- 총 960시간(6개월)-->
<!--
								</p>
						</div>
						
						<div class="con_wrap1709">
							<h5>7. 교육 기간</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:25%">
										<col style="width:75%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="col">과정명</th>
											<td style="letter-spacing:-0.5px;"><b>라즈베리파이를 활용한 IoT 서비스 고급인력 양성과정</b></td>
										</tr>
										<tr>
											<th scope="col">교육기간</th>
											<td style="letter-spacing:-0.5px;">
-->
<%											
'//												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_RD.inc" --> 6개월(120일) 총960시간
%>
<!--
											</td>
										</tr>
										<tr>
											<th scope="col">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>8. 준비 서류</h5>
							<p><b>- 실업자 내일배움카드 발급(최소 2주, 최대 5~6주 소요)</b></p>
							<p><b>- 취업성공패키지 참여 카드발급(최소 4주 이상)</b></p>
							<p><span style="margin-left:7px; background:#ffff99;">참여 훈련생 특혜: 훈련 수당 10만원 지원금 추가  </span></p>
							<p style="margin-left:7px; font-size:1em; "><b>* 위의 카드발급은 주소지 관할 고용센터에서 발급 가능합니다.</b></p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">※ 단, 훈련장려금은 1개월 단위 출석률이 80% 이상인 경우에만 지급받을 수 있습니다.</p>
							<p style="color:#7f7f7f; font-size:1em; line-height:13px;">※ 실업급여를 받으시는 동안이나 공공근로사업에 참여하고 계신 동안에는 훈련장려금을 지급받을 수 없습니다.</p>
							<ul class="pd_l5">
								<li>
									<p class="diagram_wrap l" style="margin-top:0px;"><img src="/Images/Content/Diagram/img_course_diagram_06.PNG" style="width:100%;"></p>
								</li>
							</ul>
							<p> - 증명사진 2매</b><p>
						</div>
						
						<div class="con_wrap1709 last">
							<h5>9. 교육내용</h5>

							<style>
								.specialTable {
									width:20%;
									float:left;
								}
								.specialDiv {
									width:1%;
									padding:0 20px;
									line-height:230px;
									float:left;
								}
								.specialTable tr td {
									border-bottom:initial !important;
									border:1px solid !important;
								}
								.specialTable tr:nth-child(1) td { text-align:center; }
								.specialTable tr:nth-child(2) { height:75px; }
								.specialTable tr:nth-child(3) { height:95px; }
							</style>
							<table class="specialTable">
								<tr><td>1단계</td></tr>
								<tr><td>IoT에 대한 이해 및 개발을 위한 기본 기술</td></tr>
								<tr><td>IoT 개요, 리눅스, Java, Python 프로그래밍</td></tr>
							</table>
							<div class="specialDiv">
								→
							</div>
							<table class="specialTable">
								<tr><td>2단계</td></tr>
								<tr><td>IoT 디바이스 개발</td></tr>
								<tr><td>라즈베리파이를 활용한 시스템 및 네트워크 프로그래밍</td></tr>
							</table>
							<div class="specialDiv">
								→
							</div>
							<table class="specialTable">
								<tr><td>3단계</td></tr>
								<tr><td>IoT 서비스 개발</td></tr>
								<tr><td>Pyhton 웹, Node.JS, 라즈베리파이 제어를 위한 안드로이드 앱 작성</td></tr>
							</table>
							<div class="specialDiv">
								→
							</div>
							<table class="specialTable">
								<tr><td>4단계</td></tr>
								<tr><td>프로젝트 수행</td></tr>
								<tr><td>라즈베리파이를 활용한 IoT 서비스 프로젝트 수행</td></tr>
							</table>
							<div style="clear:both;"></div>
						</div>
						-->
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