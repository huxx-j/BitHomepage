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
			//$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("LINUXSYSTEMNETWORK")).addClass("on");
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
				<h3 style="margin-left:75px;"><p class="courseName" style="line-height:40px;">리눅스 시스템 네트워크 프로그래밍</p></h3>
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
							<h4 class="fl" style="font-size:16px; margin-top:5px;">리눅스 시스템 네트워크 프로그래밍</h4>
							<a href="/Register/Request/register_shortCourse.asp?cID=LinuxSysNetP_core" class="btn mid green1 fl mar_l10">지원하기</a>
						</div>
						<div>
							<p class="lineMap">
								<a href="#this">홈</a>
								<a href="#this">과정안내</a>
								<a href="#this">프로그래밍과정 / 핵심역량과정</a>
								<a href="#this" class="last on">리눅스 시스템 네트워크 프로그래밍</a>
							</p>
						</div>
					</div>
					</table>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>리눅스 시스템 네트워크 프로그래밍</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">리눅스 시스템 네트워크 프로그래밍</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul>
													<li>문의</li>													
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 16일)</li>
												</ul>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>490,000원</td>
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
							<p>시스템/네트워크 프로그래밍은 임베디드를 비롯한 수많은 IT 현장에서 지속적으로 활용된다. 기본적인 시스템 소프트웨어를 작성하는 프로그래밍 기법과 더불어 커널/핵심 시스템 라이브러리를 사용하는 저수준에서 동작하는 코드를 직접 작성하는 방법을 배우고 고급 프로그래머가 되기 위해서 알아두면 좋은 시스템 호출등을 배운다. 그리고 리눅스 환경에서 소켓 프로그래밍의 원리와 작성 방법등을 학습하여 TCP(UDP)/IP 기반의 데이터 통신을 위한 서버를 작성할 수 기본이 되는 능력을 키우고 실제 서버를 작성하기 위한 여러가지 다중처리 기법등을 배우게 된다.</p>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>리눅스 서버를 직접 구성하고 관리할 수 있다.</li>
								<li>리눅스 환경에서 소프트웨어를 작성할 수 있다.</li>
								<li>리눅스 시스템 소프트웨어를 작성할 수 있다.</li>
								<li>리눅스 서버(데몬) 소프트웨어를 작성할 수 있다.</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>리눅스 환경에서 시스템 소프트웨어를 작성해야 하는 개발자</li>
								<li>리눅스 환경에 익숙해 져야 하는 개발자</li>
								<li>리눅스 환경에서 TCP/IP 기반의 소켓 프로그래밍을 배우고자 하는 개발자</li>
								<li>리눅스 환경에서 서버 프로그래밍을 배우고자 하는 개발자</li>
							</ul>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수 과목</h5>
							<a href='/Course/ShortCourse/DetailPage/Course_C.asp' class='btn sml green1' target="_blank">C 프로그래밍</a>
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
										<th scope="row">리눅스 어드민</th>
										<td>
											<ul class="ul_dot_gray">
												<li>리눅스 소개</li>
												<li>리눅스 구조</li>
												<li>터미널</li>
												<li>쉘과 프롬프트</li>
												<li>리눅스 기본 명령어</li>
												<li>리눅스 권한 관리</li>
												<li>모니터링 명령어</li>
												<li>프로세스 관리 명령어</li>
												<li>vi 에디터</li>
												<li>리눅스 프로그래밍 도구 - gcc & make</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">리눅스 시스템 프로그래밍</th>
										<td>
											<ul class="ul_dot_gray">
												<li>리눅스 파일 시스템</li>
												<li>저수준 파일 입출력</li>
												<li>표준 입출력</li>
												<li>파일과 디렉토리</li>
												<li>시간다루기</li>
												<li>프로세스 관리</li>
												<li>메모리 관리 </li>
												<li>시그널 처리</li>
												<li>IPC</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row">리눅스 네트워크 프로그래밍</th>
										<td>
											<ul class="ul_dot_gray">
												<li>네트워크와 소켓에 대한 이해</li>
												<li>TCP 소켓 프로그래밍 기본</li>
												<li>TCP 서버 작성</li>
												<li>TCP 클라이언트 작성</li>
												<li>TCP 내부 동작 원리</li>
												<li>다중처리를 위한 서버 구현 방법</li>
												<li>UDP 소켓 프로그래밍 기본</li>
												<li>UDP 서버 작성</li>
												<li>UDP 클라이언트 작성</li>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=LinuxSysNetP_core" class="btn mid green1">지원하기</a>
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