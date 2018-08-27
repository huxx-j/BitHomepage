<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
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
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(2).addClass("on");  			// [부산] 부산캠퍼스
			$(".snb_1709 .newdepth3_wrap.no3").addClass("on").css('display','block');	// [부산] 부산캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no3 .newdepth3:eq(2)").addClass("on");		// Java 프로그래밍 ON 
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
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
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>[부산]부산캠퍼스
						</p>
						<h4>JAVA 프로그래밍</h4>
					</div>
					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Busan_Java_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__BS_Java.inc" -->
												<!--2018.01.10(수) ~ 2018.01.23(화)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__BS_Java.inc" -->
												<!--09:00 ~ 16:00 (6시간)-->
											</td>
										</tr>
										<!-- 부산캠퍼스 JAVA Programming -->
										
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-7588</td>
										</tr>
										<!--
										<tr>
											<th scope="row" class="tit">교육과목</th>
											<td colspan="4">Java Programming</td>
										</tr>
										<tr>
											<th scope="row" class="tit" rowspan="3">강의일정</th>
											<td rowspan="3">
												<ul>
													<li>2015.07.13 ~ 2015.07.31</li>
												</ul>
											</td>
											<th scope="row" class="tit" rowspan="3">강의시간</th>
											<th scope="row" class="tit">오전반</th>
											<td>09:00 ~ 12:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">오후반</th>
											<td>14:00 ~ 17:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit" colspan="2">교육문의</th>
											<td> 02-3486-3456</td>
										</tr>
										-->
								</table>
								<!-- 수강신청btn -->
								<a href="/Register/Request/register_localCampus.asp" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p class="mar_b10">본 과정은 자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하고, 자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용하고 입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 학습하며 스레드를 이해하고 실무에 적용할 수 있도록 하며 네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성한다.
							프로그램의 필수적인 요소인 데이터베이스와 자바간의 연결을 통해 실무에 적용 가능한 프로그래밍을 만들 수 있도록 능력을 한 단계 업그레이드 할 수 있는 과정이다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>자바 프로그램을 객체지향적으로 만드는 방법에 대해서 학습하여 설명할 수 있다. </li>
								<li>자료구조에 대해서 이해하고 자바를 이용해 이를 직접 구현해보며 Collection 프레임워크를 적절히 활용할 수 있다.</li>
								<li>입출력 프로그램에 대해서 이해하고 java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다. </li>
								<li>스레드를 이해하고 실무에 적용할 수 있다. </li>
								<li>네트워크에 대해서 이해하고 에코서버 및 채팅서버 프로그램을 작성할 수 있다. </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>Java 언어를 처음 배우시는 분</li>
								<li>Java 언어의 기초 구문부터 시작하려는 분 </li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>부산외대 비트교육센터<img style="margin-top:-68px; height:100px;" src="img_qrcode_Busan.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>Java Programming 커리큘럼</caption>
									<colgroup>
										<col style="width:20%">
										<col style="width:20%">
										<col style="width:60%">
									</colgroup>
									<thead>
											<tr>
												<th scope="col">대주제</th>
												<th scope="col">소주제</th>
												<th scope="col">상세내용</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="darker c" rowspan="4">Java Beginning</td>
												<td rowspan="4">자바 기본문법</td>
												<td class="l">자바의 개요와 개발 환경 구축, 데이터의 구분을 위한 자바의 자료형을 학습한다.</td>
											</tr>
											<tr>
												<td class="l">데이터를 조작하기 위한 연산자, 필요한 작업만을 선택적으로 해야 할 경우 사용하는 선택문 학습한다.</td>
											</tr>
											<tr>
												<td class="l">특정 부분의 문장을 반복하게 만들어 주는 반복문 학습 한다.</td>
											</tr>
											<tr>
												<td class="l">자료형이 동일한 여러 개의 값을 연이어 저장할 수 있도록 하는 기억 공간의 집합체인 배열과 메소드 정의와 호출방법을 익힌다</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="6">Java Fundamental </td>
												<td rowspan="2">객체 지향 프로그래밍</td>
												<td class="l">객체지향의 개념과 클래스 설계, 객체 인스턴스 생성 학습한다.</td>
											</tr>
											<tr>
												<td class="l">객체지향의 개념과 클래스 설계, 객체 인스턴스 생성 학습한다.</td>
											</tr>
											<tr>
												<td rowspan="4">상속</td>
												<td class="l">코드 재활용을 위한 상속을 이해한다.</td>
											</tr>
											<tr>
												<td class="l">메소드 오버라이딩과 업캐스팅 다운 캐스팅을 학습한다.</td>
											</tr>
											<tr>
												<td class="l">추상 클래스를 이해하고 정의하는 방법을 익힌다.</td>
											</tr>
											<tr>
												<td class="l">인터페이스를 사용한 다중 상속에 대해 알아본다.</td>
											</tr>
											<tr>
												<td class="darker c" rowspan="10">Java Advanced</td>
												<td rowspan="3">자바 주요 클래스</td>
												<td class="l">자바 패키지 중 자주 사용되는 클래스를 살핀다.</td>
											</tr>
											<tr>
												<td class="l">자료구조인 컬렉션에 대해서 학습한다.</td>
											</tr>
											<tr>
												<td class="l">자바클래스 실습</td>
											</tr>
											<tr>
												<td rowspan="5">IO/스레드</td>
												<td class="l">입출력 프로그램에 대해서 이해한다</td>
											</tr>
											<tr>
												<td class="l">java.io 패키지로 제공되는 다양한 입출력 클래스의 특징을 설명할 수 있다.</td>
											</tr>
											<tr>
												<td class="l">스레드를 이해하고 실무에 적용할 수 있다.</td>
											</tr>
											<tr>
												<td class="l">멀티스레드 프로그래밍을 학습한다.</td>
											</tr>
											<tr>
												<td class="l">스레드의 동기화에 대해서 학습한다</td>
											</tr>
											<tr>
												<td rowspan="2">네트워크</td>
												<td class="l"> 네트워크에 대해서 이해하고 에코서버를 작성할 수 있다. </td>
											</tr>
											<tr>
												<td class="l">채팅서버 프로그램을 작성할 수 있다.</td>
											</tr>
										</tbody>
								</table>
							</div>
							<!--<p class="mar_t10"><span class="fb">환급가능문의</span> : 02.3486.1422</p>-->
						</div>
						<!-- con_wrap1709 -->
						<!--
						<div class="btn_wrap c">
							<a href="/Register/Request/register_localCampus.asp" class="btn mid green1">지원하기</a>
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