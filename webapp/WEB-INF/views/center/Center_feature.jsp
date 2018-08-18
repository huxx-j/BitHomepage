<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">

<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");
        });
    </script>
    <style>
        .stepNum {
            top:36px !important;
            left:38px !important;
        }
    </style>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap" style="min-height:250px;">
        <div id="Content_Wrap" style="min-height:250px;">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_CenterInfo_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_CenterInfo_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>센터소개
                    </p>
                    <h4 style="float:left;">비트교육센터 특징</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>
                <section class="section">
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709 first">
                        <p class="mar_t10 mar_l20 mar_b20"><img src="${pageContext.request.contextPath}/assets/Images/Content/img_center_01.jpg" alt=""></p>
                    </div>
                    <!-- //con_wrap1709 -->
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709 first">
                        <ul>
                            <li class="step_wrap type2" style="height:135px; padding-top:0px;">
                                <p class="stepNum" style="margin-top:5px;">01</p>
                                <p class="stepTit pd_t0">비트신화1 &lt;비트출신&gt; 기업이 먼저 가치를 인정한 바로 그들</p>
                                <p class="stepCon">
                                <ul class="ul_dot_gray">
                                    <li>치열한 입학 경쟁률(평균 5:1) 속에서도 결코 정원을 채워서 선발하지 않는 대한민국 벤처1호 <br/>조현정 대표이사(현, (주)비트컴퓨터 대표이사)의 자존심</li>
                                    <li>컴퓨터공학 3~4학년 재학생 이상의 실력인 동기들과의 치열한 그룹스터디와 엄청난 학습량</li>
                                    <li>지난 26년간 8,736명(2016년 1월 기준) 비트출신의 파워네트워크</li>
                                </ul>
                                </p>
                            </li>
                            <li class="step_wrap type2" style="height:135px; padding-top:0px;">
                                <p class="stepNum">02</p>
                                <p class="stepTit pd_t0">비트신화2 &lt;비트프로젝트&gt; 더 이상의 최고의 연구 결과는 없다.</p>
                                <p class="stepCon">
                                <ul class="ul_dot_gray">
                                    <li>최신 이슈를 Topic으로 선정해서 프로젝트 결과를 매달 단행본으로 집대성한 &lt;비트프로젝트&gt;</li>
                                    <li>&lt;비트프로젝트&gt;결과를 매달 프로젝트 발표회를 통해 공유 및 공개</li>
                                    <li>대한민국기술 대전에서 5년 연속 수상으로 &lt;비트프로젝트&gt; 의 우수성 입증</li>
                                    <li>&lt;비트프로젝트&gt; 을 통해 창업 item 제공 및 해당 프로젝트팀에게 수익 분배</li>
                                </ul>
                                </p>
                            </li>
                            <li class="step_wrap type2" style="height:135px; padding-top:0px;">
                                <p class="stepNum">03</p>
                                <!--<p class="stepTit pd_t0">비트신화3 &lt;취업률 100%&gt; 21년간 이룩한 최대의 업적</p>-->
                                <p class="stepTit pd_t0">비트신화3 &lt;취업률 100%&gt; 26년간 이룩한 최대의 업적</p>
                                <p class="stepCon">
                                <ul class="ul_dot_gray">
                                    <li>&lt;비트Pool&gt;을 통한 국내외 최고의 기업과 &lt;비트출신&gt;과의 만남을 통해 IT인력난 타파</li>
                                    <li>전원 취업을 위해 1:1 개별 취업 컨설팅에서 모의 면접까지</li>
                                    <li>취업정보실 운영으로 인력 관련 DB 구축을 통해 취업 대란의 새로운 돌파구 제공</li>
                                </ul>
                                </p>
                            </li>
                            <li class="step_wrap type2" style="min-height:35px; padding-top:0px;">
                                <p class="stepNum">04</p>
                                <p class="stepTit pd_t0">비트신화4 &lt;비트문화&gt; 최고를 지향하는 최고만의 자존심</p>
                                <p class="stepCon">
                                <ul class="ul_dot_gray">
                                    <li>&lt;비트리콜제&gt;제를 통해 &lt;비트출신&gt;의 품질을 엄격히 보증하는 깐깐한 문화</li>
                                    <li>최신 기종의 컴퓨터로 이루어진 강의실, 과정별 프로젝트실</li>
                                    <li>무선 LAN 서비스, 300평 규모의 대형 스터디 공간, 프로젝트 발표 강당까지</li>
                                    <li>서울대 및 KAIST 석,박사 출신 중심의 120여 명 전문 강사</li>
                                </ul>
                                </p>
                            </li>
                        </ul>
                    </div>
                    <!-- //con_wrap1709 -->
                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
    </div>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>