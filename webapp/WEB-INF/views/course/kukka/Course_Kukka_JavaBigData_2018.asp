<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
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

			$(".snb_1709 a.newdepth1").eq(1).addClass("on");			// 국가기간전략산업직종
			$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");	// 국가기간전략산업직종
			$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(4).addClass("on");  	// JAVA 기반 빅데이터 분석을 위한 고급인력 양성과정
		});
	</script>
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_JavaBigData_2016.asp";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	.moveTop { width:175px !important; background:#17538e url('/WEB-INF/views/course/kukka/kukkaImages/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p style="letter-spacing:-1px;">
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>무료취업과정
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>국가기간전략산업직종
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>JAVA 기반 빅데이터 분석을 위한 고급인력 양성과정
						</p>
						<h4 style="float:left; letter-spacing:0px;" >JAVA 기반 빅데이터 분석을 위한<br/>고급인력 양성과정</h4>
						<!-- 수강신청btn -->
						<a href="/Register/Request/register_kukka1.asp" title="지원하기" style="float:right; margin-top:24px; font-size:20px;" class="btnBlueBorder">
							<!--<img src="/Images/Btns/btn_ApplyCourse.png"/>-->
							지원하기
						</a>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section>
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table style="box-shadow:none !important;">
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th>교육기간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_BD.inc" -->
											</td>
											<th>강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_BD.inc" -->
												<!--09:00 ~ 18:00 (8시간/총960시간)-->
											</td>
										</tr>
										<tr>
											<th>교육비용</th>
											<td>무료</td>
											<th>교육비지원</th>
											<td>국비지원</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>25명</td>
											<th>문의</th>
											<td>
												02-3486-3456<br/>
												임지훈 선임 : <a class="email" href="mailto:acidstar@bit.kr">acidstar@bit.kr</a><br/>
												강인영 사원 : <a class="email" href="mailto:kang.i.y@bit.kr">kang.i.y@bit.kr</a>
											</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							<img src="Images/DetailPage_JavaBigData1.png" style="width:720px"/>
						</div>

						<!-- con_wrap1709 -->
						<div class="con_wrap1709 ">
							<h5> </h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:30%">
										<col style="width:70%">
									</colgroup>
									<!--
									<thead>
										<tr>
											<th scope="col" class="c">대주제</th>
											<th scope="col" class="c">세부내용</th>
										</tr>
									</thead>
									-->
									
									<tbody>
										<tr>
											<td scope="row" class="darker c">
Java Programming
											</td>
											<td>
Java 개발환경 구축<br/>
Java 기본 및 객체지향 프로그래밍 및 패키지 학습<br/>
컬렉션 프레임워크, 정렬, 검색 알고리즘, Thread I/O 네트워킹
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Java Web Programming
											</td>
											<td>
환경설정<br/>
JSP 구성요소<br/>
JSP 지시문<br/>
폼처리와 파일 업로드<br/>
JSP 기본객체<br/>
포워딩<br/>
에러처리<br/>
세션쿠키<br/>
자바빈<br/>
JDBC<br/>
jQuery

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Linux Admin
											</td>
											<td>
리눅스 설치<br/>
커널 컴파일 &amp; 리눅스 시스템<br/>
리눅스 기본 명령어<br/>
디렉토리 및 파일구조의 이해<br/>
리눅스 쉘 소개<br/>
VIM 에디터<br/>
쉘 프로그래밍
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
DBMS
											</td>
											<td>
데이터베이스 개념과 오라클 설치<br/>
SQL의 기본<br/>
SQL Plus 명령어<br/>
Select로 특정데이터 추출하기<br/>
SQL 주요함수<br/>
그룹함수<br/>
조인<br/>
서브쿼리<br/>
테이블 구조 생성, 변경 및 삭제하는 DDL<br/>
테이블의 내용추가, 수정, 삭제하는 DDL
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
J Unit
											</td>
											<td>
J Unit 개요<br/>
테스트 주도 개발<br/>
Test with J Unit
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
TDD
											</td>
											<td>
TDD 개요<br/>
TDD 규칙<br/>
TDD 사이클
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Framework Programming
											</td>
											<td>
Spring Framework의 내부구조와 동작원리<br/>
Spring Framework을 이용한 설계 및 구현<br/>
Spring MVC 방식 소개 및 실습<br/>
iBatis를 이용한 JDBC 프로그래밍 및 iBatis 고급기법인 Caching,<br/>
Grouping, ORM을 학습
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
UML
											</td>
											<td>
UML기본 개념 습득, 객체지향의 특성, UML 구성요소 학습<br/>
클래스에 대한 기본 특성과 코드, 클래스 추출법 학습<br/>
다이어그램의 종류와 각 다이어그램 변환에 대한 예시 학습 및 응용
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 1
											</td>
											<td>
통계의 이해<br/>
함수 및 객체의 사용<br/>
패키지<br/>
외부 데이터 받기<br/>
NoSQL 종류와 특징<br/>
논리적 구조와 물리적 구조<br/>
MongoDB를 위한 Data modeling
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 2
											</td>
											<td>
빅데이터란?<br/>
빅데이터의 예<br/>
빅데이터 시스템의 구성<br/>
Apache Hadoop의 특징<br/>
Apache Architecture<br/>
HDFS 개요<br/>
MapReduce 프레임워크<br/>
입출력 포맷<br/>
Python Script<br/>
Pig Programming
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
프로젝트
											</td>
											<td>
프로젝트 주제 선정<br/>
프로젝트 수행방법론<br/>
프로젝트 수행<br/>
프로젝트 관리 기법
											</td>
										</tr>
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->
						
						<div class="con_wrap1709">
							<img src="Images/DetailPage_JavaBigData2.jpg" style="width:720px"/>
							<img src="Images/DetailPage_JavaBigData3.png" style="width:720px"/>
						</div>


						<div class="con_wrap1709 dnone">
							<!--<img src="Images/Course_Kukka_RaspberryPiIoTService.png" style="width:720px"/>-->
							<img src="Images/DetailPage_국가기간_빅데이터.png" style="width:720px"/>
						</div>

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