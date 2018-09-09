<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%!
String CourseID = "SQL_JDBC_core";
String SubjectName = "오라클과 데이터베이스 연동 프로그래밍";
%>

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
	<script src="Common_getIndex.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
	<script type="text/javascript">
		$(document).ready(function(){
			 <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			 <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

			//elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');			

			$(".snb_1709 a.newdepth1").eq(4).addClass("on");								// Database
			$(".snb_1709 .newdepth2_wrap").eq(4).addClass("on");						// Database SUB - OPEN
			$(".snb_1709 .newdepth2_wrap.no5 .newdepth2").eq(5).addClass("on");  	// 오라클과 데이터베이스 연동 프로그래밍 ON
			
		});
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
	<c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap" style="min-height:1000px;">
			
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
							<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>Database
						</p>
						<h4><%=SubjectName%></h4>
					</div>

					<section class="section">
						<!-- con_wrap1709 -->
						<div class="con_wrap1709 first">
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:37%">
										<col style="width:13%">
										<col style="width:37%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Date/Date__SQL_JDBC_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__SQL_JDBC_core.jsp"/>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td>
												<!-- #include virtual="/Include/CourseDateTime/Time/Time__SQL_JDBC_core.inc" -->
												<c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__SQL_JDBC_core.jsp"/>
											</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>390,000원<!--600,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-3456</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<td colspan="3">고용보험 비환급<!--근로자카드 (정규직 : 189,320원 | 비정규직 : 236,660원) | 사업주 환급 : 최대 236,660원<a href="#this" class="mar_l10 btnBlueBorder small btn_refundView">환급내용 자세히보기</a>--></td>
										</tr>
										
									</tbody>
								</table>
								<!-- 수강신청btn -->
								<a href="/register/request/register_form?cID=short" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">
									<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>
								</a>
								<div style="clear;both; height:10px;"></div>
							</div>
						</div>
						<!-- //con_wrap1709 -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp" -->
							<c:import url="/WEB-INF/views/common/tab/refundInfo_123.jsp"/>	
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육의 특장점</h5>
							<!--<p>SQL과 JAVA Database Programming(JDBC 프로그래밍)에 대하여 학습하는 과정입니다. 데이터 베이스는 Oracle Database를 이용하며 DML, DCL, DDL에 대한 내용을 학습합니다. SELECT사용시 주의사항을 비롯한 기본 튜닝에 대한 이론도 학습함으로써, 성능을 고려한 SQL 작성방법에 대하여 학습합니다. SQL에 대하여 학습한 후 JDBC프로그래밍 방법에 대하여 학습함으로써 JAVA언어를 이용한 데이터베이스 프로그래밍을 작성할 수 있도록 합니다.</p>-->
							<p>SQL과 JAVA Database Programming(JDBC 프로그래밍)에 대하여 학습하는 과정입니다. 데이터 베이스는 Oracle Database를 이용하며 DML, DCL, DDL에 대한 내용을 학습합니다. SELECT사용시 주의사항을 비롯한 기본 튜닝에 대한 이론도 학습함으로써, 성능을 고려한 SQL 작성방법에 대하여 학습합니다. SQL에 대하여 학습한 후 JDBC프로그래밍 방법에 대하여 학습함으로써 JAVA언어를 이용한 데이터베이스 프로그래밍을 작성할 수 있도록 합니다.</p>
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육 목표</h5>
							<ul class="ul_dot_gray">
								<li>데이터베이스 개념 습득</li>
								<li>SQL 기본 문법 습득</li>
								<li>효율적 처리를 위한 Select 구문 작성 방법 습득</li>
								<li>자바프로그램과 DB연동 방법 습득</li>
							</ul>
							
						</div>
						<!-- //con_wrap1709 -->
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육대상</h5>
							<ul class="ul_dot_gray">
								<li>JDBC 프로그램 구현방법을 학습하려는 분</li>
								<li>SQL 기본 프로그래밍을 활용하려는 분</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>예상진로 (및 공부방향)</h5>
							<ul class="ul_dot_gray">
								<li>웹 개발능력 습득</li>
								<li>Servlet & JSP</li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<!--<li>객체지향 자바프로그래밍</li>-->
								<li>JAVA Programming<a href="/course/shortcourse/detailPage/Course_Java" class="mar_l10 btnBlueBorder small">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap1709 -->

						<div class="con_wrap1709 dnone">
							<h5>개강일</h5>
							<div class="divTable">
								<style>
									table th, table td {
										text-align:center;
									}
								</style>
								<table>
									<colgroup>
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
										<col style="width:8.33%">
									</colgroup>
									<tr>
										<th>1월</th>
										<th>2월</th>
										<th>3월</th>
										<th>4월</th>
										<th>5월</th>
										<th>6월</th>
										<th>7월</th>
										<th>8월</th>
										<th>9월</th>
										<th>10월</th>
										<th>11월</th>
										<th>12월</th>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>6/14</td>
										<td></td>
										<td></td>
										<td>9/3</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
						</div>
						
						<!-- con_wrap1709 -->
						<div class="con_wrap1709">
							<h5>교육내용</h5>
							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:15%">
										<col style="width:30%">
										<col style="width:55%">
									</colgroup>
									<thead>
										<tr>
											<th>대주제</th>
											<th>소주제</th>
											<th>상세내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="darker c" rowspan="12">SQL 기본</td>
											<td class="darker c">데이터베이스 개요</td>
											<td>RDBMS 개념</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="11">SQL 문법</td>
											<td>DML문</td>
										</tr>
										<tr>
											<td>DML문</td>
										</tr>
										<tr>
											<td>기본 SELECT 문</td>
										</tr>
										<tr>
											<td>JOIN 문</td>
										</tr>
										<tr>
											<td>SubQuery 문</td>
										</tr>
										<tr>
											<td>단일행 함수와 집계 함수</td>
										</tr>
										<tr>
											<td>성능이 문제가 되는 SELECT</td>
										</tr>
										<tr>
											<td>Insert 문</td>
										</tr>
										<tr>
											<td>Update 문</td>
										</tr>
										<tr>
											<td>DDL 문</td>
										</tr>
										<tr>
											<td>DCL 문</td>
										</tr>
										<tr>
											<td class="darker c" rowspan="4">JDBC 기본</td>
											<td class="darker c" rowspan="4">JDBC 문법</td>
											<td>JDBC프로그래밍 개요</td>
										</tr>
										<tr>
											<td>Statement vs PreparedStatement</td>
										</tr>
										<tr>
											<td>CallableStatement</td>
										</tr>
										<tr>
											<td>ResultSetMetadata</td>
										</tr>
										<tr>
											<td class="darker c">심화 / 활용</td>
											<td class="darker c">CRUD 프로그램 작성 실습</td>
											<td>오라클과 연동되는 삽입, 조회, 삭제, 갱신 기능의 자바 프로그램 작성 실습 (회원 가입, 조회, 수정, 탈퇴 등)</td>
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
							<a href="/Register/Request/register_shortCourse.asp?cID=SQL_JDBC_core" class="btn mid green1">지원하기</a>
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
		<c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>