
<!--#include virtual="/Include/config;"-->
<!--#include virtual="/Include/list_function;"-->
<!--#include Virtual="/Include/javaScriptFun;"-->
<!--#include virtual="/Include/Common_Defend_1709;"-->


    <%--if myIdx <> "" then--%>
        <%--SQL = "UPDATE online_qa SET visit = visit + 1 WHERE idx = "&myIdx--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual="/Include/Meta;"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
    <title>비트교육센터</title>

    <!-- #include virtual="/Include/ContentStyle;"-->
    <c:import url="/WEB-INF/views/Include/contentStyle.jsp"/>
    <!-- #include virtual="/Include/Script;"-->
    <c:import url="/WEB-INF/views/Include/Script.jsp"/>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720_1709.css" >
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/common_css/Common_CSS_Detail_720plus_1709.css" >
    <!-- #include virtual="/Include/HeaderScript1709;"-->
    <c:import url="/WEB-INF/views/Include/HeaderScript1709.jsp"/>
    <script type="text/javascript">
        $(document).ready(function(){
            <!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
            <c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Q&A ON
        });

        function del(idx, ref, re_step, re_level, field, field_value, page)
        {
            if(confirm("글을 삭제하시겠습니까?"))
            {
                $.ajax({
                    url: "${pageContext.request.contextPath }/support/refChk",
                    type: "post",
                    data: {"idx": idx},
                    dataType: "json",
                    success: function (result) {
                        if (result!=1) {
                            alert("답변글이 있으므로, 삭제하실 수 없습니다.")
                        } else {
                            location.href="/support/Support_online_list";
                        }
                    },
                    error: function (XHR, status, error) {
                        console.error(status + " : " + error);
                    }
                });
            }
        }
        function send_re()
        {
            document.re.submit();
        }

        function last_pre()
        {
            alert("처음 글입니다. ");
        }

        function last_next()
        {
            alert("마지막 글입니다. ");
        }

        function EnterCheck(){
            if(event.keyCode == 13){
                Insert_ment();
                return false
            }
        }
    </script>
    <!-- #include virtual="/Include/Script_MoBon_1803;"-->
    <c:import url="/WEB-INF/views/Include/Script_MoBon_1803.jsp"/>
