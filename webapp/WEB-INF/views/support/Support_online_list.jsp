<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!--#include virtual="/Include/list_function.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <link rel= "shortcut icon" href="/images/favicon.ico">
    <title>비트교육센터</title>

    <!-- #include virtual="/Include/ContentStyle.asp"-->
    <!-- #include virtual="/Include/Script.asp"-->

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
    <!-- #include virtual="/Include/HeaderScript1709.asp"-->
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Q&A ON
        });
        function login()
        {
            alert("로그인 후 작성해 주세요 ");
            location.href="/Member/login.asp?return_url=/Support/Support_online_list.asp";
        }
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
    <!-- //Header_Wrap -->

    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Support_1709.asp"-->
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="/Images/Icons/icn_Home.png"/>
                        <img src="/Images/Icons/icn_ArrowTriangleRight.png"/>지원안내
                    </p>
                    <h4>온라인문의 (Q&amp;A)</h4>
                </div>

                <section class="section">
                    <style>
                        .myTitle {
                            font-size:13pt;
                            color:#8b6338;
                            text-shadow: 1px 1px 2px #b9b9b9;
                        }
                        .divTable table {
                            border-top: 1px solid #e0e0e0;
                            /* border-bottom: 1px solid #e0e0e0; */
                        }
                        .divTable table th {
                            border-bottom: 1px solid #e0e0e0;
                            font-size:18px;
                            padding: 10px 8px;
                        }
                        .divTable table td {
                            font-size:15px;
                            border-bottom: 1px solid #e0e0e0;
                            padding: 10px 8px;

                        } /* color: #555; */
                        .gradBg {
                            background: linear-gradient(to bottom, #f2f6f8, #fffae9);
                        }
                        A:link {
                            color:#004366;
                        }
                        A:visited {
                            color:#73808c;
                        } /* 73808c */
                        #Content_Wrap {
                            min-height:800px;
                        }
                    </style>
                    <style>
                        .tit {
                            background-color:ivory !important;
                        }
                    </style>

                    <div style="margin-top:20px;">
                        <%
                            ' 관리자ID 추가 : 최광원주임님(crespo04) / 제거 김윤정(k0sm0s1) (2017-05-16-YG)
                            ' 제거 bowery24 : 강기윤 (2017-12-21-YG)
                            ' 제거 qor20211 : 백아란 인턴 (2017-12-21-YG)
                            ' 추가 jepark : 박지은(2017.10~) (2017-12-21-YG)
                            ' acidstar : 임 대리님
                            ' job : 팀장님
                            ' k0sm0s1 : 김윤정 x
                            ' hoone : 이지훈 x
                            ' karnmou : 정경진
                            ' vntltl92 : 조희준
                            ' shkwon : 권선희 대리님
                            ' dagi1227 : 김건태
                            ' crespo04 : 최광원 주임님

                            if TRIM(session("userid"))="vntltl92" OR TRIM(session("userid"))="yglee" OR TRIM(session("userid")) = "crespo04" OR TRIM(session("userid")) = "jepark" then
                        %>
                        <p style="margin:10px 5%; font-family: 'Nanum Gothic Bold'; font-size: 13px; color: #8b6338;">관리자 (<%=TRIM(session("NameHan"))%> ID:<%=TRIM(session("userid"))%>)로 로그인 되었습니다.</p>
                        <%end if%>
                        <%
                            '//<p style="margin:10px 5%; font-family: 'Nanum Gothic Bold'; font-size: 13px; color: #8b6338;">궁금하 이 있으면 엇이든 하게 물보세요. 친한 내를 약드립니다.</p>
                        %>
                        <p style="margin:10px 5%; font-family: 'Nanum Gothic Bold'; font-size: 13px; color: #8b6338;">게시판 운영시간 : 평일 8:30 ~ 18:30</p>

                        <div class="divTable">
                            <table>
                                <colgroup>
                                    <col style="width:12%">
                                    <col style="width:58%">
                                    <col style="width:15%">
                                    <col style="width:15%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th scope="col" class="gradBg" style="text-align:center; font-size:10pt;">번호</th>
                                    <th scope="col" class="gradBg" style="text-align:center; font-size:10pt;">제목</th>
                                    <th scope="col" class="gradBg" style="font-size:10pt;">작성자</th>
                                    <th scope="col" class="gradBg" style="text-align:center; font-size:10pt;">작성일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    ' 페이지 카운트
                                    GotoPage = Request("GotoPage")
                                    if GotoPage = "" then GotoPage = 1
                                    pagesize = 14 	'10(2017.4.1.에 변경 10->14)

                                    Set Dbcon = Server.CreateObject("ADODB.Connection")
                                    Dbcon.Open Con_bit_db

                                    SQL = "select count(*)  from online_qa where  idx!=2946 AND category='A' AND del_yn='N' AND notice_yn='N'"
                                    Set Rs = Dbcon.Execute(SQL)

                                    recordCount = Rs(0)
                                    pagecount = int((recordCount-1)/pagesize) +1
                                    if pagecount = 0 then
                                    pagecount=1
                                    end if

                                    if field_value <> "" then
                                    if field="username" then
                                    strSQLWhere = " AND username LIKE '%" & temp_field_value & "%'"
                                    Elseif field="title" Then
                                    strSQLWhere = " AND title LIKE '%" & temp_field_value & "%'"
                                    ElseIf field="content" Then
                                    strSQLWhere = " AND content LIKE '%" & temp_field_value & "%'"
                                    End If
                                    SQL = SQL & strSQLWhere
                                    blnParam = true
                                    end if

                                %>

                                <%
                                    SQL = "SELECT TOP " & pagesize & " * FROM online_qa "
                                    SQL = SQL & "WHERE  idx!=2946 AND  notice_yn = 'N' AND category='A' AND del_yn='N' "& strSQLWhere &" AND idx not in "
                                    SQL = SQL & "(SELECT TOP " & ((GotoPage - 1) * pagesize) & " idx FROM online_qa WHERE notice_yn = 'N' AND category='A' AND del_yn='N'"& strSQLWhere &" "
                                    SQL = SQL & " ORDER BY  ref DESC, re_step) ORDER BY  ref DESC, re_step"

                                    Set Rs1 = Dbcon.Execute(SQL)

                                    z=0
                                    num = recordCount - ((gotopage-1) * pagesize)

                                    if Rs1.EOF then
                                %>
                                <tr>
                                    <td colspan="4">입력된 내용이 없습니다.</td>
                                </tr>
                                <%
                                    else


                                    end if

                                    Do until Rs1.EOF

                                    myIdx = TRIM(Rs1("idx"))
                                    myVisit = CINT(Rs1("visit"))
                                    myRef = CINT(TRIM(Rs1("ref")))
                                    myRe_step = CINT(TRIM(Rs1("re_step")))
                                    myRe_level = CINT(TRIM(Rs1("re_level")))
                                    myUsername = TRIM(Rs1("username"))
                                    myName = TRIM(Rs1("name"))
                                    myTitle = TRIM(Rs1("title"))

                                    myReg_date = CSTR(TRIM(Rs1("reg_date")))
                                    myReg_date = left(myReg_date, 10)

                                    if myRe_level = 0 then
                                    if LEN(myTitle) > 40 then
                                    myTitle = left(myTitle, 40) &"..."
                                    end if
                                    elseif myRe_level = 1 then
                                    if LEN(myTitle) > 34 then
                                    myTitle = left(myTitle, 34) &"..."
                                    end if
                                    elseif myRe_level = 2 then
                                    if LEN(myTitle) > 33 then
                                    myTitle = left(myTitle, 33) &"..."
                                    end if
                                    elseif myRe_level = 3 then
                                    if LEN(myTitle) > 30 then
                                    myTitle = left(myTitle, 30) &"..."
                                    end if
                                    else
                                    if LEN(myTitle) > 30 then
                                    myTitle = left(myTitle, 30) &"..."
                                    end if
                                    end if


                                    If Len(myTitle) > 34 Then myTitle = Mid(myTitle,1,35) & "..."
                                %>
                                <tr>
                                    <td style="text-align:center;"><%=num%></td>
                                    <td class="l">
                                        <%'답변 있을 경우..
                                            if myRe_level > 0 then
                                            wid=5*myRe_level
                                            for j = 1 to myRe_level
                                            response.write "&nbsp;&nbsp;&nbsp;"
                                            next
                                            response.write "<img src='/Images/Common/img_re.png'>"
                                            End if
                                        %>

                                        <a href="/Support/Support_online_content.asp?idx=<%=myIdx%>&gotopage=<%=gotopage%>&field=<%=field%>&field_value=<%=field_value%>" class="gulim12_gray_L"><%=myTitle%> </a>
                                        <%
                                            if DateDiff("h",myReg_date,now()) < 24 then
                                            'response.write "<img src='/img/new1.gif' width='25' height='17'>"
                                            End if
                                        %>
                                    </td>
                                    <td><%=myName%> <% if myName="관리자" then %><img src="/images/common/img_LOGO_BIT.png" style="height:20px; margin-top:-4px; margin-left:3px;"/><% end if %></td>
                                    <td><%=myReg_date%></td>
                                </tr>
                                <%
                                    z=z+1
                                    num = num-1
                                    Rs1.Movenext
                                    Loop

                                    Rs1.close
                                    Dbcon.close
                                    Set Rs1 = Nothing
                                    Set Dbcon = Nothing
                                %>
                                <tr>
                                    <td colspan="4" class="c" style="height:60px">
                                        <%call gotoPageHTML3(GotoPage, Pagecount)%>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="btn_wrap r mar_t10" style="margin-right:5%;">
                            <%if session("studid") <> "" then %>
                            <a href="/Support/Support_online_write.asp" class="btnGreenBorder big">글쓰기</a>
                            <%else%>
                            <a href="javascript:login();" class="btnGreenBorder big">글쓰기</a>
                            <%end if%>
                        </div>

                    </div>
                </section>
            </div>
            <!-- // Content -->
        </div>
        <!-- //Content_Wrap -->
    </div>

    <!-- Footer_Wrap -->
    <!-- #include virtual="/Include/FooterHTML1709.asp"-->
    <!-- //Footer_Wrap -->
</div>
</body>
</html>