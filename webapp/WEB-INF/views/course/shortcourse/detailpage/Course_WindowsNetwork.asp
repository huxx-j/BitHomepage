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
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("WINDOWSNETWORK")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">Windows Network Programming</p></h3>
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
							<h4 class="fl" style="font-size:16px; margin-top:5px;">Windows Network Programming</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=WindowsNetwork_core" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">Windows Network Programming</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>Windows Network Programming</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">Windows Network Programming</td>
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
							<p>네트워크(인터넷)에 대한 기본 이해를 바탕으로 윈도우 환경에서 소켓 프로그래밍 기본을 다지고 고급 소켓 프로그래밍 기술을 익힌다. 특히, MFC를 사용하여 GUI 응용 프로그램을 작성하면서 MFC에서 지원하는 소켓 클래스를 사용하여 윈도우 네트워크 응용프로그램 작성을 위한 여러 방법들을 배운다. </p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>네트워크(인터넷)에 대해 이해한다.</li>
								<li>소켓 프로그래밍에 대해 이해한다.</li>
								<li>윈도우 환경에서 TCP(UDP) 응용 소프트웨어를 작성할 수 있다.</li>
								<li>스레드를 이해하고 멀티스레드 프로그래밍을 배워 윈도우 응용 프로그램에 적용 시킬 수 있다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>윈도우 환경에서 소켓 프로그래밍을 배우고 싶은 윈도우 개발자</li>
								<li>윈도우 네트워크 응용 소프트웨어를 작성해야 하는 개발자</li>
								<li>소켓 프로그래밍을 배우고자 하는 개발자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<a href='/Course/ShortCourse/DetailPage/Course_C.asp' class='btn sml green1' target="_blank">C 프로그래밍</a><br/>
							<a href='/Course/ShortCourse/DetailPage/Course_Cplus.asp' class='btn sml green1' target="_blank">C++ 프로그래밍</a><br/>
							<a href='/Course/ShortCourse/DetailPage/Course_WindowsMFC.asp' class='btn sml green1' target="_blank">윈도우 프로그래밍</a>
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
										<th scope="row">인터넷의 이해</th>
										<td>
											<ul class="ul_dot_gray">
												<li>TCP/IP 프로토콜 구조</li>
												<li>데이터 통신의 원리</li>
												<li>C/S 모델</li>
												<li>소켓에 대한 이해</li>
												<li>원도우 소켓(윈속) 특징 및 구조</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">소켓 프로그래밍의 기본</th>
										<td>
											<ul class="ul_dot_gray">
												<li>TCP 서버/클라이언트 프로그래밍</li>
												<li>서버함수</li>
												<li>클라이언트 함수</li>
												<li>테이터 전송 함수</li>
												<li>UDP 서버/클라이언트 프로그래밍</li>
												<li>UDP 데이터 전송 함수</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">멀티스레드</th>
										<td>
											<ul class="ul_dot_gray">
												<li>스레드의 기초</li>
												<li>스레드 동기화</li>
												<li>소켓 응용 프로그램과 멀티스레드</li>
												<li>멀티스레드 TCP 서버 작성하기</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">소켓옵션</th>
										<td>
											<ul class="ul_dot_gray">
												<li>TCP 내부동작 원리</li>
												<li>소켓 옵션의 종류와 관련 함수</li>
												<li>멀티캐스팅</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">GUI 소켓 응용 프로그래램 작성</th>
										<td>
											<ul class="ul_dot_gray">
												<li>GUI 응용 프로그램 개요(구조/원리)</li>
												<li>MFC 소켓 클래스</li>
												<li>GUI 소켓 응용 프로그램 작성과 동작원리 이해</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=WindowsNetwork_core" class="btn mid green1">지원하기</a>
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