<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- <%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>
 --%>
 
<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<c:import url="/WEB-INF/views/Include/Meta.jsp"/>
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
	<!-- #include virtual="/Include/Script.asp"-->
	<c:import url="/WEB-INF/views/Include/Script.jsp"/>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');

			/* page load 직후 SNB 셋팅 */
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
			$(".snb_1709 .newdepth2_wrap .newdepth2").eq(1).addClass("on");  			// [대전] 대전캠퍼스
			$(".snb_1709 .newdepth3_wrap.no2").addClass("on").css('display','block');	// [대전] 대전캠퍼스 SUB - OPEN
			$(".snb_1709 .newdepth3_wrap.no2 .newdepth3:eq(2)").addClass("on");		// C++ 프로그래밍 ON 
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<style>
	/* white and narrowSNB */
	#SNB_Wrap_1702 { background:#ffffff !important; width:195px !important; }
	.moveTop { width:195px !important; background:#17538e url('${pageContext.request.contextPath}/assets/Images/Common/btn_moveTop.png') 50px center no-repeat; }
	ul.newdepth3_wrap li.long { letter-spacing:-1px; }
	ul.newdepth2_wrap li.long { letter-spacing:-1px; }
</style>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:initial;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_CourseShortCore_1709.asp"-->
				<c:import url="/WEB-INF/views/Include/SNB_CourseShortCore_1709.jsp"/>
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>단기핵심과정
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Programming
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[대전]대전캠퍼스
						</p>
						<h4>C++ 프로그래밍</h4>
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
										<!-- # i n c lude virtual="/Include/CourseDateTime/LocalCampus_Daejeon_Cpp_DetailPageTR.inc" -->
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__DJ_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__DJ_Cpp.jsp"/>
												<!--2018.01.11(목) ~ 2018.01.30(화)-->
											</td>
											<th scope="row" class="tit">강의시간</th>
											<!--
											<th scope="row" class="tit">저녁반</th>
											<td>19:00 ~ 22:00 (3시간)</td>											
											-->
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__DJ_Cpp.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__DJ_Cpp.jsp"/>
												<!--09:00 ~ 13:00 (4시간)-->
											</td>
										</tr>
										<!-- 대전캠퍼스 C++ Programming -->

										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>300,000원</td>
											<th scope="row" class="tit">교육문의</th>
											<td> 02-3486-7588</td>
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
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="https://pf.kakao.com/_SmhqV" title="카카오톡 상담신청" style="float:right; margin:12px 5px;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Kakao.png"/>
								</a>
								<a href="/register/request/register_form?cID=bitcam" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>

							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육소개</h5>
							<p class="mar_b10">본 과정은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>C++ 프로그래밍의 전반적인 흐름 파악</li>
								<li>객체지향 프로그래밍 능력 함양</li>
								<li>프로그래밍 개발 공정을 이해 및 활용 능력 함양</li>
								<li>응용이 가능한 실무 프로젝트 적응력 향상</li>
								<li>시나리오를 통해 각 개발 공정에서 해야 할 일들이 무엇이고 어떻게 해 나가야 하는지를 실습 위주의 강의로 진행 (이론 : 실습 = 3 : 7)</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<li>C개념, C기본문법</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육장소</h5>
							<ul class="ul_dot_gray">
								<li>대전광역시 동구 자양동 52-2 우송IT교육센터 3층<img style="margin-top:-68px; height:100px;" src="${pageContext.request.contextPath}/assets/Images/img_qrcode_daejeon.jpg"/></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<caption>C++ Programming 커리큘럼</caption><!--ver20160730-->
									<colgroup>
										<col style="width:15%">
										<col style="width:35%">
										<col style="width:50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">대주제</th>
											<th scope="col">소주제</th>
											<th scope="col">교육내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="8">기본</td>
											<td rowspan="4">C 보다 나은 C++</td>
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
											<td rowspan="4">Class</td>
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
										<tr>
											<td class="darker c" rowspan="7">심화</td>
											<td rowspan="3">Inheritance</td>
											<td>접근 변경자와 접근 지정자</td>
										</tr>
										<tr>
											<td>override function</td>
										</tr>
										<tr>
											<td>up-casting, binding, virtual function</td>
										</tr>
										<tr>
											<td rowspan="3">Operator Overloading</td>
											<td>연산자 재정의 개념, 증가 감소 연산자</td>
										</tr>
										<tr>
											<td>대입연산자 / <<,>> 연산자 / 배열연산자 / 변환연산자</td>
										</tr>
										<tr>
											<td>new/delete의 재정의</td>
										</tr>
										<tr>
											<td>Template</td>
											<td>함수 template / 클래스 template</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">활용</td>
											<td rowspan="4">STL</td>
											<td>Iterators</td>
										</tr>
										<tr>
											<td>Sequence Algorithms / Sequence Containers</td>
										</tr>
										<tr>
											<td>Associative Containers</td>
										</tr>
										<tr>
											<td>Adaptors</td>
										</tr>
									</tbody>
								</table>
							</div>
							
							<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
						</div>
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
		<c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>