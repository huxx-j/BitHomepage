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
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");  // 개인정보처리방침 ON
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
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>멤버
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>휴면계정 활성화
                    </p>
                    <h4>휴면계정 활성화</h4>
                </div>
                <section class="section mar_t20">
                    <div class="con_wrap1709">
                        <h5>비트교육센터 휴면계정 활성화 안내<br/></h5>

                        <p style="font-size:13pt;">
                            비트교육센터의 휴면계정 활성화 안내 드립니다.<br/><br/>

                            회원님의 계정(아이디 ${sessionScope.authUser.loginID})을 안전하게 보호하기 위해<br/>
                            <b>정보통신망 이용촉진 및 정보보호 등에 관한 법률 및 동법 시행령</b> 에 따라<br/>
                            장기간 로그인하지 않은 아이디는 휴면상태로 전환하여 안전하게 보관하고 있습니다.<br/><br/>

                            회원님의 계정을 계속 이용하시려면 아래 '휴면계정 활성화' 버튼을 클릭해 주세요.<br/><br/>
                            <span style="font-size:11pt; font-weight:700; color:#4747CC;">(문의 : 02-3486-3456)</span>
                        </p>
                        <div>
                            <div class="btn_wrap c mar_t40" >
                                <a href="${pageContext.request.contextPath}/member/ActivateSleepingAccount" class="btnBlueBorder big" style="width:370px;">휴면계정 활성화</a>
                            </div>
                        </div>
                    </div>
                </section>
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