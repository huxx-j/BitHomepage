<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"  FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->

    <%--Dim CompSeqNum,CompResNum,CompName--%>

    <%--CompSeqNum = ""  '세션--%>
    <%--CompSeqNum = session("CompSeqNum")--%>
    <%--CompResNum = session("CompResNum")--%>
    <%--CompName = session("CompName")--%>

    <%--'if trim(CompSeqNum)="" or CompResNum = "" or CompName = "" then--%>
    <%--'	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/job/advance_register_info.asp")--%>
    <%--'end if	--%>


    <%--Set Dbcon = Server.CreateObject("ADODB.Connection")--%>
    <%--Dbcon.Open Con_bit_db--%>
<%--%>--%>

<html>
<link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
<head>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">--%>

    <title>비트교육센터 홈페이지에 오신 것을 환영합니다.</title>
    <!-- #include virtual="/Include/Meta.asp"-->
        <c:import url="/WEB-INF/views/Include/Meta.jsp"/>

    <!-- #include virtual="/Include/ContentStyle.asp"-->
        <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
        <c:import url="/WEB-INF/views/Include/Script.jsp"/>
        <!-- #include virtual="/Include/Script.asp"-->
    <!--#include virtual="/job/WriteRecruit_script.asp"-->
        <c:import url="./WriteRecruit_script.jsp"/>

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

            //$(".snb_1702 .newdepth1").eq(1).addClass("on");
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");

            $("#inputZipCode").click(function() {
                alert("우편번호검색 버튼을 눌러주세요.");
            });
        });
    </script>

    <!--<link href="/css/main.css" rel="stylesheet" type="text/css">-->
    <!--
    <script language='javascript' src='/js/BITobject.js'></script>
    <script language='javascript' src='/js/main.js'></script>
    -->

    <!-- 우편번호 DAUM API 적용 -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script>
        function openDAUMapi() {
            new daum.Postcode({
                oncomplete: function(data) {
                    $("#inputZipCode").val(data.zonecode);
                    $("#inputAddress").val(data.roadAddress + " ");
                    $("#inputAddress").focus();
                    alert("입력되었습니다. 이제 상세주소를 입력해주세요.")
                },
                left: -900,
                top: 200
            }).open();
        }
    </script>

    <script language="JAVAScript">
        <!--
        function right(e)
        {
            if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))
                return false;
            else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3))
            {
                alert("비트교육센터입니다.");
                return false;
            }
            return true;
        }
        document.onmousedown=right;
        if (document.layers) window.captureEvents(Event.MOUSEDOWN);
        window.onmousedown=right;

        function saveit()
        {
            var FJ = document.form;

            if(FJ.czipcode.value == "") {
                alert("우편번호 및 회사주소를 입력해주세요.");
                FJ.czipcode.focus();
                return;
            }

            if(FJ.CompName.value == "") {
                alert("회사명을 입력해주세요.");
                FJ.CompName.focus();
                return;
            }

            if(FJ.CompResNum.value == "") {
                alert("사업자등록번호를 입력해주세요.");
                FJ.CompResNum.focus();
                return;
            }

            if(FJ.Business.value == "") {
                alert("주력사업을 입력해주세요.");
                FJ.Business.focus();
                return;
            }

            if(FJ.Capital.value == "") {
                alert("자본금을 입력해주세요.");
                FJ.Capital.focus();
                return;
            }

            if(FJ.YearSell.value == "") {
                alert("연매출액을 입력해주세요.");
                FJ.YearSell.focus();
                return;
            }

            if(FJ.CompanyStaffNum.value == "") {
                alert("직원수를 입력해주세요.");
                FJ.CompanyStaffNum.focus();
                return;
            }

            if(FJ.isStock.value == "-1") {
                alert("상장여부를 입력해주세요.");
                FJ.isStock.focus();
                return;
            }

            if(FJ.caddr.value == "") {
                alert("회사주소를 입력해주세요.");
                FJ.caddr.focus();
                return;
            }

            if(FJ.HomePage.value == "") {
                alert("홈페이지를 입력해주세요.");
                FJ.HomePage.focus();
                return;
            }

            if(FJ.Welfare.value == "") {
                alert("복지사항을 입력해주세요.");
                FJ.Welfare.focus();
                return;
            }

            if(FJ.Introduct.value == "") {
                alert("회사소개를 입력해주세요.");
                FJ.Introduct.focus();
                return;
            }

            if(FJ.Department.value == "" ) {
                alert("모집부문을 기입해 주십시요")
                FJ.Department.focus();
                return;
            }

            if(FJ.Location.value == "" ) {
                alert("근무지를 기입해 주십시요")
                FJ.Location.focus();
                return;
            }

            if(FJ.StaffNum.value == "" ) {
                alert("총 모집인원을 기입해 주십시요")
                FJ.StaffNum.focus();
                return;
            }

            if(FJ.Operation.value == "" ) {
                alert("담당업무를 기입해 주십시요")
                FJ.Operation.focus();
                return;
            }

            if(FJ.DevelopOS.value == "" ) {
                alert("개발환경을 기입해 주십시요")
                FJ.DevelopOS.focus();
                return;
            }

            if(FJ.DevelopDB.value == "" ) {
                alert("개발환경을 기입해 주십시요")
                FJ.DevelopDB.focus();
                return;
            }

            if(FJ.DevelopLang.value == "" ) {
                alert("개발환경을 기입해 주십시요")
                FJ.DevelopLang.focus();
                return;
            }

            if(FJ.Position.selectedIndex==0) {
                alert("채용직급을 선택해 주십시요")
                FJ.Position.focus();
                return;
            }

            if(FJ.salary.selectedIndex==0) {
                alert("급여조건 선택해 주십시요")
                FJ.salary.focus();
                return;
            }

            if(FJ.SelectStep.value == "" ) {
                alert("전형절차를 기입해 주십시요")
                FJ.SelectStep.focus();
                return;
            }

            if(FJ.Paper.value == "" ) {
                alert("제출서류를 기입해 주십시요")
                FJ.Paper.focus();
                return;
            }

            if(FJ.ChargeName.value == "" ) {
                alert("담당자 성명을 기입해 주십시요")
                FJ.ChargeName.focus();
                return;
            }

            if(FJ.ChargeTel.value == "" ) {
                alert("전화번호를 기입해 주십시요")
                FJ.ChargeTel.focus();
                return;
            }
            if(FJ.ChargeHandphone.value == "" ) {
                alert("핸드폰번호를 기입해 주십시요")
                FJ.ChargeHandphone.focus();
                return;
            }

            if(FJ.ChargeEmail.value == "" ) {
                alert("E-MAIL을 기입해 주십시요")
                FJ.ChargeEmail.focus();
                return;
            }

            document.form.submit();
            return true;
        }

        //자격요건 불문 선택시 비활성화
        function setQualiMajor()
        {
            var FJ=document.form;
            if(FJ.chkQuali[3].checked==true){
                FJ.QualiMajor.disabled=true;
                FJ.QualiMajor.style.background = "#CCCCCC";
                FJ.QualiMajor.value=""

            }else{
                FJ.QualiMajor.disabled=false;
                FJ.QualiMajor.style.background = "#FFFFFF";
            }
        }

        //정규직 선택시 비활성화
        function setInternTerm()
        {
            var FJ=document.form;
            if(FJ.Job_Type[1].checked==true){
                FJ.Intern_Term.disabled=true;
                FJ.Intern_Term.style.background = "#CCCCCC";
                FJ.Intern_Term.value=""

            }else{
                FJ.Intern_Term.disabled=false;
                FJ.Intern_Term.style.background = "#FFFFFF";
            }
        }

        //신입 선택시 비활성화
        function setCareerYear()
        {
            var FJ=document.form;
            if(FJ.Career[1].checked==true){
                FJ.Career_Year.disabled=true;
                FJ.Career_Year.style.background = "#CCCCCC";
                FJ.Career_Year.value=""

            }else{
                FJ.Career_Year.disabled=false;
                FJ.Career_Year.style.background = "#FFFFFF";
            }
        }

        function logout()
        {
            //location.href = "../job/company_logout.asp";
            return true;
        }
        //-->

        function zip_search1()
        {
            window.open("WriteRecruit_Zipsearch.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")
        }

    </script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/CSS/Base2017Webfont.css"/>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>

