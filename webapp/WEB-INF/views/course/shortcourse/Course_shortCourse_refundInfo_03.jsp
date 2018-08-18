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

            ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");

            //document.body.scrollTop = document.body.scrollHeight;
            var height = document.body.scrollHeight;
            $( 'html, body' ).stop().animate( { scrollTop : height } );

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
    <hr>
    <div class="banner_wrap">
        <div class="banner pd_t50">
            <h3><span class="courseName">사업주 위탁훈련(회사환급)</span></h3>
        </div>
    </div>
    <div id="Container_Wrap" style="min-height:450px;">
        <div id="Content_Wrap" style="min-height:450px;">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_RefundInfo_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_RefundInfo_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>고용보험환급안내
                    </p>
                    <h4 style="float:left;">환급안내 - 사업주 위탁훈련</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section">
                    <div class="section_body">
                        <!-- con_wrap -->
                        <div class="con_wrap1709 mar_t30 bg_none" style="margin-left:66px;">
                            <div class="refundList_wrap" style="WIDTH:654px;">
                                <div class="refundCon">
                                    <h4 style="margin-left:3px; margin-top:55px; letter-spacing:-0.5px;">근로자 직무능력향상 <br> 정규직 80% <br> 비정규직 100%</h4>
                                    <p class="conTxt" style="margin-top:67px;">우선지원 대상기업 근로자<br>고용보험 임의가입 자영업자<br>기간제 근로자, 단시간 근로자<br>파견근로자, 일용근로자</p>
                                    <a href="/Course/shortCourse/Course_shortCourse_refundInfo_01.asp" class="btnBlueBorder big mar_t10">상세보기</a>
                                </div>
                                <div class="refundCon last">
                                    <h4 style="margin-top:65px;">사업주 위탁훈련<br>최대 100% 지원</h4>
                                    <p class="conTxt" style="margin-top:75px;">사업주가 훈련비용을 부담하며 재직<br>근로자 등을 대상으로 직업 훈련을<br>실시하는 경우 고용노동부에서<br>훈련비를 지원</p>
                                    <a href="/Course/shortCourse/Course_shortCourse_refundInfo_03.asp" class="btnBlueBorder big mar_t10">상세보기</a>
                                </div>
                            </div>
                        </div>
                        <!-- //con_wrap -->
                    </div>
                </section>
                <section class="section">
                    <!-- con_wrap -->
                    <div class="con_wrap1709">
                        <h5>사업주 위탁훈련 지원금이란?</h5>
                        <!--<p>고용보험가입사업장에 재직 중인 근로자들을 위한 직업훈련제도로 사업주가 훈련비용을 부담하며 재직근로자 등을 대상으로 직업훈련을 실시하는 경우 고용노동부에서 훈련비 등을 지원합니다. </p>-->
                        <p>고용보험가입사업장에 재직 중인 근로자들을 위한 직무향상을 위한 제도로 사업주가 훈련비용을 부담하며 재직근로자 등을 대상으로 직업훈련을 실시하는 경우 고용노동부에서 훈련비 등을 지원합니다. </p>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap1709">
                        <h5>지원대상</h5>
                        <dl>
                            <!--<dd>고용보험에 가입한 사업주로서 소속 근로자 등에게 사전에 고용노동부장관으로부터 과정인정을 받아 교육훈련을 직접 또는 위탁하여 실시하는 사업주 </dd>-->
                            <dd>고용보험에 가입한 사업주로서 소속 근로자 등에게 사전에 고용노동부장관으로부터 과정인정을 받아 교육훈련을 직접 또는 위탁하여 실시하는 사업주 훈련대상 고용보험 피보험자</dd>
                        </dl>
                    </div>
                    <div class="con_wrap1709">
                        <h5>훈련대상 </h5>
                        <dl>
                            <dd>
                                <ul class="ul_dot_gray">
                                    <!--
                                    <li>고용보험 피보험자</li>
                                    <li>고용보험 피보험자가 아닌 자로서 해당 사업주에게 고용된 자</li>
                                    <li>해당 사업이나 그 사업과 관련되는 사업에서 고용하려는 자(채용예정자) </li>
                                    <li>직업안정기관에 구직 등록한 자</li>
                                    -->
                                    <li>사업주에게 고용된 자로서, 고용보험이 납부되고 있는 자</li>
                                    <li>해당 사업이나 그 사업과 관련되는 사업에서 고용하려는 자(채용예정자) </li>
                                    <li>직업안정기관에 구직 등록한 자</li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap1709 last">
                        <h5>훈련절차 및 환급안내</h5>
                        <dl>
                            <dd>
                                1. 수강신청시 '사업주훈련'으로 지원서 작성 후, 지원신청을 합니다.
                            </dd>
                            <dd>
                                2. ‘훈련비신청서류다운’ 후 작성하여, 소속 회사의 직인을 날인하여 제출합니다.<br/>
                                <!--<span style="margin-left:13px;">제출기한 및 서류: 교육시작 이틀전까지 훈련위탁체결서 / 근로시간외 수강동의서 각 1부씩</span><br/>-->
                                <div style="margin-left:13px;">
                                    제출기한 및 서류: 교육시작 이틀 전까지 <br/>
                                    훈련위탁체결서 / 근로시간외 수강동의서 /  개인정보 수집이용 동의서 / 기업명의 통장사본 각 1부씩<br/>
                                    신청서 보내실곳 : <a href="mailto:bithrd@bit.kr" class="email">bithrd@bit.kr</a>
                                </div>
                            </dd>
                            <dd>
                                3. 회사 명의로 입금 또는 기업카드로 교육비 전체를 결제합니다.<br/>
                                <span style="margin-left:13px; font-weight:900;">단, 소정훈련과정의 출석률이 80%이상일 경우에만 환급가능</span>
                            </dd>
                            <dd>
                                <!--4. 교육종료 후, 회사 관할 산업인력공단으로 훈련비용 지원신청서를 제출하시면 14일이내 교육비를 환급 받으실 수 있습니다.-->
                                4. 교육종료 후, 소정훈련과정의 출석률이 80%이상일 경우에만 교육비를 환급 받으실 수 있습니다.
                            </dd>
                        </dl>
                        <dl>
                            <dd>
                                <span class="blueTxt">* 수강신청 후 연락 주시면 환급에 대해 상세하게 안내해드립니다.</span>
                            </dd>
                        </dl>
                        <!--
                        <p>수강신청시 '재직자환급'으로 지원서 작성 후 회사(대표자)의 이름으로 입금 또는 기업카드로 교육비를 결제합니다.<br>
                        <span class="redTxt">단, 소정훈련과정의 출석률이 80%이상일 경우에만 환급가능</span></p>
                        <dl>
                            <dt>훈련비 신청관련 증빙서류</dt>
                            <dd class="mar_b5">
                                <ul class="ul_dot_gray">
                                    <li>1. 훈련 위탁(신청)계약서 1부</li>
                                    <li>2. 사업자 등록증 사본 1부</li>
                                    <li>3. 근로시간외 직업능력개발훈련 동의서 1부 (대표자의 직인 날인을 필히 하셔야 합니다.)</li>
                                </ul>
                            </dd>
                            <dd>* 수강신청 후 위 서류들을 비트교육센터 팩스 또는 이메일로 보내신 후 연락바랍니다. FAX:02-3486-7890 &nbsp;TEL:02-3486-3456 &nbsp;e-mail:kimyj0723@bit.kr</dd>
                        </dl>
                        -->
                    </div>
                    <!-- //con_wrap -->
                    <div class="btn_wrap c" style="padding:30px;">
                        <!--
                        <a href="/Upload/company.zip" class="btn mid green1">훈련비 신청서류 다운</a><br/>
                        <a href="/Upload/개인정보수집이용_동의서(사업주).zip" class="btn mid green1" style="margin-top:10px;">개인정보수집이용 동의서 다운</a>
                        -->
                        <a href="${pageContext.request.contextPath}/assets/Upload/company2.zip" class="btnGreenBorder big">훈련비 신청서류 다운</a><br/>

                    </div>
                </section>
            </div>
            <!--<a href="#this" class="moveTop">Top</a>-->
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