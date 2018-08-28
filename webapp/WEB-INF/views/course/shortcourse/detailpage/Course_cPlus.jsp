<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--<%--%>
	<%--Session.CodePage  = 949 '한글--%>
	<%--Response.CharSet  = "euc-kr" '한글--%>
<%--%>--%>

<%--<%--%>
	<%--CourseID = "CP2_core"--%>
	<%--'//SubjectName = "C++ Programming"--%>
	<%--' C++ Programming--%>
<%--%>--%>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<c:import url="/WEB-INF/views/Include/Meta.jsp"/>
	<title>비트교육센터</title>
	<!--#include virtual="/Include/config.asp"-->

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
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            /********************* 고용보험환급 div, btn 관련. *******************************************************/
            $("#btnOpenSaGn1").on("click", function(event) {
                var height = document.body.scrollHeight * 1.0;
                $( 'html, body' ).stop().animate( { scrollTop : height }, 100, function() { } );

                //$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
                setTimeout(function() {
                    $("#divSa").slideDown("slow", "easeOutQuint", function() {});
                    $("#divGn").slideDown("slow", "easeOutQuint", function() {});
                }, 100);
                $("#divBtnOpenSaGn2").css("display","none");
                $("#imgBtnClose").css("display","block");
                event.stopPropagation();
                event.preventDefault();
            })

            $("#btnOpenSaGn2").on("click", function(event) {
                //$(".newdepth3_wrap."+nox).slideDown("slow", "easeOutQuint", function() {	$(".newdepth3_wrap."+nox).addClass("on"); });
                $("#divSa").slideDown("slow", "easeOutQuint", function() {});
                $("#divGn").slideDown("slow", "easeOutQuint", function() {});
                $("#divBtnOpenSaGn2").css("display","none");
                $("#imgBtnClose").css("display","block");
                event.stopPropagation();
                event.preventDefault();
            })

            $("#imgBtnClose").on("click", function(event) {
                $("#imgBtnClose").css("display","none");
                $("#divSa").slideUp("fast", "easeOutQuint", function() {});
                $("#divGn").slideUp("fast", "easeOutQuint", function() {$("#divBtnOpenSaGn2").css("display","block");});

            })
            /*********************************************************************************************************/
            /*
            $("#btnOpenSa").on("click", function() {
                $("#divSa").show();
                $("#btnOpenSa").animate({opacity:0.01},300,function() { })
            })
            $("#btnOpenGn").on("click", function() {
                $("#divGn").show();
                $("#btnOpenGn").animate({opacity:0.01},300,function() { })
            })
            */

            //방특 $(".snb_1709 a.newdepth1").eq(6).addClass("on");								// 방학특강 - C++ 프로그래밍

            ajaxLoad('#TabCon', '', '/Common/Tab/Language_SupportInfo_01.asp');
            ajaxLoad('#TabCon2', '', '/Common/Tab/Language_SupportInfo_02.asp');

            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Programming
            $(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// Programming - OPEN
            $(".snb_1709 .newdepth2_wrap.no1").find("li a").eq(0).addClass("on");  		// [서울] 비트교육센터 ON
            $(".snb_1709 .newdepth3_wrap.no1").addClass("on").css('display','block');	// [서울] 비트교육센터 SUB - OPEN
            $(".snb_1709 .newdepth3.newwrap.no3").addClass("on").removeClass("plus").addClass("minus");	// C++ 프로그래밍 ON
            $(".snb_1709 .newdepth4_wrap.no3").addClass("on").css('display','block');	// C++ 프로그래밍 SUB - OPEN
            $(".snb_1709 .newdepth4_wrap.no3 li:eq(0) a").addClass("on");				// 주중반 ON

        })

	</script>
	<script language="javascript">
        /*******
         var uAgent = navigator.userAgent.toLowerCase();

         var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
         //alert( uAgent );
         for (var i = 0; i < mobilePhones.length; i++)
         if (uAgent.indexOf(mobilePhones[i]) > -1)
         document.location = "http://www.bitacademy.com/Course/ShortCourse/DetailPage/M/Course_cPlus.asp";
         ***********/
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
						<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>[서울]비트교육센터
						<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>C++ 프로그래밍
						<img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>주중반
					</p>
					<h4>[주중반] C++ 프로그래밍</h4>
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
									<th>교육기간</th>
									<td class="long">
										<!-- #include virtual="/Include/CourseDateTime/Date/Date__CP2_core.inc" -->
										<!--
                                        2017.12.18 ~ 2018.1.16 <span class='greenTxt'>(저녁반)</span>
                                        -->
									</td>
									<th>강의시간</th>
									<td class="long">
										<!-- #include virtual="/Include/CourseDateTime/Time/Time__CP2_core.inc" -->
										<!--
                                        저녁반 19:00 ~ 22:00 (3시간/총 60시간)
                                        -->
									</td>
								</tr>
								<tr>
									<th>교육비용</th>
									<td>
										394,440원<br/>
										<span>* 27,000원 상당 시중교재 제공</span>
									</td>
									<th>교육비지원</th>
									<td>고용보험 비환급 <!--<a href="#" id="btnOpenSaGn1" class="btnBlueBorder">자세히보기</a>--></td>
								</tr>
								<tr>
									<th>교육정원</th>
									<td>30명</td>
									<th>문의</th>
									<td>02-3486-1780 &nbsp;(<a href="mailto:kang.i.y@bit.kr" class="email">kang.i.y@bit.kr</a>)</td>
								</tr>
								</tbody>
							</table>
							<!-- 수강신청btn -->
							<%--<a href="/Register/Request/register_shortCourse.asp?cID=<%=CourseID%>" title="수강신청" style="float:right; margin:12px 0;" class="btnApply">--%>
								<%--<img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_ApplyCourse.png"/>--%>
							<%--</a>--%>
							<div style="clear;both; height:10px;"></div>
						</div>
					</div>
					<!-- //con_wrap1709 -->

					<div style="clear:both;"></div>

					<!-- con_wrap1709 -->
					<div class="con_wrap1709">
						<h5>교육소개</h5>
						<p>본 과정은 소프트웨어 공학 원리 중 객체 지향 개발 방법론을 적용하여, C++언어를 통한 객체지향 프로그래밍 기법을 익히고, 클래스 라이브러리 구축 및 객체 지향 소프트웨어를 작성할 수 있도록 구성하여 C++ 프로그래밍과 UML을 활용한 실습 위주의 교육을 통해 실무 프로젝트에 대한 적응력을 향상시킬 수 있도록 구성되어 있습니다.</p>
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
							<!--<li>시나리오를 통해 각 개발 공정에서 해야 할 일들이 무엇이고 어떻게 해 나가야 하는지를 실습 위주의 강의로 진행 (이론 : 실습 = 3 : 7)</li>-->
						</ul>
					</div>
					<!-- //con_wrap1709 -->

					<!-- con_wrap1709 -->
					<div class="con_wrap1709">
						<div style="float:left; width:180px;">
							<h5>교재 제공</h5>
							<img src="${pageContext.request.contextPath}/assets/Images/Content/img_BookCover_PassionOfCpp.jpg" style="margin-left:15px; width:160px;"/>
						</div>
						<div style="float:left; width:250px; margin-top:27px; margin-left:15px;">
							<p style="margin-top:203px;">
								열혈 C++ 프로그래밍 <br/>윤성우 저 / 오렌지미디어
							</p>
						</div>
						<div style="clear:both;"></div>
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
						<!-- 폐강안내 문구 -->
						<div style="float:right; margin-top:18px; font-size:15px;">
							<p>※ 교육인원 미달 시 일정 변경 또는 폐강될 수 있음</p>
						</div>
						<div style="clear:both;"></div>

						<!--<p class="mar_t10"><span class="fb">문의</span> : 02.3486.3456 &nbsp;(kang.i.y@bit.kr)</p>-->
					</div>

					<!-- con_wrap1709 고용보험환급 -->
					<div class="con_wrap1709 dnone">
						<h5 style="float:left;">고용보험 환급 </h5>
						<div id="divBtnOpenSaGn2" style="float:left; margin-top:47px; margin-left:7px;"><a href="#" id="btnOpenSaGn2" class="btnBlueBorder">자세히보기</a></div>
						<div style="float:right; margin-top:22px; margin-right:3px;"><img id="imgBtnClose" src="${pageContext.request.contextPath}/assets/Images/Common/ico_Close_98_128.png" style="width:16px; display:none;"/></div>
						<div style="clear:both;"></div>

						<div id="divSa" style="DISPLAY:NONE; " class="con_wrap1709ul">
							<h5>사업주 위탁훈련</h5>
							<p>사업주가 훈련비용을 부담하여 재직근로자 대상으로 직무향상을 지원하는 제도</p>

							<h5>지원대상</h5>
							<p>- 고용보험에 가입한 사업주로서 소속근로자에게 사전에 고용노동부 장관으로부터 과정인정을 받아 교육훈련을 직접 또는 위탁하여 실시하는 사업주</p>

							<h5>훈련대상</h5>
							<p>- 고용보험 피보험자</p>
							<p>- 고용보험 피보험자가 아닌 자로서 해당 사업주에게 고용된 자</p>
							<p>- 해당 사업이나 그 사업과 관련되는 사업에서 고용하려는 자(채용예정자)</p>
							<p>- 직업안정기구에 구직 등록한 자</p>

							<div style="text-align:center;">
								<a href="/Upload/company2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">사업주 위탁훈련 신청서류 다운로드</a>
								<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
							</div>

							<div class="divTable">
								<table>
									<colgroup>
										<col style="width:16%">
										<col style="width:28%">
										<col style="width:8%">
										<col style="width:8%">
										<col style="width:11%">
										<col style="width:8%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
									<tr>
										<th>지원대상 분류</th>
										<th>상시근로자 수</th>
										<th>교육비</th>
										<th>환급금</th>
										<th>기업부담금</th>
										<th>환급비율</th>
										<!--<th>환급금내용 자세히보기</th>-->
									</tr>
									<tr>
										<td rowspan="2">우선지원대상기업<br/>(중소기업)</td>
										<td>50명 미만</td>
										<td rowspan="4">394,440</td>
										<td>394,440</td>
										<td class="redTxt" style="font-weight:900;">없음</td>
										<td>100%</td>
										<!--<td rowspan="4"></td>-->
									</tr>
									<tr>
										<td>50명 이상</td>
										<!--<td>314,899</td>-->
										<td>354,990</td>
										<td>39,450</td>
										<td>90%</td>
									</tr>
									<tr>
										<td rowspan="2">중견 또는 대기업</td>
										<td>1,000명 미만</td>
										<td>236,660</td>
										<td>157,780</td>
										<td>60%</td>
									</tr>
									<tr>
										<td>1,000명 이상</td>
										<td>157,770</td>
										<td>236,670</td>
										<td>40%</td>
									</tr>
									</tbody>
								</table>
							</div>
							<!--<span class="redTxt">※ 사업주위탁훈련인 경우 교육비를 350,000원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다</span><br/>-->
							<span class="redTxt"> ※ 사업주위탁훈련인 경우 교육비를 394,440원 납부하고, 출석률 80% 이상인 경우 환급금을 되돌려 받을 수 있습니다.</span><br/>
							<span class="redTxt"> ※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다.</span><br/>
						</div>

						<div id="divGn" style="DISPLAY:NONE;" class="con_wrap1709ul">
							<h5>근로자 직무능력향상지원</h5>
							<p>고용보험이 납부되는 재직자 개인이 <b>'재직자 내일배움카드'</b>를 발급받아 수강료 지원을 받는 제도</p>

							<h5>지원대상</h5>
							<p>- 우선지원 대상자 근로자, 고용보험 임의가입 자영업자, 기간제 근로자, 단시간 근로자, 파견 근로자, 일용 근로자</p>

							<h5>지원내용</h5>
							<p>지원한도금액은 1인당 년간 200만원 한도 내에서 훈련과정에 따라 60~100% 지원</p>

							<div style="text-align:center;">
								<a href="/Upload/employ2.zip" class="mar_l10 btnBlueBorder" style="margin:10px auto;">근로자 직무능력향상지원 신청서류 다운로드</a>
								<p style="font-size:1em !important; margin-top:-10px; margin-bottom:10px; ">※ 신청서류 작성 후 kang.i.y@bit.kr로 보내주시기 바랍니다.</p>
							</div>
							<div class="divTable">
								<table>
									<colgroup>
										<!--
                                        <col style="width:20%">
                                        <col style="width:34%">
                                        <col style="width:8%">
                                        <col style="width:10%">
                                        <col style="width:10%">
                                        <col style="width:18%">-->
										<col style="width:16%">
										<col style="width:34%">
										<col style="width:8%">
										<col style="width:12%">
										<col style="width:10%">
										<!--<col style="width:21%">-->
									</colgroup>
									<tbody style="text-align:center;">
									<tr>
										<th>지원대상 분류</th>
										<th>대상</th>
										<th>교육비</th>
										<th>개인부담금</th>
										<th>자부담비율</th>
										<!--<th>환급금내용 자세히보기</th>-->
									</tr>
									<tr>
										<td rowspan="4">우선지원대상기업<br/>(중소기업)</td>
										<td>비정규직</td>
										<td rowspan="9">394,440</td>
										<td class="redTxt" style="font-weight:900;">없음</td>
										<td rowspan="4">0%</td>
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
										<td class="redTxt" style="font-weight:900;">없음</td>
									</tr>
									<tr>
										<td rowspan="5">중견 또는 대기업</td>
										<td>비정규직</td>
										<td class="redTxt" style="font-weight:900;">없음</td>
										<td>0%</td>
									</tr>
									<tr>
										<td>이직 예정자</td>
										<td>78,880</td>
										<td>20%</td>
									</tr>
									<tr>
										<td>무급 휴직자</td>
										<td class="redTxt" style="font-weight:900;">없음</td>
										<td>0%</td>
									</tr>
									<tr>
										<td>정규직(50세이상)</td>
										<td>78,880</td>
										<td>20%</td>
									</tr>
									<tr>
										<td>3년간 미참여자<br/>(3년간 근로자직무능력향상교육 미교육자)</td>
										<td>78,880</td>
										<td>20%</td>
									</tr>
									</tbody>
								</table>
							</div>
							<!--
                            <span class="redTxt">※ 근로자 직무능력향상지원(카드발급 대상자)는 개인부담금 70,000원을 납부합니다</span><br/>
                            <span class="redTxt">※ 일반인(실업자 또는 재학생)은 교육비 전액 개인 부담입니다</span>
                            -->
						</div>
					</div>
					<!-- //con_wrap1709 고용보험환급 -->

					<!--<a href="/Register/Request/register_shortCourse.asp?cID=CP2_core" class="btn mid green1">지원하기</a>-->
					<!--<a href="/Register/Request/register_shortCourse.asp?cID=cppVacation" class="btn mid green1">지원하기</a>-->
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