</head>


<!--<body onLoad="MM_preloadImages('/image/employment/menu_05_01.gif','/image/employment/menu_06_01.gif','/image/employment/menu_07_01.gif','/image/employment/menu_08_01.gif','/image/employment/menu_09_01.gif','/image/employment/menu_01_01.gif','/image/employment/menu_02_01.gif','/image/employment/menu_04_01.gif')">-->
<body>
<style>
    .courseName {
        font-size:15pt !important;
    }
    .detailName {
        font-size:23pt !important;
    }
</style>
<style>
    .myTableStyle {
        display: table;
        border-collapse: collapse;
        border-spacing: 1px;
    }
    .myTableStyle td {
        color:#666666;
        height:40px;
        padding:0;
        padding-left:16px;
        border-bottom:1px solid #d9d9d9;
    } /* 	padding:3px 7px;   border:1px solid grey;  */
    .myTableStyle td:not(.first) {
        border-top:1px solid #d9d9d9;
    }
    .myTableStyle td input {
        padding:5px 10px;
        border:none;
    }
    .myTableStyle td textarea {
        padding:5px 10px;
        border:none;
    }

    .myTableStyle th {
        display: table-cell;
        text-align:center;
        vertical-align: inherit;
        background-color: #e6e7e7;
        border-bottom:1px solid #d4d5d5;
        padding:1px 5px;
        color:#666666;
        min-height:30px;
        font-size: 16px;
        font-weight: 300;
        letter-spacing: -1px;
    }
    .myTableStyle th:not(.first) {
        border-top:1px solid #d4d5d5;
    }
    .myBold {
        font-weight:600;
        color:#666666;
    }
    .myBtn {
        color: #ffffff;
        background-color: #73ad21;
        box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
        border:none;

        height:20px;
        width:60px;
        font-size:8pt;
        /* font-family:'Nanum Gothic Bold'; */
        border-radius:3px;
    }
    .myGrayThin {
        color: #8a8a8a;
        font-weight: 300;
    }
    #Container_Wrap {
        font-family:'SandolGothicNeo2' !important;
        font-weight:500;
    }
    .divTable {
        border-top:1px solid #004192;
    }

