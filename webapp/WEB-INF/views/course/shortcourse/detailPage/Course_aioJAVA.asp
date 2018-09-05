<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "aioJAVA"
SubjectName = "All-in-One Java Application 개발"
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
			//ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			$(".snb_1709 a.newdepth1").eq(2).addClass("on");								// Java
			$(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");						// Java SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no3 .newdepth2").eq(2).addClass("on");  	// All-in-One Java Application 개발 ON
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Java
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
												<!--<ul class="ul_dot_gray">-->
												<ul>
													<!--
													<li><del>2015.06.03 ~ 2015.06.05 (3일 / 총 21시간)</del></li>
													<li>2015.09.08 ~ 2015.09.10 (3일 / 총 21시간)</li>
													-->
													<!--
													<li>2015.11.11 ~ 2015.11.13 (3일 / 총 21시간)</li>
													-->												
													<!--<li>2015.11.23 ~ 2015.11.27 (5일 / 총 40시간)</li>-->
													<li>(문의)</li>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>09:00 ~ 17:00 (1일 7시간 / 월 ~ 금)</td>-->
											<!--<td>09:00 ~ 17:00 (1일 7시간)</td>-->
											<!--<td>09:00 ~ 18:00 (1일 8시간)</td>-->
											<td>(문의)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>700,000원<!--<span class="greenTxt"> 마일리지 5%적립 (13,000원)</span>--></td>											
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
							<!-- #include virtual="/Common/Tab/refundInfo_1234.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>Spring MVC 기반 웹 애플리케이션 개발 부분을 다루고 있으며, Java 기반 웹 애플리케이션을 개발하는데 필요한 실무 필수 기술과 기반 기술을 습득할 수 있도록 한다. Spring 프레임워크는 Java 애플리케이션 개발의 사실 상 표준 프레임워크로, 전자정부 표준 프레임워크도 Spring  프레임워크를 기반으로 하고 있다. 우리는 이 과정에서Spring 프레임워크를 활용하는 다음과 같은 기술을 학습한다.</p>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>Java EE 기반 기술에 대한 이해</li>
								<li>실무 프로젝트를 수행할 수 있는 Java  필수 기술을 습득</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
								<li>객체지향 개념의 이해</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분</th>
											<th scope="col">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">웹 애플리케이션 개요</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Java 웹 애플리케이션 개요 / 플랫폼</li>
													<li>웹 애플리케이션 아키텍처</li>
													<li>주문관리 예제  시스템</li>
													<li>Java 개발 도구</li>
													<li>Maven 기초 사용</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Spring 프레임워크 핵심</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Spring 프레임워크 개요</li>
													<li>첫번째 Spring 프레임워크</li>
													<li>Spring 빈 생성 / AOP 개념</li>
													<li>Spring AOP 구현</li>
													<li>@AspectJ 어노테이션</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Java EE 웹 기반 기술</td>
											<td>
												<ul class="ul_dot_gray">
													<li>HTTP 프로토콜</li>
													<li>HTML5, CSS3, JavaScript, Jquery</li>
													<li>서블릿, 필터와 리스너</li>
													<li>JavaServer Pages, JSTL</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Spring MVC 웹 애플리케이션</td>
											<td>
												<ul class="ul_dot_gray">
													<li>Spring MVC 개요</li>
													<li>컨트롤러 구현</li>
													<li>JSTL 뷰 구현</li>
													<li>PDF / Excel 뷰 구현</li>
													<li>국제화</li>
													<li>웹 플로우 설정 / 상태</li>
													<li>전이와 플로우 데이터</li>
													<li>웹 플로우 작업 수행</li>
													<li>Spring 웹 보안 설정</li>
													<li>웹 보안 구현</li>
													<li>인증과 권한 관리</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">Java EE 레파지토리 기반 기술</td>
											<td>
												<ul class="ul_dot_gray">
													<li>레파지토리 티어 개요</li>
													<li>Java 데이터 액세스 개요</li>
													<li>데이터베이스 설정</li>
													<li>Java JDBC</li>
													<li>Spring JDBC</li>
													<li>Spring 트랜잭션</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
								<!--
								<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
								<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.3456 (bithrd@bit.kr)</p>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=aioJAVA" class="btn mid green1">지원하기</a>
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