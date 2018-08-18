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
            $(".snb_1709 a.newdepth1").eq(4).addClass("on");								// 비트교육센터 강사모집 ON
            ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
            //$(".snb .depth1").eq(5).addClass("on");
        });
    </script>
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
            <!-- #include virtual = "/Include/SNB_Support_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Support_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>지원안내
                    </p>
                    <h4>비트교육센터 강사모집</h4>
                </div>

                <section class="section">
                    <div class="con_wrap1709 first">
                        <h5>모집분야 : 강사</h5>
                        <ul class="ul_dot_gray">
                            <li>자바 계열</li>
                            <li>닷넷 계열</li>
                            <li>임베디드 계열</li>
                            <li>윈도우 계열</li>
                            <li>리눅스 계열</li>
                            <li>C 계열</li>
                            <li>DB 계열</li>
                            <li>S/W 아키텍처 분석/설계 및 품질관리</li>
                            <li>PM(Project Manager)</li>
                            <li>기타</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>지원자격</h5>
                        <ul class="ul_dot_gray">
                            <li>강의 경력자, 강사 희망자</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>모집기간</h5>
                        <ul class="ul_dot_gray">
                            <li>연중 상시</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>근무(강의)지역</h5>
                        <ul class="ul_dot_gray">
                            <li>비트교육센터 서울 본원 및 지방 (아산, 대전, 전북, 대구, 부산)</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>채용절차</h5>
                        <ul class="ul_dot_gray">
                            <li>서류 전형</li>
                            <li>면접 전형</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>지원방법</h5>
                        <ul class="ul_dot_gray">
                            <li>이메일 접수(<a href="mailto:tablet18@bit.kr" class="email">tablet18@bit.kr</a>)</li>
                        </ul>
                    </div>
                    <div class="con_wrap1709 ">
                        <h5>제출서류</h5>
                        <ul class="ul_dot_gray">
                            <li>이력서 및 자기소개서 각 1부(자유 양식, 강의경력 및 프로젝트 경력 위주로 작성) </li>
                        </ul>
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