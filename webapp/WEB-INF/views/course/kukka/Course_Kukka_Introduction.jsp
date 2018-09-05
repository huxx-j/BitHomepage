<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
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

            $(".snb_1709 a.newdepth1").eq(1).addClass("on");		// 국가기간전략산업직종 ON
            $(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");	// 국가기간전략산업직종 SUB - OPEN
            $(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(0).addClass("on");  	// 국가기간전략산업직종 소개 ON
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
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>

<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual="/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->
    <hr>
    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_CourseSupport_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_CourseSupport_1709.jsp"/>
            <!-- //SNB_Wrap-->
            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p style="letter-spacing:-1px;">
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>무료취업과정
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>국가기간전략산업직종
                    </p>
                    <h4 style="float:left; letter-spacing:0px;" >국가기간전략산업직종훈련 소개</h4>
                    <div style="clear:both;"></div>
                </div>

                <style>
                    .con_wrap1709 .box {
                        border:1px solid #000;
                        padding:5px;
                    }
                </style>
                <section>
                    <div class="con_wrap1709 first">
                        <h5>1.  국가기간 전략산업직종 훈련이란?</h5>
                        <p class="box">국가기간산업이나 국가전략산업 중 인력부족 직종과 산업현장의 인력수요 증대에 따라 부족한 인력을 양성하기 위하여 고용노동부가 실시하는 훈련제도 입니다.</p>
                    </div>

                    <div class="con_wrap1709">
                        <h5>2.  교육 대상</h5>
                        <ul class="pd_l5 box">
                            <li>- 고용센터 등에 구직신청을 한 15세 이상 실업자</li>
                            <li>- 고등학교 3학년 재학생으로서 고등교육기관에 진학하지 않는 학생</li>
                            <li>- 대학교 최종학년 재학생으로 다음연도 9월 1일 이전 졸업예정인 취업희망자</li>
                        </ul>
                    </div>

                    <div class="con_wrap1709">
                        <h5>3.  지원 내용</h5>
                        <ul class="pd_15 box">
                            <li>- 훈련비 전액 지원 (계좌발급일로부터 1년간 계좌한도를 초과하여 지원)</li>
                            <li>- 훈련과정 수강 중 취·창업한 사람이 해당과정을 계속 수강하는 경우에는 훈련비 계속 지원 <br/>&nbsp; (다만, 훈련장려금은 취·창업한 날부터 지원하지 않음)</li>
                            <li>- 수료 후 기업 채용연계 및 취업 지원</li>
                            <li>- 수업 종료 후 강의장 이용 가능</li>
                        </ul>
                    </div>

                    <style>
                        table th, table td {
                            text-align:center;
                        }
                    </style>
                    <div class="con_wrap1709">
                        <h5>4.  훈련 수당</h5>
                        <div class="divTable">
                            <table>
                                <tr>
                                    <th>구분</th>
                                    <th>지급기준</th>
                                </tr>
                                <tr>
                                    <td>일반/대학생</td>
                                    <td>출석일수 × 10천원 (월 20만원한도)</td>
                                </tr>
                                <tr>
                                    <td>고등학교 3학년</td>
                                    <td>출석일수 × 5천원 (월 10만원한도)</td>
                                </tr>
                                <tr>
                                    <td>취업성공패키지(6개월)</td>
                                    <td>출석일수 × 15천원 (월 30만원한도)</td>
                                </tr>
                            </table>
                        </div>
                        <ul class="pd_15 mar_t10">
                            <li>
                                - 단위기간(1개월)별 소정훈련일수의 80% 이상을 출석한 경우에만 지급 가능<br/>
                                &nbsp; &nbsp; : 월 최대 316,000원 훈련장려금 지급<br/>
                                &nbsp; &nbsp; (취성패 이용시 월 최대 416,000원)
                            </li>
                        </ul>
                    </div>

                    <div class="con_wrap1709">
                        <h5>5. 수강신청 프로세스</h5>
                        <div class="divTable">
                            <table class="padding2px">
                                <colgroup>
                                    <col style="width:23%;">
                                    <col style="width:20%;">
                                    <col style="width:17%;">
                                    <col style="width:20%;">
                                    <col style="width:20%;">
                                </colgroup>
                                <tr>
                                    <th>지원하기</th>
                                    <th>실력은 어느 정도일까?</th>
                                    <th>준비서류</th>
                                    <th>내일배움카드 발급</th>
                                    <th>개강</th>
                                </tr>
                                <tr>
                                    <td>비트교육센터 온라인 수강신청<br/>(www.bitacademy.com)</td>
                                    <td>레벨테스트 진행<br/>평일 오전 10시, 오후 2시<br/>* 객관식 10문제</td>
                                    <td>
                                        1. 고용노동부 워크넷(<a href="http://work.go.kr" target="_blank">work.go.kr</a>) 구직신청하기<br/>
                                        2. 직업능력 지식포털(<a href="http://hrd.go.kr" target="_blank">hrd.go.kr</a>) 회원가입 및 국가기간전략산업 직종훈련 동영상 시청
                                    </td>
                                    <td>관할 고용센터 방문 후 실업자용 내일배움카드 신청<br/>(최소 2주~4주 소요)</td>
                                    <td>카드발급 후<br/>훈련생 등록 및 수강 확정</td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <div class="con_wrap1709">
                        <h5>6. 교육 문의</h5>
                        <p>비트교육센터 02-3486-3456<br/>카카오톡(ID:비트교육센터)</p>
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
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>