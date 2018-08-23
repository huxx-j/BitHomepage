<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

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
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("BITCOMPUTER") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_BITComputer.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>㈜비트컴퓨터
						</p>
						<h4 style="float:left;">㈜비트컴퓨터 신입사원채용교육</h4>
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
							<p>신입사원채용교육은 실력 및 업무능력을 갖춘 직원 채용을 위해, 기업의 인재상, 조직문화, 업무특성에 맞는 인재를 조기에 선발하고 비트교육센터 교육과정에 위탁하여 체계적이고 강도 높은 기술교육을 통해 교육 이수 후 곧바로 현업에 투입할 수 있는 인력을 양성하는 교육 제도입니다.</p>
						</div>

						<div class="con_wrap1709">
							<h5 class="mar_t40 redTxt">교육특전</h5>
							<ul>
								<li>1. 선발 교육생 전원 채용</li>
								<li>2. 교육비 무료 (기업 전액지원)</li>
								<li>3. 훈련수당 지급 (월20만원, 총 120만원)</li>
								<li>4. 식비 지원 </li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>회사 소개</h5>
							<!--
							<p><img src="/Images/Main/img_logo_BITCOM.png"  style="width:180px;" class="mar_b10"></p>
							<p class="mar_b10">
								<b>비트컴퓨터 </b> <a href="https://www.bit.kr/" class="blueTxt fb" target="_blank">https://www.bit.kr/ </a><br/>
							</p>
							<p class="mar_b10">
								비트컴퓨터는 '소프트웨어'라는 단어조차 생소하던 83년, 국내대학생 벤처 1호, 소프트웨어 전문 회사 1호로 설립된 회사입니다. 대학 3학년에 재학중이던 조현정 회장이 450만원의 자본금, 직원 2명으로, 호텔 객실에서 창업하여 97년 KOSDAQ상장을 계기로 본격적인 성장기에 진입한, 내실과 미래가치가 높게 평가되고 있는 리딩 벤처기업입니다.<br/>
							</p>
							<p>								
								비트컴퓨터는 의료정보 분야의 전문성을 바탕으로 성장성이 높은 분야인 U-health 시장의 선점과 해외 시장의 본격 공략을 통해 헬스케어 전문기업으로 입지를 확고히 하겠다는 목표를 세우고 있습니다. 원격진료시스템 공급 1위 업체로 U-health 시장의 대표기업으로 자리매김하고 있으며, 해외사업에 있어서도 태국, 일본, 우크라이나, 카자흐스탄, 미국, 몽골 등에 진출해 상승세를 이어나가고 있습니다. 
							</p>
							-->
							<!-- #include virtual="/Course/Employ/Summary1_BitComputer.asp"-->							
						</div>
						
						<div class="con_wrap1709">
							<h5>모집요강</h5>
							<!-- #include virtual="/Course/Employ/Summary2_BitComputer.asp"-->							
							<!--
							<div class="divTable">
								<table>
									<caption>채용분야, 채용인원, 응시자격</caption>
									<colgroup>
										<col style="width:30%">
										<col style="width:35%">
										<col style="width:30%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="c">채용분야</th>
											<th scope="col" class="c">채용인원</th>
											<th scope="col" class="c">응시자격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">JAVA 솔루션<br/>개발</td>
											<td class="c">5 명</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>대졸 이상</li>
													<li>컴퓨터 관련학과 우대</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>접수기간</h5>
							<!--<p>~ 2018년 4월 25일(수) 까지</p>-->
							<!--#include virtual="/Course/Employ/Common_Date1.asp"-->
						</div>
						
						<div class="con_wrap1709">
							<h5>전형 절차</h5>
							<ul>
								<li>
									1차 전형 : 필기시험 (Java Programming)<br/>
									※ 전형 장소 : 비트교육센터<br/>
									<span class="redTxt"><b>※ 전형 일정 :  <!--2018년 4월 26일(목) 오후 1시--><!--#include virtual="/Course/Employ/Common_DateTime2.asp"--></span></b><br/>
									※ 필기도구 및 반명함판(증명사진) 1매 지참
								</li>
								<br/>
								<li>2차 전형 : 비트컴퓨터 기업면접 (최종선발)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>교육운영</h5>
							<ul>
								<li>1. 비트교육센터 운영기준에 준함</li>
								<li>
									2. 이론교육 (월~금)<br/>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">교육입실</div> <div style="float:left;">08:50 이전</div>
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">오전교육</div> <div style="float:left;">09:00 ~ 12:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">중식</div> <div style="float:left;">12:00 ~ 13:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">오후교육</div> <div style="float:left;">13:00 ~ 18:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">석식</div> <div style="float:left;">18:00 ~ 19:00</div> 
									<div style="clear:both;"></div>
									<div style="width:20px; margin-left:10px; float:left;">-</div> <div style="width:80px; float:left;">그룹스터디</div> <div style="float:left;">19:00 ~ 21:30</div> 
									<div style="clear:both;"></div>
								</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>교육과정 소개</h5>
							<ul>
								<li>1. 과정명 : 자바 전문가과정</li>
								<li>2. 교육기간 : 6개월 (이론3개월, 프로젝트3개월)</li>
							</ul>
						</div>
						
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>JAVA Expert 교육내용</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<tbody>
										<!-- 1 단계 : Java Programming 기술 기반 및 개념 확립 단계 -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">1 단계 : Java Programming 기술 기반 및 개념 확립 단계</th>
										</tr>
										<tr>
											<td class="darker" scope="col">Advanced Java</td>
											<td class="darker"></td>
											<td class="l">
												
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col">Data Structure</td>
											<td class="darker"></td>
											<td class="l">
												개발자라면 필수적으로 알아야 하는 자료구조/알고리즘에 대한 지식과 실습을 Java와 객체지향 프로그래밍으로 학습한다
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td class="darker">Mysql / MongoDB</td>
											<td class="l">
												데이터 프로그래밍에 대한 학습으로 정형데이터의 기본이라고 할 수 있는 RDBMS와 비정형 데이터의 대표적인 NoSQL 대해 학습한다
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col"></td>
											<td class="darker">Serlvet / JSP</td>
											<td class="l">
												응용 계층의 HTTP 프로토콜 및 웹 서비스의 전반적인 이해를 바탕으로 자바 웹 프로그래밍의 핵심인 Servlet 프로그래밍 학습한다
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 1</td>
											<td class="l">
												Java 프로그래밍을 응용하고, 기본되는 전산 소양을 확립할 수 있는 개인 프로젝트 수행
											</td>
										</tr>
										
										<!-- 2단계 : JavaScript 기반 풀스택 기술 확립 단계 -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">2단계 : JavaScript 기반 풀스택 기술 확립 단계</th>
										</tr>
										<tr>
											<td class="darker" scope="col" rowspan="4">Front-end</td>
											<td class="darker">HTML5 / CSS3</td>
											<td class="l">
												웹 표준에 맞는 HTML5/CSS3 학습을 기본으로 반응형 웹(모바일 웹) 제작에 필요한 기술들을 학습한다
											</td>
										</tr>
										<tr>
											<td class="darker">JavaScript (ECMA Script, jQuery, AngularJS, ReactJS)</td>
											<td class="l">
												프론트엔드의 대표 프로그래밍 기술인 자바스크립트를 학습하고 자바스크립트 기반 다양한 라이브러리의 사용법을 익힌다
											</td>
										</tr>
										<tr>
											<td class="darker">AJAX / JSON</td>
											<td class="l">
												REST API를 활용한 백엔드 프론트엔드 간의 대표적인 데이터 통신 기술을 습득하고 실무 어플리케이션에 적용한다
											</td>
										</tr>
										<tr>
											<td class="darker">UX/UI</td>
											<td class="l">
												다양한 프론트엔드에 적용해야 할 UX/UI 디자인 개념과 그 프로세스를 이해시킨다
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col" rowspan="2">Development</td>
											<td class="darker">CI(Jenkins)</td>
											<td class="l">
												애자일 개발 프로세스 XP의 실천 방법인 CI를 학습하여 소프트웨어 버전 업데이트하고 빌드, 테스팅, 서버 배포 등 자동화에 대해 배운다
											</td>
										</tr>
										<tr>
											<td class="darker">SCM(git)</td>
											<td class="l">
												소프트웨어 버전 관리의 필요성을 이해시키고 Git 및 GitHub를 사용하여 버전 관리 시스템을 현장에 적용할 수 있도록 한다
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td>Node.js (Express.js)</td>
											<td class="l">
												Node.js에 대한 기본 지식을 학습하고, 지원 웹 개발 프레임워크 중 Express 프레임워크로 웹서버 또는 REST API 작성법을 학습한다
											</td>
										</tr>
										
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 2</td>
											<td class="l">
												JavaScript 기반의 백엔드, 프론트엔드 기술을 페어로 학습하여 함께 적용가능한 웹 애플리케이션을 작성해 본다
											</td>
										</tr>
										
										<!-- 3단계: Back-end 심화 기술 확립 단계  -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">3단계: Back-end 심화 기술 확립 단계 </th>
										</tr>
										<tr>
											<td class="darker" scope="col">Back-end</td>
											<td class="darker">Spring Framework(IoC/DI Container, AOP, Spring MVC, Spring JDBC, Spring Boot, TDD(Junit))</td>
											<td class="l">
												Spring Framework의 핵심개념을 예제를 통해 학습하며, Spring Boot 상에서 Spring MVC를 학습하며, Spring JDBC, Junit을 학습한다.
											</td>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Unit test 3</td>
											<td class="l">
												자바 프레임워크 기반의 심화된 백엔드 기술을 적용한 웹 애플리케이션을 작성해 본다
											</td>
										</tr>
										
										<!-- 4 단계 : 비트 프로젝트 (3개월) -->
										<tr>
											<th scope="row" colspan="3" class="tit myGrayBox">4 단계 : 비트 프로젝트 (3개월)</th>
										</tr>
										<tr>
											<td class="darker" scope="col" colspan="2">Term Project</td>
											<td class="l">
												지금까지 배운 모든 기술을 통해서 현업에 맞는 풀스택 응용프로그램을 개발해 보는 단계로 4인 내외로 팀을 구성<br/>
												최신 프로젝트 주제를 선정하여 3개월 동안 팀원의 역할분담과 상호 협조 하에 프로젝트 수행하며, 주제 선정<br/>
												관련된 자료수집, 필요기술 학습, 명세확정, 일정 수립, 개발환경구축 등 개발, 통합테스트 등을 거쳐 개발 완료<br/>
												외부업체 관계자들의 참관 하에 최종 전시회를 갖는다
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

						<!--
						<div class="con_wrap1709">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<colgroup>
									<col style="width:35%">
									<col style="width:65%">
								</colgroup>
								<thead>
									<tr>
										<th>교과목명</th>
										<th>상세내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">C Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>C언어 기본</li>
												<li>Generic & STL</li>
												<li>File I/O</li>
												<li>Data Structure</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">C++ Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>C++언어 기본</li>
												<li>C++ Better than C</li>
												<li>OOP & Class</li>
												<li>Generic & STL</li>
												<li>File I/O</li>
												<li>Data Structure</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Win32 API</th>
										<td>
											<ul class="ul_dot_gray">
												<li>윈도우 메시지 처리</li>
												<li>GDI API를 이용한 화면 처리</li>
												<li>리소스 프로그래밍</li>
												<li>공통컨트롤 프로그래밍</li>
												<li>메시지, 시스템 정보, 메모리</li>
												<li>멀티쓰레드, 동기화, DLL, 전역훅킹</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Windows System Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>운영체제와 인텔계열 프로세서 구조</li>
												<li>기계어의 구성</li>
												<li>스택구조 및 스택 프레임</li>
												<li>프로세스 쓰레드 개념 및 구조</li>
												<li>우선순위 알고리즘, 선점형 스케줄링</li>
												<li>커널 동기화와 객체와 구조</li>
												<li>가상 주소의 구현</li>
												<li>세그먼트 디스크립터</li>
												<li>캐시주소 매핑 방식, VACB</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">MFC Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>MFC와 API 윈도우 생성코드 비교</li>
												<li>윈도우 메시지 review 및 MFC와 비교</li>
												<li>메시지와 MFC message map</li>
												<li>DC 및 GDI 함수 소개</li>
												<li>GDI+의 소개 및 실습</li>
												<li>SDI/MDI 환경에서 Document/View구조</li>
												<li>Document serialize 및 주요 가상함수들</li>
												<li>MFC와 디자인패턴</li>
												<li>대화상자프로그래밍</li>
												<li>메뉴/툴바/아이콘 처리</li>
												<li>Run- Time Class Information, Persistence, Diagnostics</li>
												<li>Dialog(DDX, DDV분석)</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Network Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>TCP 프로그래밍의 특징</li>
												<li>UDP 프로그래밍의 특징</li>
												<li>소켓프로그래밍 함수 및 특징</li>
												<li>비연결 소켓 사용법</li>
												<li>C#소켓 사용 소켓 생성</li>
												<li>소켓 에외 사황 철기</li>
												<li>소켓 헬퍼 클래스 소개</li>
												<li>쓰레드 사용하기</li>
												<li>쓰레드를 이용한 서버</li>
												<li>풀을 이요한 서버</li>
												<li>비동기 서버</li>
												<li>파일 송수신</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">DBMS</th>
										<td>
											<ul class="ul_dot_gray">
												<li>전반적인 데이터베이스에 모델링</li>
												<li>데이터베이스 활용을 위한 SQL과 저장 프로시져 등에 대한 개념과 활용 기법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">객체지향 설계과 개발 방법론</th>
										<td>
											<ul class="ul_dot_gray">
												<li>객체지향과 추상화</li>
												<li>프로그램 설계 (Main 영역과 Application 영역)</li>
												<li>OCP, LSP, DIP등 객체지향 설계 원칙</li>
												<li>GOF의 주요 디자인 패턴</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">.NET Platform</th>
										<td>
											<ul class="ul_dot_gray">
												<li>.NET Framework 개요</li>
												<li>.NET Framework 4.0</li>
												<li>Comparison Between j2EE and .NET</li>
												<li>CLR의 장점 및 구성요소</li>
												<li>기존 클래스 라이브러리 활용법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">C# Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>C#기초</li>
												<li>데이터형식,수식,실행문장</li>
												<li>네임스페이스,배열,예외처리</li>
												<li>데이터처리, 메서드와 매개변수</li>
												<li>개체생성과 소멸</li>
												<li>속성과 인덱서</li>
												<li>대리자와 이벤트, 컬렉션</li>
												<li>어트리뷰트, 입력과출력, 파일 시스템</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">WinForm ＆ WPF</th>
										<td>
											<ul class="ul_dot_gray">
												<li>윈폼</li>
												<li>윈폼 컨트롤과 대화상자</li>
												<li>윈폼 이벤트</li>
												<li>윈폼 그리기</li>
												<li>WPF 개요</li>
												<li>WPF 레이아웃</li>
												<li>WPF 데이터 바이팅</li>
												<li>WPF 스타일과 리소스</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<table class="table_col_type1">
								<caption>수행프로젝트(3개월)</caption>
								<thead>
									<tr>
										<th scope="col">수행프로젝트(3개월)</th>
									</tr>
								</thead>
								<tbody>
									<tr >
										<td>
											<ul class="ul_dot_gray">
												<li>4인 내외의 인원으로 팀을 구성하여 최신의 프로젝트 주제를 선정하여 3 개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행</li>
												<li>프로젝트 주제는 기업에서 필요로 하는 주제로 이수 후에 입사 후 업무와 연계할 수 있도록 함</li>
												<li>주제 선정 후에는 관련된 자료 수집, 필요기술 학습, 명세 확정, 일정 수립, 개발 환경 구축 등, 개발, 통합 테스트 등을 거쳐 개발을 완료하고 기업 개발실무 팀장 등이 참관 하에 최종 전시회를 갖도록 함</li>
												<li>프로젝트 수행의 각 과정에서 제안서, 중간보고서, 최종보고서 및 상세설계서 테스트 시나리오 등 필요한 산출물들을 제출하도록 함으로써 프로젝트 수행 싸이클에 익숙해지도록 함</li>
												<li>프로젝트 수행 과정에서 S/W Engineering 기법을 실제로 적용함으로써 효과적인 시간관리, 일정관리, 소프트웨어 품질관리 등에 대한 프로젝트 관리 기법을 익히도록 함</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							
						</div>
						-->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="비트컴퓨터 지원하기">지원하기</a>
						</div>
						-->
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>

		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>