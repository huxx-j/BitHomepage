<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <title>비트교육센터</title>
    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script.asp"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>
    <!--#include virtual="/Register/Request/register_employment_script2.asp"-->
    <c:import url="./register_employment_script2.jsp"/>

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
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// 신규지원
            $(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// 신규지원SUB OPEN
            $(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(5).addClass("on");  	// 국가기간전략산업직종 ON
        });
    </script>
    <style>
        table.padding2px tr td {
            padding-left:2px;
            padding-right:2px;
            font-size:13px;
        }
    </style>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body onLoad="MM_preloadImages('/image/register/menu_06_01.gif','/image/register/menu_07_01.gif','/image/register/menu_08_01.gif','/image/register/menu_09_01.gif','/image/register/menu_01_01.gif','/image/register/menu_02_01.gif','/image/register/menu_03_01.gif','/image/register/menu_04_01.gif','/image/register/menu_05_01.gif');SelectSubject();">
<form name="ExpertApp" method="POST" action="${pageContext.request.contextPath}/register/request/register_kukka_Insert2">
    <input type="hidden" name="nextProc" value="">
    <input type="hidden" name="idx" value="<%--<%=idx%>--%>">
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
                            <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>신규지원
                        </p>
                        <h4>국가기간 전략산업 직종훈련 <span style="font-size:0.8em;">(국비지원무료과정)</span></h4>
                    </div>

                    <div class="con_wrap1709">
                        <!-- # i n c lude virtual="/Register/Include/register_info_02.asp" -->
                        <!-- From /Register/Include/register_info_02.asp -->
                        <section class="section">
                            <h5>지원동기</h5>
                            <div class="divTable">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th scope="col" class="tit">지원동기</th>
                                    </tr>
                                    <tr>
                                        <td><textarea onBlur="chklen_motive(this)" name="Motivetext" rows="5" style="width:100%; padding:0; border:0; resize: none"><%--<%=app_AppliMotive%>--%></textarea></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                        <section class="section">
                            <h5>수료 후 계획</h5>
                            <div class="divTable">
                                <table>
                                    <tbody>
                                    <tr>
                                        <td class="l" colspan="2">
                                            <input name="hope" type="checkbox" value="1" ${hope.hope[0] eq "1" ? "checked" : ""}> 취업
                                            <input name="hope" type="checkbox" value="2" ${hope.hope[1] eq "2" ? "checked" : ""}>해외취업
                                            <input name="hope" type="checkbox" value="3" ${hope.hope[2] eq "3" ? "checked" : ""}>복직혹은 복학
                                            <input name="hope" type="checkbox" value="4" ${hope.hope[3] eq "4" ? "checked" : ""}>대학원진학
                                            <input name="hope" type="checkbox" value="5" ${hope.hope[4] eq "5" ? "checked" : ""}>병역특례
                                            <input name="hope" type="checkbox" value="6" ${hope.hope[5] eq "6" ? "checked" : ""}>기타
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="col" class="tit">수료 후 계획 (구체적으로)</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <textarea onBlur="chklen_plan(this)" name="hopetext" rows="5" style="width:100%; height:110px; padding:0;border:0; resize: none">${hope.afterPlan}</textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                        <section class="section">
                            <h5>학습내용</h5>
                            <div class="divTable">
                                <table>
                                    <colgroup>
                                        <col width="50%">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th scope="col">개인학습내용 및 책 제목</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td rowspan="3">
                                            <textarea onBlur="chklen_study(this)" name="Studytext" rows="5" style="width:100%; height:110px; padding:0;border:0; resize: none;"><%--<%=StudyContent%>--%></textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                        <section class="section">
                            <h5>사용언어/툴</h5>
                            <div class="divTable">
                                <table class="padding2px">
                                    <colgroup>
                                        <col width="100%">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th style="width:40px;" scope="row" class="tit">사용언어/툴</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>
                                            <textarea onBlur="chklen_study(this)" name="tooltext" rows="5" style="width:100%; height:50px; padding:0;border:0; resize: none;"><%--<%=StudyContent%>--%></textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>

                        <section>
                            <h5>지원경로</h5>
                            <div class="divTable">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th style="width:40px;" scope="row" rowspan="2" class="tit">소개</th>
                                        <td>비트교육센터 수료자</td>
                                        <td>성명 <input type="text" name="Name" value="<%--<%=AppWayCompName%>--%>" maxlength=10 size="8"></td>
                                        <td>관계 <input type="text" name="Relation" size="13" value="<%--<%=AppWayCompRelation%>--%>"></td>
                                        <td>직업 <input type="text" name="Office" size="13" value="<%--<%=AppWayOfficeName%>--%>"></td>
                                    </tr>
                                    <tr>
                                        <td>기타</td>
                                        <td>성명 <input type="text" name="EtcName" value="<%--<%=AppWayEtcName%>--%>" size="8"  maxlength="10"></td>
                                        <td>관계 <input type="text" name="EtcRelation" value="<%--<%=AppWayEtcRelation%>--%>" size="13"  maxlength="10"></td>
                                        <td>직업 <input type="text" name="EtcPos" value="<%--<%=AppWayEtcPosition%>--%>" size="13"  maxlength="10"></td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="2" class="tit">광고</th>
                                        <td colspan="4">
                                            <input type="checkbox" value='010102' name="Newchkbox0" >비트교육센터 홈페이지 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">후견인 제도 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">학교 포스터 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">노동부 고용센터 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">사람인
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <input type="checkbox" value='010102' name="Newchkbox0" >Facebook &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">네이버 지식인 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">네이버 키워드 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">네이버 블로그 &emsp;
                                            <input type="checkbox" value='010102' name="Newchkbox0">잡코리아
                                        </td>
                                    </tr>

                                    <tr>
                                        <th scope="row" class="tit">기타</th>
                                        <td colspan="4">
                                            <input type="text" style="width: 100%;"  value='<%--<%=Rs("AdvertiseID")%>--%>' name="etcText<%--<%=i%>--%>" <%--<%IF  Etcchk(i)=Rs("AdvertiseID") then%> Checked <%end if%>--%>><%--<%=Rs("AdvertisementName")%>--%>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>
                        <!-- // from /Register/Include/register_info_02.asp -->

                        <div class="mar_t20 c">
                            <p class="fs16">작성일 : <%--<% Response.Write Year(date)&" 년 "&Month(date)&" 월 "&Day(date)&" 일 " %>--%></p>
                            <p class="fs16">작성자 : <%--<%=TRIM(session("NameHan"))%>--%></p>
                        </div>
                        <div class="btn_wrap c pd_t30 pd_b30">
                            <a href="javascript:submit_it(1)" title="" class="btnGreenBorder big">지원하기</a>
                            <a href="javascript:history.back();" title="" class="btnWhiteBorder big">이전페이지</a>
                            <a href="${pageContext.request.contextPath}/register/register_newRequest" title="" class="btnWhiteBorder big">취소</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer_Wrap -->
        <!-- #include virtual="/Include/FooterHTML1709.asp"-->
        <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
        <!-- //Footer_Wrap -->
    </div>
</form>
</body>
</html>
