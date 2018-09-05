<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");								// BSPM (BIT Software Programming Master) 자격증 ON

            ajaxLoad('#ConDetail', '', './CProgrammingMaster_Acceptance');
            ajaxLoad('#ConDetailInfo', '', './CProgrammingMaster_Details');

        });
    </script>
    <script language="javascript">

    </script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/CSS/Base2017Webfont.css"/>

    <style>
        .boxShadow { box-shadow:2px 2px 8px; }
    </style>

    <style type="text/css">
        .divCompany {
            height:70px;
            width:90px;
            /* margin:1px 1px 0px 0px; */
            padding:5px;
            text-align:center;
            border:1px solid #afafaf;
            box-shadow:1px 1px 1px #7f7f7f;
            font-weight:600;
            float:left;
        } /* margin:5px 4px 3px 3px; box-shadow:1px 1px 3px #7f7f7f;*/
        .divCompany div {
            height:46px;

        }
        .darkgreyTxt { color:darkgrey !important; }

    </style>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_CourseLicense_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_CourseLicense_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>비트 SW 자격증
                    </p>
                    <h4 style="letter-spacing:-2px;">BSPM <span style="font-size:0.9em;">(BIT Software Programming Master)</span> 자격증</h4>
                </div>

                <section class="section" >
                    <div class="con_wrap1709">
                        <h5>"나, 프로그래밍 좀 한다!" 라고 생각하시나요?</h5>
                        <p>
                            최근 청년실업률이 가파르게 상승하여 10%에 육박(<a href="http://www.index.go.kr/potal/main/EachDtlPageDetail.do?idx_cd=1495" target="_blank" style="font-size:0.9em; color:#1357a9; font-weight:600;"><u>통계청「경제활동인구조사」2017 - 청년고용동향</u></a>) 하는 등 실력이 충분한 사람들조차 구직난을 경험하고 있는 상황에서, 기업들은 '뽑을 인재가 없다' 고 하소연하며 구인난을 이야기하고 있습니다.
                        </p>
                    </div>
                    <div class="con_wrap1709">
                        <h5>도전해 보세요!</h5>
                        <p>
                            실력을 증명할 수 있다면, 준비된 여러분에게 취업의 문은 훨씬 더 넓어집니다.
                        </p>
                    </div>

                    <div class="con_wrap1709">
                        <h5>BSPM 이란 ?</h5>
                        <p class="mar_b10">
                            <span class="blueTxt boldTxt">BSPM</span> 이란, 2016년부터 <span class="blueTxt boldTxt">비트교육센터</span>가 시행하고 있는 자격시험에서 합격하신 분들에게 발급해 드리는 <b>프로그래밍 자격증</b>으로서, 자격기본법 제17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에 등록된 민간자격증입니다.
                        </p>
                        <p class="mar_b10">
                            이 자격증을 취득하시는 분은, 비트가 인정하는 전문가 레벨의 프로그래밍 실력을 갖추었고 따라서 수준 높은 응용 프로그램을 개발할 수 있음을 객관적으로 증명하실 수 있고, 비트교육센터와 협약을 맺고 있는 기업들<span style="font-size:0.8em;">(아래 비트 SW 자격증 우대 협약기업 참조)</span>에 지원하실 경우 가산점을 적용 받는 등 적극적인 우대 혜택을 받으실 수 있습니다.
                        </p>
                    </div>

                    <div class="con_wrap1709">
                        <div class="divTable">
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:30%">
                                    <col style="width:50%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col">구분</th>
                                    <th scope="col">한글자격증 명칭</th>
                                    <th scope="col">영문 명칭</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="darker c" rowspan="2">BSPM</td>
                                    <td class="darker c" >C프로그래밍 마스터</td>
                                    <td>BCCPM (BIT Certified C Programming Master)</td>
                                </tr>
                                <tr>
                                    <td class="darker c" >JAVA프로그래밍 마스터</td>
                                    <td>BCJPM (BIT Certified JAVA Programming Master)</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                    <div class="con_wrap1709">
                        <h5>2018년 BSPM 자격증 일정</h5>
                        <div class="divTable">
                            <table>
                                <colgroup>
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:17%">
                                    <col style="width:17%">
                                    <col style="width:17%">
                                    <col style="width:17%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th class="darkgreyTxt">16회차</th>
                                    <th class="darkgreyTxt">17회차</th>
                                    <th class="darkgreyTxt">18회차</th>
                                    <th class="darkgreyTxt">19회차</th>
                                    <th class="darkgreyTxt">20회차</th>
                                    <th class="darkgreyTxt">21회차</th>
                                </tr>
                                <tr>
                                    <td class="darkgreyTxt c">1/27</td>
                                    <td class="darkgreyTxt c">2/24</td>
                                    <td class="darkgreyTxt c">3/31</td>
                                    <td class="darkgreyTxt c">4/28</td>
                                    <td class="darkgreyTxt c">5/26</td>
                                    <td class="darkgreyTxt c">6/30</td>
                                </tr>
                                <tr>
                                    <th class="darkgreyTxt">22회차</th>
                                    <th>23회차</th>
                                    <th>24회차</th>
                                    <th>25회차</th>
                                    <th>26회차</th>
                                    <th>27회차</th>
                                </tr>
                                <tr>
                                    <td class="darkgreyTxt c">7/28</td>
                                    <td class="c">8/25</td>
                                    <td class="c">9/29</td>
                                    <td class="c">10/27</td>
                                    <td class="c">11/24</td>
                                    <td class="c">12/29</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <p>
                            <!-- DEPRECATED ::  # i n clude virtual="/Include/CourseDateTime/Date/Date__CP_Master(Common).inc" -->
                            <!--
                            19회차 : 2018.4.28(토) 오전 10:00
                            20회차 : 2018.5.26(토) 오전 10:00
                            21회차 : 2018.6.30(토) 오전 10:00
                            -->
                        </p>
                        <%--<%--%>
                            <%--'							<!--18회차 : 2018.3.31(토) 오전 10:00-->--%>
                            <%--'							<!-- 17회차 : 2018.2.24(토) 오전 10:00-->--%>
                            <%--'							<!-- 16회차 : 2018.1.27(토) 오전 10:00<br/> -->--%>
                            <%--'							<!--<li>15회차 : 2017.12.30(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>14회차 : 2017.11.25(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>13회차 : 2017.10.28(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>12회차 : 2017.09.30(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>11회차 : 2017.08.26(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>10회차 : 2017.07.29(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>9회차 : 2017.06.24(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>8회차 : 2017.05.27(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>7회차 : 2017.04.29(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>6회차 : 2017.03.25(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>5회차 : 2017.02.25(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>4회차 : 2017.01.21(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>3회차 : 2016.12.24(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>2회차 : 2016.11.26(토) 오전 10:00</li>-->--%>
                            <%--'							<!--<li>2016.10.29(토) 오전 10:00</li>-->--%>
                            <%--'--%>
                            <%--'							<!----%>
                            <%--'							<h5>시험일정 (2018)</h5>--%>
                            <%--'							<table class="table_col_type1 tableSchedule">--%>
                            <%--'								<tr>--%>
                            <%--'									--%>
                            <%--'								</tr>--%>
                            <%--'								<tr>--%>
                            <%--'									<td>22회차 : 7월 28일(토)</td>--%>
                            <%--'									<td>23회차 : 8월 25일(토)</td>--%>
                            <%--'									<td>24회차 : 9월 29일(토)</td>--%>
                            <%--'									<td>25회차 : 10월 27일(토)</td>--%>
                            <%--'									<td>26회차 : 11월 24일(토)</td>--%>
                            <%--'									<td>27회차 : 12월 29일(토)</td>--%>
                            <%--'								</tr>--%>
                            <%--'							</table>--%>
                            <%--'							-->--%>
                        <%--%>--%>
                    </div>
                    <div class="con_wrap1709">
                        <h5>시험 장소</h5>
                        <p>
                            서울 서초구 서초대로 74길 비트빌 3층, 비트교육센터
                        </p>
                    </div>

                    <div class="con_wrap1709">

                        <!-- BSPM Companies -->
                        <!--#include virtual="/Course/License/Common_LicenseCompanies.inc" -->
                        <c:import url="./Common_LicenseCompanies.jsp"/>

                        <h5>비트 SW 자격증 우대 협약기업 (총 83개 기업)</h5>
                        <div  id = "company-list" style="margin-left:0px;">

                        </div>
                        <div style="clear:both;"></div>
                    </div>


                    <div class="con_wrap1709">
                        <h5>합격기준</h5>
                        <div class="tap_header">
                            <ul class="tapMenu">
                                <li class="on"><a href="#this" title="C프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetail', '', './CProgrammingMaster_Acceptance')">C프로그래밍마스터</a></li>
                                <li><a href="#this" title="Java프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetail', '', './JavaProgrammingMaster_Acceptance')">Java프로그래밍마스터</a></li>
                            </ul>
                        </div>
                        <div id="ConDetail" class="tap_content"></div>
                    </div>

                    <div class="con_wrap1709 mar_t20">
                        <div class="divTable">
                            <table class="padding2px">
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:15%">
                                    <col style="width:20%">
                                    <col style="width:10%">
                                    <col style="width:15%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col">등록주무부처</th>
                                    <th scope="col">등록</th>
                                    <th scope="col">등록번호</th>
                                    <th scope="col">자격명칭</th>
                                    <th scope="col">자격등급</th>
                                    <th scope="col">자격관리기관</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="c">미래창조과학부</td>
                                    <td class="c">한국직업능력개발원</td>
                                    <td class="c">2016-003175</td>
                                    <td class="c">C프로그래밍마스터</td>
                                    <td class="c">단일등급</td>
                                    <td class="c">(주)비트컴퓨터</td>
                                </tr>
                                <tr>
                                    <td class="c">미래창조과학부</td>
                                    <td class="c">한국직업능력개발원</td>
                                    <td class="c">2016-003174</td>
                                    <td class="c">Java프로그래밍마스터</td>
                                    <td class="c">단일등급</td>
                                    <td class="c">(주)비트컴퓨터</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="con_wrap1709">
                        <h5>자격 정보</h5>
                        <div class="tap_header">
                            <ul class="tapMenu">
                                <li class="on"><a href="#this" title="C프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetailInfo', '', './CProgrammingMaster_Details.jsp')">C프로그래밍마스터</a></li>
                                <li><a href="#this" title="Java프로그래밍마스터" onClick="javascript:ajaxLoad('#ConDetailInfo', '', './JavaProgrammingMaster_Details.jsp')">Java프로그래밍마스터</a></li>
                            </ul>
                        </div>
                        <div id="ConDetailInfo" class="tap_content"></div>
                    </div>

                    <div class="con_wrap1709">
                        <h5>자격증 샘플</h5>
                        <div style="width:360px; float:left; ">
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" target="_blank"><img class="boxShadow" src="${pageContext.request.contextPath}/assets/Images/Content/img_BIT_LICENSE_C_PROGRAMMING_MASTER.jpg" width="340"/></a>
                        </div>
                        <div style="width:360px; float:right; ">
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" target="_blank"><img class="boxShadow" src="${pageContext.request.contextPath}/assets/Images/Content/img_BIT_LICENSE_JAVA_PROGRAMMING_MASTER.jpg" width="340"/></a>
                        </div>
                        <div style="clear:both;"></div>
                    </div>

                    <div class="con_wrap1709 last">
                        <!--
                        <h5><div style="width:340px; float:left; margin-right:4px;">C민간자격등록증</div> <div style="width:340px; float:left; ">Java민간자격등록증</div></h5>
                        <div style="clear:both;"></div>
                        -->
                        <h5>민간자격등록증</h5>
                        <div style="width:360px; float:left;">
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_CProgrammingMaster.png" target="_blank"><img class="boxShadow" src="${pageContext.request.contextPath}/assets/Images/Content/img_CProgrammingMaster.png" width="340"/></a>
                        </div>
                        <div style="width:360px; float:right; ">
                            <a href="${pageContext.request.contextPath}/assets/Images/Content/img_JavaProgrammingMaster.png" target="_blank"><img class="boxShadow" src="${pageContext.request.contextPath}/assets/Images/Content/img_JavaProgrammingMaster.png" width="340"/></a>
                        </div>
                        <div style="clear:both;"></div>

                        <br/>
                        <p>자격증 관련 문의 : 02.3486.1421 / <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a></p>

                        <div style="width:23%; margin:30px auto 50px auto;">
                            <a href="/Register/Request/register_license1.asp" class="btnGreenBorder big">지원하기</a>
                        </div>

                    </div>
                </section>
            </div>

            <!--<a href="#this" class="moveTop">Top</a>-->
            <!-- // Content -->
        </div>
        <!-- //Content_Wrap -->
    </div>

    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>

<script type="text/javascript">
    $(document).on("mouseenter",".divCompany", function() {
        $(this).stop(true,true).animate({'backgroundColor':'#fefeda','borderColor':'#0f0fff'},300);
        $(this).css("cursor","pointer");
    }).on("mouseleave",".divCompany", function() {
        $(this).stop(true,true).animate({'borderColor':'#d1d1d1','backgroundColor':'#f9f9f9'},1000);
    }).on("click",".divCompany", function() {
        if(typeof $(this).attr("h_ref") != 'undefined' && $(this).attr("h_ref")!='#') window.open( $(this).attr("h_ref") , '_blank' );
    });
</script>