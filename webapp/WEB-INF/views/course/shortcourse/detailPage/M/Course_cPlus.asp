<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim PhoneNum
	dim Money
	dim Subject
	dim SubjectSub
	PhoneNum = "02-3486-1421"
	Money = "350,000"
	Subject = "C++"
	SubjectSub = " Programming"
%>
<%
	dim strDate
	strDate = "2017.05.12 ~ 2017.06.09 <span class='blueTxt'>(저녁반)</span><br/>"
%>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<meta name="viewport" content="width=device-width, user-scalable=no">
	<link rel = "stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script type="text/javascript" src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	
	<link rel = "stylesheet" href="http://www.bitacademy.com/M_Common/Common_Style_VP.css"/>
	
	<style>
		.CourseDescription .marginleft {
			margin-left:10%;
		}
		.divImg {
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			border: none;
		}
	</style>

	<script>
		$(document).ready(function() {
			$("#btnOpenSa").on("click", function() {
				$("#divSa").show();
				$("#btnOpenSa").animate({opacity:0.01},300,function() { })
			})
			$("#btnOpenGn").on("click", function() {
				$("#divGn").show();
				$("#btnOpenGn").animate({opacity:0.01},300,function() { })
			})
			
		})
	</script>
	
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
	<div id="Wrapper"> 
		<!-- #include virtual="/M_Common/Header.inc"-->
		<div>
			<div style="background:#fcf3e9; " class="Box"> <!-- #ffffe6 -->
				<div class="CategoryTitle" style="font-size:1.5em;">프로그래밍과정 / 핵심역량과정</div>
				<!--<div class="CategoryDescription" style="font-size:2em; margin-left:2em;">비트교육센터가 주관하는 민간자격증</div>-->
			</div>
		</div>
		<div class="Box">
			<div class="divImg" style="background-image: url('/M_Common/Background_1488_898.jpg'); background-repeat: no-repeat; background-size:100% 120%; background-position-y:-25px; padding-top:2em;">
				<div class="CourseTitle" style="font-size:5em; line-height:0.6em; margin-top:8%;"><b><%=Subject%><br/><span style="font-size:0.6em;"><%=SubjectSub%></span></b></div>
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
				<!-- con_wrap the first table -->
				<div class="con_wrap last">
					<table class="table_col_type1" style="width:100%;">
						<colgroup>
							<col style="width:25%">
							<col style="width:75%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="tit" >교과목명</th>
								<td class="fb"><%=Subject%><%=SubjectSub%></td>
							</tr>
							<tr>
								<th class="tit" >강의일정</th>
								<td>
									<%=strDate %>
								</td>
							</tr>
							<tr>
								<th class="tit" >강의시간</th>
								<td style="letter-spacing:-0.1em; font-size:0.8em;">
									저녁반 : 19:00 ~ 22:00 <span class="greenTxt">(3시간 / 20일 / 총60시간)</span>
									<!--
									오후반 : 14:00 ~ 18:00<span class="greenTxt">(4시간 / 15일 / 총60시간)</span><br/>
									<span class="greenTxt">* 오후반은 방학특강 기간에만 진행됩니다.</span><br/>
									<span class="greenTxt">* 별도의 그룹스터디 진행 가능</span>
									-->
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >교육비</th>
								<td>
									<%=Money%>원 <span class="blueTxt" style="font-size:0.9em;">(재직자 환급은 저녁반만 해당)<br/>
									* 27,000원 상당 시중교재 제공</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit">교육문의</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a></td>
							</tr>
						</tbody>
					</table>
				</div> <!-- con_wrap the first table -->
				
				<style>
					.myTable2 {
						font-size:0.8em;
						padding:0.1em;
					}
					.myTable2 td, .myTable2 th {
						line-height:1em;
						padding:0.5em !important;
					}
				</style>
				<div class="con_wrap_Small con_wrap"> <!-- div 환급비Sa -->
					<h5 style="font-family:'Nanum Gothic Bold'; font-size:1.5em; color:#8b6338; margin-top:0.5em; margin-bottom:0.5em;">
						사업주위탁훈련 <a id="btnOpenSa" href="javascript:openSa();" class="ui-btn ui-btn-inline ui-corner-all" style="font-size:0.5em; margin-top:-0.4em; float:right;">자세히보기</a>
					</h5>
					<div id="divSa" style="DISPLAY:NONE;">
						<a href="#myPopupSa" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.8em; float:right;">환급내용 자세히보기</a>
						<div style="clear:both;"></div>
						<div data-role="popup" id="myPopupSa"  style="font-size:1em; line-height:1em; width:85%;" data-transition="fade">
							<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
							<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_02Sa.asp"-->
						</div>
						
						<p>1) 우선지원대상기업(중소기업) 인 경우</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:18%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>지원대상 분류</th>-->
									<th>상시근로자 수</th>
									<th>교육비</th>
									<th>환급금</th>
									<th>기업부담금</th>
									<th>환급비율</th>
									<!--<th>환급금내용 자세히보기</th>-->
								</tr>
								<tr>
									
									<td>50명 미만</td>
									<td rowspan="2">350,000</td>
									<td>349,980</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
									<td>100%</td>
									<!--<td rowspan="4"></td>-->
								</tr>
								<tr>
									<td>50명 이상</td>
									<!--<td>314,899</td>-->
									<td>314,980</td>
									<td>35,020</td>
									<td>90%</td>
								</tr>
							</tbody>
						</table>

						<p>2) 중견 또는 대기업인 경우</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:18%">
								<col style="width:12%">
								<col style="width:12%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>지원대상 분류</th>-->
									<th>상시근로자 수</th>
									<th>교육비</th>
									<th>환급금</th>
									<th>기업부담금</th>
									<th>환급비율</th>
									<!--<th>환급금내용 자세히보기</th>-->
								</tr>
								<tr>
									<td>1,000명 미만</td>
									<td rowspan="2">350,000</td>
									<td>209,980</td>
									<td>140,020</td>
									<td>60%</td>
								</tr>
								<tr>
									<td>1,000명 이상</td>
									<td>139,990</td>
									<td>210,010</td>
									<td>40%</td>
								</tr>
							</tbody>
						</table>
						<span class="redTxt" style="font-size:0.8em;"> ※ 사업주위탁훈련인 경우 교육비를 <%=Money%>원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
						<span class="redTxt" style="font-size:0.8em;"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
					</div>
				</div> <!-- //div 환급비Sa -->
				
				<div class="con_wrap_Small con_wrap"> <!-- div 환급비Gn -->				
					<h5 style="font-family:'Nanum Gothic Bold'; font-size:1.5em; color:#8b6338; margin-top:0.5em; margin-bottom:0.5em;">
						근로자 직무능력향상지원 <a id="btnOpenGn" href="javascript:openGn();" class="ui-btn ui-btn-inline ui-corner-all" style="font-size:0.5em;  margin-top:-0.4em; float:right;">자세히보기</a>
					</h5>
					<div id="divGn" style="DISPLAY:NONE;">
						<a href="#myPopupGn" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window" style="font-size:0.8em; float:right;">환급내용 자세히보기</a>
						<div style="clear:both;"></div>
						<div data-role="popup" id="myPopupGn"  style="font-size:1em; line-height:1em; width:85%;" data-transition="fade">
							<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a>
							<!-- #include virtual="/Common/Tab/M/Language_SupportInfo_01Gn.asp"-->
						</div>

						<p>1) 우선지원대상기업(중소기업) 인 경우</p>
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:26%">
								<col style="width:16%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>지원대상 분류</th>-->
									<th>대상</th>
									<th>교육비</th>
									<th>개인부담금</th>
									<th>자부담비율</th>
									<!--<th>환급금내용 자세히보기</th>-->
								</tr>
								<tr>
									<td>비정규직</td>
									<td rowspan="4">350,000</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
									<td rowspan="3">0%</td>
									<!--<td rowspan="9"></td>-->
								</tr>
								<tr>
									<td>이직 예정자</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
								</tr>
								<tr>
									<td>무급 휴직자</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
								</tr>
								<tr>
									<td>정규직</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
							</body>
						</table>
						
						<p>2) 중견 또는 대기업인 경우</p>		
						<table class="table_col_type1 myTable2">
							<colgroup>
								<!--<col style="width:16%">-->
								<col style="width:26%">
								<col style="width:16%">
								<col style="width:11%">
								<col style="width:10%">
								<!--<col style="width:21%">-->
							</colgroup>
							<tbody style="text-align:center;">
								<tr>
									<!--<th>지원대상 분류</th>-->
									<th>대상</th>
									<th>교육비</th>
									<th>개인부담금</th>
									<th>자부담비율</th>
									<!--<th>환급금내용 자세히보기</th>-->
								</tr>		
								<tr>
									<td>비정규직</td>
									<td rowspan="5">350,000</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
									<td>0%</td>
								</tr>
								<tr>
									<td>이직 예정자</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
								<tr>
									<td>무급 휴직자</td>
									<td class="redTxt" style="font-weight:900;">없음</td>
									<td>0%</td>
								</tr>
								<tr>
									<td>정규직(50세이상)</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
								<tr>
									<td>3년간 미참여자<br/>(3년간 근로자<br/>직무능력향상교육 미교육자)</td>
									<td>70,010</td>
									<td>20%</td>
								</tr>
							</tbody>
						</table>
						<!--
						<span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
						<span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
						-->
					</div>
				</div> <!-- // div 환급비Gn -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육소개</h5>
					<p><b class="blueTxt"><%=Subject%> <%=SubjectSub%> 과정</b>은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
				</div>
				<!-- //con_wrap -->
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육목표</h5>
					<ul class="ul_dot_gray">
						<li>C++ 프로그래밍의 전반적인 흐름 파악</li>
						<li>객체지향 프로그래밍 능력 함양</li>
						<li>프로그래밍 개발 공정을 이해 및 활용 능력 함양</li>
						<li>응용이 가능한 실무 프로젝트 적응력 향상</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교재 제공</h5>
					<div style="float:left; width:50%;"><img src="/Images/Content/img_BookCover_PassionOfCpp.jpg" style="margin-left:0.5em; width:90%; box-shadow:2px 2px 5px #373737;"/></div>
					<div style="float:left; margin-left:0.1em;">
						<p style="margin-top:0px;">
							<b>"열혈 C++ 프로그래밍"</b> <br/>윤성우 저 / 오렌지미디어
						</p>
					</div>
					<div style="clear:both;"></div>
				</div>
				<!-- //con_wrap -->
				
				<style>
					.table_col_type1 th {
						line-height:1em;
					}
					.table_col_type1 th.tableTitle {
						font-size:1.5em !important;
						font-weight:700 !important;
						text-shadow: 3px 3px 3px #c9c9c9;
						padding-top:0.5em !important;
						padding-bottom:0.5em !important;
					}
				</style>
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>커리큘럼</h5>

					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ 기본</th>
							</tr>
							<tr>
								<th>C 보다 나은<br/> C++</th>
							</tr>
							<tr>
								<td>다시 보는 C문법</td>
							</tr>
							<tr>
								<td>C언어와 다른 C++ 문법 및 객체지향</td>
							</tr>
							<tr>
								<td>입출력, 함수 오버로딩, 레퍼런스</td>
							</tr>
							<tr>
								<td>new, delete 연산자</td>
							</tr>
							<tr>
								<th>Class</th>
							</tr>
							<tr>
								<td>Encapsulation, Information Hiding</td>
							</tr>
							<tr>
								<td>생성자와 소멸자, 복사 생성자</td>
							</tr>
							<tr>
								<td>상수 함수와 상수 객체</td>
							</tr>
							<tr>
								<td>static 멤버</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ 심화</th>
							</tr>
							<tr>
								<th>Inheritance</th>
							</tr>
							<tr>
								<td>접근 변경자와 접근 지정자</td>
							</tr>
							<tr>
								<td>override function</td>
							</tr>
							<tr>
								<td>up-casting, binding, virtual function</td>
							</tr>
							<tr>
								<th>Operator <br/>Overloading</th>
							</tr>
							<tr>
								<td>연산자 재정의 개념, 증가 감소 연산자</td>
							</tr>
							<tr>
								<td>대입연산자 / <<,>> 연산자 / 배열연산자 / 변환연산자</td>
							</tr>
							<tr>
								<td>new/delete의 재정의</td>
							</tr>
							<tr>
								<th>Template</th>
							</tr>
							<tr>
								<td>함수 template / 클래스 template</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th class="tableTitle">C++ 활용</th>
							</tr>
							<tr>
								<th>STL</th>
							</tr>
							<tr>
								<td>Iterators</td>
							</tr>
							<tr>
								<td>Sequence Algorithms <br/> Sequence Containers</td>
							</tr>
							<tr>
								<td>Associative Containers</td>
							</tr>
							<tr>
								<td>Adaptors</td>
							</tr>
						</tbody>
					</table>

					<p class="blueTxt mar_t10" style="font-size:0.9em;">* 이 과정은 인원 미달시 변경 또는 폐강 될 수 있습니다. </p>
					<p class="mar_t10"><span style="font-size:1em;">문의</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>
				<!-- con_wrap -->
				
				<div style="font-size:1em;">
				<!-- 자격증과정 소개 -->
				<!-- #include virtual="/Course/ShortCourse/DetailPage/M/Common_IntroducingBCCPM.asp"-->
				<!-- /자격증과정 소개 -->
				</div>
				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">문의전화하기</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=CP2_core" data-role="button" class="Button" target="_blank">지원하기</a>
		<!-- #include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>