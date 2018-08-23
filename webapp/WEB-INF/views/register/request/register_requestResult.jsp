<%--<%--%>
    <%--Session.CodePage  = 949 '한글--%>
    <%--Response.CharSet  = "euc-kr" '한글--%>
<%--%>--%>

<%--<!--#include virtual="/Include/config.asp"-->--%>
<%--<!--#include Virtual="/Include/javaScriptFun.asp"-->--%>

<%--<%--%>
    <%--Response.CacheControl = "no-cache"--%>
    <%--Response.AddHeader "Pragma", "no-cache"--%>
    <%--Response.Expires = -1--%>

    <%--return_url = "/Register/register_requestResult.asp"--%>

    <%--if TRIM(session("userid")) = "" OR isEmpty(TRIM(session("userid"))) OR isNULL(TRIM(session("userid"))) then--%>
    <%--call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/Member/login.asp?return_url=/Register/register_requestResult.asp")--%>
    <%--end if--%>

    <%--Set Dbcon = Server.CreateObject("ADODB.Connection")--%>
    <%--Dbcon.Open Con_bit_db--%>

    <%--'전문가과정 전형일자 불러오기--%>
    <%--SQL = "Select Name1,Name2 From IDTable Where IDType='전형일자'"--%>
    <%--Set Rs = Dbcon.Execute(SQL)--%>
    <%--ChkProgress=false--%>
    <%--if not Rs.EOF then--%>
    <%--if left(date,10) >= trim(Rs("Name1")) and left(date,10) <= trim(Rs("Name2")) then--%>
    <%--ChkProgress=true--%>
    <%--end if--%>
    <%--end if--%>

    <%--Rs.close--%>
    <%--Set Rs = Nothing--%>
    <%--'esponse.write "ChkProgress:"&ChkProgress&"<br>"--%>

