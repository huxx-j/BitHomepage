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
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(1).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no2").find("li a").eq(getIndex("atec")).addClass("on");
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner">
				<h3 class="pd_tow"><span class="courseName">신입사원채용교육 - 에이텍</span></h3>
				<h4>기업과 비트교육센터가 협력하여 기업의 인재상에맞는 신입사원을 선발, 
					<br>정식채용 후 신입사원 연수를 비트교육센터의 우수한 교육시스템에 위탁하는 프로그램. 
				</h4>
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>(주)에이텍 신입사원채용교육</h4>
							<a href="/Register/Request/register_employment1.asp" class="fl btn mid green1 mar_l20" title="에이텍 지원하기">지원하기</a>
						<p class="lineMap">
							<a href="/">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">신입채용프로그램</a>
							<a href="/Course/Employ/Course_Employ_atec.asp" class="last on">에이텍 신입사원채용교육</a>
						</p>
					</div>
					<span class="blueTxt" style="margin-top:5px; float:right; margin-right:10px; font-size:9pt; font-family:'Nanum Gothic Bold';">문의 : 02-3486-1780</span>
					<section class="section" style="margin-top:5px;">
						<div class="con_wrap first">
							<!--<h5>지원시 유의사항</h5>-->
							<!--<p>(주)에이텍의 신입사원 채용교육은 인재상, 조직문화, 업무특성에 맞는 인재를 인턴 형태로 선발하여 조기에 양성 한다는 취지로 IT전문 교육기관인 비트터교육센의 강도 높은 교육과정을 전형절차에 포함시켰습니다.<br>
							이론과 실습을 포함한 6개월 동안의 본 과정을 정상적으로 이수 후 (주)에이텍의 직원으로 정식채용이 확정 됩니다.</p>-->
							<p>신입사원채용프로그램은 (주)에이텍의 인재상, 조직문화, 업무특성에 맞는 인재를 비트교육센터과 공동으로 선발하여 정직원으로 채용 후 사내교육의 일환으로 기업은 비트교육센터의 강도높은 전문가과정에 신입사원연수를 위탁, 실시하는 프로그램입니다. 교육 전 정직원으로 채용이 확정되므로 신입사원의 교육비 전액은 기업에서 지원합니다. 지금까지 비트교육센터의 신입사원채용프로그램을 통해 1,000여명(2016년 기준) 이상의 인재가 SW전문개발자로써 채용되었습니다.</p>
						</div>
						<div class="con_wrap">
							<h5 class="mar_t10 redTxt">[ 교육특전 ]</h5>
							<ul>
								<li>1. 교육비: 무료(655만원/에이텍 전액지원)</li>
								<li>2. 훈련수당 지원 : 월 20만원 / 총 120만원 지급</li>
								<li>3. 식비지원</li>
								<li>4. 전원 교육 수료 후 신입사원으로 채용</li>
							</ul>
						</div>

						<div class="con_wrap">
							<h5>기업소개</h5>
							<p class="mar_t20 mar_b20"><img src="/Images/Content/Employ/atec_logo.jpg" alt=""></p>
							<p>에이텍은 첨단 TFT LCD를 이용한 디지털 디스플레이 분야의 지속적인 기술개발과 끊임없는 신제품 개발로 국내외 시장에서 
							높은 기술력과 고품질의 제품력을 인정받고 있습니다. 기존 PC 크기를 획기적으로 줄이며 궁극의 보안 솔루션을 갖춘 LCD 일체형 및 보안용 일체형 PC인 ATEC Duo 뿐만 아니라 LCD 모니터, DID 등의 다양한 제품을 개발하였고, 고객을 위한 새로운 정보 통신문화의 창조를 선도하고 있습니다</p>
							<p>에이텍은 지속적인 연구개발과 공격적인 국내외 마케팅을 통해 LCD 응용제품 및 RFID 솔루션 분야의 선두기업으로 도약하고자 합니다. 혁신적인 사고와 새로운 기술, 고품격의 서비스를 통해 고객감동을 위한 초고의 제품을 선사하여 세계 제 1의 제품과 서비스를 제공하는 기업이 되겠습니다.</p>
							<a href="http://www.atec.co.kr/" class="blueTxt fb" target="_blank">홈페이지 주소  : www.atec.co.kr</a>
						</div>

						<div class="con_wrap">
							<h5>채용 분야 및 응시자격</h5>
							<table class="table_col_type1 mar_b20">
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
										<td class="c">Linux Embedded System Developer,<br>C언어 개발</td>
										<td class="c">신입 2 명</td>
										<td rowspan="2">
											<ul class="ul_dot_gray">
												<li>Linux System 이해, Embedded System 개발</li>
												<li>학력 : 전문대졸 이상</li>
												<li>교통단말기시스템 개발 경력자 우대</li>
												<li>국가유공자, 보훈대상자, 장애인, 취업보호대상자 우대</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="con_wrap">
							<h5>접수 방법</h5>
							<ul>
								<li>1. 비트교육센터<a href="http://www.bitacademy.com" class="blueTxt">(http://www.bitacademy.com)</a> 회원가입 후</li>
								<li>수강신청 → 신규지원 → 신입사원채용교육 → 에이텍 지원</li>
								<li>※ 전형시 필기도구 및 사진(증명사진) 지참</li>
							</ul>
						</div>

						<div class="con_wrap">
							<h5>접수기간</h5>
							<!--<p>~ 2016년 9월 23일(금) 까지</p>-->
							<!-- #include virtual="/Course/Employ/Common_Date1.asp"-->
						</div>
						<div class="con_wrap">
							<h5>전형 방법 및 일정</h5>
							<p class="redTxt fb">전형 : <!-- #include virtual="/Course/Employ/Common_DateTime2.asp"--><!--2016년 9월 26일(월) 오전 10시--> - 필기시험(C) 및 면접</p
							<ul class="ul_dot_gray">
								<li>1차 전형 : 필기시험(C 프로그래밍) 및 조현정 회장 면접</li>								
								<li>2차 전형 : 면접(에이텍 임원진) - 1차 합격자에 한해 알림</li>
								<li>※ 일정은 사정에 따라 조정될 수 있으며, 조정시 해당자에 한하여 사전 안내합니다.</li>
							</ul>
						</div>

						<div class="con_wrap">
							<h5>교육과정 안내</h5>
							<ul class="ul_dot_gray">
								<li>교육과정 : Embedded System 전문가과정 </li>
								<!--<li>2015년 11월 ~ 2016년 5월</li>-->
								<li>교 육 비 : 무료(655만원/(주)에이텍 전액지원)</li>
							</ul>
						</div>
						<!--
						<div class="con_wrap">
							<h5>문의사항</h5>
							<p>비트교육센터 <a href="http://www.bitacademy.com" class="blueTxt fb">(http://www.bitacademy.com)</a> / 02-3486-1055 / job@bit.kr</p>
						</div>
						-->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1">
								<caption>1 단계 : Embedded System 및 기반 기술 습득</caption>
								<colgroup>
									<col style="width:35%">
									<col style="width:65%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" colspan="2">1 단계 : Embedded System 및 기반 기술 습득</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Introduction to Embedded System</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Embedded System 개발/개발 환경</li>
												<li>Embedded Linux/Windows CE.NET</li>
												<li>Mobile Computing 개론</li>
												<li>Ad Hoc Network/Sensor Network/Mobile</li>
											</ul>
										</td>
									</tr>
									<tr class="last">
										<th scope="row">Advanced Operating Systems</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Embedded OS/RTOS</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Advanced Computer Architecture</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Evaluation Board의 구조</li>
												<li>Strong ARM, XScale Architecture</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Assembly Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>ARM/Xscale Instructions</li>
												<li>DSP Instructions</li>
												<li>MACRO Assembler</li>
												<li>Inline Assembler</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Linux System Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>개발 툴 개요 및 실습</li>
												<li>gcc, make, ctags</li>
												<li>응용 프로그램 개발</li>
												<li>디버거 환경 실습</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Network Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>소켓 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Windows CE.NET System Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Embedded Visual C++ (4.0) 프로그래밍 </li>
											</ul>
										</td>
									</tr>
								</tbody>

								<thead>
									<tr>
										<th scope="col" colspan="2">2 단계 : Linux 기반 Embedded System 개발 고급 기술 습득</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Linux Kernel Architecture</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Building the OS on ARM/Xscale Board</li>
												<li>Cross Compile Environment</li>
												<li>Boot Loader Porting</li>
												<li>RedBoot/Cerf/LoadCEPC/Eboot.bin</li>
												<li>Bootp/BootMP & TFTP</li>
												<li>Kernel Porting</li>
												<li>Root File System Porting</li>
												<li>Graphic Lib. Porting </li>
												<li>Debugging</li>
												<li>Implementing a Boot Loader</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Linux Kernel Programming</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Linux 커널 구조 이해</li>
												<li>시스템 호출 추가 실습</li>
												<li>모듈 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Linux Device Driver Design and Implementation</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Device driver 구조</li>
												<li>char/block device driver</li>
												<li>Network device driver</li>
												<li>Virtual device driver</li>
												<li>Device driver 작성 실습</li>
											</ul>
										</td>
									</tr>
								</tbody>

								<thead>
									<tr>
										<th scope="col" colspan="2">3 단계 : Windows CE.NET 기반 Embedded System 개발 고급 기술 습득</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Windows CE.NET Architecture</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Windows CE.NET의 기본 구조</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Windows CE.NET Kernel Building & Debugging</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Building the OS on ARM/Xscale Board</li>
												<li>Cross Compile Environment</li>
												<li>Platform Builder</li>
												<li>Boot Loader Porting</li>
												<li>Kernel Porting</li>
												<li>Advanced Debugging</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Windows Device Driver Design & Implementation</th>
										<td>
											<ul class="ul_dot_gray">
												<li>OEM Adaptation Layer</li>
												<li>Device Driver Architectures</li>
												<li>Device Driver Examples</li>
											</ul>
										</td>
									</tr>
								</tbody>

								<thead>
									<tr>
										<th scope="col" colspan="2">4 단계 : Project 설계 및 구현을 위한 기술 습득</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Packaging the Embedded System</th>
										<td>
											<ul class="ul_dot_gray">
												<li>initrd 개요 및 루트 파일 시스템 이미지 작성</li>
												<li>MTD (Memory Technology Device)개요 및 시스템 패키징 실습</li>
												<li>Flash device/FTL</li>
												<li>Embedded System을 위한 파일 시스템 실습</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Design and Development of Project</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Project 수행 방법론 </li>
												<li>S/W engineering</li>
											</ul>
										</td>
									</tr>
								</tbody>

								<thead>
									<tr>
										<th scope="col" colspan="2">5 단계 : 비트 프로젝트 (3개월)</th>
									</tr>
								</thead>
								<tbody>
									<tr class="last">
										<td colspan="2">
											<ul class="ul_dot_gray">
												<li>이론 과정에서 습득한 기술을 활용하여 새로운 솔루션을 산출해보는 단계이다. <br>
												한 프로젝트 당 인원은 5명 내외로 구성되며, 아이템 선정, 핵심 기술 습득, 소프트웨어 개발 방법론에 입각한 단계별 작업, 프로젝트 완성, 최종 보고서 제출의 단계로 각 팀장의 지휘하에 모든 조원들이 상호 협력하여 진행</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							
						</div>

						<div class="con_wrap">
							<h5>문의</h5>
							<!--<p>비트교육센터:02-3486-1055(job@bit.kr)</p>-->
							<p>02-3486-1780(job@bit.kr)</p>
						</div>
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_employment1.asp" class="btn mid green1" title="에이텍 지원하기">지원하기</a>
						</div>
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>