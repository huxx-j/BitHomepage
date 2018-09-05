<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--<%--%>
    <%--Session.CodePage  = 949 '한글--%>
    <%--Response.CharSet  = "euc-kr" '한글--%>
<%--%>--%>

<%--<%--%>
    <%--Response.AddHeader "Pragma", "no-cache"--%>
    <%--Response.AddHeader "cache-control", "no-store"--%>
    <%--Response.Expires = -1--%>
<%--%>--%>

<!DOCTYPE html>
<head>

    <!--#include virtual="/Include/config.asp"-->
    <!--#include Virtual="/Include/javaScriptFun.asp"-->

    <!--#include file="include/jobLoginChk.asp"-->

    <script language="JavaScript1.1">
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

	//document.onmousedown=right;
	//if (document.layers) window.captureEvents(Event.MOUSEDOWN);
	//window.onmousedown=right;
	</script>

    <script language="javascript">
        function goRegister() {
            location.href = "/job/WriteRecruit.asp";
            return true;
        }
    </script>

    <script language="javascript">
        <!--
        function notice(num)
        {
            window.open("http://www.bitacademy.com/job/Notice.asp?num="+num, "sun","height=440,width=645,status=no,toolbar=yes,titlebar=no,menubar=no, scrollbars=yes ,resizable=yes,location=0,left=-1200,top=120");
        }
        //-->
    </script>


    <!--#include file="include/dbconn.inc"-->

    <%--<%--%>
        <%--Set Dbcon = Server.CreateObject("ADODB.Connection")--%>
        <%--Dbcon.Open Con_bit_db--%>
    <%--%>--%>

    <%--<%--%>
        <%--' // StudName, StudTermNum 을 DB에서 불러와 세션에 저장한다.--%>
        <%--StudID = session("StudID")--%>
        <%--Dim StudName--%>
        <%--Dim StudTermNum--%>

        <%--' (1) StudName from dbo.Member (NameHan), USING StudID--%>
        <%--IF StudID = "" OR isEmpty(StudID) OR isNULL(StudID) THEN--%>
            <%--StudName = ""--%>
        <%--ELSE--%>
        <%--'select top 1 NameHan from db_bit.dbo.Member where StudID = session("StudID")--%>
        <%--sql = "SELECT TOP 1 NameHan FROM db_bit.dbo.Member WHERE StudID='" & StudID & "'"--%>
        <%--Set Rs = Dbcon.Execute(sql)--%>

        <%--IF Rs.eof = false THEN--%>
        <%--session("StudName") = Rs("NameHan")--%>
        <%--END IF--%>

        <%--Rs.close--%>
        <%--Set Rs = Nothing--%>
        <%--END IF--%>

        <%--' (2) StudTermNum from dbo.CourseTermStudent, USING StudID, ORDER BY UpdateDate DESC--%>
        <%--IF StudID =  "" OR isEmpty(StudID) OR isNULL(StudID) THEN--%>
        <%--StudTermNum = ""--%>
        <%--ELSE--%>
        <%--'select top 1 TermNum from db_bit.dbo.CourseTermStudent where StudID='' order by UpdateDate desc--%>
        <%--sql = "SELECT TOP 1 TermNum FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID & " ORDER BY UpdateDate DESC"--%>
        <%--Set Rs = Dbcon.Execute(sql)--%>

        <%--IF Rs.eof = false THEN--%>
        <%--session("StudTermNum") = Rs("TermNum")--%>
        <%--ELSE--%>
        <%--session("StudTermNum") = ""--%>
        <%--END IF--%>

        <%--Rs.close--%>
        <%--Set Rs = Nothing--%>
        <%--END IF--%>


    <%--%>--%>

    <%--<%--%>
        <%--'''4Testing--%>
        <%--'session("StudID") = 51955--%>
        <%--'session("StudName") = "이영걸"--%>

        <%--StudID = ""  '세션--%>
        <%--StudID = session("StudID")--%>
        <%--StudName = session("StudName")--%>
        <%--StudTermNum = session("StudTermNum")--%>

        <%--'''if trim(StudID)="" or StudID = "0" or request("id") = "" then--%>
        <%--'''	Response.Redirect "/job/JobSearchLogin.asp"--%>
        <%--'''end if--%>
        <%--if StudID = "" OR isEmpty(StudID) OR isNULL(StudID) then--%>
        <%--call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/job/List.asp")--%>
        <%--response.end--%>
        <%--end if--%>
    <%--%>--%>


    <%--<%--%>
        <%--' Studid 로부터 LoginID를 가져온다.--%>
        <%--sql = ""--%>
        <%--sql = "Select top 1 LoginID from db_bit.dbo.Member where StudID = " & Studid--%>

        <%--Set Rs = Dbcon.Execute(sql)--%>
        <%--LoginID = Rs("LoginID")--%>
        <%--Rs.Close--%>
        <%--Set Rs = nothing--%>
    <%--%>--%>

    <%--<%--%>
        <%--'-- 기업위탁, 대학비트, 전문가, 청년취업, 국가기간 "수료"--%>

        <%--'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>
        <%--'// 1. 권한검사 - (1) 전문가, 기업위탁, 대학비트, 청년취업, 국가기간일것 (2) 지원일자가 1년이내일것 (3) application.SelectResult가 '합격'일것 (4) application.Isuse=0 일것--%>

        <%--' // YG 2016-03-30 : 권한부여 개선 (기수부여 뿐만 아니라, '수료' 상태라야 권한 有)--%>
        <%--' sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID--%>
        <%--sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID & " AND CompletStat='수료'"--%>

        <%--Set rs = Dbcon.Execute(sql)--%>

        <%--bRight=false '권한여부--%>
        <%--do while rs.eof = false--%>
        <%--CourseID = rs("CourseID")--%>

        <%--'response.write("CourseID : " & CourseID & "<br/>")--%>

        <%--IF CourseID = "" THEN--%>
        <%--ELSE--%>
        <%--sql = "SELECT TOP 10 ExpertID from db_bit.dbo.Course where CourseID = '" & CourseID & "'"--%>
        <%--Set rs2 = Dbcon.Execute(sql)--%>
        <%--if rs2.eof or rs2.bof then--%>
        <%--else--%>
        <%--ExpertID = rs2("ExpertID")--%>
        <%--end if--%>
        <%--rs2.Close--%>

        <%--'response.write("ExpertID : " & ExpertID & "<br/>")--%>

        <%--' 권한부여 과정 : 전문가 / 기업위탁 / 국가기간 / 대학비트 / 청년취업.--%>
        <%--IF ExpertID = "전문가" OR ExpertID = "기업위탁" OR ExpertID = "국가기간" OR ExpertID = "대학비트" OR ExpertID = "청년취업" THEN--%>
        <%--bRight = true--%>
        <%--ELSE--%>
        <%--END IF--%>
        <%--END IF--%>

        <%--'response.write("bRight : " & bRight & "<br/>")--%>

        <%--rs.moveNext--%>
        <%--loop--%>

        <%--'// FROM HERE : 관리자에게 권한 강제부여.--%>
        <%--' job : 팀장님--%>
        <%--' acidstar : 임 대리님--%>
        <%--' silverq : 정 대리님 X--%>
        <%--' bowery24 : 강기윤 X--%>
        <%--' kitac : 김영산 x--%>
        <%--' jjh0422 : 장재호 x--%>
        <%--' k0sm0s1 : 김윤정 x--%>
        <%--' hoone : 이지훈 x--%>
        <%--' karnmou : 정경진--%>
        <%--' vntltl92 : 조희준--%>
        <%--' dagi1227 : 김건태--%>
        <%--' dnwjd748 : 강인영 (201802012)--%>
        <%--IF LoginID = "job" OR LoginID = "acidstar" OR LoginID = "yglee" OR LoginID = "karnmou" OR LoginID = "vntltl92" OR LoginID = "dagi1227" OR LoginID = "dnwjd748" THEN--%>
        <%--bRight = true--%>
        <%--END IF--%>

        <%--IF bRight = false THEN--%>
        <%--call alertMsgGoURL ("권한이 없습니다. \n채용정보는 전문가과정 등을 수료하신 분들이 보실 수 있습니다.", "http://www.bitacademy.com/")--%>
        <%--END IF--%>

        <%--rs.Close--%>
        <%--Set rs = Nothing--%>
    <%--%>--%>

    <%--<%--%>
        <%--if request("page") =""then--%>
        <%--page=1--%>
        <%--else--%>
        <%--page=request("page")--%>
        <%--end if--%>

        <%--'set oConn=server.CreateObject("adodb.connection")--%>
        <%--'	oConn.Open "Provider=SQLOLEDB.1;Persist Security Info=False" & _--%>
        <%--'	            ";User ID=bitdb;Password=bit!bt?qlxm.rhksflwk#" & _--%>
        <%--'	           ";Initial Catalog=DB_BIT;Data Source=localhost;Network Address=localhost, 1433;Network Library=dbmssocn"--%>

        <%--set rs = server.CreateObject("adodb.recordset")--%>

        <%--sql = "SELECT C.CompName, J.RequestDate, J.Department, J.SeqNum" & _--%>
        <%--" FROM Company C INNER JOIN JobOffer J ON C.CompSeqNum=J.CompSeqNum" & _--%>
        <%--" WHERE  (J.CentClub=0 or J.CentClub is null) AND J.isShow > 0 ORDER BY J.RequestDate DESC, C.CompName  "--%>


        <%--rs.PageSize =10 '페이지의 사이즈를 정함 ...반드시 레크드셋오픈전에 지정해주어야 한다.--%>

        <%--rs.Open sql, oConn, 1 '레코드 커서 타입(1)을 지정해 주어야 한다. 만일 지정이 안되면 페이징이 안된다. ,3--%>

    <%--%>--%>

    <link rel="stylesheet" type="text/css" href="/job/bodyStyle.css">
    <title>비트교육센터에 오신것을 환영합니다.</title>
    <link rel= "shortcut icon" href="/images/favicon.ico">

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
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            //$(".snb_1702 .newdepth1").eq(2).addClass("on");
            $(".snb_1709 a.newdepth1").eq(2).addClass("on");
        });
    </script>

    <!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
    c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; margin:0;" >

