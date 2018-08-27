<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim strDate
	strDate = "2017.05.12 ~ 2017.06.02 <span class='blueTxt'>(저녁반)</span>"
%>
<%
	dim PhoneNum
	dim Money
	dim Subject
	dim SubjectSub
	PhoneNum = "02-3486-1421"
	Money = "350,000"
	Subject = "Python"
	SubjectSub = " Programming"
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
				<div class="CourseTitle" style="font-size:5em; line-height:0.6em; margin-top:8%;"><b><%=Subject%><br/><span style="font-size:0.5em;"><%=SubjectSub%></span></b></div>
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
				
				<!-- con_wrap the first table -->
				<div class="con_wrap last">
					<table class="table_col_type1">
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
									<%=strDate%> <br/>
								</td>
							</tr>
							<tr>
								<th class="tit" >강의시간</th>
								<td style="letter-spacing:-0.1em; font-size:0.8em;">
									저녁반 : 19:00 ~ 22:00 <span class="greenTxt">(3시간 / 16일 / 총48시간)</span><br/>
									
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >교육비</th>
								<td>
									<%=Money%>원 <span class="blueTxt" style="font-size:0.9em;">(재직자 환급은 저녁반만 해당)<br/>
									* 18,800원 상당 시중교재 제공</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit">교육문의</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;"><%=PhoneNum%></a></td>
							</tr>
						</tbody>
					</table>
				</div> <!-- con_wrap the first table -->

				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>과정 소개<img src="/Images/Main/img_LOGO_Python.png" style="float:right; width:40%;"/></h5>
					<div style="clear:both;"></div>
					<p><b>파이썬 프로그래밍</b>은 초보자로부터 전문가까지 폭넓은 사용자층을 보유하고 있습니다. 복잡한 문법을 필요로 하는 Perl이나 C, C++에 비해 문법이 간단합니다. 따라서 배우기 쉽다는 장점이 있습니다. </p>
					<p>파이썬은 대학 컴퓨터 관련 학과의 저학년을 대상으로 한 프로그래밍 입문 언어로 최근 중요성이 부각되고 있는 코딩 교육을 시작하기에 적합한 언어로 평가 받고 있으며, 구글, 드롭박스, 유튜브, 넷플릭스 등 해외 유수의 IT기업에서도 개발언어로 채택하고 있는 추세입니다.</p>
					<p>C와 비교했을 때, 포인터와 같은 배우기 힘든 개념이 없기 때문에, 상대적으로 많은 시간을 프로그램 구조와 디자인 등에 투자할 수 있습니다. C++과 비교했을때, OOP의 기본적인 사항들은 더욱 빠르게 배울 수 있습니다.기본적으로 인터프리터 방식이기 때문에, 코드의 결과를 바로바로 확인해 볼 수 있고, 다양한 운영체제를 지원합니다. 실행 파일(.exe)을 만들어 낼 수도 있습니다. </p>
					<p>다양한 라이브러리를 지원하기 때문에, 상대적으로 적은 양의 코드만으로도 GUI 프로그램, game, CGI 프로그램 등을 빠르게 만들 수 있습니다. </p>
				</div>
				<!-- //con_wrap -->

				<!-- con_wrap -->
				<div class="con_wrap">
					<h5><span style="font-size:0.75em;">C/ C++ 프로그래밍 외에도</span> <br/>파이썬을 배워야 하는 이유</h5>
					<ul class="ul_dot_gray">
						<li><b>C/C++ 그리고 Bourne shell과 유사한 문법</b>을 가지고 있기 때문에, 기타 다른 스크립트 언어에 비해 익히는 속도가 매우 빠릅니다.</li>
						<li>OS에 관련된 기능들 (예: POSIX interface)대부분 C/C++에서 제공되는 함수와 같은 이름을 사용하기 때문에 <b>익혀야하는 함수들이 타 스크립트 언어와 비교할 때 많지 않습니다</b>.</li>
						<li>class, virtual function, 제한적인 operator overloading을 지원하기 때문에 <b>C++에서 썼던 디자인 방식 그대로 적용</b>할 수 있습니다.</li>
						<li>Mixed language programming - Python은 기타 <b>다른 스크립트 언어에 비해 C/C++로 python module을 작성하기가 매우 쉽습니다.</b></li>
						<li>제한적이나마 <b>lambda expression을 제공</b>하기 때문에, LISP/Scheme 등에 익숙한 사람들도 비슷한 코드를 쉽게 만들 수 있다. map(), apply() 함수 제공, closure 제공</li>
						<li><b>다른 스크립트 언어에 비해 문서화가 잘 되어 있으며</b> (Tutorial, Library Reference, Language Reference 제공), 문법 자체에 LISP/Scheme과 마찬가지로 documentation string을 집어 넣을 수 있고, built-in 함수인 dir()을 쓰면, 함수, 모듈, 오브젝트가 제공하는 심볼 테이블을 바로 볼 수 있기 때문에 다른 스크립트 언어를 쓸 때에 비해, 따로 문서를 찾아보는 빈도가 낮아집니다.</li>
						<li><b>함수, 클래스 또는 변수에 Decorator를 직접 제작</b>할 수 있습니다. Decorator란 C/C++ 문법상 qualifier에 해당하는 것으로 다양한 wrapper를 만들거나 class인 경우 static, class method를 지정할 수 있습니다.</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>예상 진로</h5>
					<ul class="ul_dot_gray">
						<li>웹 프로그래밍</li>
						<li>빅테이터 분석 프로그래밍</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교재 제공</h5>
					<div style="float:left; width:50%;"><img src="/Images/Content/img_BookCover_PassionOfPython.jpg" style="margin-left:0.5em; width:90%; box-shadow:2px 2px 5px #373737;"/></div>
					<div style="float:left; margin-left:0.1em;">
						<b>"열혈강의 파이썬"</b> <br/>이강성 저 / 프리렉
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
				<div class="con_wrap last">
					<h5>커리큘럼</h5>
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python 기본</th>
							</tr>
							<tr>
								<th scope="row">
									1. 파이썬 소개<br/>
									2. 파이썬 자료형<br/>
									3. 파이썬의 기본 구문
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>파이썬 설치 및 실행환경 구성 및 실행</li>
										<li>파이썬의 자료형(숫자형, 문자열, 리스트, 튜플, 딕셔너리, 집합)과 변수</li>
										<li>제어문(조건문과 반복문)</li>
										<li>함수</li>
										<li>콘솔 입출력</li>
										<li>파일 읽고 쓰기</li>											
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python 심화</th>
							</tr>
							<tr>
								<th scope="row">
									1. 클래스와 객체지향 프로그래밍<br/>
									2. 모듈 제작 및 사용 방안<br/>
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>파이썬 객체지향 프로그래밍</li>
										<li>클래스</li>
										<li>상속</li>
										<li>다형성</li>
										<li>모듈</li>
										<li>패키지</li>
										<li>예외처리</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					
					<table class="table_col_type1">
						<tbody>
							<tr>
								<th scope="row" class="tableTitle">Python 활용</th>
							</tr>
							<tr>
								<th scope="row">
									1. 파이썬 정규식과 문서다루기
								</th>
							</tr>
							<tr>
								<td class="l">
									<ul class="ul_dot_gray">
										<li>파이썬의 내장함수와 외장함수</li>
										<li>정규 표현식</li>
										<li>XML 문서 다루기</li>
									</ul>
								</td>
							</tr>
							
							
						</tbody>
					</table>
					<p class="blueTxt mar_t10" style="font-size:0.9em;">* 이 과정은 인원 미달시 변경 또는 폐강 될 수 있습니다. </p>
					<p class="mar_t10"><span style="font-size:1em;">문의</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>

				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">문의전화하기</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=Python" data-role="button" class="Button" target="_blank">지원하기</a>
		<!--#include virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>