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
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("BizTechPartners") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_BnEpartners.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>㈜비즈테크파트너스
						</p>
						<h4 style="float:left;">㈜비즈테크파트너스 신입사원채용교육</h4>
						<!-- 수강신청btn -->
						<a href="/Register/Request/register_employment1.asp" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							지원하기
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>-->
					
					<section class="section">
						<div class="con_wrap1709" style="margin-top:5px;">
							<!--<p>신입사원채용프로그램은 ㈜비즈테크파트너스의 인재상, 조직문화, 업무특성에 맞는 인재를 비트교육센터과 공동으로 선발하여 정직원으로 채용 후 사내교육의 일환으로 기업은 비트교육센터의 강도높은 전문가과정에 신입사원연수를 위탁, 실시하는 프로그램입니다. 교육 전 정직원으로 채용이 확정되므로 신입사원의 교육비 전액은 기업에서 지원합니다. 지금까지 비트교육센터의 신입사원채용프로그램을 통해 1,000여명(2018년 기준) 이상의 인재가 SW전문개발자로써 채용되었습니다.</p>-->
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
							<!-- #include virtual="/Course/Employ/Summary1_BizTechPartners.asp"-->
							<!--
							<p><img src="/Images/Content/Employ/img_LOGO_BizTechPartners.png"  style="width:130px; margin-bottom:10px;"></p>
							<p>
								<b>비즈테크파트너스 </b> <a href="http://www.biztechpartners.co.kr/" class="blueTxt fb" target="_blank">http://www.biztechpartners.co.kr/ </a><br/>
								비즈테크파트너스는 Global IT 서비스 전문기업인 LG CNS의 자회사로 최고의 전문성을 추구하는 기업입니다. SAP ERP를 비롯한 기업용 시스템 Rapid Solution(SAP)과 재무, 인사 등 사용자 친밀한 웹 솔루션 등을 보유하고 있으며, Mobile, Cloud, Realtime Enterprise, IoT등 최신 IT기술을 빠르게 적용할 수 있는 기술력을 갖춘 회사입니다.<br/>
								비즈테크파트너스에서 적극적으로 배우고 서로 성장시키며, 조직력으로 탁월한 성과를 창출하여 자신의 분야에서 최고가 되고 싶은 열정 있는 인재를 모집합니다.
							</p>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>모집요강</h5>
							<!-- #include virtual="/Course/Employ/Summary2_BizTechPartners.asp"-->
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
											<td class="c">웹개발<br/>모바일 앱 및 서버개발</td>
											<td class="c">20 명</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>대졸 이상</li>
													<li>컴퓨터 관련학과</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>지원 절차</h5>
							<ul>
								<li>비트교육센터(<a href="http://www.bitacademy.com" style="text-decoration:underline;" class="blueTxt">http://www.bitacademy.com</a>) 회원가입 → 수강안내 → 신규지원 → 신입사원채용교육 → ㈜비즈테크파트너스 지원(1,2지망 모두)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>전형 절차</h5>
							<%
								'//<p class="redTxt fb">전형 : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2016년 9월 26일(월) 오전 10시--> - 필기시험(JAVA) 및 면접</p>
							%>
							<ul>
								<li>
									1차 전형 : 필기시험 (Java Programming)<br/>
									※ 전형 장소 : 비트교육센터 비타임 (지하1층)<br/>
									<span class="redTxt fb">※ 전형 일정 :  <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--></span><br/>
									※ 필기도구 및 반명함판(증명사진) 1매 지참
								</li>
								<br/>
								<li>2차 전형 : 기업면접 (최종선발)</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>모집기간</h5>
							<p><!-- #include virtual="/Course/Employ/Common_Date1.asp"--></p>
							<%
							'//<!-- #include virtual="/Course/Employ/Common_Date1.asp"-->
							%>
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
							<!--<p>비트교육센터:02-3486-1055(expert@bit.kr)</p>-->
							<p>주지영 센터장 (<a href="mailto:tablet18@bit.kr">tablet18@bit.kr</a> / 010-9384-9654)</p>
						</div>
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="비즈테크파트너스 지원하기">지원하기</a>
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