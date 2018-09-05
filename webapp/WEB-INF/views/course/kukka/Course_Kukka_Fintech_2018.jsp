<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<!-- not REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
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
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

            $(".snb_1709 a.newdepth1").eq(1).addClass("on");				// 국가기간전략산업직종
            $(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");		// 국가기간전략산업직종
            $(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(2).addClass("on");  // 라즈베리파이를 활용한 IoT 서비스 고급인력 양성과정
        });
    </script>
    <script language="javascript">
        /*
            var uAgent = navigator.userAgent.toLowerCase();

            var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
    //alert( uAgent );
            for (var i = 0; i < mobilePhones.length; i++)
                if (uAgent.indexOf(mobilePhones[i]) > -1)
                   document.location = "http://www.bitacademy.com/Course/Kukka/M/Course_Kukka_EmbeddedLinux_2017.asp";
        */
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<style>
    /* white and narrowSNB */
    .moveTop { width:175px !important; background:#17538e url('${pageContext.request.contextPath}/assets/Images/Common/btn_moveTop.png') 50px center no-repeat; }
    #Container_Wrap { min-height:initial; }
    ul.newdepth3_wrap li.long { letter-spacing:-1px; }
    ul.newdepth2_wrap li.long { letter-spacing:-1px; }


    #kakao{

        height: 26px;
        padding: 0 10px;
        font-weight: 600;
        display: inline-block !important;
        position: relative;
        margin: 0px;
        border-radius: 5px;
        text-align: center;
        line-height: 25px;
        cursor: pointer;
        border: 1px solid #1b499b;
        color: #1b499b;
        background-color: #ffeb33;

    }



    #jiwon{
        height: 26px;
        padding: 0 10px;
        font-weight: 600;
        display: inline-block !important;
        position: relative;
        margin: 0px;
        border-radius: 5px;
        text-align: center;
        line-height: 25px;
        cursor: pointer;
        border: 1px solid black;
        color: black;
        background-color: white;

    }

</style>





