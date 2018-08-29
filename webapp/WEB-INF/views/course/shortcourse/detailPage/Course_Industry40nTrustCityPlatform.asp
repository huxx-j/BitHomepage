<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
CourseID = ""
SubjectName = "특강 - 4차산업과 핀테크 3.0 TRUST CITY 플랫폼"
%>

<%
dim strDate
strDate = " - 1일차 : 2017. 11. 6(월)<br/> - 2일차 : 2017. 11. 13(월)"
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview] -->
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no5").find("li a").eq(0).addClass("on");  
			
			//$(".snb_1709 .newdepth2.newwrap.no1").addClass("on").removeClass("plus").addClass("minus");
			//$(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// if not, the first one will be different from what I expected.
			//$(".snb_1709 .newdepth3_wrap.no1 li:eq(0) a").addClass("on");
		});
		
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_android.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:300px;">
			
			<!-- Content_Wrap -->
			<div id="Content_Wrap" style="min-height:300px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSpecial_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>4차 산업혁명 특강
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
											<td><%=strDate%></td>
											<th scope="row" class="tit">강의시간</th>
											<td><!--주4일(화,수,목,금) 3주간<br/>-->19:00 ~ 22:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">모집인원</th>
											<td>선착순 40명</td>
											<th scope="row" class="tit">장소</th>
											<td>비트교육센터 비타임(지하 1층)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">접수기간</th>
											<td>2017년 11월 3일 18:00까지</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
									</tbody>
								</table>
<%
'								<!-- 수강신청btn -->
'								<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID % >" title="수강신청" style="float:right; margin:12px 0;">
'									<img src="/Images/Btns/btn_ApplyCourse.png"/>
'								</a>
'								<div style="clear;both; height:10px;"></div>
%>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p>
								4차산업과 TRUST CITY 융합·연결 플랫폼 기반의 O2O 헬스케어·의료혁명의 비즈니스모델의 사례를 파악하고 기술연결 작동과정을 파악하기 위해서 핀테크 3.0 연결 플랫폼의 핵심기술인 인공지능(딥러닝), 빅데이터, O2O, IoT+IoB, 핀테크, 플랫폼 블록체인 기술 아키텍처와 미래가치를 중점 분석·예측
							</p>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<thead>
										<tr>
											<th scope="col" style="width:12%;">일자</th>
											<th scope="col" style="width:25%;">주제</th>
											<th scope="col" style="width:45%;">교육내용</th>
											<th scope="col" style="width:13%;">비고</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;" rowspan="3">11/6(월)<br/>1일차</td>
											<td style="text-align:left;">4차산업혁명의 본질</td>
											<td style="text-align:left;">
- 4차산업혁명의 출현 배경<br/>
- 메타기술, 인공지능과 빅데이터<br/>
- 클라우드와빅데이터가이드, 오픈소스자원활용
											</td>
											<td rowspan="6" style="border-left:1px solid #c9c9c9;" class="c">한국핀테크<br/>연합회<br/>홍준영<br/>의장</td>
										</tr>
										<tr>
											<td style="text-align:left;">스마트혁명과 O2O</td>
											<td style="text-align:left;">
- O2O 스마트 융합 초혁신<br/>
- O2O 인공지능 확장, 게임화, 헬스케어 등 사례<br/>
- O2O 응급실 사례, O2O 논란
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">인공지능과 HW Start-UP, <br/>IoT 융합연결</td>
											<td style="text-align:left;">
- 인공지능과 HW Start-Up<br/>
- IoT 융합연결<br/>
- 스마트 시티
											</td>
										</tr>
										<tr>
											<td class="darker c" style="letter-spacing:-2px;" rowspan="3">11/13(월)<br/>2일차</td>
											<td style="text-align:left;">IoB(웨어러블)과 의료정보혁명</td>
											<td style="text-align:left;">
- IoB 융합 연결, 오감정보<br/>
- 웨어러블 각종 기기, 스마트 글래스<br/>
- 생체와 의료, 헬스케어 예측 혁신 사례
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">핀테크</td>
											<td style="text-align:left;">
- 핀테크의 본질, 개념과 전망, 플레이어<br/>
- 송금,결제,P2P,리스크관리,인터넷은행등 유형별 사례<br/>
- 핀테크 규제개혁
											</td>
										</tr>
										<tr>
											<td style="text-align:left;">핀테크 3.0 TRUST CITY</td>
											<td style="text-align:left;">
- 플랫폼, 비금융으로 핀테크 국가 전략 모델 제시<br/>
- IoT 미래와 도시네트워크 보안<br/>
- 4차산업과 IoT보안관 블록체인
											</td>
										</tr>
									</tbody>
								</table>
								<%
'								<!-- 폐강안내 문구 -->
'								<div style="float:right; margin-top:18px; font-size:15px;">
'									<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
'								</div>
'								<div style="clear:both;"></div>
								%>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육신청</h5>
							<p>
								아래의 양식대로 작성하셔서 이메일(<a href="mailto:gwang@bit.kr" style="color:blue; text-decoration:underline;">gwang@bit.kr</a>)로 신청하세요.
							</p>
							<div class="divTable">
								<table>
									<tr>
										<th style="width:20%;">소속</th>
										<th style="width:20%;">부서명</th>
										<th style="width:20%;">신청자명</th>
										<th style="width:20%;">직위</th>
										<th style="width:20%;">휴대폰번호</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						<!-- //con_wrap1709 -->
						
						
					</section>
				</div>
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