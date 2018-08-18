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

    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>

    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");
        });
    </script>
    <script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "323f9cf0f986e4"; wcs_do(); </script>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap" style="min-height:450px;">
        <div id="Content_Wrap" style="min-height:450px;">
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
                    <h4 style="float:left;">비트교육센터 소개</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section" style="font-family:'Nanum Gothic Bold'; font-size:11pt;">
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709 first last">
                        <div style="float:left; width:70%; margin-top:10px;">
                            <h5 style="font-size:14pt;">설립배경</h5>
                            <p style="margin-top:30px; margin-bottom:10px;">비트교육센터는 1983년 벤처기업 1호로 창업해 디지털 시대를 선도하는 (주)비트컴퓨터(대표이사 조현정)가 '기술은 나눌수록 커진다'와 '우수한 인재를 양성해 사회에 환원하겠다'는 목적으로 1990년 설립했다.</p>
                            <p style="margin-top:10px;">올해 28년째를 맞이한 비트교육센터는 현재까지 372기 8,768명(2018년 1월기준)의 IT 개발자를 양성해 왔으며, IT 강국의 핵심 소프트웨어 개발자를 양성하는 우리나라 대표 IT 교육기관으로 인정받고 있다. </p>
                        </div>
                        <div style="float:left; width:5%;">
                            &nbsp;
                        </div>
                        <div style="float:left; width:25%; ">
                            <img src="${pageContext.request.contextPath}/assets/Images/007.jpg" style="width:179px; border:1px solid #a8a8a8; border-radius:1pt;"/>
                        </div>
                        <div style="clear:both;"></div>

                        <div style="margin-left:1px; margin-top:30px;">
                            <video src="${pageContext.request.contextPath}/assets/Videos/video_bitschool_CM_20130714_600k.mp4" type="video/mp4" controls loop autoplay width="720">cannot play this video</video>
                            <p class="redTxt">※ 비트스쿨은 비트교육센터로 교육기관의 명칭이 변경되었습니다.</p>
                        </div>


                        <!--<div class="conTxt" style="margin-top:15px;">-->
                        <div class="conTxt" style="margin-top:30px;">
                            <h6 class="blueTxt mar_b5" style="font-size:13pt; margin-bottom:20px !important;">01. 비트교육센터는 엄하게 선별하고 교육한다.</h6>
                            <p>입학한 순간부터 수강생의 긍지는 대단하다.</p>
                            <p>최소한 C, C++, Java 프로그래밍이 가능해야 하며, 컴퓨터공학이나 전산관련학과 출신과 예비과정 거친 이공계출신 지원자를 주 대상으로 실력을 테스트한 후 ㈜비트컴퓨터 조현정 회장의 직접면접을 통과해야 비로소 입학이 허가되고, 절대평가이므로 면접장소에서 바로 합격여부가 결정된다. 뚜렷한 목표의식, 일정 수준 이상의 실력, 패기, 인성을 따져서 입학되는 비트교육센터, 그래서 비트교육센터는 경쟁률 평균 3~5대 1임에도 정원미달이 나올 수밖에 없다.</p>
                        </div>
                        <div class="conTxt">
                            <h6 class="blueTxt mar_b5" style="font-size:13pt; margin-bottom:20px !important;">02. 그룹스터디, 프로젝트 중심의 실무 교육과정 </h6>
                            <p>강사보다 동기에게 더 많은 것을 배운다.</p>
                            <p>서울대와 KAIST 석/박사가 중심이 된 우수한 강사진임에도 수준 높은 동기생들과의 그룹스터디를 통해 더 많은 것을 배운다는 이들, 이들간의 인맥은 지식보다 더 큰 재산이다. 오전 9시부터 오후 5시까지 강행되는 수업, 그리고 다시 오후 10시까지의 그룹스터디. 3개월간의 이론 수업과 3.5개월간의 프로젝트 수행, 그리고 매주 2과목의 정규과정과 별도의 전문서적을 1주일에 1권 이상 마스터하는 대량의 학습량과 독특한 그룹스터디를 통해 「비트출신」으로 면모를 갖추어 간다.</p>
                        </div>
                        <div class="conTxt">
                            <h6 class="blueTxt mar_b5" style="font-size:13pt; margin-bottom:20px !important;">03. 취업 비트출신의 여유, 실력과 자신감이 바탕 </h6>
                            <p>평생취업 지원과 교육리콜제 실시하는 비트교육센터 </p>
                            <p>대기업부터 국내 굴지의 벤처기업까지 3,500여 업체가 「비트출신」을 선호한다. 혹독한 훈련과 프로젝트 실력이 증명된 만큼 많은 기업은 「비트출신」을 알아서 채용한다. 이미 75여 개 벤처기업을 창업한 「비트출신」의 독특함도 있다. 경력만큼 실력 있는 「비트출신」, 이미 8,736명의 전문가로 구성된 「비트출신」이 휴먼 네트워크를 형성하고 있다.</p>
                        </div>
                        <div class="conTxt">
                            <h6 class="blueTxt mar_b5" style="font-size:13pt; margin-bottom:20px !important;">04. 비트프로젝트 출간 </h6>
                            <p>기술은 나눌수록 커진다 </p>
                            <p>날짜 채우기를 하지 않는 곳. 「비트출신」으로 인정받기 위해서는 또 하나의 관문이 있다. 제대로 된 정보를 다 같이 공유하려는 취지에서 출발한 ‘비트프로젝트’ 단행본에 수강생이 3.5개월에 걸쳐 개발한 프로젝트가 실려야 비로소 수료가 가능하다. 입학보다 더 어려운 혹독한 교육과 ‘비트프로젝트’ 단행본 발간을 통해 정보를 공유하려는 비트만의 열린 마음을 표명한 것이다. 「비트출신」은 ‘나만이 가진 정보’에서 벗어나 ‘사회를 발전시키는 정보’에 대한 가치를 깨달아 간다. 사회와 더불어 발전할 줄 아는 인간을 만든다. </p>
                        </div>
                        <div class="conTxt last">
                            <h6 class="blueTxt mar_b5" style="font-size:13pt; margin-bottom:20px !important;">05. 비트출신, IT강국으로 이끄는 주역 </h6>
                            <p>막강한 '휴먼 네트워크'는 또하나의 자랑 </p>
                            <p>막강한 「비트출신」의 휴먼 네트워크가 개인의 기술보다 빛나게 하는 비트교육센터. 비트교육센터는 정보기술을 공유함으로써 경쟁을 유발하고 기초 지식화 시켜 보다 발전할 수 있는 계기를 사회에 부여한다. 돈 잘 버는 기업보다 사회에 이익을 주고 좋은 문화를 만드는 기업의 이념으로 설립된 비트교육센터「비트출신」은 우리나라 IT업계의 자랑스러운 일꾼이다. </p>
                        </div>
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