</head>
<body>
<div id="Wrapper">
    <!-- Header_Wrap -->
    <!-- #include virtual = "/Include/HeaderHTML1709;"-->
    <c:import url="/WEB-INF/views/Include/HeaderHTML1709.jsp"/>
    <!-- //Header_Wrap -->

    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Support_1709;"-->
            <c:import url="/WEB-INF/views/Include/SNB_Support_1709.jsp"/>
            <!-- //SNB_Wrap-->

            <!-- Content -->
            <div id="Content">
                <div class="hGroup1709">
                    <p>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_Home.png"/>
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>지원안내
                    </p>
                    <h4>온라인문의 (Q&amp;A)</h4>
                </div>

                <style>
                    .myTitle {
                        font-family:'Nanum Gothic Bold';
                        font-size:13pt;
                        color:#8b6338;
                        text-shadow: 1px 1px 2px #b9b9b9;
                    }
                    .divTable table {
                        border-top: 1px solid #e0e0e0;
                        border-bottom: 1px solid #e0e0e0;
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
                        background: linear-gradient(to right, #f2f6f8, #fffae9);
                    }
                    /*
                    A:link {
                        color:#004366;
                    }
                    A:visited {
                        color:#73808c;
                    }*/ /* 73808c */
                    #Content_Wrap {
                        min-height:800px;
                    }
                    a.btn.mid.dGray {
                        font-size:15px !important;
                        padding:1px 25px;
                        margin-top:0px;
                    } /* 목록 */
                    .btn.white {
                        font-size:15px !important;
                    }
                </style>

                <section class="section">
                    <div class="divTable mar_t10">
                        <table>
                            <colgroup>
                                <col style="width:10%">
                                <col style="width:50%">
                                <col style="width:10%">
                                <col style="width:10%">
                                <col style="width:10%">
                                <col style="width:10%">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td class="gradBg c">제목</td>
                                <td colspan="5">${content.title}</td>
                            </tr>
                            <tr>
                                <td class="gradBg c">이름</td>
                                <td>${content.nameHan}</td>
                                <td class="gradBg c">이메일</td>
                                <td colspan="3">${content.email}</td>
                            </tr>
                            <tr>
                                <td class="gradBg c">내용</td>
                                <td colspan="5" style="line-height:20px;">${content.content}</td>
                            </tr>
                            <tr>
                                <td colspan="6" class="r">
                                    <%--이전글 다음글 잠시 보류--%>
                                    <!--이전글 다음글 시작 -->
                                    <%--<%--%>
                                        <%--Set Dbcon = Server.CreateObject("ADODB.Connection")--%>
                                        <%--Dbcon.Open Con_bit_db--%>

                                        <%--if re_level > 0 then--%>
                                            <%--pre_SQL = "SELECT *  FROM online_qa WHERE "&whereSQL&" category='A' AND notice_yn='N' AND re_level=0 AND idx =  (select max(ref) from online_qa WHERE  "&whereSQL&" idx = "&myIdx&" AND  notice_yn='N' AND category='A') "--%>

                                        <%--next_SQL = "SELECT *  FROM online_qa WHERE  "&whereSQL&" category='A' AND  notice_yn='N' AND re_level=0 AND idx =  (select max(idx) from online_qa WHERE  "&whereSQL&" ref < "&ref&" AND  notice_yn='N' AND re_level=0 and category='A')  "--%>
                                        <%--else--%>
                                        <%--pre_SQL = "SELECT *  FROM online_qa WHERE  "&whereSQL&" category='A' AND  notice_yn='N' AND re_level=0 AND idx =  (select min(idx) from online_qa WHERE  "&whereSQL&" idx > "&myIdx&"  AND  notice_yn='N' AND re_level=0 and category='A') "--%>

                                        <%--next_SQL = "SELECT *  FROM online_qa WHERE  "&whereSQL&" category='A' AND  notice_yn='N' AND re_level=0 AND idx =  (select max(idx) from online_qa WHERE  "&whereSQL&" idx < "&myIdx&"  AND  notice_yn='N' AND re_level=0 and category='A') "--%>
                                        <%--end if--%>

                                        <%--'response.write "pre_SQL:"&pre_SQL&"<br>"--%>
                                        <%--'response.write "next_SQL:"&next_SQL&"<br>"--%>

                                        <%--Set Rs = Dbcon.Execute(pre_SQL)--%>
                                        <%--if Rs.EOF then--%>
                                        <%--pre_idx = ""--%>
                                        <%--pre_title = ""--%>
                                        <%--else--%>
                                        <%--pre_idx = TRIM(Rs("idx"))--%>
                                        <%--pre_title = TRIM(Rs("title"))--%>
                                        <%--end if--%>


                                        <%--Set Rs = Dbcon.Execute(next_SQL)--%>
                                        <%--if Rs.EOF then--%>
                                        <%--next_idx = ""--%>
                                        <%--next_title = ""--%>
                                        <%--else--%>
                                        <%--next_idx = TRIM(Rs("idx"))--%>
                                        <%--next_title = TRIM(Rs("title"))--%>
                                        <%--end if--%>

                                        <%--Rs.close--%>
                                        <%--Dbcon.close--%>
                                        <%--Set Rs = Nothing--%>
                                        <%--Set Dbcon = Nothing--%>

                                        <%--'response.write "pre_idx:"&pre_idx&"<br>"--%>
                                        <%--'response.write "next_idx:"&next_idx&"<br>"--%>
                                    <%--%>--%>
                                    <%--<!--이전글 다음글 끝 -->--%>
                                    <%--<%	if pre_idx <> "" then	%>--%>
                                    <%--<a href="${pageContext.request.contextPath}/support/Support_online_content;?idx=<%=pre_idx%>&page=<%=page%>&field=<%=field%>&field_value=<%=field_value%>" class="btnWhiteBorder big">이전글</a>--%>
                                    <%--<%	else	%>--%>
                                    <%--<a href="javascript:last_pre();" class="btnWhiteBorder big">이전글</a>--%>
                                    <%--<%	end if	%>--%>

                                    <%--<%	if next_idx <> "" then	%>--%>
                                    <%--<a href="${pageContext.request.contextPath}/support/Support_online_content;?idx=<%=next_idx%>&page=<%=page%>&field=<%=field%>&field_value=<%=field_value%>" class="btnWhiteBorder big">다음글</a>--%>
                                    <%--<%	else	%>--%>
                                    <%--<a href="javascript:last_next();" class="btnWhiteBorder big">다음글</a>--%>
                                    <%--<%	end if	%>--%>
                                    <%----%>
                                    <a href="${pageContext.request.contextPath}/support/Support_online_list?page=${page}&field=${field}&field_value=${field_value}" class="btnGreenBorder big mar_l20">목록</a>

                                    <%--<%	if TRIM(session("username")) = myId OR TRIM(session("username")) = "shhwon" then	%>--%>

                                    <%--<%	end if	%>--%>


