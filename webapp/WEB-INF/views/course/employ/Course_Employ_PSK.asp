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
			$(".snb_1709 .newdepth2_wrap.no3").find("li a").eq( getIndex("PSK") ).addClass("on");  
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Employ/M/Course_Employ_Voiceye.asp";
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
	/*
	p.lineMap { display:none; }
	.con_wrap1709 table th { word-break:keep-all; }
	*/
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>국비지원무료과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>신입사원 채용교육
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>㈜피에스케이
						</p>
						<h4 style="float:left;">㈜PSK 신입사원채용교육</h4>
						<!-- 수강신청btn -->
						<a href="/Register/Request/register_employment1.asp" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							지원하기
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>
					<!--<a href="" class="fl btn mid green1 mar_l20" title="PSK 지원하기">지원하기</a>-->
					<!--<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>-->
					<section class="section">
						<div class="con_wrap1709" style="margin-top:5px;">
							<p>신입사원채용프로그램은 ㈜PSK의 인재상, 조직문화, 업무특성에 맞는 인재를 비트교육센터와 공동으로 선발하여 정직원으로 채용 후 사내교육의 일환으로 기업은 비트교육센터의 강도높은 전문가과정에 신입사원연수를 위탁, 실시하는 프로그램입니다. 교육 전 정직원으로 채용이 확정되므로 신입사원의 교육비 전액은 기업에서 지원합니다. 지금까지 비트교육센터의 신입사원채용프로그램을 통해 1,000여명(2018년 기준) 이상의 인재가 SW전문개발자로써 채용되었습니다.</p>
						</div>
						<div class="con_wrap1709 ">
							<!--<h5 class="mar_t10 redTxt">[ 교육특전 ]</h5>-->
							<h5 class="mar_t40 redTxt">교육특전</h5>
							<ul>
								<li>1. 선발 교육생 전원 교육 수료 후 신입사원으로 채용</li>
								<li>2. 교육비: 무료(570만원/㈜PSK 전액지원)</li>
								<li>3. 훈련수당지급</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>기업소개</h5>
							<!-- #include virtual="/Course/Employ/Summary1_PSK.asp"-->
							<!--
							<p class="mar_t20 mar_b20"><img src="/Images/Content/Employ/img_LOGO_PSK.png" alt="" style="max-height:80px; width:150px;"></p>
							<p>
								㈜PSK는 반도체 제조용 전공정의 주요 장비 중 하나인 Asher 장비를 생산하는 반도체 장비 전문 기업입니다. 1990년 6월 11일 설립이후 꾸준한 연구개발을 통해 현재 세계적인 품질 및 가격 경쟁력을 갖춘 Asher(감광액제거기) 및 LCD 장비 생산 중에 있으며, 국내 및 해외에 판매하고 있습니다. 1997년 1월 코스닥에 등록했으며, 1994년 4월 부설 연구소의 설립과 더불어 끊임없는 연구개발과 기술 혁신으로 세계 유수의 반도체 장비업체들과 경쟁하고 있습니다. PSK는 2004년 490억원의 매출을 달성하였고 올해는 620억원의 매출을 예상하고 있으며, 2007년에는 세계 제 1의 Asher Maker를 목표로 지속 성장하고 있습니다.<br/><br/>
								2002년부터 해외 수출이 본격화하여 2003년에는 500만 달러, 2004년에는 1,500만 달러 수출 실적을 달성하는 등 외 수출도 지속적으로 증가하고 있습니다. 향후 PSK㈜는 해외 매출처 확대와 제품 다변화를 통해 세계적인 반도체/LCD 장비 전문기업으로 성장을 위해 매진하고 있습니다.<br/><br/>
							</p>
							<a href="http://www.psk-inc.com/" class="blueTxt fb" target="_blank">홈페이지 주소 : http://www.psk-inc.com/ </a>
							-->
						</div>
						<div class="con_wrap1709">
							<h5>복지사항</h5>
							<p>
								FITNESS CENTER, 상해보험, 임직원 대출, 자녀 학자금 지원, 사우회 장학금, 사내식당, 아파트형 기숙사, 동호회, 사내 체육 행사
							</p>
						</div>
						<div class="con_wrap1709">
							<h5>채용 분야 및 응시자격</h5>
							<!-- #include virtual="/Course/Employ/Summary2_PSK.asp"-->
							<!--
							<div class="divTable">
								<table>
									<caption>채용분야, 인원, 응시자격</caption>
									<colgroup>
										<col style="width:25%">
										<col style="width:10%">
										<col style="width:45%">
										<col style="width:20%">
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
											<td class="c">장비제어 프로그램 개발</td>
											<td class="c">2 명</td>
											<td rowspan="2">
												<ul class="ul_dot_gray">
													<li>IT 관련학과 졸업자, 졸업예정자</li>
													<li>프로그래밍(C/C++)에 관심이 있는 SW개발분야로 진출하고자 하는 자<br/><span style="font-size:0.8em;">※프로그래밍 경험이나 역량이 있는 분 우대</span></li>
													<li>병역 필 또는 면제자로 해외여행 등에 결격사유가 없는 분</li>
													<li>장애 및 보훈대상자는 관계법령에 따라 우대함</li>
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
								<li>수강안내 → 신규지원 → 신입사원채용교육 → ㈜PSK 지원(1,2지망 모두)</li>
								<li>※ 온라인 지원자는 누구나 1차, 2차 전형을 합니다. (서류전형 없음)</li>
								<li>※ 전형시 필기도구 및 사진(증명사진) 지참</li>
							</ul>
						</div>

						<div class="con_wrap1709">
							<h5>접수기간</h5>
							<!--<p>~ 2016년 9월 23일(금) 까지</p>-->
							<!-- #include virtual="/Course/Employ/Common_Date1.asp"-->
						</div>
						
						<div class="con_wrap1709">
							<h5>전형 방법 및 일정</h5>
							<p class="redTxt fb">전형 : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2016년 9월 26일(월) 오전 10시--> - 필기시험(C or C++)</p>
							<ul class="ul_dot_gray">
								<li>1차 전형 : 필기시험(C 프로그래밍 or C++ 프로그래밍)</li>
								<li>2차 전형 : 면접(PSK 임원진) - 1차 합격자에 한해 알림</li>
								<li>※ 일정은 사정에 따라 조정될 수 있으며, 조정시 해당자에 한하여 사전 안내합니다.</li>
							</ul>
							<!--
							<h5>전형 방법 및 일정</h5>
							<p class="redTxt fb">서류전형 후 기업면접</p>
							-->
						</div>

						<div class="con_wrap1709">
							<h5>교육과정 안내</h5>
							<ul class="ul_dot_gray">
								<li>교육과정 : Windows .NET Expert - ㈜PSK 기업위탁과정</li>
								<!--<li>2015년 11월 ~ 2016년 4월(6개월과정)</li>-->
								<li>교 육 비 : 무료 (570만원 / ㈜PSK 전액지원)</li>
							</ul>
						</div>
						<!--
						<div class="con_wrap1709">
							<h5>문의사항</h5>
							<p>비트교육센터 <a href="http://www.bitacademy.com" class="blueTxt fb">(http://www.bitacademy.com)</a> / 02-3486-1055 / expert@bit.kr</p>
						</div>
						-->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
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
											<td class="darker c" scope="row">C Programming</td>
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
											<td class="darker c" scope="row">C++ Programming</td>
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
											<td class="darker c" scope="row">Win32 API</td>
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
											<td class="darker c" scope="row">Windows System Programming</td>
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
											<td class="darker c" scope="row">MFC Programming</td>
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
											<td class="darker c" scope="row">Network Programming</td>
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
											<td class="darker c" scope="row">DBMS</td>
											<td>
												<ul class="ul_dot_gray">
													<li>전반적인 데이터베이스에 모델링</li>
													<li>데이터베이스 활용을 위한 SQL과 저장 프로시져 등에 대한 개념과 활용 기법</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">객체지향 설계과 개발 방법론</td>
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
											<td class="darker c" scope="row">.NET Platform</td>
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
											<td class="darker c" scope="row">C# Programming</td>
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
											<td class="darker c" scope="row">WinForm ＆ WPF</td>
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
							</div>
							<div class="divTable">
								<table>
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
													<!--
													<li>이론 과정에서 습득한 기술을 활용하여 새로운 솔루션을 산출해보는 단계</li>
													<li>한 프로젝트당 4~5명 내외로 구성</li>
													<li>최신 기술동향 등을 파악하여 프로젝트 주제 선정</li>
													<li>소프트웨어 개발 방법론에 입각한 단계별 작업 수행</li>
													<li>핵심요소 기술분석, 시스템설계, 시스템 구현, 최종 시연회 및 최종보고서 제출의 단계로 팀장의 지휘하에 모든 조원들이 상호 협력하여 진행</li>
													-->
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="con_wrap1709">
							<h5>문의</h5>
							<!--<p>비트교육센터:02-3486-1055(expert@bit.kr)</p>-->
							<p>02-3486-1780 (<a href="mailto:expert@bit.kr" class="email">expert@bit.kr</a>)</p>
						</div>
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="PSK 지원하기">지원하기</a>
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