<%--%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            $(".snb_1709 a.newdepth1").eq(1).addClass("on");								// 지원결과
            //$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						//
            //$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(2).addClass("on");  	//
        });

        function del(str) {
            //if (confirm("지원내용을 삭제합니까?") == 1) {
            if (confirm("지원내용을 삭제할까요?") == 1) {
                location.href="/register/register_cancel?idx=" + str;
            }
        }

        function mod(atype, SelectDateTime, idx) {
            if (atype == 1)
            {
                location.href="/register/Request/register_employment1?selectdate="+SelectDateTime+"&idx=" + idx;
            }
            else if (atype == 2)
            {
                location.href="/register/Request/register_expert1?selectdate="+SelectDateTime+"&idx=" + idx;
            }
            else if (atype == 3)
            {
                location.href="/register/Request/register_kukka1?selectdate="+SelectDateTime+"&idx=" + idx;
            }

            else
            {
                alert('다시 확인해주세요.');
            }
        }

        function kangwon_del(str) {
            if (confirm("지원내용을 삭제할까요?") == 1) {
                location.href="/register/register_kangwon6_cancel?idx=" + str;
            }
        }
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

    <div id="Container_Wrap" style="min-height:790px;"> <!-- min-height:745px; -->
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
                    </p>
                    <h4>지원결과</h4>
                </div>

                <style>
                    .divTable table tr td {
                        padding: 2px 5px;
                    }
                </style>
                <section class="section" >
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709">
                        <div class="divTable">
                            <table>
                                <caption>
                                    <col style="width:10%">
                                    <col style="width:10%">
                                    <col style="width:26%">

                                    <col style="width:6%">
                                    <col style="width:8%">
                                    <col style="width:10%">
                                    <col style="width:14%">
                                    <col style="width:8%">
                                    <col style="width:8%">
                                </caption>
                                <thead>
                                <tr>
                                    <th scope="col" class="tit">지원<br/>일자</th>
                                    <th scope="col" class="tit">전형<br/>일시</th>
                                    <th scope="col" class="tit">과정명</th>
                                    <th scope="col" class="tit">지원<br/>종류</th>
                                    <th scope="col" class="tit">전형<br/>과목</th>
                                    <th scope="col" class="tit">전형<br/>결과</th>
                                    <th scope="col" class="tit">면접위원<br/>의견</th>
                                    <th scope="col" class="tit">지원<br/>취소</th>
                                    <th scope="col" class="tit">지원<br/>수정</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    SQL = " SELECT   Application.AppliKind, Application.ApplicationDate, Application.CourseID, Application.SelectDateTime, "
                                    SQL = SQL & "                Course.CourseName, Application.SelectSubject, Application.SelectScore, "
                                    SQL = SQL & "                Application.SelectResult, Application.IntervOpinion, Application.YearMonth, "
                                    SQL = SQL & "                Application.idx "
                                    SQL = SQL & "FROM      Course INNER JOIN "
                                    SQL = SQL & "                Application ON Course.CourseID = Application.CourseID "
                                    SQL = SQL & "WHERE   (Application.StudID = '" & TRIM(session("studid")) & "') AND (Application.YearMonth <= '" &Date & "') "
                                    SQL = SQL & "ORDER BY Application.ApplicationDate DESC "
                                    Set Rs = Dbcon.Execute(SQL)
                                    'response.write "SQL:"&SQL&"<br>"
                                    if Rs.EOF then
                                %>
                                <tr>
                                    <td colspan="9" class="brownTxt c">지원하신 과정이 존재하지 않습니다.</td>
                                </tr>
                                <%
                                    else
                                    end if
                                    Do until Rs.EOF
                                    idx=Rs("idx")
                                %>
                                <tr>
                                    <td class="c">
                                        <%
                                            strSelectDateTime = LEFT(TRIM(Rs("Applicationdate")), 10)
                                            IF MID(strSelectDateTime, 5, 1) = "-"  AND MID(strSelectDateTime,8,1)="-" THEN
                                            strSelectDateTime = MID(LEFT(TRIM(Rs("Applicationdate")), 10), 1, 4) & " /<br/>" & MID(LEFT(TRIM(Rs("Applicationdate")), 10),6,2) & " / " & MID(LEFT(TRIM(Rs("Applicationdate")), 10),9,2)
                                            END IF
                                        %>
                                        <%= strSelectDateTime %>
                                    </td>
                                    <td class="c">
                                        <% IF Rs("SelectDateTime")="" THEN %>
                                        <span style="color:red; font-size:8pt; font-weight:800;">(주의:전형일시 없음)</span>
                                        <% ELSE %>
                                        <%
                                            strSelectDateTime = TRIM(Rs("Selectdatetime"))
                                            IF MID(strSelectDateTime, 5, 1) = "-"  AND MID(strSelectDateTime,8,1)="-" THEN
                                            strSelectDateTime = MID(TRIM(Rs("Selectdatetime")), 1, 4) & " /<br/>" & MID(TRIM(Rs("Selectdatetime")),6,2) & " / " & MID(TRIM(Rs("Selectdatetime")),9,2)
                                            END IF
                                        %>
                                        <%= strSelectDateTime %>
                                        <% END IF %>
                                    </td>
                                    <td class="c"><%=TRIM(Rs("coursename"))%></td>
                                    <td class="c"><%if left(TRIM(Rs("CourseID")), 6) = "2006_V" then%>방학특강 <%else%><%=TRIM(Rs("AppliKind"))%><%end if%></td>
                                    <td class="c">
                                        <!-- 전형과목 -->
                                        <% IF TRIM(Rs("CourseID"))<>"Presentation" THEN %>
                                        <%
                                            strSelectSubject = TRIM(Rs("selectsubject"))
                                            IF strSelectSubject="" THEN
                                            strSelectSubject = "-"
                                            END IF
                                        %>
                                        <%=strSelectSubject%>
                                        <% ELSE %>
                                        <!-- Presentation 인 경우 -->
                                        <span>-</span>
                                        <% END IF %>
                                    </td>

                                    <%if ChkProgress=true and left(SelectDateTime,7) = left(date,7) then %>
                                    <td align="center">진행중</td>
                                    <%else %>
                                    <td align="center">
                                        <% IF TRIM(Rs("CourseID"))<>"Presentation" THEN %>
                                        <%=TRIM(Rs("SelectResult"))%>
                                        <% ELSE %>
                                        -
                                        <% END IF %>
                                    </td>
                                    <%end if%>

                                    <td align="center">
                                        <% IF TRIM(Rs("intervopinion"))<>"" THEN %>
                                        <div class="tooltip">
                                            자세히
                                            <span class="tooltipText"><%=TRIM(Rs("intervopinion"))%></span>
                                        </div>
                                        <% ELSE %>
                                        -
                                        <% END IF %>
                                    </td> <!-- 면접위원 의견 -->

                                    <!-- 지원삭제 -->
                                    <%if TRIM(Rs("SelectResult")) = "미전형"   then %>
                                    <td height="30" align="center"><a href="#this" onclick="del('<%=idx%>');" onMouseOver="this.style.cursor='hand'" class="btnRedBorder small">취소</a></td>
                                    <%elseif TRIM(Rs("AppliKind")) = "청년취업"  then %>
                                    <td height="30" align="center"><a href="#this" onclick="del('<%=idx%>');" onMouseOver="this.style.cursor='hand'" class="btnRedBorder small">취소</a></td>
                                    <%Else %>
                                    <td height="30" align="center">-</td>
                                    <%End If %>

                                    <!-- 지원수정 -->
                                    <%
                                        'IF Rs("SelectDateTime") = "" THEN response.write "N"
                                        if Rs("SelectDateTime") = "" then
                                    %>
                                    <td height="30" align="center">
                                        <span style="color:red; font-weight:800;">-</span>
                                    </td>
                                    <%elseif Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "기업위탁" AND TRIM(Rs("SelectDateTime"))<>"" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
                                    <td height="30" align="center">
                                        <a  onclick="mod(1, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');" onMouseOver="this.style.cursor='hand'" class="btnGreenBorder small" >수정</a>
                                    </td><!--  지원서 수정 -->
                                    <%elseif Len(TRIM(Rs("CourseID"))) <4 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "전문가" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
                                    <td height="30" align="center">
                                        <a  onclick="mod(2, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');" onMouseOver="this.style.cursor='hand'"  class="btnGreenBorder small" >수정</a>
                                    </td><!--  지원서 수정 -->
                                    <%elseif Len(TRIM(Rs("CourseID"))) >3 AND TRIM(Rs("SelectResult")) = "미전형" AND TRIM(Rs("AppliKind")) = "국가기간" And CDate(Left(TRIM(Rs("SelectDateTime")), 10))>CDate(date)   then %>
                                    <td height="30" align="center">
                                        <a  onclick="mod(3, '<%=TRIM(Rs("SelectDateTime"))%>', '<%=TRIM(Rs("idx"))%>');" onMouseOver="this.style.cursor='hand'"   class="btnGreenBorder small" >수정</a>
                                    </td><!--  지원서 수정 -->
                                    <%else %>
                                    <td height="30" align="center">-</td>
                                    <%end if%>
                                </tr>
                                <%
                                    Rs.Movenext
                                    Loop

                                    Rs.close
                                    Set Rs = Nothing
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //con_wrap1709 -->
                </section>
            </div>
        </div>
    </div>
    <hr>
    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>