<%--//                                        ' 관리자일 경우 답변 가능 ID : k0sm0s1 (로 변경 = 2016-10-31 YG)--%>
<%--//                                        ' 관리자ID 추가 : 조희준(vntltl92), 강기윤(bowery24), yglee (2017-04-07 YG)--%>
<%--//                                        ' 관리자ID 추가 : 백아란(qor20211) (2017-04-21-YG)--%>
<%--//                                        ' 관리자ID 추가 : 최광원주임님(crespo04) / 제거 김윤정(k0sm0s1) (2017-05-16-YG)--%>
<%--//                                        ' 제거 bowery24 : 강기윤 (2017-12-21-YG)--%>
<%--//                                        ' 제거 qor20211 : 백아란 인턴 (2017-12-21-YG)--%>
<%--//                                        ' 추가 jepark : 박지은(2017.10~) (2017-12-21-YG)--%>
<%--//                                        ' 제거 jepark : 박지은(2017.10~) (2018-06-15-YG)--%>
<%--//                                        ' k0sm0s1 : 김윤정 x--%>
<%--//                                        ' hoone : 이지훈 x--%>
<%--//                                        ' vntltl92 : 조희준 x (제거 2018-06-15-YG)--%>
<%--//                                        ' shkwon : 권선희 대리님 x--%>
<%--//                                        ' acidstar : 임 대리님--%>
<%--//                                        ' job : 팀장님--%>
<%--//                                        ' karnmou : 정경진--%>
<%--//                                        ' dagi1227 : 김건태--%>
<%--//                                        ' crespo04 : 최광원 주임님--%>

                                    <c:if test="${authUser.loginID eq content.loginID or authUser.loginID eq 'aa'}">
                                        <a href="javascript:send_re();" class="btnBlueBorder big mar_l20">답변</a>
                                        <a href="${pageContext.request.contextPath}/support/Support_online_write?idx=${content.idx}&page=${page}&field=${field}&field_value=${field_value}" class="btnGreenBorder big">수정</a>
                                        <a href="javascript:del('${content.idx}', '${content.ref}', '${content.re_Step}', '${content.re_Level}', '${field}', '${field_value}', '${page}');" target="_self" class="btnRedBorder big">삭제</a>
                                    </c:if>
                                </td>
                            </tr>
                            <form name="re" action="${pageContext.request.contextPath}/support/Support_online_write" method="get">
                                <input type="hidden" name="re" value="YES">
                                <input type="hidden" name="idx" value="${content.idx}">
                                <input type="hidden" name="ref" value="${content.ref}">
                                <input type="hidden" name="re_step" value="${content.re_Step}">
                                <input type="hidden" name="re_level" value="${content.re_Level}">
                                <input type="hidden" name="page" value="${page}">
                                <input type="hidden" name="field" value="${field}">
                                <input type="hidden" name="field_value" value="${field_value}">
                            </form>
                            </tbody>
                        </table>
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
    <!-- #include virtual="/Include/FooterHTML1709;"-->
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>