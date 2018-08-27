<%
'// 4[CourseReview] (pre1)
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1

'//"Android1_core" -> "android_programming"으로 변경함 -> 다시 "Android1_core"으로 변경함. (2016-12-01-YG)
CourseID = "Android1_core"
%>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"--> <!-- 4[CourseReview]  (pre2) -->
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="Common_getIndex.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include file="Common_eventHandlers_SNB.inc"-->

			/************************ 4[CourseReview]  (pre3)*************************************/
			$(".courseReview_Subject").on("mouseover", function() {
				//alert($(this).attr("idx"));
				$(this).css("text-decoration","underline");
				$(this).css("color","blue");
			})
			.on("mouseleave", function() {
				$(this).css("text-decoration","");
				$(this).css("color","#000");
			})
			.on("click", function() {
			
				var idx = $(this).attr("idx");
				var display = $("#trCourseReview_Content"+idx).css("DISPLAY").toUpperCase();
				if(display == "NONE") {
					//alert("펼쳐");
					$("#trCourseReview_Content"+idx).show();
				}
				if(display == "BLOCK" || display == "TABLE-ROW" ) {
					//alert("감춰");
					$("#trCourseReview_Content"+idx).hide();
					
				}
			})
			
			$(".radioStar").on("change", function() {
				//alert( $(this).attr("id").substring(5) + "점");
				$("#inputNRate").val( $(this).attr("id").substring(5) );
			})
			/************************ //4[CourseReview] *************************************/
			
			elm_xPos = $(".btn_refundView").offset().left + $(".btn_refundView").width()/2;
			ajaxLoad('#TabCon', '', '/Common/Tab/SupportInfo_01.asp');
			$(".snb_1702 .newdepth1").eq(3).addClass("on");
			$(".snb_1702 .newdepth2_wrap").eq(4).addClass("on");
			$(".snb_1702 .newdepth2_wrap.no5").find("li a").eq(getIndex("ANDROID")).addClass("on");
			
			onLoadGotoCourseReview(); // 4[CourseReview]  (pre4)
		});
		
		/****************************************** 4[CourseReview]  (pre5)********************************************************/
		// QueryString to JSON (from GOOGLING)
		function getUrlParams() {					// 2016-11-26-YG : 자동선택기능 자동스크롤 추가.
			var params = {};
			window.location.search.replace(
				/[?&]+([^=&]+)=([^&]*)/gi,
				function(str, key, value) { params[key] = value; }
			);
			return params;
		}
		
		function onLoadGotoCourseReview() {			// 2016-11-26-YG : 페이지 열릴 때 page쿼리스트링 값이 존재하면 자동스크롤.
			//alert("과정신청 페이지입니다. cID : " + getUrlParams().cID);
			if(typeof getUrlParams().page != "undefined") {
				window.scrollTo(0,2000);
				$('body').scrollTop(2000);
				
				//var height = document.body.scrollHeight;
				//////$( 'html, body' ).stop().animate( { scrollTop : height } );
				//////$( 'html, body' ).css("scrollTop",height);
				//$('body').scrollTop(height);
				
			}
		}
		
		function checkForm() {
			if( $("#inputNRate").val()==null || $("#inputNRate").val()=="" ) alert("종합평가 점수를 선택해주세요.");
			else document.Form1.submit();
		}
		/****************************************** //4[CourseReview] ********************************************************/
	</script>
	<script language="javascript"> 
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_android.asp";
	</script>
	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>

