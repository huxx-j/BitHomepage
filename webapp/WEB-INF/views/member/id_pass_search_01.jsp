<%--<%--%>
    <%--Session.CodePage  = 949 '한글--%>
    <%--Response.CharSet  = "euc-kr" '한글--%>
<%--%>--%>

<%--<!--#include virtual="/Include/config.asp"-->--%>
<%--<!--#include Virtual="/Include/javaScriptFun.asp"-->--%>

<%--<%--%>
    <%--Response.CacheControl = "no-cache"--%>
    <%--Response.AddHeader "Pragma", "no-cache"--%>
    <%--Response.Expires = -1--%>
<%--%>--%>

<%--<%--%>
    <%--Dim IPIN_DLL, clsIPIN--%>
    <%--Dim iReturnCode, sRequestData--%>
    <%--Dim sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL--%>

    <%--sIDPCODE        = "I261"--%>
    <%--sIDPPWD         = "38010800"--%>
    <%--sRETURNURL      = "https://bitschool.com/Member/IPIN/member_ipin_process_FindID.asp"--%>
    <%--' 인증 완료 시 인증결과를 수신할 CP Return Page URL--%>
    <%--sCPREQUESTNUM   = ""                      ' CP 요청 번호(CP에서 임의로 생성한 값)--%>

    <%--IPIN_DLL        = "IPIN2Client.Kisinfo"--%>

    <%--SET clsIPIN  = SERVER.CREATEOBJECT(IPIN_DLL)--%>

    <%--clsIPIN.fnRequestSEQ(sIDPCODE)--%>
    <%--sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ--%>
    <%--session("REQUEST_NUM") = sCPREQUESTNUM               ' CP 요청 번호를 세션에 저장--%>

    <%--iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)--%>

    <%--IF iReturnCode = 0 THEN--%>
        <%--sRequestData = clsIPIN. bstrRequestCipherData        ' 요청정보를 암호화한 값      --%>
    <%--ELSEIF (iReturnCode = -1) THEN--%>
        <%--returnMsg = "암/복호화 시스템 오류"--%>
    <%--enc_data = ""--%>
    <%--ELSEIF (iReturnCode = -2) THEN--%>
        <%--returnMsg = "암호화 처리 오류"--%>
    <%--enc_data = ""--%>
    <%--ELSEIF (iReturnCode = -3) THEN--%>
        <%--returnMsg = "암호화 데이터 오류"--%>
    <%--enc_data = ""--%>
    <%--ELSEIF (iReturnCode = -9) THEN--%>
        <%--returnMsg = "입력값 오류"--%>
    <%--enc_data = ""--%>
    <%--END IF--%>

    <%--SET clsIPIN = NOTHING--%>
<%--%>--%>
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
    <!--#include virtual="/Member/id_pass_search_script.asp"-->
    <%--<c:import url="/WEB-INF/views/Include/id_pass_search_script.jsp"/>--%>

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


            //$(".snb .depth1").eq(2).addClass("on");
            $(".snb_1709 a.newdepth1").eq(2).addClass("on");
        });

        window.name = "Parent_window";

        function fnPopup() {
            window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
            document.form_ipin.target = "popupIPIN2";
            document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
            document.form_ipin.submit();
        }
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>

</head>
<body>
<div id="Wrapper">
    <form name="form_ipin" method="post" style="display:none">
        <input type="hidden" name="m" value="pubmain">
        <input type="hidden" name="enc_data" value="<%--<%= sRequestData %>--%>">
    </form>

    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->

    <!-- Container_Wrap -->
    <div id="Container_Wrap" style="min-height:390px;">
        <!-- Content_Wrap -->
        <div id="Content_Wrap" style="min-height:390px;">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Member_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_Member_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                    </p>
                    <h4 style="float:left;">아이디/패스워드 찾기</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section mar_t20">
                    <div class="con_wrap1709">
                        <!--<h5>아이디/패스워드찾기</h5>-->
                        <h5>회원구분 선택</h5>
                        <div class="btn_wrap c mar_t40">
                            <a href="http://www.bitacademy.com/Member/id_pass_search_02.asp" class="btnBlueBorder big" style="width:370px;">2014년 3월 이전 가입회원(아이핀 비가입 회원) </a>
                            <br/>
                            <a href="http://www.bitacademy.com/Member/id_pass_search_03.asp" class="btnBlueBorder big mar_t20" style="width:370px;">아이핀 가입회원</a>
                        </div>
                    </div>

                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
        <!-- Content_Wrap -->
    </div>
    <!-- Container_Wrap -->

    <!-- Footer_Wrap -->
    <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>

</html>