<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = "UML2_core"
SubjectName = "실전! 분석과정"
%>

<!DOCTYPE html>
<html lang="ko">
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
			$(".snb_1709 .newdepth2_wrap.no8 .newdepth2").eq(2).addClass("on");  	// 실전! 분석과정 ON
			
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
											<td colspan="3"><%=SubjectName%></td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												(문의)
												<!--
												<ul class="ul_dot_gray">
												-->
													<!--
													<li><del>2015.01.19 ~ 2015.01.29 (8일 / 총 24시간)</del></li>
													<li><del>2015.04.14 ~ 2015.04.23 (8일 / 총 24시간)</del></li>
													<li><del>2015.07.13 ~ 2015.07.23 (8일 / 총 24시간)</del></li>
													<li>2015.10.12 ~ 2015.10.22 (8일 / 총 24시간)</li>
													<li>2015.10.12 ~ 2015.10.22 (8일 / 총 24시간)</li>
													-->
												<!--
												</ul>
												-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--<td>19:00 ~ 22:00 (1일 3시간 / 월 ~ 목)</td>-->
											<td>(문의)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>600,000원<!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
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
							<p>프로젝트의 규모가 커지고, 비지니스의 복잡도가 높아질 수록 비지니스에 대한 요구사항을 파악하고, 해당 요구사항을 분석하는 것이 어려워 진다. 본 과정에서는 UML을 이용하여 분석하는 방법에 대하여 실전 예제를 통하여 실습을 통하여 방법을 학습한다.</p>
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
											<td>요구사항 정의</td>
										</tr>
										<tr>
											<td>컨텍스트 다이어그램 개요 & 작성하기</td>
										</tr>
										<tr>
											<td>개념클래스 모델링 개요 & 작성하기</td>
										</tr>
										<tr>
											<td>비지니스 프로세스 모델링 개요 & 작성하기</td>
										</tr>
										<tr>
											<td>유스케이스 개요 & 작성하기</td>
										</tr>
										<tr>
											<td>유스케이스 정의서 & 작성하기</td>
										</tr>
										<tr>
											<td>분석</td>
										</tr>
										<tr>
											<td>정적분석과 동적분석 개요 & 작성하기</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=UML2_core" class="btn mid green1">지원하기</a>
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