<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual="/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->
    <hr>
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
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>무료취업과정
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>국가기간전략산업직종
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>금융IT기반 핀테크융합 전문가 양성과정
                    </p>
                    <h4 style="float:left; letter-spacing:0px;" >금융IT기반 핀테크융합 전문가 양성과정</h4>
                    <!-- 수강신청btn -->
                    <a href="https://pf.kakao.com/_SmhqV"  title="카카오톡 상담신청" style="float:right; margin:12px 0px 12px 12px;">
                        <img src="/Images/Btns/btn_Kakao.png"/>
                    </a>

                    <a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="수강신청" style="float:right; margin:12px 0;">
                        <img src="/Images/Btns/btn_ApplyCourse.png"/>
                    </a>


                    <div style="clear:both; height:10px;"></div>
                </div>

                <section>
                    <div class="con_wrap1709 first">
                        <div class="divTable">
                            <table style="box-shadow:none !important;">
                                <colgroup>
                                    <col style="width:13%">
                                    <col style="width:37%">
                                    <col style="width:13%">
                                    <col style="width:37%">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th>교육기간</th>
                                    <td>
                                        <!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_FD_10.inc" -->
                                        <c:import url="/WEB-INF/views/Include/CourseDateTime/Date/Date__KUKA18_FD_10.jsp"/>
                                    </td>
                                    <th>강의시간</th>
                                    <td>
                                        <!-- #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_FD_10.inc" -->
                                        <c:import url="/WEB-INF/views/Include/CourseDateTime/Time/Time__KUKA18_FD_10.jsp"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>교육비</th>
                                    <td>무료</td>
                                    <th>훈련장려금</th>
                                    <td>월 약 30만원</td>
                                </tr>
                                <tr>
                                    <th>교육정원</th>
                                    <td>20명</td>
                                    <th>문의</th>
                                    <td>임지훈 매니저: 02-3486-1248</td>
                                </tr>
                                </tbody>
                            </table>
                            <div style="clear:both; height:10px;"></div>
                        </div>
                    </div>

                    <div class="con_wrap1709">


                    </div>
                    <!-- con_wrap1709 -->


                    <div class="con_wrap1709 ">
                        <h5>과정소개</h5>
                        <p>
                            본 과정은 4차 산업혁명의 코어기술 분야인 핀테크 및 인공지능에 대한 전반적인 지식을 습득 후 금융IT와 인공지능의 융합 지능에 대한 개발 능력을 함양하여 해당 분야 프로젝트를 수행 후 핀테크 관련 분야로 진출을 목적으로 하는 과정입니다.
                        </p>
                    </div>


                    <div class="con_wrap1709 ">
                        <h5>교육내용</h5>
                        <div class="divTable">
                            <table>
                                <colgroup>
                                    <col style="width:30%">
                                    <col style="width:70%">
                                </colgroup>
                                <!--
                                <thead>
                                    <tr>
                                        <th scope="col" class="c">대주제</th>
                                        <th scope="col" class="c">세부내용</th>
                                    </tr>
                                </thead>
                                -->

                                <tbody>
                                <tr>
                                    <td scope="row" class="darker c">
                                        4차산업혁명과 AI(인공지능)
                                    </td>
                                    <td>
                                        -4차 산업혁명이란?<br>
                                        -Cloud & Bigdata<br>
                                        -AR / VR<br>
                                        -IoT & IoB<br>
                                        -서비스 디자인
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        O2O플랫폼 및 이노베이션 공학
                                    </td>
                                    <td>
                                        -게이미피케이션<br>
                                        -HW Start-up, IP M&A, IR<br>
                                        -이노베이션 공학 및 멘토링 <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        핀테크 Start-up
                                    </td>
                                    <td>
                                        -블록체인, P2P 클라우드펀딩<br>
                                        -금융보안기술, FDS(Fraud Detection System)<br>
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        C++/C# Programming
                                    </td>
                                    <td>
                                        -C++ 기본문법, 객체지향 개념, 클래스, 상속<br>
                                        -연산자 오버로딩, 템플리트, 예외처리, 스트림, 이름공간<br>
                                        -.Net Framework의 특징, 지원언어<br>
                                        -CLR의 주요특징, 관리형코드와 비관리형 코드, CTS, CLS<br>
                                        -Base Class Library, ADO.NET, Web Forms and Services, UI
                                        For Windows
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        MFC, Win32

                                    </td>
                                    <td>
                                        -Introduction<br>
                                        -Message Handling, SDI Programming, DC/GDI<br>
                                        -Data/View Structure, Resource, Dialog box<br>
                                        -Serialization, Control<br>
                                        -Overview, Resource, Graphic, Control, Dialog box<br>
                                        -Message, Common Control, System Information, Memory<br>
                                        -Multithread, Synchronization, Dynamic Link Library,
                                        Global Hooking
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        DBMS

                                    </td>
                                    <td>
                                        -데이터베이스 개념과 오라클설치, SQL 기본, 연산자<br>
                                        -SQL주요함수, 그룹함수, 조인, 서브쿼리<br>
                                        -테이블 생성 및 변경 삭제, 데이터추가,수정,삭제<br>
                                        -트랜젝션관리, 데이터 무결성 제약 조건
                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        Windows Network Programming

                                    </td>
                                    <td>
                                        -IPC, MFC C Socket Client<br>
                                        -Server Basic, Thread & Blocking Server<br>
                                        -WSAA sync Select, WSAA Event Select<br>
                                        -Overlapped & IOCP<br>
                                        -MFC Server, Buginess Logic<br>
                                        -ProC/C++ Complier

                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        Python & R Programming
                                    </td>
                                    <td>
                                        -파이썬 기본구문과 자료형<br>
                                        -파이썬 클래스와 객체지향 프로그래밍<br>
                                        -파이썬 활용( 파일, 함수, 시간 다루기, 예외처리)<br>
                                        -파이썬 모듈과 패키지, 데이터베이스 프로그래밍<br>
                                        -R 프로그래밍의 기초<br>
                                        -벡터, 행렬의 연산 및 함수<br>
                                        -그래프와 데이터에 대한 이해<br>
                                        -데이터 구조(생성, 추출, 활용)<br>
                                        -시각화(그래프 그리기), 통계 분석 기초, 기술 통계값
                                        구하기

                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        Android Programming
                                    </td>
                                    <td>
                                        -안드로이드 소개<br>
                                        -어플리케이션<br>
                                        -액티비티,인텐트<br>
                                        -레이아웃과 기본 위젯<br>
                                        -이벤트 처리와 레이아웃 인플레이션<br>

                                    </td>
                                </tr>
                                <tr>
                                    <td scope="row" class="darker c">
                                        Open 분산 DB

                                    </td>
                                    <td>
                                        -분산 DBMS의 구조<br>
                                        -DIME의 구조<br>
                                        -전역 동시성 제어기법<br>
                                        -구현환경<br>
                                        -분산 카달로그 설계 및 구현<br>
                                        -전역갱신<br>
                                    </td>
                                </tr>

                                <tr>
                                    <td scope="row" class="darker c">
                                        Open API 융합 연결

                                    </td>
                                    <td>
                                        -오픈API 개요<br>
                                        -오픈 API 개발 기술<br>
                                        -.NET프레임워크<br>
                                        -Open API를 이용힌 시스템 융합<br>
                                        -시스템 구현
                                    </td>
                                </tr>

                                <tr>
                                    <td scope="row" class="darker c">
                                        Team Project

                                    </td>
                                    <td>
                                        -지금까지 배운 모든 기술을 통해서 실무 현업에 맞는 프로젝트로 개발해 보는 단계로 4인 내외로 팀을 구성<br>
                                        -최신 프로젝트 주제를 선정하여 3개월 동안 팀원의 역할분담 및 상호 협조 하에 프로젝트 수행하며, 주제 선정 <br>
                                        -관련된 자료 수집, 필요기술 학습, 명세확정, 일정 수립, 개발환경구축 등 개발, 통합테스트 등을 거쳐 개발을 완료<br>
                                        -외부업체 관계자들의 참관 하에 최종 전시회를 갖도록 한다.
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                    <!-- con_wrap1709 -->

                    <div class="con_wrap1709 ">
                        <h5>교육특전/혜택</h5>
                        <p>
                            1. 교육비 무료 <br>
                            2. 훈련수당 지원 ( 약 30만원/월 )<br>
                            3. 취업지원프로그램 제공
                        </p>
                    </div>


                    <div class="con_wrap1709 ">
                        <h5>수강대상 및 신청방법</h5>

                        <p>
                            <b>-수강대상</b><br>
                            핀테크, C++/C#, 윈도우즈 응용프로래밍 분야에 관심있는 미취업자, 졸업예정자, 내일배움카드 발급 가능자
                        </p>
                        <br><br>
                        <p>
                            <b>-신청방법</b><br>
                            1. 비트교육센터 회원가입 → 온라인 신청 → 레벨테스트 및 면담<br>
                            2. 주거지관할 고용센터 방문 후, 내일배움카드 신청
                        </p>

                    </div>
                    <br><br>

                    <!-- con_wrap1709 -->

                    <div class="con_wrap1709">
                        <img src="Images/proce.png" style="width:630px"/><br><br>
                    </div>


                    <div class="con_wrap1709" style="display: table; margin-left: auto; margin-right: auto;">
                        <a href="https://pf.kakao.com/_SmhqV"  title="카카오톡 상담신청" style="float:right; margin:12px 0px 12px 12px;">
                            <img src="/Images/Btns/btn_Kakao.png"/>
                        </a>

                        <a href="/Register/Request/register_kukka1.asp?app_CourseID=KUKA18_ED"  title="수강신청" style="float:right; margin:12px 0;">
                            <img src="/Images/Btns/btn_ApplyCourse.png"/>
                        </a>
                    </div>
                    <br><br>




                    <!--
                <div class="con_wrap1709">
                    <h5>1. 과정 소개</h5>
                    <p>
                        모든 사물을 인터넷을 기반으로 연결하여 사람과 사물, 사물과 사물간의 정보를 상호 소통하는 기술과 서비스인 사물인터넷에 대한 관심이 증대되고 있다. 이에 본 과정은 사물인터넷 플랫폼 서비스 개발 및 디바이스에 대한 지식과 개발능력을 배양하기 위해 IoT에 대한 이해 및 개발을 배우기 위한 지식 및 IoT 디바이스 및 서비스 개발에 기초가 되는 다양한 프로그래밍 언어부터 습득 한 후, IoT 디바이스로 대표적인 오픈소스 하드웨어 라즈베리 파이와 아두이노 기반으로 하드웨어에 대한 지식과 드라이버 개발 커널 빌드등 시스템 및 네트워크 프로그래밍을 학습하고 직접 실습한다. 이 후, 디바이스 개발에 대한 충분한 경험을 바탕으로 IoT 서비스 개발에 필요한 다양한 클라이언트, 서버 기술들을 습득하게 된다.
                    </p>
                </div>

                <div class="con_wrap1709">
                    <h5>2. 교육 특전</h5>
                    <ul class="pd_l5">
                        <li> - 교육비 전액 무료</li>
                        <li> - 훈련수당 최대 총 1,896,000원 지급 (지원대상에 따라 훈련수당은 변동됩니다.)</li>
                        <li> - 교육수료 후 취업 지원</li>
                    </ul>
                </div>

                <div class="con_wrap1709">
                    <h5>3. 교육 대상</h5>
                    <ul class="pd_15">
                        <li>사물 인터넷에 대한 경험이 필요한 초급 엔지니어</li>
                        <li>사물인터넷 디바이스 및 서비스 개발에 관심있는 자</li>
                        <li>사물인터넷 서비스 관련 신규 사업을 기획(준비)하는 창업 준비자</li>
                        <li>사물인터넷 분야로 진로를 결정한 대학(원)생 및 미취업자</li>
                    </ul>
                </div>

                <div class="con_wrap1709">
                    <h5>4. 모집기간 및 정원</h5>
                    <p>선착순 마감 / 25명</p>
                </div>

                <div class="con_wrap1709">
                    <h5>5. 신청방법</h5>
                    <p>온라인 수강신청 후 면담신청<br/>전화 - 02-3486-3456<br/>카카오톡 - 플러스친구(비트교육센터 검색)</p>
                </div>

                <div class="con_wrap1709">
                    <h5>6. 교육시간</h5>
                    <p>
