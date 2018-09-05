<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_1702.css" >
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Course/ShortCourse/DetailPage/Common_eventHandlers_SNB.inc"-->

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1702 a.newdepth1").eq(5).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(5).addClass("on");
			
			$(".snb_1702 .newdepth2.newwrap.Uno1").addClass("on").removeClass("down").addClass("up");
			$(".snb_1702 .newdepth3_wrap.Uno1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			$(".snb_1702 .newdepth3_wrap.Uno1 li:eq(4) a").addClass("on");
		});
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">아산캠퍼스 - Windows .NET 고급과정</span></h3>
				<h4> 프로그래밍 언어를 배운 후 처음으로 TOOL과 SKILL을 접해볼 수 있는 과정으로 <br>
				현업에 필요한 이론교육 및 그룹 프로젝트 수행을 통해 역량 강화할 수 과정</h4>
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
						<h4>아산캠퍼스 Windows .NET 고급과정<a href="/Register/Request/register_localCampus.asp" class="btn mid green1 mar_l10">지원하기</a></h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">대학비트</a>
							<a href="#this" class="last on">Windows .NET 고급과정</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Windows .NET 고급과정</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교육과목</th>
											<td colspan="3">아산캠퍼스 Windows .NET 고급과정</td>
										</tr>
										<!-- #include virtual="/Include/CourseDateTime/LocalCampus_Asan_WinHigh_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>3,700,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-1422</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<p class="mar_b10">윈도우 응용프로그램 작성에 필수 언어요소인 C/C++언어를 이해하고 다양한 자료구조 및 알고리즘 작성 능력 향상하여WinNT 기반에서 동작하는 다양한 응용 프로그램을 개발에 최적인 C#언어로 OOP와 .NET 플랫폼의 강력한 기술인 .NET 리모팅, 웹 서비스, 윈도우즈 서비스, Windows Form with C#, XML.NET, ADO.NET 등을 활용하여 다양한 형태의 응용 프로그램과 비즈니스 솔루션을 구축할 수 있는 능력을 배양함.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C# 언어 문법과 OOP의 이해 및 활용</li>
								<li>NET Framework의 구조 이해</li>
								<li>설계 패턴의 이해와 프로그램 설계에 도입</li>
								<li>NET의 강력한 서비스를 활용하여 비즈니스 솔루션 구축 능력 배양 </li>
								<li>NET의 강력한 기술인 XML.NET, ADO.NET 등을 효과적으로 구사할 수 있는 능력 배양 </li>
								<li>Windows Form With C#을 이용한 윈도우 프로그래밍 능력 배양</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>충남 아산시 탕정면 갈산리 100 선문대학교 원화관 5층</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2">
								<caption>아산캠퍼스 Windows .NET 고급과정 커리큘럼</caption>
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">주제</th>
										<th scope="col">상세내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="4">Windows API Programing</td>
										<td class="l">Windows 핵심 원리 이해</td>
									</tr>
									<tr>
										<td class="l">API이해와 응용</td>
									</tr>
									<tr>
										<td class="l">Windows GUI 프로그래밍</td>
									</tr>
									<tr>
										<td class="l">Windows System 프로그래밍</td>
									</tr>
									<tr>
										<td rowspan="3">Windows Network Programing</td>
										<td class="l">네트워크의 이해와 기본 개념</td>
									</tr>
									<tr>
										<td class="l">Winsock 라이브러리의 이해</td>
									</tr>
									<tr>
										<td class="l">Winsock을 이용한 Networking 프로그램 작성 </td>
									</tr>
									<tr>
										<td rowspan="3">MFC</td>
										<td class="l">MFC의 구조와 원리</td>
									</tr>
									<tr>
										<td class="l">MFC 와 OOP</td>
									</tr>
									<tr>
										<td class="l">MFC를 활용한 Windows 응용프로그래밍</td>
									</tr>
									<tr>
										<td rowspan="3">.NET과 C#</td>
										<td class="l">C# 기본 문법</td>
									</tr>
									<tr>
										<td class="l">OOP의 이해 와 활용</td>
									</tr>
									<tr>
										<td class="l">인터페이스와 컬렉션, 대리자</td>
									</tr>
									<tr>
										<td rowspan="2">GoF의 디자인 패턴</td>
										<td class="l">설계 패턴 이해</td>
									</tr>
									<tr>
										<td class="l">프로그램 설계에 패턴 적용</td>
									</tr>
									<tr>
										<td rowspan="3">서비스</td>
										<td class="l">NET 리모팅 서비스 이해 및 제작</td>
									</tr>
									<tr>
										<td class="l">NET 리모팅 서비스 이해 및 제작</td>
									</tr>
									<tr>
										<td class="l">윈도우즈 서비스 작성 및 활용</td>
									</tr>
									<tr>
										<td rowspan="3">Windows Form with C#</td>
										<td class="l">XML.NET 기술을 활용 및 데이터 표준화</td>
									</tr>
									<tr>
										<td class="l">Open API와 XML.NET 기술을 이용한 프로그래밍</td>
									</tr>
									<tr>
										<td class="l">ADO.NET 기술 활용 및 프로그래밍</td>
									</tr>
									<tr>
										<td rowspan="4">프로젝트</td>
										<td class="l">이론 과정에서 습득한 기술을 활용하여 새로운 솔루션을 산출해보는 단계</td>
									</tr>
									<tr>
										<td class="l">한 프로젝트 당 인원은 4~6 내외로 구성</td>
									</tr>
									<tr>
										<td class="l">최신 기술 동향 등을 파악하여 프로젝트 주제 선정</td>
									</tr>
									<tr>
										<td class="l">소프트웨어 개발 방법론에 입각한 단계별 작업을 수행</td>
									</tr>
								</tbody>
							</table>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>
						</div>
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
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