<%
'// 4[CourseReview] (pre6)
%>
<!--#include virtual="/job/include/dbconn.inc"-->
<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<body>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div class="banner_wrap">
			<div class="banner pd_t50">
				<h3><span class="courseName">안드로이드 프로그래밍</span></h3>
				<!--<h4>실제 앱에 대한 프로토타이핑을 제공하고, 해당 앱을 직접 만들면서 안드로이드 앱 작성방법에 대한 역량을 확보</h4>-->
			</div>
		</div>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Course_1702.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4 class="fl">안드로이드 프로그래밍</h4>
						<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1 fl mar_l10">지원하기</a>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">과정안내</a>
							<a href="#this">프로그래밍과정 / 핵심역량과정</a>
							<a href="#this" class="last on">안드로이드 프로그래밍</a>
						</p>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap first">
							<div class="form_type1 mar_b20">
								<table class="table_col_type1">
									<caption>안드로이드 프로그래밍</caption>
									<colgroup>
										<col style="width:10%">
										<col style="width:40%">
										<col style="width:10%">
										<col style="width:40%">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="tit">교과목명</th>
											<td colspan="3">안드로이드 프로그래밍</td>
										</tr>
										<tr>
											<th scope="row" class="tit">강의일정</th>
											<td>
												<ul class="ul_dot_gray">
													<li>2017.01.02 ~ 2017.01.19 (월~목 / 12일 / 총 36시간)<br/>
												</ul>
											</td>
											<th scope="row" class="tit">강의시간</th>
											<td><!--주4일(화,수,목,금) 3주간<br/>-->19:00 ~ 22:00 (1일 3시간)</td>
										</tr>
										<tr>
											<th scope="row" class="tit">교육비</th>
											<td>360,000원<!--350,000원--><!--<span class="greenTxt"> 마일리지 5%적립 (30,000원)</span>--></td>
											<th scope="row" class="tit">교육문의</th>
											<td>02-3486-1421</td>
										</tr>
										<tr>
											<th scope="row" class="tit">환급비</th>
											<!--<td colspan="3">근로자카드(정규직 : 480,000원 | 비정규직 : 600,000원) | 사업주 훈련 : 우선지원대상 기업기준 247,118원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<!--<td colspan="3">근로자카드 (정규직 : 189,320원 | 비정규직 : 236,660원) | 사업주 환급 : 최대 236,660원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>-->
											<td colspan="3">근로자카드 (정규직 : 189,340원 | 비정규직 : 236,670원) | 사업주 환급 : 최대 236,670원<a href="#this" class="mar_l10 btn sml blue btn_refundView">환급내용 자세히보기</a></td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
						<!-- //con_wrap -->

						<!-- 고용보험환급안내-->
						<div class="refundInfo_wrap">
							<!-- #include virtual="/Common/Tab/refundInfo_123.asp"-->							
						</div>
						<!-- //고용보험환급안내 -->

						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육소개</h5>
							<!--<p>본 과정은 안드로이드 어플리케이션의 핵심 개념과 기본 View, Layout에 대한 설명. 그리고 안드로이드의 핵심 구성요소에 대하여 학습한다. 단순히 안드로이드의 API에 대하여 학습하는 것이 아닌, 실제 앱에 대한 프로토타이핑을 제공하고, 해당 앱을 직접 만들면서 안드로이드 앱 작성방법에 대한 역량을 확보하게 한다.</p>-->
							<p>본 과정은 안드로이드 소개와 개발환경 설치(안드로이드 스튜디오) 그리고 입문부터 레이아웃을 통한 UI 다루기, 이벤트 처리 그리고 고급 UI, 커스텀 UI등 실무에서 작성되는 상용앱 수준의 안드로이드 앱을 작성하는 방법을 배웁니다. 그리고 실제 안드로이드 앱과 웹 서버간의 데이터 통신을 다루고 안드로이드 앱의 UI에 적용시키는 실무위주의 기술들을 배웁니다.</p>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>교육목표</h5>
							<ul class="ul_dot_gray">
								<li>안드로이드 아키텍처 및 구성요소들에 대한 이해</li>
								<li>안드로이드 스튜디오 개발 툴 사용법 익히기</li>
								<li>레이아웃, 이벤트 처리, 기본 위젯 프로그래밍</li>
								<li>어댑터 뷰, 고급 위젯, 커스텀 위젯 프로그래밍</li>
								<li>웹 서버와의 JSON기반의 데이터 통신 구현</li>
							</ul>
						</div>
						<!-- //con_wrap -->
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>선수지식</h5>
							<ul class="ul_dot_gray">
								<!--<li>객체지향 자바프로그래밍</li>-->
								<li>JAVA Programming<a href="/Course/ShortCourse/DetailPage/Course_java.asp" class="mar_l10 btn sml blue">자세히보기</a></li>
							</ul>
						</div>
						<!-- //con_wrap -->
						
						<!-- con_wrap -->
						<div class="con_wrap">
							<h5>커리큘럼</h5>
							<table class="table_col_type2" style="width:85%;">
								<caption>안드로이드 프로그래밍 커리큘럼</caption>
								<thead>
									<tr>
										<th scope="col" style="width:15%;">대주제</th>
										<th scope="col" style="width:30%;">소주제</th>
										<th scope="col" style="width:47%;">상세내용</th>
										<!--<th scope="col" style="width:8%;">시수</th>-->
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>안드로이드 개요</td>
										<td style="text-align:left;">1. Android 운영체제<br/>2. Android 개발환경 설정<br/>3. Android 애플리케이션 구성요소</td>
										<td style="text-align:left;">1.안드로이드 특징, 구성요소 및 구조 런타임환경을 이해<br/>2.Android Studio 통합 개발환경 설정및 사용법<br/>3. 액티비티, 서비스, 브로드캐스트 리시버, 콘텐트 프로바이더, 인텐트, 알림 메시지, 토스트의 이해</td>
										<!--<td>3</td>-->
									</tr>
									<tr>
										<td>안드로이드 입문</td>
										<td style="text-align:left;">1.Hello, Android 살펴보기<br/>2.Android 애플리케이션 구성요소 자세히 알아보기</td>
										<td style="text-align:left;">1. 간단한 예제를 통해 실제 앱 작성을 위한 기초적인 내용 습득<br/>2. 리소스, 액티비티, 인텐트 이해</td>
										<!--<td>3</td>-->
									</tr>
									<tr>
										<td>안드로이드 <br/>프로그래밍</td>
										<td style="text-align:left;">1. 안드로이드 기본 UI(레이아웃/위젯)<br/>2. 안드로이드 고급 UI (액션바/프래그먼트)<br/>3.안드로이드 커스텀 UI (drawable/Theme)</td>
										<td style="text-align:left;">1.Layout/Tab/TextView & Image View<br/>2.입력처리( EditText/Spinner/Button/RadioBUtton/CheckBox)<br/>3.날짜와 시간 선택/기타 위젯<br/>4.ListView 기본 사용법<br/>5.메뉴<br/>6.Dialog<br/>7.커스텀 UI개발을 위한 layout/drawable/theme 활용법<br/>8.ActionBar & Fragment </td>
										<!--<td>18</td>-->
									</tr>
									<tr>
										<td>실무앱 적용</td>
										<td style="text-align:left;">1.Tab Pager UI,<br/>2.ListView 활용, <br/>3.JSON 데이터 요청과 처리</td>
										<td style="text-align:left;">1. 상용 앱에 자주 쓰이는 탭/페이저 UI구현<br/>2. 탭/페이저에 ListView 바인딩<br/>3. ListView Adaper 구현<br/>4. 웹 서버와 데이터 통신에 필요한 주요 개념 및 주요 라이브러리 사용법 </td>
										<!--<td>12</td>-->
									</tr>
								</tbody>
							</table>
							<p class="blueTxt mar_t10">* 상기과정은 인원 미달시 변경 또는 폐강 될 수 있음을 알려드립니다. </p>
							<p class="mar_t10"><span class="fb">문의</span> : 02.3486.1421 (e-mail : kimyj0723@bit.kr)</span></p>
						</div>
						<!-- //con_wrap -->
						