-->
                    <%
                        '// < ! - -  #include virtual="/Include/CourseDateTime/Time/Time__KUKA18_RD.inc" - - >
                    %>
                    <!--08:50 ~ 18:00 (그룹스터디 포함 22:00까지)<br/>- 총 960시간(6개월)-->
                    <!--
                                                    </p>
                                            </div>

                                            <div class="con_wrap1709">
                                                <h5>7. 교육 기간</h5>
                                                <div class="divTable">
                                                    <table>
                                                        <colgroup>
                                                            <col style="width:25%">
                                                            <col style="width:75%">
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="col">과정명</th>
                                                                <td style="letter-spacing:-0.5px;"><b>라즈베리파이를 활용한 IoT 서비스 고급인력 양성과정</b></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="col">교육기간</th>
                                                                <td style="letter-spacing:-0.5px;">
                    -->
                    <%
                        '//												<!-- #include virtual="/Include/CourseDateTime/Date/Date__KUKA18_RD.inc" --> 6개월(120일) 총960시간
                    %>
                    <!--
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="col">교육문의</th>
                                                                <td>02-3486-3456</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                            <div class="con_wrap1709">
                                                <h5>8. 준비 서류</h5>
                                                <p><b>- 실업자 내일배움카드 발급(최소 2주, 최대 5~6주 소요)</b></p>
                                                <p><b>- 취업성공패키지 참여 카드발급(최소 4주 이상)</b></p>
                                                <p><span style="margin-left:7px; background:#ffff99;">참여 훈련생 특혜: 훈련 수당 10만원 지원금 추가  </span></p>
                                                <p style="margin-left:7px; font-size:1em; "><b>* 위의 카드발급은 주소지 관할 고용센터에서 발급 가능합니다.</b></p>
                                                <p style="color:#7f7f7f; font-size:1em; line-height:13px;">※ 단, 훈련장려금은 1개월 단위 출석률이 80% 이상인 경우에만 지급받을 수 있습니다.</p>
                                                <p style="color:#7f7f7f; font-size:1em; line-height:13px;">※ 실업급여를 받으시는 동안이나 공공근로사업에 참여하고 계신 동안에는 훈련장려금을 지급받을 수 없습니다.</p>
                                                <ul class="pd_l5">
                                                    <li>
                                                        <p class="diagram_wrap l" style="margin-top:0px;"><img src="/Images/Content/Diagram/img_course_diagram_06.PNG" style="width:100%;"></p>
                                                    </li>
                                                </ul>
                                                <p> - 증명사진 2매</b><p>
                                            </div>

                                            <div class="con_wrap1709 last">
                                                <h5>9. 교육내용</h5>

                                                <style>
                                                    .specialTable {
                                                        width:20%;
                                                        float:left;
                                                    }
                                                    .specialDiv {
                                                        width:1%;
                                                        padding:0 20px;
                                                        line-height:230px;
                                                        float:left;
                                                    }
                                                    .specialTable tr td {
                                                        border-bottom:initial !important;
                                                        border:1px solid !important;
                                                    }
                                                    .specialTable tr:nth-child(1) td { text-align:center; }
                                                    .specialTable tr:nth-child(2) { height:75px; }
                                                    .specialTable tr:nth-child(3) { height:95px; }
                                                </style>
                                                <table class="specialTable">
                                                    <tr><td>1단계</td></tr>
                                                    <tr><td>IoT에 대한 이해 및 개발을 위한 기본 기술</td></tr>
                                                    <tr><td>IoT 개요, 리눅스, Java, Python 프로그래밍</td></tr>
                                                </table>
                                                <div class="specialDiv">
                                                    →
                                                </div>
                                                <table class="specialTable">
                                                    <tr><td>2단계</td></tr>
                                                    <tr><td>IoT 디바이스 개발</td></tr>
                                                    <tr><td>라즈베리파이를 활용한 시스템 및 네트워크 프로그래밍</td></tr>
                                                </table>
                                                <div class="specialDiv">
                                                    →
                                                </div>
                                                <table class="specialTable">
                                                    <tr><td>3단계</td></tr>
                                                    <tr><td>IoT 서비스 개발</td></tr>
                                                    <tr><td>Pyhton 웹, Node.JS, 라즈베리파이 제어를 위한 안드로이드 앱 작성</td></tr>
                                                </table>
                                                <div class="specialDiv">
                                                    →
                                                </div>
                                                <table class="specialTable">
                                                    <tr><td>4단계</td></tr>
                                                    <tr><td>프로젝트 수행</td></tr>
                                                    <tr><td>라즈베리파이를 활용한 IoT 서비스 프로젝트 수행</td></tr>
                                                </table>
                                                <div style="clear:both;"></div>
                                            </div>
                                            -->
                </section>
            </div>
            <!-- // Content -->
        </div>
        <!-- //Content_Wrap -->
    </div>
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <!-- //Footer_Wrap -->
</div>
</body>
</html>