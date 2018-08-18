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
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");
        });
    </script>
    <style>
        .galleryList img {
            width:343px;
        }
    </style>
    <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
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
                    <h4 style="float:left;">비트교육센터 교육환경</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section">
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709 first">
                        <ul class="galleryList">
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_01.jpg" alt=""></li>
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_02.jpg" alt=""></li>
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_03.jpg" alt=""></li>
                            <li class="last"><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_04.jpg" alt=""></li>

                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_05.jpg" alt=""></li>
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_06.jpg" alt=""></li>
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_07.jpg" alt=""></li>
                            <li class="last"><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_08.jpg" alt=""></li>

                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_09.jpg" alt=""></li>
                            <li><img src="${pageContext.request.contextPath}/assets/Images/Content/Gallery/img_gallery_10.jpg" alt=""></li>
                        </ul>
                    </div>
                    <!-- //con_wrap1709 -->

                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709 last">
                        <h5>컴퓨터 사양</h5>
                        <ul class="ul_dot_gray">
                            <li>프로세서 Intel(R) Core(TM) i5-<b>6500</b> CPU @ 3.20GHz</li>
                            <li>메모리 <b>16GB</b></li>
                            <li>저장장치 SSD 100G, HDD 500G</li>
                            <li>운영체제 Windows <b>10</b></li>
                            <li>모니터 24inch</li>
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