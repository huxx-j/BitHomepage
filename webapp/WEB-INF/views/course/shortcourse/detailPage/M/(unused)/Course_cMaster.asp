<!DOCTYPE html>
<!-- MOBILE -->
<%
	dim PhoneNum
	dim strSubject
	dim strSubjectSub
	PhoneNum = "02-3486-1421"
	Subject = "C Master"
	SubjectSub = "(C+자료구조)"
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
				<div class="CourseTitle" style="font-size:3.5em; line-height:0.8em; margin-top:8%;"><b><%=Subject%><br/><span style="font-size:0.5em;"><%=SubjectSub%></span></b></div>
			</div>
			<div style="height:2.5em; background:#ffffff;"></div>
			<div style="height:1.5em; background:#fcfcfc; "></div>
			<div style="height:1.5em; background:#f8f8f8; "></div>

			<div class="CourseDescription">
				
				<div class="con_wrap last">
					<table class="table_col_type1">
						<caption>C Master 종일반 교육일정</caption>
						<colgroup>
							<col style="width:25%">
							<col style="width:75%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row" class="tit" >교과목명</th>
								<td class="fb">C Master (C+자료구조)</td>
							</tr>
							<tr>
								<th class="tit" >강의일정</th>
								<td>
									<!--2016.12.05 ~ 2017.01.31 <span class="greenTxt">(오전반)</span><br/>-->
									<!--2016.12.19 ~ 2017.01.31 <span class="blueTxt">(오전반/방특)</span><br/>-->
									2017.03.06 ~ 2017.04.28 <span class="blueTxt">(오후반)</span><br/>
								</td>
							</tr>
							<tr>
								<th class="tit" >강의시간</th>
								<td>
									<!--오전반 09:00 ~ 12:00 (3시간) <span class="greenTxt">- 스터디 별도</span><br/>-->
									<span class="blueTxt">총 120시간</span><br/>
									<!--오전반 09:00 ~ 12:00(3시간) <span class="greenTxt">- 스터디 별도</span><br/>-->
									오후반 13:00 ~ 16:00(3시간) <span class="greenTxt">- 스터디 별도</span><br/>
									<!--<span class="greenTxt">* 오후반은 방학특강 기간에만 진행됩니다.</span><br/>-->
									<span class="greenTxt">* 별도의 그룹스터디 진행 가능</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit" >교육비</th>
								<td>
									700,000원 <span class="blueTxt">(<s>80만원</s> 10만원 할인)<br/>
									* 25,000원 상당 시중교재 + 자체교재 제공</span>
								</td>
							</tr>
							<tr>
								<th scope="row" class="tit">교육문의</th>
								<td><a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육소개</h5>
					<p>
						<b><%=Subject%></b> 과정은 기본 프로그래밍에서부터 중급 이상의 프로그래머가 되기 위한 과정으로서 프로그램의 초석을 다지고자 하는 자에게 필요한 실습 위주의 과정입니다. </p><p>
						개별적 문법의 이해와 구현능력 향상, 조별 프로젝트를 통한 협력개발과 발표를 통해 다양한 개발환경에 사용되는 자료구조 및 알고리즘에 대하여 학습하는 과정입니다.
					</p>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육 특징</h5>
					<ul class="ul_dot_gray">
						<li>기본 문법에서 고급 프로그래밍까지 단기간에 습득</li>
						<li>기본 프로그래밍 지식을 토대로 한 체계적인 학습 </li>
						<li>기초 과정부터 체계적으로 학습 가능</li>
						<li>실습을 통한 효율적 프로그래밍 구현 능력 향상</li>
						<li>그룹스터디 강화로 본인만의 프로그래밍 능력 구축</li>
						
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교육 대상</h5>
					<ul class="ul_dot_gray">
						<li>C 프로그래밍의 기본적인 사항부터 차근차근 체계적으로 학습하고 싶으신 분</li>
						<li>컴퓨터 관련 및 전기/전자 전공</li>
						<li>전문가과정에 입학을 희망하시는 분</li>
						<li>기업맞춤교육(신입사원 채용교육)을 통해 취업을 희망하시는 분</li>
						<li>삼성SW멤버쉽을 준비하시는 분</li>
					</ul>
				</div>
				<!-- //con_wrap -->
				
				<!-- con_wrap -->
				<div class="con_wrap">
					<h5>교재 제공</h5>
					<div style="float:left; width:50%;"><img src="/Images/Content/img_BookCover_PassionOfC.jpg" style="margin-left:0.5em; width:90%; box-shadow:2px 2px 5px #373737;"/></div>
					<div style="float:left; margin-left:0.1em;">
						<b>"열혈 C 프로그래밍"</b> <br/>윤성우 저 / 오렌지미디어
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
								<th class="tableTitle">C 초급</th>
							</tr>
							<tr>
								<td>C 언어 특징, 컴파일러 사용법</td>
							</tr>
							<tr>
								<td>데이터 형, 변수 사용법</td>
							</tr>
							<tr>
								<td>기본 입출력 함수, 연산자</td>
							</tr>
							<tr>
								<td>조건문</td>
							</tr>
							<tr>
								<td>반복문</td>
							</tr>
							<tr>
								<td>1차원 배열</td>
							</tr>
							<tr>
								<td>2차원 배열</td>
							</tr>
							<tr>
								<td>함수와 포인터의 관계</td>
							</tr>
							<tr>
								<th class="tableTitle">C 중급</th>
							</tr>
							<tr>
								<td>변수, 입출력, 연산자</td>
							</tr>
							<tr>
								<td>제어구조, 실습 프로젝트</td>
							</tr>
							<tr>
								<td>배열, 포인터, 실습 프로젝트I</td>
							</tr>
							<tr>
								<td>메모리 다루기, 포인터 활용</td>
							</tr>
							<tr>
								<td>함수, 문자열 다루기, 실습 프로젝트</td>
							</tr>
							<tr>
								<td>다차원 배열, 포인터, 동적 메모리, 실습 프로젝트</td>
							</tr>
							<tr>
								<td>구조체, 파일 I/O, 실습 프로젝트 </td>
							</tr>
							<tr>
								<td>최종 프로젝트 (정적순수배열, 정적인덱스배열) </td>
							</tr>
							<tr>
								<th class="tableTitle">자료구조</th>
							</tr>
							<tr>
								<td>자료구조 개요 및 알고리즘의 이해</td>
							</tr>
							<tr>
								<td>선형자료구조(배열, 연결 리스트)</td>
							</tr>
							<tr>
								<td>선형 자료구조의 활용, 실습 프로젝트 I</td>
							</tr>
							<tr>
								<td>스택과 큐, 실습 프로젝트 II</td>
							</tr>
							<tr>
								<td>자료구조의 활용, 실습 프로젝트 III</td>
							</tr>
							<tr>
								<td>트리, 실습 프로젝트 IV</td>
							</tr>
							<tr>
								<td>STL과 일반화 프로그래밍</td>
							</tr>
						</tbody>
					</table>
					<p class="blueTxt mar_t10" style="font-size:0.8em;">* 이 과정은 인원 미달시 변경 또는 폐강 될 수 있습니다. </p>
					<p class="mar_t10"><span style="font-size:1em;">문의</span> : <a href="tel:<%=PhoneNum%>" style="text-decoration:underline;">02-3486-1421</a> &nbsp;(kimyj0723@bit.kr)</p>
				</div>

				<!-- 자격증과정 소개 -->
				<!-- #include virtual="/Course/ShortCourse/DetailPage/M/Common_IntroducingBCCPM.asp"-->
				<!-- /자격증과정 소개 -->
				
				
			</div>			
		</div> <!--//Box-->
		<a href="tel:<%=PhoneNum%>" data-role="button" class="ButtonCall">문의전화하기</a>
		<a href="/Register/Request/register_shortCourse.asp?cID=c_master_AM" data-role="button" class="Button" target="_blank">지원하기</a>
		<!-- # i n clude virtual="/M_Common/AdBox.inc" -->

	</div>
</body>
</html>