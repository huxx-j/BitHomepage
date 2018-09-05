<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "RaspberryPi"
SubjectName = "오픈소스 라즈베리 파이를 활용한 IoT 과정"
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

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(8).addClass("on");								// Embedded 
			$(".snb_1709 .newdepth2_wrap").eq(8).addClass("on");						// Embedded - OPEN
			$(".snb_1709 .newdepth2_wrap.no9 .newdepth2").eq(0).addClass("on");  	// 오픈소스 라즈베리 파이를 활용한 IoT 과정 ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1600px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Embedded
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
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
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<!--<li>2016.09.01 ~ 2016.09.23 (13일)</li>-->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간)</td>-->
											<td>문의</td>
											
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>390,000원<!--550,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (27,500원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
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
						
						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_12.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>
							처음에는 모든 컴퓨터가, 그리고 모든 폰이 인터넷에 연결되던 시대를 지나 모든 사물들이 인터넷에 연결되고 있는 오늘날의 ICT 환경에서 IoT의 핵심인 디바이스 구현에
							프로토타입 디바이스로 오픈소스 하드웨어들에 대한 관심이 날로 증가하고 있다. 그 중 라즈베리파이와 라즈베리파이 주 개발언어인 파이썬을 선택하여 외부 세계와의 소통을 
							위한 센서/액추에이터 제어 그리고 다른 디바이스들과의 통신을 위한 네트워크 프로그래밍등 라즈베리파이에서 프로그램을 작성하는 방법을 배워 하드웨어 + 소프트웨어 + 서비스가 
							융합된 IoT서비스를 기획하고 직접 구현해 봄으로써 IoT를 체험하고 이해하는 과정이다.
							</p>
						</div>
						
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<p>
								1. 아두이노, 라즈베리파이와 같은 오픈 소스 하드웨어 플랫폼(OSHW)을 이용하여 우리의 주변과 상호작용 가능한 임베디드 장치를 개발해 본다.<br/>
								2. 이론과 실습을 적절히 분배함으로써 수강생들이 쉽게 오픈소스 하드웨어를 이해할 수 있도록 돕는다.<br/>
								3. 실습 예제는 기초 기술부터 고급 기술까지 포괄적으로 다루고 있기 때문에 입문자뿐만 아니라 중급 이상의 사용자에게도 도움이 될 수 있다.
							</p>
							<!--<p class="c"><img src="/Images/Content/img_swvisual_02.jpg" alt="프로세스시각화, 소스코드 시각화, 소스코드 문서화, 프로세스 문서화"></p>-->
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>오픈소스 하드웨어, IoT 에 관심 있는 개발자 </li>
								<li>단순한 Service에서 나아가 H/W 와 융합된 자신만의 서비스를 만들고자 하는 개발자 </li>
								<li>Python으로 서버구축에서 하드웨어 제어까지 해보길 원하는 개발자 </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C, Java, JavaScript, Python 등 프로그래밍 언어와 상관없이 약간의 프로그래밍 경험</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<ul class="ul_dot_gray">
								<li>IoT 및 오픈 소스 하드웨어 이해
								<li>라즈베리파이 설치</li>
								<li>리눅스 어드민   </li>
								<li>Python 기본 프로그래밍</li>
								<li>Python 웹 프로그래밍</li>
								<li>디지털/아날로그 입출력</li>
								<li>센서/액추에이터 제어</li>
								<li>고급 센서/액추에이터 제어</li>
								<li>라즈베리파이 활용 프로젝트</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>세부내용</h5>
							<ul class="ul_dot_gray">
								<li>기초 전자회로 이론</li>
								<li>오픈소스 하드웨어 플랫폼 소개</li>
								<li>아두이노, 라즈베리파이, 비글본 블랙 등의 보드 구성요소 설명 </li>
								<li>통합개발환경 사용법 </li>
								<li>LED 점등 실습</li>
								<li>전자식 온도계 만들기 실습</li>
								<li>아두이노 쉴드 소개</li>
								<li>원격지에서 보드 제어하기(적외선, 셀룰러, Ethernet, XBee를 이용)</li>
								<li>교통 시뮬레이션 만들기 실습</li>
								<li>아두이노와 라즈베리파이 연동하기</li>								
							</ul>
						</div>
						-->
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>강의운영방식</h5>
							<ul class="ul_dot_gray">
								<li>이론 / 실습</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>사용 실습기자재</h5>
							<ul class="ul_dot_gray">
								<li>아두이노 보드, 라즈베리파이 보드, 아두이노 통합개발환경, 이더넷 쉴드, 프로토쉴드, 전선, 각종 전자부품들(커패시터, LED, 저항기 등)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
												
						<!-- con_wrap1709 -->
						<!--
						<div class="con_wrap1709">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>Software Visualization 커리큘럼</caption>
								<colgroup>
									<col style="width:30%">
									<col style="width:30%">
									<col style="width:40%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">구분</th>
										<th scope="col">학습내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" rowspan="5">1일차</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>오리엔테이션</li>
												<li>SW Visualization 정의</li>
												<li>세계적 SW 개발 동향</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발프로세스</li>
												<li>소프트웨어 개발 우수 사례가 시사하는 SW Quality Insights</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 자산 관리</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Daily Build 적용하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">2일차</th>
										<td>09:30 ~ 10:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>고객 요구를 SW 기술적으로 정리하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>10:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>소프트웨어 개발 목표를 검증하는 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li> 점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>코드 가시화(Code Visualization)</li>
												<li>코드 구조 체계화</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>구조적 SW 설계 방법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" rowspan="5">3일차</th>
										<td>09:30 ~ 12:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW 구조 설계 검증하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>12:30 ~ 13:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>점심시간</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>13:30 ~ 15:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization을 적용한 프로젝트 계획 수립</li>
												<li>SW Visualization 적용방법과 사례</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>15:30 ~ 16:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>SW Visualization을 통한 SP인증 획득하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>16:30 ~ 17:30</td>
										<td class="l">
											<ul class="ul_dot_gray">
												<li>Q&amp;A</li>
												<li>과정 요약과 정리</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1423</p>
						</div>
						-->
						<!-- con_wrap1709 -->
						
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=RaspberryPi" class="btn mid green1">지원하기</a>
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