<!------------------------------------------ FROM HERE : [MODULE] 수강평(CourseReview) --------------------------------------------------------->
						<%
							''Response.write(sql)
							'Set Rs = Dbcon.Execute(sql)
							'set rs = server.CreateObject("adodb.recordset") 
						'	
						'	Count = 0
						'	if Rs.eof = false then
						'		Count = Rs(0)
						'	End IF
						%>	

							
						<!-- con_wrap -->
						<style>
							.myTable {
								width:85%;
								border-top:2px solid #37379f;
								border-bottom:2px solid #37379f;
							} /* margin-left:5%; */
							.myTable th {
								border-bottom:1px solid #37379f;
								background-color:#d6e2f5;
							}
							.myTable tr.trCourseReview_Content {
								background-color:#f9f9f9;
								border-top:none;
							}
							.myTable td {
								border-bottom:1px solid #d3d3ef;
							}
						</style>
						<div class="con_wrap">
							<h5>수강평</h5>
							
							<!-- Write my CourseReview -->
								<%
								Studid = TRIM(session("Studid"))
								if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
								else
									sql="SELECT LoginID, NameHan FROM db_bit.dbo.Member WHERE studid=" & studid
									Set Rs = Dbcon.Execute(sql)
									if not Rs.EOF then										
										LoginID = Rs("LoginID")
										NameHan = Rs("NameHan")
									end if
									Rs.Close
								end if
								%>
							
								<%
									'IF DateDiff("y",InputStartDate,Date)>=0 AND DateDiff("y",Date,InputEndDate)>=0 AND Status="open" THEN			'강의평가입력기간임
									
									sql="SELECT * FROM db_bit.dbo.Lesson_CourseReview_Ongoing_Member WHERE CourseID='"&CourseID&"' AND LoginID='"&LoginID&"' AND Status='open'"
									Set Rs = Dbcon.Execute(sql)
									IF not Rs.EOF THEN
										Response.Write "<div style='width:85%; margin:0.5em 0 2em -0.5em;  background-color:#ffffef; padding:0.5em; box-shadow:3px 3px 8px #373737;'>"&_
														"<div style='color:#37377f;'>" & NameHan & "(" & LoginID & ") 님, 수강평을 작성해주세요.</div>"&_
														"<form method='post' action='Common_InputCourseReview_Complete.asp' name='Form1' onSubmit='checkForm(); return false;'>"&_
														"	<input type='hidden' name='LoginID' value='"&LoginID&"'/>"&_
														"	<input type='hidden' name='CourseID' value='"&CourseID&"'/>"&_
														"	<input type='hidden' name='NameHan' value='"&NameHan&"'/>"&_
														"	<input type='hidden' name='InputDate' value='"&Date&"'/>"&_
														"	<input id='inputNRate' type='hidden' name='nRate' />"&_
														"	<table class='myTable' style='width:100%; margin-left:0;'>"&_
														"		<colgroup>"&_
														"			<col style='width:15%;'>"&_
														"			<col style='width:85%;'>"&_
														"		</colgroup>"&_
														"		<tbody>"&_
														"			<tr>"&_
														"				<th>종합평가</th>"&_
														"				<td style='padding-left:1em; background-color:#fff;'>"&_
														"					<input id='score5' type='radio' value='5' class='radioStar' name='radioStar'>"&_
														"					<label for='score5'><img src='/Images/Common/icn_stars_05_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score4' type='radio' value='4' class='radioStar' name='radioStar'>"&_
														"					<label for='score4'><img src='/Images/Common/icn_stars_04_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score3' type='radio' value='3' class='radioStar' name='radioStar'>"&_
														"					<label for='score3'><img src='/Images/Common/icn_stars_03_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score2' type='radio' value='2' class='radioStar' name='radioStar'>"&_
														"					<label for='score2'><img src='/Images/Common/icn_stars_02_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score1' type='radio' value='1' class='radioStar' name='radioStar'>"&_
														"					<label for='score1'><img src='/Images/Common/icn_stars_01_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"					<input id='score0' type='radio' value='0' class='radioStar' name='radioStar'>"&_
														"					<label for='score0'><img src='/Images/Common/icn_stars_00_595by100.png' style='width:70px; margin-right:1em; margin-left:-0.5em; margin-top:-0.25em;'/></label>"&_
														"				</td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>제목</th>"&_
														"				<td><input type='text' name='Subject' style='width:98%;' REQUIRED/></td>"&_
														"			</tr>"&_
														"			<tr>"&_
														"				<th>내용</th>"&_
														"				<td><textarea name='Content' style='width:100%;' rows='10' REQUIRED></textarea></td>"&_
														"			</tr>"&_
														"		</tbody>"&_
														"	</table>"&_
														"	<input type='submit' class='btn mid red' value='작성완료' style='float:right; margin-top:5px;'/>"&_
														"	<div style='clear:both;'></div>"&_
														"</form>"&_
														"</div><!--//Write my CourseReview -->"
									END IF
								%>
								
								
						
						
							<%
								'//Preparation for a paging.
								page = Request.QueryString("page")
								IF IsNull(page) OR page=0 THEN
									page = "1"
								END IF
								
								set Rs = server.CreateObject("adodb.recordset") 
								sql = "SELECT * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
								Rs.PageSize = 5 '페이지의 사이즈를 정함 ...반드시 레크드셋오픈전에 지정해주어야 한다.
								Rs.Open sql, oConn, 1 '레코드 커서 타입(1)을 지정해 주어야 한다. 만일 지정이 안되면 페이징이 안된대.

								IF NOT Rs.EOF THEN
									totalpage =Rs.PageCount 
									Rs.AbsolutePage = page
									Count = Rs.RecordCount 
								ELSE
									Count = 0
								END IF
								
								'Response.Write "totalpage = " & totalpage & "<br/>"
								'Response.Write "Count = " & Count & "<br/>"
								'Response.end
								
							%>
							<%
								IF Count>0 THEN
							%>
							<div style="float:right; margin-right:15%;">총 <span style="color:#3737FF;"><b><%=Count%></b></span> 개의 수강평이 있습니다.</div>
							<%
								END IF
							%>
							<div style="clear:both;"></div>
							
							<table class="myTable">
								<colgroup>
									<col style="width:30%;">
									<col style="width:10%;">
									<col style="width:6%;">
									<col style="width:4%;">
								</colgroup>
								<tbody>
									<tr>
										<th>제목</th>
										<th>글쓴이</th>
										<th>등록일</th>
										<th>종합평가</th>
									</tr>
									<%
									'	sql = "SELECT TOP " & pageSize & " * FROM db_bit.dbo.Lesson_CourseReview_FormFilled WHERE CourseID='"& CourseID &"' ORDER BY idx DESC"
									'	'Response.write(sql)
									'	Set Rs = Dbcon.Execute(sql)
									
										IF Count = 0 Then
									%>
									<tr>
										<td colspan="4" style="text-align:center;">등록된 수강평이 없습니다.</td>
									</tr>
									<%
										ELSE
											FOR i=1 TO Rs.PageSize STEP 1
												IF NOT Rs.EOF THEN

													NameHan_LoginID = Left(Rs("NameHan"),2)&"**("&Left(Rs("LoginID"),4)&"****)"
													Content = Rs("Content")
													IF IsNull(Content) THEN
														Content = ""
													END IF
									%>
									<tr>
										<td style="text-align:left; padding-left:1em; cursor:pointer;"><a class="courseReview_Subject" idx="<%=Rs("idx")%>" style="color:#000;"><%=Rs("Subject")%></a></td>
										<td style="text-align:center;"><%=nameHan_LoginID%></td>
										<td style="text-align:center;"><%=Rs("InputDate")%></td>
										<td style="text-align:center;"><img src="/Images/Common/icn_stars_0<%=Rs("nRate")%>_595by100.png" style="width:80px;"/></td>
									</tr>
									<tr id="trCourseReview_Content<%=Rs("idx")%>" class="trCourseReview_Content" style="DISPLAY:NONE;">
										<td colspan="4">
											<%=replace(Content, chr(13), "<br/>") %>
										</td>
									</tr>
									<%
													Rs.moveNext
												END IF
											NEXT
										END IF 
									%>
								</tbody>
							</table>

							<!-- Paging -->
							<%
								Dim pagingStartNum 
								Dim pagingEndNum
								Dim pagingPrevNum
								Dim pagingNextNum
								
								pagingStartNum = page - (page mod Rs.PageSize) + 1
								pagingEndNum = page - (page mod Rs.PageSize) + 10
								IF (page mod Rs.PageSize) = 0 THEN
									pagingStartNum = PagingStartNum - Rs.PageSize
									pagingEndNum = PagingEndNum - Rs.PageSize
								END IF
								IF pagingEndNum > totalpage THEN
									pagingEndNum = totalpage
								END IF
								
								pagingPrevNum = pagingStartNum - 10
								pagingNextNum = pagingStartNum + 10
								IF pagingPrevNum < 1 THEN
									pagingPrevNum = 1
								END IF
								IF pagingNextNum > totalpage THEN
									pagingNextNum = totalpage - (totalpage mod Rs.PageSize) + 1
								END IF
								
							%>
							<style>
								.pagingButton {
									float:left;
									font-size:0.9em;
									border:1px solid #c9c9c9;
									border-radius:1px;
									margin-left:-1px;
									width:1.9em;
									height:1.8em;
									padding-top:0.2em;
									cursor:pointer;
								}
							</style>
							<%
								IF Count>0 THEN
							%>
							<div style="text-align:center; margin:1em 1.25em 1em 15.25em; font-weight:800; font-size:1.25em;"> 
								<a href="Course_androidR.asp?page=<%=pagingPrevNum %>" ><div class="pagingButton"><</div></a>
								<%
									FOR i=pagingStartNum TO pagingEndNum STEP 1
								%>
									<%
										IF Cint(page) = Cint(i) THEN
									%>
											<div class="pagingButton" style="background-color:#ffffa6; color:red;" ><%=i %></div> 
									<%
										ELSE
									%>
											<a href="Course_androidR.asp?page=<%=i %>" ><div class="pagingButton" ><%=i %></div></a>
									<%
										END IF
									%>
								<%
									NEXT
								%>
								<a href="Course_androidR.asp?page=<%=pagingNextNum %>" ><div  class="pagingButton" >></div></a>
								<div style="clear:both; "></div>
							</div>			
							<%
								END IF
							%>
								
						</div>
						<!-- //con_wrap -->						
<!------------------------------------------ //UNTIL HERE : [MODULE] 수강평(CourseReview) --------------------------------------------------------->
						
						
						<!-- con_wrap -->
						<div class="btn_wrap c">
							<a href="/Register/Request/register_shortCourse.asp?cID=Android1_core" class="btn mid green1">지원하기</a>
						</div>
					</section>
				</div>
				<a href="#this" class="moveTop">Top</a>
				<!-- // Content -->
			</div>
			<!-- //Content_Wrap -->
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>