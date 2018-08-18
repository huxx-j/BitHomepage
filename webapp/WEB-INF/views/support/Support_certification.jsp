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
            $(".snb_1709 a.newdepth1").eq(3).addClass("on");								// 자격증 및 확인서 신청 ON
            ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
            //$(".snb .depth1").eq(3).addClass("on");
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
                    <h4>자격증 및 확인서 신청</h4>
                </div>

                <section class="section">
                    <div class="con_wrap1709 first">
                        <h5>비트 SW 프로젝트 자격증 발급</h5>
                        <p>한국직업능력개발원에 비트교육센터의 "비트 SW 프로젝트 자격증"이 민간자격 등재되어 아래와 같이 자격증을 교부하고 있습니다.</p>
                        <p>비트교육센터의 "비트 SW 프로젝트 자격증"은 현업에서 필요한 프로젝트 수행능력(기반지식평가, 프로젝트 기획, 설계,구현, 최종산출물평가)을 검증하는, 기업에서 요구하는 실무형 자격증으로 운영될 것입니다.</p>
                        <p>전문가과정 출신은 자격 1급 주어집니다.</p>
                        <p>발급을 희망하시는 분은 아래 내용을 작성하여 메일로 보내주시면 확인 후 자격증을 발급해드립니다.</p>
                    </div>
                    <div class="con_wrap1709 first">
                        <h5>비트 교육확인서 발급</h5>
                        <p>KOSA 소프트웨어기술자 신고시 필요한 교육확인서를 발급해 드리고 있습니다. 발급을 희망하시는 분은 아래 내용을 작성하여 메일로 보내주시면 확인 후 발급해드립니다.</p>
                    </div>
                    <div class="con_wrap1709 first">
                        <h5>기재사항</h5>
                        <!--<p>본 사항을 작성하셔서 보내주시면 확인 후 발급해 드립니다.</p>-->
                        <p>다음의 기재사항을 작성하셔서 보내주시면 확인 후 발급해 드립니다.</p>
                        <br/>

                        <p class="blueTxt">신청 서류 : □ 비트SW프로젝트 자격증 □ 비트 교육확인서</p>
                        <ul class="ul_dot_gray blueTxt">
                            <li>이름:</li>
                            <li>영문이름:</li>
                            <li>생년월일 :</li>
                            <li>핸드폰 :</li>
                            <li>이메일(웹메일): 주소 :</li>
                            <li>회사 :          부서/직책:</li>
                            <li>기수 : </li>
                            <li>교육기간 : </li>
                            <li>수령방법 : 택배(착불발송 3,500원) 혹은 방문수령 中 택(택배발송 시 주소 필히 작성해주세요)</li>
                            <li>주소 : </li>
                        </ul>
                        <br/>

                        <p>
                            메일 : job@bit.kr<br/>
                            전화 : 02-3486-3456<br/>
                            담당자 : 임지훈
                        </p>
                        <p class="brownTxt">※ 신청 인원이 급증하여 빠른 배송이 어렵습니다. 이점 양해바랍니다. </p>
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