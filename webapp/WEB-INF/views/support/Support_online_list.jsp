<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!--#include virtual="/Include/list_function.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
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
            $(".snb_1709 a.newdepth1").eq(0).addClass("on");								// Q&A ON
        });
        function login()
        {
            alert("로그인 후 작성해 주세요 ");
            location.href="/member/login.asp?return_url=/support/Support_online_list";
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

    <div id="Container_Wrap">
        <!-- Content_Wrap -->
        <div id="Content_Wrap">
            <!-- SNB_Wrap-->
            <!-- #include virtual = "/Include/SNB_Support_1709.asp"-->
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
                        <%--<%--%>
                            <%--' 관리자ID 추가 : 최광원주임님(crespo04) / 제거 김윤정(k0sm0s1) (2017-05-16-YG)--%>
                            <%--' 제거 bowery24 : 강기윤 (2017-12-21-YG)--%>
                            <%--' 제거 qor20211 : 백아란 인턴 (2017-12-21-YG)--%>
                            <%--' 추가 jepark : 박지은(2017.10~) (2017-12-21-YG)--%>
                            <%--' acidstar : 임 대리님--%>
                            <%--' job : 팀장님--%>
                            <%--' k0sm0s1 : 김윤정 x--%>
                            <%--' hoone : 이지훈 x--%>
                            <%--' karnmou : 정경진--%>
                            <%--' vntltl92 : 조희준--%>
                            <%--' shkwon : 권선희 대리님--%>
                            <%--' dagi1227 : 김건태--%>
                            <%--' crespo04 : 최광원 주임님--%>

                        <c:if test="${authUser.loginID eq 'aa'}">
                            <p style="margin:10px 5%; font-family: 'Nanum Gothic Bold'; font-size: 13px; color: #8b6338;">관리자 (${authUser.nameHan} ID:${authUser.loginID})로 로그인 되었습니다.</p>
                        </c:if>

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
                                <c:choose>
                                    <c:when test="${qaMap.qaList eq null}">
                                        <tr>
                                            <td colspan="4">입력된 내용이 없습니다.</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${qaMap.qaList}" var="vo">
                                            <tr>
                                                <td style="text-align:center;">${vo.index}</td>
                                                <td class="l">
                                                    <c:if test="${vo.re_Level > 0}">
                                                        <c:forEach begin="1" end="${vo.re_Level}" step="1">
                                                            &nbsp;&nbsp;&nbsp;
                                                        </c:forEach>
                                                        <img src='${pageContext.request.contextPath}/assets/Images/Common/img_re.png'>
                                                    </c:if>
                                                    <a href="${pageContext.request.contextPath}/support/Support_online_content?idx=${vo.idx}&page=${qaMap.page}&field=${field}&field_value=${field_value}" class="gulim12_gray_L">${vo.title} </a>
                                                        <%--<c:if test=""--%>
                                                        <%--&lt;%&ndash;%>
                                                        <%--if DateDiff("h",myReg_date,now()) < 24 then--%>
                                                        <%--'response.write "<img src='/img/new1.gif' width='25' height='17'>"--%>
                                                        <%--End if--%>
                                                        <%--%>--%>
                                                </td>
                                                <td>${vo.nameHan}
                                                    <c:if test="${vo.nameHan eq '관리자'}">
                                                        <img src="${pageContext.request.contextPath}/assets/Images/Common/img_LOGO_BIT.png" style="height:20px; margin-top:-4px; margin-left:3px;"/>
                                                    </c:if>
                                                </td>
                                                <td>${vo.reg_Date}</td>
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>


                                <%--<tr>--%>
                                    <%--<td style="text-align:center;">${qaMap.qaList.idx}</td>--%>
                                    <%--<td class="l">--%>
                                        <%--<c:if --%>
                                        <%--<%'답변 있을 경우..--%>
                                            <%--if myRe_level > 0 then--%>
                                            <%--wid=5*myRe_level--%>
                                            <%--for j = 1 to myRe_level--%>
                                            <%--response.write "&nbsp;&nbsp;&nbsp;"--%>
                                            <%--next--%>
                                            <%--response.write "<img src='/assets/Images/Common/img_re.png'>"--%>
                                            <%--End if--%>
                                        <%--%>--%>

                                        <%--<a href="${pageContext.request.contextPath}/support/Support_online_content?idx=<%=myIdx%>&gotopage=<%=gotopage%>&field=<%=field%>&field_value=<%=field_value%>" class="gulim12_gray_L"><%=myTitle%> </a>--%>
                                        <%--<%--%>
                                            <%--if DateDiff("h",myReg_date,now()) < 24 then--%>
                                            <%--'response.write "<img src='/img/new1.gif' width='25' height='17'>"--%>
                                            <%--End if--%>
                                        <%--%>--%>
                                    <%--</td>--%>
                                    <%--<td><%=myName%> <% if myName="관리자" then %><img src="${pageContext.request.contextPath}/assets/Images/Common/img_LOGO_BIT.png" style="height:20px; margin-top:-4px; margin-left:3px;"/><% end if %></td>--%>
                                    <%--<td><%=myReg_date%></td>--%>
                                <%--</tr>--%>
                                <%--<%--%>

                                <tr>
                                    <td colspan="4" class="c" style="height:60px">
                                        <c:if test="${qaMap.prev}">
                                            <a href="${pageContext.request.contextPath}/support/Support_online_list?page=${qaMap.page-1}" class="listfont_btn">&lt;&lt;</a>
                                        </c:if>
                                        <c:forEach var="i" begin="${qaMap.startPageBtnNo}" end="${qaMap.endPageBtnNo}">
                                            <c:choose>
                                                <c:when test="${qaMap.page eq i}">
                                                    <a class='listfont_btn bg_green'>${i}</a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="${pageContext.request.contextPath}/support/Support_online_list?page=${i}" class="listfont_btn">${i}</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                        <c:if test="${qaMap.next}">
                                            <a href="${pageContext.request.contextPath}/support/Support_online_list?page=${qaMap.page+1}" class="listfont_btn">&gt;&gt;</a>
                                        </c:if>
                                        <%--<%call gotoPageHTML3(GotoPage, Pagecount)%>--%>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="btn_wrap r mar_t10" style="margin-right:5%;">
                            <c:choose>
                                <c:when test="${authUser eq null}">
                                    <a href="javascript:login();" class="btnGreenBorder big">글쓰기</a>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageContext.request.contextPath}/support/Support_online_write" class="btnGreenBorder big">글쓰기</a>
                                </c:otherwise>
                            </c:choose>
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
    <c:import url="/WEB-INF/views/Include/FooterHTML1709.jsp"/>
    <!-- //Footer_Wrap -->
</div>
</body>
</html>