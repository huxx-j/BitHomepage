<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%--%>
    <%--Dim IPIN_DLL, clsIPIN--%>
    <%--Dim iReturnCode, sRequestData--%>
    <%--Dim sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL--%>

    <%--sIDPCODE = "I261"--%>
    <%--sIDPPWD = "38010800"--%>
    <%--sRETURNURL = "https://www.bitschool.com/Member/IPIN/member_ipin_process.asp"--%>
    <%--' 인증 완료 시 인증결과를 수신할 CP Return Page URL--%>
    <%--sCPREQUESTNUM   = "" ' CP 요청 번호(CP에서 임의로 생성한 값)--%>
    <%--IPIN_DLL = "IPIN2Client.Kisinfo"--%>

    <%--SET clsIPIN = SERVER.CREATEOBJECT(IPIN_DLL)--%>

    <%--clsIPIN.fnRequestSEQ(sIDPCODE)--%>
    <%--sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ--%>
    <%--session("REQUEST_NUM") = sCPREQUESTNUM ' CP 요청 번호를 세션에 저장--%>

    <%--iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)--%>

    <%--IF iReturnCode = 0 THEN--%>
        <%--sRequestData = clsIPIN. bstrRequestCipherData ' 요청정보를 암호화한 값--%>
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
    <%--END If--%>

    <%--SET clsIPIN = NOTHING--%>
<%--%>--%>

