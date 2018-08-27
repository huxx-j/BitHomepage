<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "JP_core"
SubjectName = "JAVA 설계과정"
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
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(7).addClass("on");								// SW Engineering
			$(".snb_1709 .newdepth2_wrap").eq(7).addClass("on");						// SW Engineering - OPEN
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(0).addClass("on");  	// JAVA 설계과정 ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>SW Engineering
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
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">JAVA 설계과정</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												(문의)
												<!--													
												<ul class="ul_dot_gray">
													<li><del>2015.03.12 ~ 2015.03.27 (12일 / 총 36시간)</del></li>
													<li><s>2015.06.11 ~ 2015.06.26 (12일 / 총 36시간)</s></li>
													<li>2015.09.09 ~ 2015.09.24 (12일 / 총 36시간)</li>
													<li>2015.12.07 ~ 2015.12.22 (12일 / 총 36시간)</li>
													
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 목)</td>-->
											<td>(문의)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>700,000원<!--<span class="greenTxt"> 마일리지 5%적립 (35,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">사업주 훈련 : 우선지원대상 기업기준 247,118원* 바우처<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										-->
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
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>설계를 하기 위하여는 분석산출물을 읽는 능력과 아키텍처에 대한 이해가 필요하다. 본 과정은 설계를 학습하기 위하여 실제 프로젝트 분석 산출물과 아키텍처 정의서를 제공하여 준후 OO방법론과 CBD방법론에 맞는 설계산출물을 작성하는 방법에 대하여 학습한다. 설계 산출불 작성방법에 대하여 학습한 후, 실제 조별로 설계산춘물 작성 실습을 함으로써, 설계할 수 있는 역량을 가지도록 한다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>SQL & JDBC<a href="/Course/ShortCourse/DetailPage/Course_sqlJdbc.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>Servlet & JSP<a href="/Course/ShortCourse/DetailPage/Course_servletJsp.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<!--
								<li>객체지향 자바프로그래밍</li>
								<li>실전! SQL & JDBC 프로그래밍</li>
								<li>실전! Servlet & JSP 프로그래밍</li>
								-->
								<li>UML 실전에서는 이것만 쓴다<a href="/Course/ShortCourse/DetailPage/Course_realUml.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>방법론 개요</td>
										</tr>
										<tr>
											<td>분석산출물의 이해</td>
										</tr>
										<tr>
											<td>설계에서 아키텍처가 필요한 이유</td>
										</tr>
										<tr>
											<td>스프링을 사용한 웹 어플리케이션 아키텍처</td>
										</tr>
										<tr>
											<td>클래스 다이어그램, 시퀀스 다이어그램 개요. 작성방법</td>
										</tr>
										<tr>
											<td>동적설계, 정적 설계 개요. 실습</td>
										</tr>
										<tr>
											<td>실전! 설계</td>
										</tr>
									</tbody>
								</table>
								<!--<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>-->
								<!-- 폐강안내 문구 -->
								<div style="float:right; margin-top:18px; font-size:15px;">
									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
								</div>
								<div style="clear:both;"></div>

								<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>-->
							</div>
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=JP_core" class="btn mid green1">지원하기</a>
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