<%--<%--%>
    <%--if not rs.EOF then--%>
    <%--totalpage =rs.PageCount--%>
    <%--rs.AbsolutePage =page--%>
    <%--totalNum = rs.RecordCount--%>
    <%--elseif rs.EOF then--%>
    <%--totalpage = 1--%>
    <%--' rs.AbsolutePage =page--%>
    <%--totalNum = 0--%>
    <%--end if--%>
<%--%>--%>
<style>
    .courseName {
        font-size:15pt !important;
    }
    .detailName {
        font-size:23pt !important;
    }
</style>

<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap" style="min-height:210px;">
        <div id="Content_Wrap" style="min-height:210px;">
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
                    <h4 style="float:left;">채용정보 확인</h4>
                    <div style="clear:both; height:10px;"></div>
                </div>

                <!-- 4Testing -->
                <div style="color:#ef7676;">
                    <!--
                    StudId :  < % =StudID % > <br/>
                    StudName :  < % =StudName % > <br/>
                    StudTermNum :  < % =StudTermNum % > <br/>
                    userid :  < % =session("userid") % >
                    -->
                </div>
                <!-- //4Testing -->
                <style>
                    .myTitle {
                        font-family:'Nanum Gothic Bold';
                        font-size:13pt;
                        color:#8b6338;
                        text-shadow: 1px 1px 2px #b9b9b9;
                    }
                    .table_col_type3 th {
                        font-family:'Nanum Gothic Bold';
                        font-size:18px;
                    }
                    .table_col_type3 td {
                        font-size:15px;
                        font-family:'Nanum Gothic Bold';
                    }
                    .gradBg {
                        background: linear-gradient(to bottom, #f2f6f8, #fffae9);
                    }
                    A:link {
                        color:#0073e6;
                    }
                    A:visited {
                        color:#73808c;
                    }
                </style>
                <div style="margin-left:0px;">
                    <div class="con_wrap1709">
                        <h5>채용중인 기업</h5>
                    </div>
                    <table align="center" border="0" >
                        <tr>
                            <td>

                                <table border="0" cellSpacing="0" cellpadding="0" style="height:20px; width:95%;" class="table_col_type3">
                                    <tr>
                                        <td width="152">
                                            <span style="float:left; margin-top:7px;">총등록수 <font color="red"><b><%=totalNum%></b></font>&nbsp;&nbsp;&nbsp;</span>
                                        </td>
                                        <td align="right" vAlign="bottom" >
                                            <!--
                                            <span style="float;right;">
                                                <button class="btn sml green1" style="margin:5px 0;" onClick="javascript:goRegister();">채용의뢰 쓰기</button>
                                            </span>
                                            -->
                                            <!--<button class="btn sml white" style="margin:5px 0;" onClick="javascript:logout();">로그아웃</button>-->
                                            <!--<button class="btn sml green1" style="margin:5px 0;" onClick="javascript:goJobInfo();">취업정보</button>-->
                                            <div style="clear:both;"></div>
                                            <!--
                                            <input name="btnVol" style="HEIGHT: 17px; LEFT: 61px; TOP: 2px; WIDTH: 60px" type="button" style=" CURSOR: hand;" value="로그 아웃" onClick="logout();">
                                            <input name="btnVol" style="HEIGHT: 17px; LEFT: 61px; TOP: 2px; WIDTH: 60px" type="button" style=" CURSOR: hand;" value="취업 정보" onClick="goJobInfo();">
                                            -->
                                        </td>
                                    </tr>
                                </table>

                                <table border="0" cellPadding="0" cellSpacing="2" style="width:95%;" class="table_col_type3">
                                    <colgroup>
                                        <col style="width:15%;">
                                        <col style="width:30%;">
                                        <col style="width:55%;">
                                    </colgroup>
                                    <thead>
                                    <tr>
                                        <th class="gradBg" style="text-align:center;">등록일</th> <!-- .tit -->
                                        <th class="gradBg" style="text-align:center;">회사명</th> <!-- .tit -->
                                        <th class="gradBg" style="text-align:center;">모집내용</th> <!-- .tit -->
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%--<%--%>
                                        <%--i=1--%>
                                        <%--do until rs.EOF or i>rs.PageSize--%>

                                        <%--RequestDate = FormatDateTime(rs("RequestDate"), 2)--%>
                                        <%--Department = rs("Department")--%>
                                        <%--CompName = rs("CompName")--%>
                                        <%--SeqNum= rs("SeqNum")--%>
                                    <%--%>--%>

                                    <tr>
                                        <td width="113" style="text-align:center;"><%=RequestDate%></td>
                                        <td width="220" style="text-align:center;"><a href="/job/JobDetail.asp?id=<%=SeqNum%>&page=<%=page%>" type="text/css"> <%=CompName%></a></td>
                                        <td width="298"><a href="/job/JobDetail.asp?id=<%=SeqNum%>&page=<%=page%>" type="text/css"> <%=Department%></a></td>
                                    </tr>

                                    <%--<%--%>
                                        <%--rs.MoveNext--%>
                                        <%--i=i+1--%>
                                        <%--loop--%>
                                    <%--%>--%>

                                    <!--
                                    <tr bgColor="#e0ebec" style="height:1px;">
                                        <td style="width:420px; height:5px; padding:0;" colspan="3"></td>
                                    </tr>
                                    -->
                                    <!--
                                    <tr bgColor="#d9f8ff">
                                        <td align="left" height="1" width="110">
                                        </td>
                                        <td align="middle" borderColor="#0099ff" width="400">
                                        </td>
                                        <td width="160"> <div align="left">
                                        </td>
                                    </tr>
                                    -->

                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>

                    <!-- page navigator -->
                    <table border="0" cellPadding="1" cellSpacing="1"style="HEIGHT: 26px;"><!-- width:95%;">-->
                        <tr>
                            <td align="middle">
                                <div style="width:100%; margin-top:10px; font-size:15px; font-weight:900; font-family:'Nanum Gothic Bold';">

                                    <%--<%--%>
                                        <%--'첫페이지가 아니라면, "이전" 을 표시함.--%>
                                    <%--%>--%>
                                    <%--<% IF page <> 1 THEN %>--%>
                                    <%--<span style="color:darkblue;"><a href="/job/List.asp?page=<%=page-1%>">이전</a></span>--%>
                                    <%--<% END IF %>--%>

                                    <%--<%--%>
                                        <%--'(OLD) <span style="color:darkblue; margin:0 20px 0 20px;"> < % = page % > /  < % = totalpage % > </span>--%>
                                    <%--%>--%>
                                    <%--<%--%>
                                        <%--FOR l = 1 to totalpage--%>
                                        <%--strStyleAdded = ""--%>
                                        <%--IF l = Cint(page) THEN--%>
                                        <%--strStyleAdded = "color:red; text-decoration:underline; font-weight:800;"--%>
                                        <%--ELSE--%>
                                        <%--strStyleAdded = ""--%>
                                        <%--END IF--%>
                                        <%--response.write (" <a href='/job/List.asp?page=" & l & "' style='margin-left:10px;'><span style='" & strStyleAdded & "'>" & l & "</span></a> ")--%>
                                    <%--%>--%>

                                    <%--<%--%>
                                        <%--NEXT--%>
                                    <%--%>--%>

                                    <%--<% IF rs.RecordCount <= 0 THEN %>--%>
                                    <table align="center" border="0" cellPadding="1" cellSpacing="1" style=" WIDTH: 430px; margin-left:50px; margin-top:10px;">
                                        <tr>
                                            <td>
                                                <!--
                                                <strong><font align="center" color="#cc6600" face="돋움">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                현재 등록된 게시물이 없습니다.</font></strong>  <br>
                                                <font color="darkgreen" face="돋움"><strong>&nbsp;게시물</strong>은&nbsp;<strong><font color="#cc6600" face="돋움">월,목</font>요일
                                                아침 10시</strong>   </font><font color="darkgreen" face="돋움">부터 <strong>저녁 7시까지 </strong>등록됩니다<strong>.</strong></font>
                                                -->
                                                <strong><font align="center" color="#cc6600" face="돋움">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    현재 공개된 채용정보가 없습니다.</font></strong>  <br>
                                                <font color="darkgreen" face="돋움"><strong>&nbsp;채용정보</strong>는&nbsp;<strong><font color="#cc6600" face="돋움">월요일, 목요일</font>
                                                    아침 10시</strong>   </font><font color="darkgreen" face="돋움">부터 <strong>저녁 7시까지 </strong>공개됩니다<strong>.</strong></font>
                                            </td>
                                        </tr>
                                    </table>
                                    <%--<% END IF %>--%>


                                    <%--<%--%>
                                        <%--'맨 마지막 페이지가 아니라면, "다음" 을 표시함.--%>
                                    <%--%>--%>
                                    <%--<% IF Cint(page)<>Cint(totalpage) THEN %>--%>
                                    <%--<a href="/job/List.asp?page=<%=page+1%>" style="margin-left:10px;"> 다음	</a>--%>
                                    <%--<% END IF %>--%>
                                </div>

                                <%--<%--%>
                                    <%--rs.close--%>
                                <%--%>--%>

                                <%--<%--%>
                                    <%--sql = "select top 10 num, title, updatedate  from JobNotice where isshow=1 order by updatedate DESC"--%>
                                    <%--rs.Open sql, oConn--%>
                                <%--%>--%>

                            </td>
                        </tr>
                    </table>
                    <br/><br/><br/><br/>
                </div>
                <div style="height:20px; background:url('${pageContext.request.contextPath}/assets/Images/Common/ico_dotted_gray.png') 0 bottom repeat-x;">
                </div>

                <div style="margin-left:0px;">
                    <div class="con_wrap1709 mar_t20">
                        <h5>공지사항</h5>
                    </div>

                    <!--
                                    <table border="0" align="center" cellPadding="0" cellSpacing="0" style="margin-top:40px; width:80%;" class="table_col_type3">
                                        <tr>
                                            <td>
                    -->
                    <table border="0" cellPadding="0" cellSpacing="2" style="margin-top:40px; margin-bottom:20px;" class="table_col_type3">

                        <colgroup>
                            <col style="width:80%;">
                            <col style="width:20%;">
                        </colgroup>
                        <thead>
                        <tr>
                            <th class="gradBg" style="border-top:1px solid #e0e0e0;"> <!-- .tit -->
                                <p align="center">공지사항</p>
                            </th>
                            <th class="gradBg" style="border-top:1px solid #e0e0e0;"> <!-- .tit -->
                                <p align="center">작성일</p>
                            </th>
                        </tr>
                        </thead>
                        <body>
                            <%
												find = 0
												if not rs.EOF and not rs is nothing  then
													do until rs.EOF
											%>

                            <%  if  not rs("title") ="" then %>
                        <tr language="javascript" onclick="notice('<%=rs("num")%>')" onmouseout="this.style.backgroundColor='snow'" onmouseover="this.style.backgroundColor='mistyrose'">
                            <td size="2" face="돋움" style="CURSOR: hand; MARGIN-BOTTOM: 2px; MARGIN-TOP: 2px; WORD-SPACING: 2px">
                                <p style="cursor:pointer;">&nbsp;<%=rs("title")%></font>

                                    <%
                                        '************* 새 글 부각시키기 *************
                                        if DateDiff("d",rs("updatedate"), Now()) = 0  then
                                    %>
                                    &nbsp;
                                    <img src="/job/images/new1.gif" align="absmiddle">
                                    <% end if %>
                                </p>
                            </td>
                            <td align="middle">
                                <font size="2"><%=FormatDateTime(rs("updatedate"),2)%></font>
                            </td>
                            <% find = 1 %>
                        </tr>
                            <% end if%>

                            <%
												rs.MoveNext
												loop
											end if
											%>

                            <% if find = 0 then %>
                        <tr>
                            <td align="middle" size="2" face="돋움">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 공지사항이 없습니다 *</font>  </td>
                        </tr>
                            <% end if %>

                        <!--
                        <tr bgColor="#e0ebec" style="height:1px;">
                            <td style="width:420px; height:5px; padding:0;" colspan="2"></td>
                        </tr>
                        -->

                        </tbody>

                    </table>


                    <!--
                    <br/>
                    <tr>
                        <td>
                            <a href="http://www.bit.kr" target="_blank" style="margin-left:230px;"><img border="0" height="36" src="/job/images/copyright.gif" width="275">
                            </a>
                        </td>

                    </tr>
                    -->
                    <!--</table>  -->


                    <br/>
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
//<%
//    rs.Close
//    oConn.Close
//    set rs=nothing
//    set oConn =nothing
//%>