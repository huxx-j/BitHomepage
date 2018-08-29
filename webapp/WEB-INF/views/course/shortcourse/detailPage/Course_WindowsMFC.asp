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

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');
			$(".snb_1702 .newdepth1").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("WINDOWSMFC")).addClass("on");
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
			<div class="banner pd_t50">
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">Windows Programming (MFC)</p></h3>
				<!--<h4></h4>-->
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
					<table>
					<div class="hGroup">
						<div>
							<h4 class="fl" style="font-size:16px; margin-top:5px;">Windows Programming (MFC)</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=WindowsMFC_core" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">Windows Programming (MFC)</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Windows Programming (MFC)</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Windows Programming (MFC)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul><!--9/20~10/4 -->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 10일)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>400,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 소개 및 특장점</h5>
							<p>C++ 언어를 익히 후, 윈도우 프로그래밍을 처음 시작하는 개발자를 대상으로 MFC 프로그래밍의 기본과 고급 MFC 프로그래밍 기술을 익힌다. 윈도우 API를 이해하게 되고 MFC를 이용하여 자신만의 GUI 윈도우 응용 프로그램을 작성할 수 있는 기초 지식과 응용 방법등을 배운다. 또한, 윈도우 응용 프로그램 작성에 필요한 윈도우 환경을 이해하게 하여 윈도우 OS에 대한 지식도 넓힐 수 있다.</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>윈도우 프로그래밍에 필요한 윈도우 응용 소프트웨어 구조를 이해한다.</li>
								<li>윈도우 API를 이해하고 직접 사용하는 프로그램을 작성할 수 있다.</li>
								<li>MFC 구조와 사용법 그리고 커스터마이징 방법을 배운다.</li>
								<li>DLL, OLE, ActiveX등 윈도우의 컴포넌트 기술을 이해하고 직접 작성할 수 있다.</li>
								<li>윈도우 환경에서 데이터베이스 프로그래밍의 기초 지식을 배운다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>윈도우 프로그래밍을 배우려는 개발자</li>
								<li>MFC를 이해하고 커스터마이징 하는 방법을 배우고 싶은 윈도우 개발 입문자</li>
								<li>C++ 학습 후, 윈도우 소프트웨어 개발을 처음 시작하는 개발자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<a href='/Course/ShortCourse/DetailPage/Course_Cplus.asp' class='btn sml green1' target="_blank">C++ 객체지향 프로그래밍</a>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type1" style="width:70%;">
								<caption></caption>
								<colgroup>
									<col style="width:50%">
									<col style="width:50%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">대주제</th>
										<th scope="col">상세내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Visual C++ 구성과 Windows 프로그래밍</th>
										<td>
											<ul class="ul_dot_gray">
												<li>Visual C++ 구성 이해  </li>
												<li>Event 처리 방식 프로그래밍 </li>
												<li>Debugging 방법 </li>
												<li>API를 이용한 프로그래밍 </li>
												<li>Visual C++ 에서의 변수 표기방법 </li>
												<li>MFC 구조 </li>
												<li>프로그램 구현 과정 </li>
												<li>AppWizard 이용법</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Windows 입출력 프로그래밍</th>
										<td>
											<ul class="ul_dot_gray">
												<li>GDI</li>
												<li>메시지 처리</li>
												<li>키보드/마우스 이벤트</li>
												<li>에디터 구현</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">Dialogue Box 구현 및 파일 입출력</th>
										<td>
											<ul class="ul_dot_gray">
												<li>다양한 Windows 메시지박스 및 다이얼로그박스 처리</li>
												<li>공통 컨트롤</li>
												<li>공통 다이얼로그 박스</li>
												<li>모달리스 / 탭 다이얼로그 박스</li>
												<li>파일 입출력</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">DLL와 OLE</th>
										<td>
											<ul class="ul_dot_gray">
												<li>DLL 이해</li>
												<li>OLE의 개념</li>
												<li>ActiveX</li>
												<li>OLE 프로그래밍</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">데이터베이스 프로그래밍</th>
										<td>
											<ul class="ul_dot_gray">
												<li>ODBC와 DAO</li>
												<li>간단한 DB 프로그래밍</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</p>
							
						</div>
						<!-- con_wrap -->
						
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=WindowsMFC_core" class="btn mid green1">지원하기</a>
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