<%--<%--%>
    <%--'************************ 핸드폰인증 추가 (2016-02-19-YG) *****************************--%>

    <%--Dim clsCPClient_2--%>
    <%--Dim iRtn_2, sEncData, sPlainData_2--%>
    <%--Dim sRequestNO_2, sSiteCode_2, sSitePassword_2 , sReturnUrl_2 , sErrorUrl_2, popgubun_2, customize_2--%>

    <%--SET clsCPClient_2  = SERVER.CREATEOBJECT("CPClient.Kisinfo")--%>

    <%--sSiteCode_2       = "H0225"			'NICE로부터 부여받은 사이트 코드--%>
    <%--sSitePassword_2   = "KCRKENUII90J"			'NICE로부터 부여받은 사이트 패스워드--%>

    <%--sAuthType = ""		'없으면 기본 선택화면, M: 핸드폰, C: 카드, X: 공인인증서--%>

    <%--popgubun_2 	= "N"		'Y : 취소버튼 있음 / N : 취소버튼 없음--%>
    <%--customize_2 = ""		'없으면 기본 웹페이지 / Mobile : 모바일페이지--%>

    <%--'CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.--%>
    <%--sReturnUrl_2 = "http://www.bitacademy.com/Member/IPIN/member_hp_process.asp"			'성공시 이동될 URL--%>
    <%--sErrorUrl_2	 = "http://www.bitacademy.com/Member/IPIN/member_hp_fail.asp"				'실패시 이동될 URL--%>

    <%--sRequestNO_2 = "REQ0000000001"			'요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로--%>
    <%--'업체에 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.--%>
    <%--iRtn_2 = clsCPClient_2.fnRequestNO(sSiteCode_2)--%>

    <%--''''' 무조건 세션에 넣는 것으로 변경 : 2016-02-20-YG--%>
    <%--session("REQ_SEQ") = sRequestNO_2		'해킹등의 방지를 위하여 세션을 사용한다면, 세션에 요청번호를 넣는다.--%>

    <%--IF iRtn_2 = 0 THEN--%>
        <%--sRequestNO_2 = clsCPClient_2.bstrRandomRequestNO--%>
    <%--session("REQ_SEQ") = sRequestNO_2		'해킹등의 방지를 위하여 세션을 사용한다면, 세션에 요청번호를 넣는다.--%>
    <%--END IF--%>

    <%--sPlainData_2 = fnGenPlainData(sRequestNO_2, sSiteCode_2, sAuthType, sReturnUrl_2, sErrorUrl_2, popgubun_2, customize_2)--%>

    <%--'실제적인 암호화--%>
    <%--iRtn_2 = clsCPClient_2.fnEncode(sSiteCode_2, sSitePassword_2, sPlainData_2)--%>

    <%--IF iRtn_2 = 0 THEN--%>
        <%--sEncData = clsCPClient_2.bstrCipherData--%>
    <%--ELSE--%>
    <%--RESPONSE.WRITE "요청정보_암호화_오류:" & iRtn_2 & "<br>"--%>
    <%--' -1 : 암호화 시스템 에러입니다.--%>
    <%--' -2 : 암호화 처리오류입니다.--%>
    <%--' -3 : 암호화 데이터 오류입니다.--%>
    <%--' -4 : 입력 데이터 오류입니다.--%>
    <%--END IF--%>

    <%--Set clsCPClient_2 = Nothing--%>
<%--%>--%>

<%--<%--%>
    <%--'************************ 핸드폰인증 추가 (2016-02-19-YG) *****************************--%>

    <%--'**************************************************************************************--%>
    <%--'문자열 생성 --%>
    <%--'**************************************************************************************  					          	--%>
    <%--Function fnGenPlainData(aRequestNO, aSiteCode, aAuthType, aReturnUrl, aErrorUrl, popgubun_2, customize_2)--%>

    <%--'입력 파라미터로 plaindata 생성 			--%>
    <%--retPlainData  = "7:REQ_SEQ" & fnGetDataLength(aRequestNO) & ":" & aRequestNO & _--%>
    <%--"8:SITECODE" & fnGetDataLength(aSiteCode) & ":" & aSiteCode & _--%>
    <%--"9:AUTH_TYPE" & fnGetDataLength(aAuthType) & ":" & aAuthType & _--%>
    <%--"7:RTN_URL" & fnGetDataLength(aReturnUrl) & ":" & aReturnUrl & _--%>
    <%--"7:ERR_URL" & fnGetDataLength(aErrorUrl) & ":" & aErrorUrl	& _--%>
    <%--"11:POPUP_GUBUN" & fnGetDataLength(popgubun_2) & ":" & popgubun_2 & _--%>
    <%--"9:customize" & fnGetDataLength(customize_2) & ":" & customize_2--%>
    <%--fnGenPlainData = retPlainData--%>

    <%--End Function--%>

    <%--'**************************************************************************************--%>
    <%--'입력파라미터의 문자열길이 추출	--%>
    <%--'**************************************************************************************  					          	--%>
    <%--Function fnGetDataLength(aData)--%>
    <%--Dim iData_len_2--%>
    <%--if (len(aData) > 0) then--%>
    <%--for i = 1 to len(aData)--%>
    <%--if (ASC(mid(aData,i,1)) < 0) then	'한글인경우--%>
    <%--iData_len_2 = iData_len_2 + 2--%>
    <%--else			'한글이아닌경우--%>
    <%--iData_len_2 = iData_len_2 + 1--%>
    <%--end if--%>
    <%--next--%>
    <%--else--%>
    <%--iData_len_2 = 0--%>
    <%--end if--%>

    <%--fnGetDataLength = iData_len_2--%>
    <%--End Function--%>
<%--%>--%>

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
    <!--#include virtual="/Member/member_join_02_script.asp"-->
    <c:import url="./member_join_02_script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >

    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script language="javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>

            //$(".snb .depth1").eq(1).addClass("on");
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");
        });

        window.name = "Parent_window";

        function fnPopup() {
            window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
            document.form_ipin.target = "popupIPIN2";
            document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
            document.form_ipin.submit();
        }
    </script>

    <script language='javascript'>
        window.name ="Parent_window";

        function fnPopup_2(){
            window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
            document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
            document.form_chk.target = "popupChk";
            document.form_chk.submit();
        }
    </script>
</head>
<body>
<form name="form_ipin" method="post">
    <input type="hidden" name="m" value="pubmain">
    <input type="hidden" name="enc_data" value="<%--<%= sRequestData %>--%>">
</form>

<!-- 본인인증 서비스 팝업을 호출하기 위해서는 다음과 같은 form이 필요합니다. -->
<form name="form_chk" method="post">
    <input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
    <input type="hidden" name="EncodeData" value="<%--<%= sEncData %>--%>">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->
    <!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
           해당 파라미터는 추가하실 수 없습니다. -->
    <input type="hidden" name="param_r1" value="">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="param_r3" value="">
</form>

<div id="Wrapper">

    <!-- Header -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header -->
    <br>
    <!-- Container -->
    <div id="Container_Wrap" style="min-height:250px;">
        <div id="Content_Wrap" style="min-height:250px;">
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
                    <h4 style="float:left;">회원가입</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <section class="section" style="font-family:'Nanum Gothic'; margin-top:10px;">
                    <div>
                        <p style="font-size:11pt; float:left;">회원가입을 위해서 본인인증이 필요합니다.</p>
                        <div style="float:right;">
                            <a href="http://i-pin.kisa.or.kr/kor/about/about.jsp" title="" class="btnWhiteBorder big" style="margin-left:20px; padding:0 15px;" target="_blank"><span style="font-size:10pt; color:#65901F;">아이핀이란?</span></a>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="btn_wrap c mar_t20" style="padding:30px !important; font-family:'Nanum Gothic Bold'; ">
                        <a href="javascript:fnPopup_2();" class="btnBlueBorder big" style="margin-left:0px; font-size:12pt;">핸드폰 인증</a>
                        <a href="javascript:fnPopup();" class="btnBlueBorder big" style="margin-left:5px; font-size:12pt;">아이핀 인증</a>

                        <%--<%--%>
                            <%--'// <!-- 본인확인서비스 순단 공지 MODULE by YG -->--%>
                            <%--DateTimeStart = "2017-05-16 18:00"--%>
                            <%--DateTimeEnd = "2017-05-16 20:30"--%>
                            <%--StrCompany = "LGU+"--%>
                            <%--StrHours = "2시간"--%>
                            <%--StrMessage1 = "2017.5.16(화) 18:30 ~ 20:30 (" & StrHours & ") " & StrCompany & " 휴대폰 본인확인서비스가 중단됩니다."--%>
                            <%--StrMessage2 = StrHours & " 동안 " & StrCompany & " 핸드폰 본인확인서비스가 불가능할 수 있습니다."--%>
                            <%--StrMessage3 = "- " & StrCompany & " 본인확인(MNO), 알뜰폰(MVNO) 모두 불가능하게 됩니다."--%>
                            <%--StrMessage4 = "- 작업시간동안에도 " & StrCompany & " 를 제외한 타통신사 인증은 가능합니다."--%>

                            <%--'Response.Write "<br/>" & DateDiff("n", CDate(DateTimeStart), Now) & "<br/>"--%>
                            <%--'Response.Write "<br/>" & DateDiff("n", Now, CDate(DateTimeEnd) ) & "<br/>"--%>

                            <%--IF DateDiff("n", CDate(DateTimeStart), Now)>=0 AND DateDiff("n", Now, CDate(DateTimeEnd))>=0 THEN--%>
                            <%--Response.Write "<div style='border-radius:16px; margin-left:60px; margin-right:60px; margin-top:30px; padding:15px; font-size:12pt; text-align:left; border:1px dotted #c47474; background-color:#fcffd1;'>"--%>
                            <%--Response.Write "<span class='redTxt' style='font-size:1.5em;'><b>"& "* 공지 : </b></span><span class='redTxt'><br/><br/> <div style='margin-left:57px;'><b>" & StrCompany & " </b>내부시스템 작업으로 인해, </div>" & "<br/>"--%>
                            <%--Response.Write "<div style='margin-left:57px;'><b>" & StrMessage1 & "</b></div>" & "<br/>"--%>
                            <%--Response.Write "<span style='margin-left:57px;'>"    & StrMessage2 & "</b></span>" & "<br/><br/>"--%>
                            <%--Response.Write "<span style='margin-left:87px; font-size:10pt; '>" & StrMessage3 & "</span>" & "<br/>"--%>
                            <%--Response.Write "<span style='margin-left:87px; font-size:10pt; '>" & StrMessage4 & "</span>" & "<br/>"--%>
                            <%--Response.Write "</span>" & "<br/>"--%>
                            <%--Response.Write "<span style='margin-left:57px;'>불편을 드려 죄송합니다.</span>" & "<br/>"--%>
                            <%--Response.Write "</div>" & "<br/>"--%>
                            <%--END IF--%>
                            <%--'Response.Write Date--%>
                            <%--'Response.Write Mid(Date,1,4) & "<br/>"--%>
                            <%--'Response.Write Mid(Date,6,2) & "<br/>"--%>
                            <%--'Response.Write Mid(Date,9,2) & "<br/>"--%>

                            <%--'// <!-- //본인확인서비스 순단 공지 MODULE by YG -->--%>
                        <%--%>--%>

                        <!-- 본인확인서비스 순단 공지 -->
                        <!--
                        <div style="margin-left:60px; margin-right:60px; margin-top:30px; padding:3px; font-size:12pt; text-align:left; border:1px dotted #c47474; background-color:#fcffd1;">
                            <span class="redTxt">
                                * 공지 : LG U+ 내부시스템 작업으로 인해, <br/>
                                <span style="margin-left:57px;"><b>2017.2.7.(화) 13:30 ~ 15:30 (2시간) LG U+ 본인확인서비스가 중단됩니다.</b></span><br/><br/>
                                <span style="margin-left:57px;">2시간동안 LG U+ 본인확인서비스가 불가능할 수 있습니다.</b></span><br/>
                                <span style="margin-left:57px; font-size:10pt; ">- LG U+ 본인확인(MNO), 알뜰폰(MVNO) 모두 불가능하게 됩니다.</span><br/>
                                <span style="margin-left:57px; font-size:10pt; ">- LG U+ 를 제외한 타통신사 인증은 가능합니다.</span><br/>
                            </span>
                            <br/>
                            <span style="margin-left:57px;">불편을 드려 죄송합니다.</span>
                        </div>
                        -->
                        <!-- // 본인확인서비스 순단 공지 -->

                    </div>

                    <div class="mar_t40" style="border:1px solid #d9d9d9; padding:10px; ">
                        <ul>
                            <li class="fb mar_b10">아이핀(i-PIN)은 사이트 가입자가 자신의 신원정보를 신뢰할 수 있는 본인확인기관에 제공하여 실명인증을 받게 되므로, 비트교육센터에서는 회원님의 주민등록번호를 저장하지 않습니다. </li>
                            <li>※ 아이핀 인증을 통한 회원가입 아이핀(i-PIN)이란, 개인정보 보호를 위해 인터넷상에서 주민등록번호를 대신하여 본인임을 확인받을 수 있는 신원 확인 수단입니다.</li>
                        </ul>
                    </div>

                </section>
                <!--<a href="#this" class="moveTop">Top</a>-->
            </div>
            <!-- //Content -->
        </div>
    </div>
    <!-- //Container -->
    <hr>
    <!-- Footer -->
    <!-- #include virtual = "/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer -->
</div>
</body>
</html>