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
	.moveTop { width:175px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	#Container_Wrap { min-height:initial; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }


#kakao{

    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid #1b499b;
    color: #1b499b;
    background-color: #ffeb33;

}

 

#jiwon{
    height: 26px;
    padding: 0 10px;
    font-weight: 600;
    display: inline-block !important;
    position: relative;
    margin: 0px;
    border-radius: 5px;
    text-align: center;
    line-height: 25px;
    cursor: pointer;
    border: 1px solid black;
    color: black;
    background-color: white;

}


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
						<h4 style="float:left; letter-spacing:0px;" >JAVA 기반 빅데이터 분석을 위한 고급인력 양성과정
						<!-- 수강신청btn --> 
						
						<a href="https://pf.kakao.com/_SmhqV"  title="카카오톡 상담신청" style="float:right; margin:12px 0px 12px 12px;">
							<img src="/Images/Btns/btn_Kakao.png"/>
						</a>

						<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="수강신청" style="float:right; margin:12px 0;">
							<img src="/Images/Btns/btn_ApplyCourse.png"/>
						</a>						
</h4>
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
											<th>교육비</th>
											<td>무료</td>
											<th>훈련장려금</th>
											<td>월 약 30만원</td>
										</tr>
										<tr>
											<th>교육정원</th>
											<td>25명</td>
											<th>문의</th>
											<td>
												임지훈 매니저: 02-3486-1248
											</td>
										</tr>
									</tbody>
								</table> 
								<div style="clear:both; height:10px;"></div>
							</div>
						</div>

						<div class="con_wrap1709">
							<h5>과정소개</h5>
							<p>
								본 과정은 빅데이터 플랫폼 구축, 분석 기술을 자바 기반의 웹 분야와 융합 하여 하나의 새로운 비즈니스를 개발하는 능력을 배양하여 실무에 적용가능한 프로젝트를 수행하고 JAVA, 빅데이터 분야로 진출을 목적으로 하는 과정입니다. 
							</p>							
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
-Java 개발환경 구축<br/>
-Java 기본 및 객체지향 프로그래밍 및 패키지 학습<br/>
-컬렉션 프레임워크, 정렬, 검색 알고리즘, Thread I/O 네트워킹
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Java Web Programming
											</td>
											<td>
-환경설정<br/>
-JSP 구성요소<br/>
-JSP 지시문<br/>
-폼처리와 파일 업로드<br/>
-JSP 기본객체<br/>
-포워딩<br/>
-에러처리<br/>
-세션쿠키<br/>
-자바빈<br/>
-JDBC<br/>
-jQuery 

											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Linux Admin
											</td>
											<td>
-리눅스 설치<br/>
-커널 컴파일 & 리눅스 시스템<br/>
-리눅스 기본 명령어<br/>
-디렉토리 및 파일구조의 이해<br/>
-리눅스 쉘 소개<br/>
-VIM 에디터<br/>
-쉘 프로그래밍 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
DBMS
											</td>
											<td>
-데이터베이스 개념과 오라클 설치<br/>
-SQL의 기본<br/>
-SQL Plus 명령어<br/>
-Select로 특정데이터 추출하기<br/>
-SQL 주요함수<br/>
-그룹함수<br/>
-조인<br/>
-서브쿼리<br/>
-테이블 구조 생성, 변경 및 삭제하는 DDL<br/>
-테이블의 내용추가, 수정, 삭제하는 DDL 											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
J Unit 
											</td>
											<td>
-J Unit 개요<br/>
-테스트 주도 개발<br/>
-Test with J Unit<br/>
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
TDD
											</td>
											<td>
-TDD 개요<br/>
-TDD 규칙<br/>
-TDD 사이클
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Framework Programming
											</td>
											<td>
-Spring Framework의 내부구조와 동작원리<br/>
-Spring Framework을 이용한 설계 및 구현<br/>
-Spring MVC 방식 소개 및 실습<br/>
-iBatis를 이용한 JDBC 프로그래밍 및 iBatis 고급기법인 Caching<br/>
-Grouping, ORM을 학습
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
UML
											</td>
											<td>
-UML기본 개념 습득, 객체지향의 특성, UML 구성요소 학습<br/>
-클래스에 대한 기본 특성과 코드, 클래스 추출법 학습<br/>
-다이어그램의 종류와 각 다이어그램 변환에 대한 예시 학습 및 응용
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 1
											</td>
											<td>
-통계의 이해<br/>
-함수 및 객체의 사용<br/>
-패키지<br/>
-외부 데이터 받기<br/>
-NoSQL 종류와 특징<br/>
-논리적 구조와 물리적 구조<br/>
-MongoDB를 위한 Data modeling 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Bigdata Programming 2
											</td>
											<td>
-빅데이터란?<br/>
-빅데이터의 예<br/>
-빅데이터 시스템의 구성<br/>
-Apache Hadoop의 특징<br/>
-Apache Architecture<br/>
-HDFS 개요<br/>
-MapReduce 프레임워크<br/>
-입출력 포맷<br/>
-Python Script<br/>
-Pig Programming 
											</td>
										</tr>
										<tr>
											<td scope="row" class="darker c">
Team Project
											</td>
											<td>
-지금까지 배운 모든 기술을 통해서 실무 현업에 맞는 프로젝트로 개발해 보는 단계로 4인 내외로 팀을 구성<br/>
-최신 프로젝트 주제를 선정하여 3개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행하며, 주제 선정<br/> 
-관련된 자료 수집, 필요기술 학습, 명세확정, 일정 수립, 개발환경구축 등 개발, 통합테스트 등을 거쳐 개발을 완료<br/>
-외부업체 관계자들의 참관 하에 최종 전시회를 갖도록 한다.  
											</td>
										</tr>
									</tbody>
								</table>
								<div style="clear:both;"></div>
							</div>
						</div>
						<!-- con_wrap1709 -->
						
						<div class="con_wrap1709">
							<h5>교육특전/혜택</h5>
							<p>
								1. 교육비 무료 <br/>
  								2. 훈련수당 지원 ( 약 30만원/월 ) <br/>
  								3. 취업지원프로그램 제공
							</p>							
						</div>

						<div class="con_wrap1709 ">
							<h5>수강대상 및 신청방법</h5>
								
							<p>
								<b>-수강대상</b><br>								
								 Java, 빅데이이터 분야에 관심있는 미취업자, 졸업예정자, 내일배움카드 발급 가능자
							</p>
							<br><br>
							<p>
								<b>-신청방법</b><br>								
								1. 비트교육센터 회원가입 → 온라인 신청 → 레벨테스트 및 면담<br>
   								2. 주거지관할 고용센터 방문 후, 내일배움카드 신청
							</p>
							
						</div>
						<br><br>	
						<!-- con_wrap1709 -->

						<div class="con_wrap1709">
							<img src="Images/proce.png" style="width:630px"/><br><br>
						</div>

						
						<div class="con_wrap1709" style="display: table; margin-left: auto; margin-right: auto;">
							<a href="https://pf.kakao.com/_SmhqV"  title="카카오톡 상담신청" style="float:right; margin:12px 0px 12px 12px;">
								<img src="/Images/Btns/btn_Kakao.png"/>
							</a>

							<a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="수강신청" style="float:right; margin:12px 0;">
								<img src="/Images/Btns/btn_ApplyCourse.png"/>
							</a>
						</div>
						<!---
						<br><br>


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