</style>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->
    <div id="Container_Wrap" style="min-height:1570px; font-family:'SandolGothicNeo2' !important; ">
        <div id="Content_Wrap" style="min-height:1570px;">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
            <c:import url="/WEB-INF/views/Include/SNB_JobCenter_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>홈
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>취업지원센터
                    </p>
                    <h4 style="float:left;">구인의뢰 신청</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <div id=divMenu  style="margin-left:5px;">
                    <div class="myConWrap" style="height:45px; font-size:14px; font-weight:600; line-height:22px; margin-bottom:20px;">
                        <p class="blueTxt">아래에 채용정보를 입력하시면 비트교육센터 수료생 구인의뢰를 진행하실 수 있습니다.</p>
                        <p class="blueTxt">문의 : 02-3486-3456 (job@bit.kr)</p>
                    </div>

                    <!-- 본문시작 -->
                    <div style="width:100%;">
                        <FORM id="form" name="form" method="post" action="WriteRecruit_page2.asp">
                            <!--
                            <input type="hidden" name="CompSeqNum" value=" < % = CompSeqNum%>" >
                            <input type="hidden" name="CompResNum" value="< % = CompResNum%>" >
                            <input type="hidden" name="CompName" value="< % = CompName%>" >
                            -->
                            <div>
                                <!--<span style="font-size:12pt;"><b>ㆍ 구인정보</b></span>-->
                                <span style="float:right; margin-bottom:5px; margin-right: 10px; color:#7a7a7a; font-size: 14px;"><span class="redTxt">* </span>항목은 반드시 기입</span>
                            </div>
                            <div style="clear:both;"></div>

                            <div class="divTable">
                                <table border="0" width="60%"  cellspacing="1" cellpadding="3" class="myTableStyle myGrayThin" >
                                    <colgroup>
                                        <col style='width:22%;'>
                                        <col style='width:78%;'>
                                    </colgroup>
                                    <tbody>
                                    <tr>
                                        <th class="first" width="90">회사명<span class="redTxt">*</span></th><!--*-->
                                        <td class="first">
                                            <input name="CompName" style="width:96%;" class="text" maxlength="50">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">사업자등록번호<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="CompResNum" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">(예 : 123-45-67890)</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">주력사업<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Business" style="width:96%; " class="text" maxlength="50">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">자본금<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Capital" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">억원</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">연매출액<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="YearSell" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">억원</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">직원수<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="CompanyStaffNum" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">명</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">상장여부<span class="redTxt">*</span></th>
                                        <td>
                                            <select name="isStock" style="height:28px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
                                                <option value="-1" selected>선택</option>
                                                <option value="1">상장</option>
                                                <option value="0">비상장</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th rowspan="2" width="90">회사주소<span class="redTxt">*</span></th>
                                        <td>
                                            <input id="inputZipCode" type="text" name="czipcode" maxLength="7" size="7" value="" style="margin:3px;">
                                            <!--<input name="zipsearch" type="button" value="우편번호검색" align="left" size="16" onclick="javascript:openDAUMapi()" style="background-color:#8fd9e7; padding:1px 5px; height:25px; ">
                                            <a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">지원하기</a>-->
                                            <a name="zipsearch" class="myGrayThin" align="left" size="16" onclick="javascript:openDAUMapi()" style="font-size:13px; padding:6px 14px; line-height: 16px; background-color: #ddddde;">우편번호검색</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input id="inputAddress" name="caddr" style="width:97%; " class="text" maxlength="50" size="50">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">홈페이지<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="HomePage" style="width:97%; " class="text" maxlength="50">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">복지사항<span class="redTxt">*</span></th>
                                        <td>
                                            <textarea name="Welfare" form="form" cols="60" rows="1" style="width:100%;"></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90">회사소개<span class="redTxt">*</span></th>
                                        <td>
                                            <textarea name="Introduct" form="form" cols="60" rows="4" style="width:100%; "></textarea>
                                        </td>
                                    </tr>

                                    <!--<td><textarea name="textareaDevelopEnv" form="Form1" cols="60" rows="2"></textarea></td>-->



                                    <tr>
                                        <th width="90">모집부문<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Department" style="width:97%; " class="text" maxlength="50">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90" >근무지<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Location" style="width:50%; " class="text" maxlength="20">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90" >모집인원<span class="redTxt">*</span></th>
                                        <td>
                                            총&nbsp;<input type=text name="StaffNum" style="width:30px; ;"maxlength="3">&nbsp;명&nbsp;
                                            (남&nbsp;<input type=text name="StaffNum_M" style="width:20px; ;"maxlength="3">&nbsp;명 / &nbsp;
                                            여&nbsp;<input type=text name="StaffNum_F" style="width:20px; ;"maxlength="3">&nbsp;명)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90" >담당업무<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Operation" style="width:97%;" class="text" maxlength="200">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90" rowspan="3">개발환경<span class="redTxt">*</span></th>
                                        <td>
                                            사용OS : <input name="DevelopOS" style="margin-left:10px; width:44%; " class="text" maxlength="40">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            사용DB : <input name="DevelopDB" style="margin-left:10px; width:44%; " class="text" maxlength="40">
                                        </td></tr>
                                    <tr>
                                        <td>
                                            사용언어 : <input name="DevelopLang" style="margin-left:10px; width:44%; " class="text" maxlength="40">
                                        </td>
                                    </tr>


                                    <tr>
                                        <th width="90" >자격요건<span class="redTxt">*</span></th>
                                        <td>
                                            <input type="radio" name="chkQuali" value="1000" onClick="javascript:setQualiMajor();" >석사&nbsp;&nbsp; &nbsp;
                                            <input type="radio" name="chkQuali" value="0100" onClick="javascript:setQualiMajor();" checked>대졸&nbsp;&nbsp; &nbsp;
                                            <input type="radio" name="chkQuali" value="0010" onClick="javascript:setQualiMajor();">전문대졸&nbsp;&nbsp; &nbsp;
                                            <input type="radio" name="chkQuali" value="0001" onClick="javascript:setQualiMajor();">불문 &nbsp; &nbsp; &nbsp; &nbsp;
                                            학과 : <input name="QualiMajor" style="width:35%;" class="text" maxlength="20">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>고용형태<span class="redTxt">*</span></th>
                                        <td>
                                            <input type="radio" name="Job_Type" value="1" onClick="javascript:setInternTerm();" >계약직&nbsp;
                                            <input type="radio" name="Job_Type" value="0" onClick="javascript:setInternTerm();" checked>정규직&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;계약기간 : <input name="Intern_Term" style="width:35px; "  maxlength="3">개월
                                        </td>
                                    </tr>

                                    <tr>
                                        <th width="90" >경력사항<span class="redTxt">*</span></th>
                                        <td>
                                            <input type="radio" name="Career" value="0" onClick="javascript:setCareerYear();" checked >신입ㆍ경력&nbsp;&nbsp; &nbsp;
                                            <input type="radio" name="Career" value="1" onClick="javascript:setCareerYear();">신입&nbsp;&nbsp; &nbsp;
                                            <input type="radio" name="Career" value="2" onClick="javascript:setCareerYear();">경력
                                            <input name="Career_Year" style="width:20px; " class="text"  maxlength="2">년 이상
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>채용직급<span class="redTxt">*</span></th>
                                        <td>
                                            <select name="Position" style="height:28px; width:136px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
                                                <option value="">선택</option>
                                                <option value="0">사원(연구원)</option>
                                                <option value="1">주임/계장(연구원)</option>
                                                <option value="2">대리(주임연구원)</option>
                                                <option value="3">과장(선임연구원)</option>
                                                <option value="4">차장(수석연구원)</option>
                                                <option value="5">부장(연구원소장)</option>
                                                <option value="6">임원</option>
                                                <option value="7">면접후결정</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>급여조건<span class="redTxt">*</span></th>
                                        <td>
                                            <select name="salary" style="height:28px; width:136px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
                                                <option value="">선택</option>
                                                <!-- <option value=0>회사내규에 따름</option> -->
                                                <option value="1">1000 만원 이하</option>
                                                <option value="2">1000~1200만원</option>
                                                <option value="3">1200~1400만원</option>
                                                <option value="4">1400~1600만원</option>
                                                <option value="5">1600~1800만원</option>
                                                <option value="6">1800~2000만원</option>
                                                <option value="7">2000~2200만원</option>
                                                <option value="8">2200~2400만원</option>
                                                <option value="9">2400~2600만원</option>
                                                <option value="10">2600~2800만원</option>
                                                <option value="11">2800~3000만원</option>
                                                <option value="12">3000~3200만원</option>
                                                <option value="13">3200~3400만원</option>
                                                <option value="14">3400~3600만원</option>
                                                <option value="15">3600~3800만원</option>
                                                <option value="16">3800~4000만원</option>
                                                <option value="17">4000~5000만원</option>
                                                <option value="18">5000~6000만원</option>
                                                <option value="19">6000~7000만원</option>
                                                <option value="20">7000~8000만원</option>
                                                <option value="21">8000~9000만원</option>
                                                <option value="22">9000~1억원</option>
                                                <option value="23">1억원 이상</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>우대조건</th>
                                        <td>
                                            <input name="Preference" style="width:60%;" maxlength="50">&nbsp;(예 : 영어가능자, OCP보유 등)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>전형절차<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="SelectStep" style="width:60%;" maxlength="50" >&nbsp;(예 : 서류면접후 개별통보 등)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>제출서류<span class="redTxt">*</span></th>
                                        <td>
                                            <input name="Paper" style="width:60%;" maxlength="50" >&nbsp;(예 : 이력서, 자격증 사본 등)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>요구사항</th>
                                        <td>
                                            <textarea cols=60 name=Need rows="6" style="width:100%; " wrap=hard ></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>담당자<span class="redTxt">*</span></th>
                                        <td>
                                            성명 : <input name="ChargeName" style="width:16%; ;" type=text maxlength="5">&nbsp;&nbsp;
                                            부서 : <input name="ChargeDept" style="width:30%; ;" type=text maxlength="20">&nbsp;&nbsp;
                                            직책 : <input name="ChargeTitle" style="width:14%; ;" type=text maxlength="10">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>전화번호<span class="redTxt">*</span></th>
                                        <td>
                                            <input type=text name="ChargeTel" style="width:30%;" maxlength="20"> (예 : 02-1234-5678)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>팩스</font></th>
                                        <td>
                                            <input type=text name="ChargeFax" style="width:30%;" maxlength="20"> (예 : 02-1234-7890)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>휴대폰<span class="redTxt">*</span></th>
                                        <td>
                                            <input type=text name="ChargeHandphone" style="width:30%;" maxlength="20"> (예 : 010-1234-5678)
                                        </td>
                                    </tr>

                                    <tr>
                                        <th>E-Mail<span class="redTxt">*</span></th>
                                        <td>
                                            <input type=text name="ChargeEmail" style="width:60%;" maxlength="100">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div style="margin-top:35px; text-align:center;">
                                <a href="javascript:saveit();" class="btnBlueBorder" style="border-width:2px; border-radius:0; padding:1px 24px; line-height: 26px;">다음 페이지</a>
                                &nbsp; &nbsp; &nbsp;
                                <a href="javascript:window.history.back();" class="btnWhiteBorder" style="border-color:#9fa0a0; border-width:1px; border-radius:0; padding:1px 24px; line-height:26px;">취소</a>
                            </div>
                            <div style="clear:both;"></div>
                            <br/>
                        </form>
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

</body>

</html>
