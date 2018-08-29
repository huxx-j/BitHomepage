<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "Nodejs"
SubjectName = "객체지향 JavaScript와 Node.js 프로그래밍"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
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
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_02.asp');

			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// JavaScript
			$(".snb_1709 .newdepth2_wrap").eq(3).addClass("on");						// JavaScript SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no4 .newdepth2").eq(7).addClass("on");  	// 객체지향 JavaScript와 Node.js 프로그래밍 ON
			
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
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JavaScript
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
												<ul><!--9/20~10/4 -->
													<li>문의</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<ul class="ul_dot_gray">
													<li>저녁반 : 19:00 ~ 22:00 (3시간 / 10일) </li>
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
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 소개</h5>
							<p>Node.js는 확장성 있고 고성능인 웹 애플리케이션 개발할 수 있는 자바스크립트 비동기 서버 프레임워크입니다. 서버 사이드 비동기 기술을 배워 채팅이나 게임 그리고 실시간 통계와 같은 실시간 네트워크 애플리케이션을 작성에 필요한 기본 지식을 배우고 직접 구현을 경험하는 과정입니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>Node.js에 대한 전반적인 이해</li>
								<li>비동기 네트워크 애플리케이션 개발 방법 습득</li>
								<li>Express 프레임워크와 Connect 미들웨어로 Node 애플리케이션 작성</li>
								<li>MongoDB 같은 NoSQL 과 관계형 데이터베이스 MySQL 를 사용하는 방법 습득</li>
								<li>WebSocket을 사용하여 브라우저와 서버 간에 양방향 통신을 구현</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<ul class="ul_dot_gray">
								<li>웹 개발자</li>
								<li>JavaScript 로 서버사이드 웹애플리케이션 개발을 배우고 싶은 개발자</li>
								<li>이벤트 방식의 비동기 네트워크 통신 C/S 프로그래밍에 관심이 있는 개발자</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수 과목</h5>
							<p>JavaScript 프로그래밍<a href='/Course/ShortCourse/DetailPage/Course_JavaScript.asp' class='mar_l10 btnBlueBorder small' target="_blank">자세히 보기</a></p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
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
											<td class="darker c" scope="row">Node.js 개발 환경 구축</td>
											<td>Node 개발환경 구성</td>
										</tr>

										<tr>
											<td class="darker c" scope="row">Node.js 전역 객체</td>
											<td>global, process 와 Buffer</td>
										<tr>
											<td class="darker c" scope="row">Node.js 기본 내장 모듈</td>
											<td>
												<ul>
													<li>타이머, 서버, 스트림, 소켓</li>
													<li>Utilities 모듈</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">이벤트 처리</td>
											<td>
												<ul>
													<li>이벤트 처리 개요</li>
													<li>EventEmitter</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">모듈 시스템</td>
											<td>
												<ul><li>require 사용</li>
												<li>외부 모듈 사용(패키지 관리자)</li>
												<li>사용자 정의 모듈</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">Express 프레임워크</td>
											<td>
												<ul><li>app.js 알아보기</li>
												<li>라우팅</li>
												<li>에러처리</li>
												<li>MVC</li>
												<li>템플릿(EJS) 사용하기</li>
												<li>CSS(stylus) 사용하기</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">데이터베이스</td>
											<td>
												<ul><li>db-mysql 로 시작하기</li>
												<li>node-mysql 사용한 MySQL 접근</li>
												<li>MongoDB 사용을 위한 Node.js Driver</li>
												<li>Mogoose로 위젯 구현	</li></ul>
											</td>
										</tr>
										<tr>
											<td class="darker c" scope="row">socket.io 모듈과 웹 소켓</td>
											<td>
												<ul><li>웹 소켓이란?</li>
												<li>Socket.IO 소개</li>
												<li>채팅 만들어 보기</li></ul>
											</td>
										</tr>
										
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (e-mail : bithrd@bit.kr)</p>
								-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>
								
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Nodejs" class="btn mid green1">지원하기</a>
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