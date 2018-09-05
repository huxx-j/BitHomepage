<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <title>비트교육센터</title>

    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->

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
            $(".snb_1709 a.newdepth1").eq(2).addClass("on");								// 결제절차
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
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Register_1709.jsp"/>
            <!-- //SNB_Wrap-->
            <div id="Content">

                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>수강신청
                    </p>
                    <h4>결제절차</h4>
                </div>

                <section class="section">
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709">
                        <h5>전문가과정</h5>
                        <p><img src="${pageContext.request.contextPath}/assets/Images/Content/img_register_02_01_720.jpg" style="width:720px;"></p>
                    </div>
                    <!-- //con_wrap1709 -->
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709">
                        <h5>단기과정/방학특강</h5>
                        <p><img src="${pageContext.request.contextPath}/assets/Images/Content/img_register_02_02.jpg" style="width:720px;"></p>
                    </div>
                    <!-- //con_wrap1709 -->

                    <div class="con_wrap1709 mar_t10">
                        <p class="brownTxt">*. 입금 결과 확인은 입금을 하신 후 그 다음날 오후에 홈페이지를 통해 하실 수 있습니다. (단, 일요일과 공휴일 제외)</p>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>