<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
'// c_master_AM 과 c_master_PM 등이 있지만 "c_master"로 통일하기로 함.
'//CourseID = "c_master" '// 방학특강 이후
CourseID = "cmVacation"
%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] (pre2) -->
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->

	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// C Master ON
		});
		
	</script>
	<script language="javascript"> 
	/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_cMaster.asp";
	*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper"> 
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseVacation_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>겨울방학특강
						</p>
						<h4>C Master (C + 자료구조)</h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:35%">
										<col style="width:13%">
										<col style="width:39%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__cmVacation.inc" -->
												<!--
												2017.12.21 ~ 2018.2.2 <span class='greenTxt'>(오전반)</span><br/>
												< ! - -2018.1.15 ~ 2018.2.27 <span class='greenTxt'>(오후반)</span>- - >
												-->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__cmVacation.inc" -->
												<!--
												오전반 9:00 ~ 13:00 (4시간 /총 120시간)<br/>
												< ! - - 오후반 14:00 ~ 18:00 (4시간 /총 120시간)- - >
												-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>700,000원</td>
											<th>교육비지원</th>
											<td>고용보험 비환급</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>30명</td>
											<th>문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_shortCourse.asp?cID=cmVacation" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<div class="txtBox">
								<p>
								본 과정은 기본프로그래밍에서부터 중급 이상의 프로그
								래머가 되기 위한 과정으로서 프로그램의 초석을 다지
								고자 하는 자에게 필요한 실습 위주의 과정입니다. <br/>
								개별적 문법의 이해와 구현능력 향상, 조별 프로젝트를 
								통한 협력개발과 발표를 통해 다양한 개발환경에 사용
								되는 자료구조 및 알고리즘에 대하여 학습하는 과정입
								니다.
								</p>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육 특징</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>기본 문법에서 고급 프로그래밍까지 단기간에 습득</li>
									<li>기본 프로그래밍 지식을 토대로 한 체계적인 학습 </li>
									<li>기초 과정부터 체계적으로 학습 가능</li>
									<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
									<li>그룹스터디 강화로 본인만의 프로그래밍 능력 구축</li>
									
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap1709">
							<h5>교육 대상</h5>
							<div class="txtBox">
								<ul class="ul_dot_gray">
									<li>C 프로그래밍의 기본적인 사항부터 차근차근 체계적으로 학습하고 싶으신 분</li>
									<li>컴퓨터 관련 및 전기/전자 전공</li>
									<li>전문가과정에 입학을 희망하시는 분</li>
									<li>기업맞춤교육(신입사원 채용교육)을 통해 취업을 희망하시는 분</li>
									<li>삼성SW멤버쉽을 준비하시는 분</li>
								</ul>
							</div>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<!--
						<div class="con_wrap1709">
							<div style="float:left; width:140px;">
								<h5>교재 제공</h5>
								<img src="/Images/Content/img_BookCover_PassionOfC.jpg" style="margin-left:15px; width:120px;"/>
							</div>
							<div style="float:left; margin-top:3px; margin-left:15px;">
								<p style="margin-top:175px;">
									열혈 C 프로그래밍 <br/>윤성우 저 / 오렌지미디어
								</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						-->
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
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
											<th scope="col" class="c">구분</th>
											<th scope="col" class="c">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="c">C 초급</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>C 언어 특징, 컴파일러 사용법</li>
													<li>데이터 형, 변수 사용법</li>
													<li>기본 입출력 함수, 연산자</li>
													<li>조건문</li>
													<li>반복문</li>
													<li>1차원 배열</li>
													<li>2차원 배열</li>
													<li>함수와 포인터의 관계</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">C 중급</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>변수, 입출력, 연산자</li>
													<li>제어구조, 실습 프로젝트</li>
													<li>배열, 포인터, 실습 프로젝트I</li>
													<li>메모리 다루기, 포인터 활용</li>
													<li>함수, 문자열 다루기, 실습 프로젝트</li>
													<li>다차원 배열, 포인터, 동적 메모리, 실습 프로젝트</li>
													<li>구조체, 파일 I/O, 실습 프로젝트 </li>
													<li>최종 프로젝트 (정적순수배열, 정적인덱스배열) </li>
												</ul>
											</td>
										</tr>
										<tr>
											<td class="c">자료구조</td>
											<td>
												<ul class="ul_dot_gray l">
													<li>자료구조 개요 및 알고리즘의 이해</li>
													<li>선형자료구조(배열, 연결 리스트)</li>
													<li>선형 자료구조의 활용, 실습 프로젝트 I</li>
													<li>스택과 큐, 실습 프로젝트 II</li>
													<li>자료구조의 활용, 실습 프로젝트 III</li>
													<li>트리, 실습 프로젝트 IV</li>
													<li>STL과 일반화 프로그래밍</li>
												</ul>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 폐강안내 문구 -->
							<div style="float:right; margin-top:18px; font-size:15px;">
								<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
							</div>
							<div style="clear:both;"></div>
						</div>
						
					</section>
				</div>
				<!--<a href="#this" class="moveTop">Top</a>-->
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>

		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>