<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<!-- NOT REDIRECTABLE to Mobile -->
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

            $(".myConList").on("mouseenter", function() {
                //$(this).stop(true,true).animate({'backgroundColor':'#ffffea',"borderColor":"#2f2fff"},400,'easeOutElastic');
                $(this).stop(true,true).animate({"borderColor":"#2f2fff"},400,'easeOutElastic');
                $(this).css("cursor","pointer");
                $(this).css("box-shadow","0px 0px 5px #7f7fff")
            }).on("mouseleave", function() {
                $(this).stop(true,true).animate({'borderColor':'#d1d1d1'},1000,'easeOutElastic');
                $(this).css("box-shadow","none");
            }).on("click", function() {
                if(typeof $(this).attr("h_ref") != 'undefined') location.href = $(this).attr("h_ref");
            });

            $(".snb_1709 a.newdepth1").eq(2).addClass("on");
            $(".snb_1709 .newdepth2_wrap").eq(2).addClass("on");
            $(".snb_1709 .newdepth2_wrap.no3").find("li a").eq(0).addClass("on");
        });
    </script>

    <style>
        .conImg a img { width:90% !important; }
        .conImg { height:80px; }

        /* BELOW : for 4 boxes in one row: */
        .myConList { border:1px solid #d1d1d1; float:left; width:23.7%; height:204px; margin-left:5px; margin-bottom:6px; background-color:#f9f9f9; }
        .conImg { height:100px; }
        .companyName { font-size:18px; letter-spacing:-1px; font-weight:600; line-height:18px; }
        .companyCnt { min-height:60px; letter-spacing:-1.5px; }
        .divName { height:40px; overflow-y:hidden; }

        /*
            --DEPRECATED--
            BELOW : for 5 boxes in one row :
            .myConList { border:1px solid #d1d1d1; float:left; width:19%; height:174px; margin-left:5px; background-color:#f9f9f9; }
            .companyName { font-size:14px; font-weight:800; line-height:18px; }
            .divName { height:40px; }
        */

        /*
            --DEPRECATED--
            BELOW : for 6 boxes in one row:
            .myConList { border:1px solid #d1d1d1; float:left; width:15.6%; height:184px; margin-left:5px; margin-bottom:6px; background-color:#f9f9f9; }
            .companyName { font-size:12px; letter-spacing:-1px; font-weight:800; line-height:18px; }
            .companyCnt { min-height:60px; letter-spacing:-1.5px; }
            .divName { height:40px; overflow-y:hidden; }
        */
    </style>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual="/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

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
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>국비지원무료과정
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>신입사원 채용교육
                    </p>
                    <h4 style="float:left;">신입사원 채용교육 소개</h4>
                    <div style="clear:both;"></div>
                </div>
                <section class="section">
                    <div style="padding-top:30px; DISPLAY:NONE;">
                        <!-- BANNER : IVIS -->
                        <div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_ivis.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;">
                                <div class="conImg"><a href="/Course/Employ/Course_Employ_ivis.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_05.jpg" style="width:50%; margin-top:16px; margin-left:7px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="/Course/Employ/Course_Employ_ivis.asp">㈜아이비스</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_ivis.asp">
											<span class="blueTxt">차량용 SW 개발<br/>및 컨설팅</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : 오로스테크놀로지 -->
                        <div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_AurosTech.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;">
                                <div class="conImg"><a href="/Course/Employ/Course_Employ_AurosTech.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_AurosTech.png" style="width:95% !important; margin-top:25px; ">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="/Course/Employ/Course_Employ_AurosTech.asp">㈜오로스테크놀로지</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_ivis.asp">
											<span class="blueTxt">반도체 Overlay 장비 SW<br/>개발 업무</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : BizTechPartners -->
                        <div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_BizTechPartners.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;" >
                                <div class="conImg" ><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_BizTechPartners.png" style="width:80%; margin-top:11px; margin-left:7px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">㈜비즈테크파트너스<br/><span style="display:block; font-size:0.9em; line-height:10pt !important;">(LG CNS 자회사)</span></span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BizTechPartners.asp">
											<span class="blueTxt">웹개발 / 모바일 앱 및 서버<br/>개발</span><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : PSK -->
                        <div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_PSK.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;" >
                                <div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_PSK.png" style="width:80% !important; margin-top:5px; margin-left:14px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">㈜피에스케이</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_PSK.asp">
											<span class="blueTxt">윈도우 닷넷 개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : Cafe24 -->
                        <div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_Cafe24.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;" >
                                <div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_Cafe24.png" style="width:90% !important; margin-top:25px; margin-left:8px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">㈜카페24</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_Cafe24.asp">
											<span class="blueTxt">웹개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : BIT Computer -->
                        <div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_BitComputer.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;" >
                                <div class="conImg"><a href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Main/img_logo_BITCOM.png" style="width:90% !important; margin-top:25px; margin-left:8px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">㈜비트컴퓨터</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="http://www.bitacademy.com/Course/Employ/Course_Employ_BitComputer.asp">
											<span class="blueTxt">JAVA 솔루션 개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : TaehaMechatronics -->
                        <div class="myConList courseEmploy " h_ref="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;" >
                                <div class="conImg"><a href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_TaehaMechatronics.png" style="width:90%; margin-top:28px; margin-left:7px;">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">㈜태하메카트로닉스</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_TaehaMechatronics.asp">
											<span class="blueTxt">Embedded System 개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : LEETECH -->
                        <div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_LEETECH.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;">
                                <div class="conImg"><a href="/Course/Employ/Course_Employ_LEETECH.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_LEETECH.png" style="width:90%; margin-top:18px; margin-left:8px; ">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="/Course/Employ/Course_Employ_LEETECH.asp">㈜리텍</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_LEETECH.asp">
											<span class="blueTxt">윈도우 닷넷 개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>
                        <!-- BANNER : VOICEYE -->
                        <div class="myConList courseEmploy" h_ref="/Course/Employ/Course_Employ_voiceye.asp">
                            <div class="conCnt conCntDynamic" style="padding:0;">
                                <div class="conImg"><a href="/Course/Employ/Course_Employ_voiceye.asp">
                                    <img src="${pageContext.request.contextPath}/assets/Images/Content/Employ/img_LOGO_voiceye.jpg" style="width:90%; margin-top:27px; margin-left:8px; ">
                                </a></div>
                                <div class="divName">
                                    <p class="companyName" align=center><span href="/Course/Employ/Course_Employ_voiceye.asp">㈜보이스아이</span></p>
                                </div>
                                <p class="companyCnt" align=center>
										<span href="/Course/Employ/Course_Employ_voiceye.asp">
											<span class="blueTxt">윈도우 닷넷 개발</span><br/><br/><br/>
											<span style="font-weight:900; color:#ff0000;">모집중</span>
										</span>
                                </p>
                            </div>
                        </div>

                        <div style="clear:both;"></div>
                    </div>
                    <div class="con_wrap1709 mar_t20">
                        <h5>신입사원 채용교육</h5>
                        <p>
                            실력 및 업무능력을 갖춘 직원을 채용을 위해, 기업의 인재상, 조직문화, 업무특성에 맞는 인재는 조기에 선발하고, 비트교육센터 교육과정에 위탁하여, 체계적이고 강도 높은 기술교육을 통해 교육 이수 후 곧 바로 현업에 투입할 수 있는 인력을 양성하는 교육 제도
                        </p>
                    </div>
                    <div class="con_wrap1709">
                        <h5>교육의 장점</h5>
                        <p>
                            1.	실력 및 업무능력을 갖춘 인력을 모집, 선발, 양성, 채용까지 한번에 가능<br/>
                            2.	신입사원 채용교육의 기업부담금 없음<br/>
                            3.	교육기간 동안 교육생 인건비 부담 없음<br/>
                            4.	기업의 맞춤교육 및 파일럿 프로젝트 가능<br/>
                            5.	기업의 인재상, 조직문화 맞는 인력 양성<br/>
                            6.	사내교육의 일환으로 비트교육센터를 신입사원 연수를 위탁하여 실시 가능<br/>
                        </p>
                    </div>
                    <div class="con_wrap1709">
                        <h5>교육분야</h5>
                        <p>
                            1.	자바 계열<br/>
                            2.	임베디드 시스템 계열<br/>
                            3.	윈도우 계열<br/>
                            4.	닷넷 계열<br/>
                            5.	네트워크 계열<br/>
                            6.	IoT 계열<br/>
                            7.	빅데이터 계열<br/>
                            8.	외 기타
                        </p>
                    </div>
                    <div class="con_wrap1709">
                        <h5>수행 기업</h5>
                        <p>
                            하이닉스반도체,  NHN, 포스코ICT, SK C&C, 휴맥스, 한화S&C, 비트컴퓨터, 엠게임, 인피니티헬스케어, 가온미디어, 팅크웨어, 티맥스소프트, 어울림정보기술, 이루온, 지티원, 지티플러스, 넥스트리소프트, 블루버드소프트, 화이트정보통신, SGA, 네비웍스, 오스템인플란트, 탑엔지니어링, 디지털에셋, 퓨처시스템, 네트빌, 심플렉스인터넷, 나무인터넷, 코스콤, 비즈테크파트너스, 두손소프트, 하이브레인넷, QMC, 쎄믹스, 다래아이엔씨, 넷피아, 디리아, 코아뱅크, 뱅크타운, 셀런, 토마토시스템, 인스프리트, 솔루션박스, 어니언텍, 한국가상현실, 잉카인터넷, 억셉트테크놀로지, 인텍디지털, 인터데브, 에이텍, 컴스퀘어, 성우시스템, 아이티엔씨, 빛샘전자, 더맵, 액터스네트웍스, 유비코드, 이지디지털, 핸디소프트, 허브테크, 라이트웍스, 드리머, 엑스크립트, 더존비즈온, 위세아이텍, 휴먼소프트, 날리지큐브, 뱅크웨어글로벌, 아바드, 이스트소프트, 솔트웨어, 솔트로닉스,엑스소프트, 오비고, 하나I&S, 싸이버로지텍, 아이티앤씨, M3모바일, 기산전자, 디지엔스, 라모스테크놀로지, 아이비스, 웰게이트, 나우콤, 넷크루즈, 닉스테크, 데브구르, 마크애니, 맵퍼스, 알트원, 컴스퀘어, 태영소프트, 파인디지털, 한국아이오테크, 파미, FIS시스템 외
                        </p>
                    </div>

                    <div class="con_wrap1709 bg_none">
                        <p>문의) 주지영 팀장 (tablet18@bit.kr / 02-3486-1055)</p>
                    </div>
                </section>
            </div>
            <a href="#this" class="moveTop">Top</a>
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