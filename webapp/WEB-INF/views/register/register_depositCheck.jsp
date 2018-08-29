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
            <c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
            <!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
            $(".snb_1709 a.newdepth1").eq(4).addClass("on");								// 입금확인
        });
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

    <div id="Container_Wrap" style="min-height:685px;">
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
                    <h4>입금확인</h4>
                </div>

                <section class="section">
                    <!-- con_wrap1709 -->
                    <div class="con_wrap1709">
                        <div class="r">
                            <p style="color:#8b6338;">* 입금된 내역을 확인 하실 수 있습니다.</p>
                        </div>

                        <div class="divTable">
                            <table>
                                <caption>
                                    <col style="width:46%">
                                    <col style="width:18%">
                                    <col style="width:18%">
                                    <col style="width:18%">
                                </caption>
                                <thead>
                                <tr>
                                    <th scope="col" class="tit">지원과정</th>
                                    <th scope="col" class="tit">결제방식</th>
                                    <th scope="col" class="tit">결제일자</th>
                                    <th scope="col" class="tit">결제금액</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:choose>
                                    <c:when test="${list eq []}">
                                        <tr>
                                            <!--<td colspan="4" class="c">결제내용이 없습니다.</td>-->
                                            <td colspan="4" class="brownTxt c">결제내역이 없습니다.</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${list}" var="vo">
                                            <tr bgcolor="#FFFFFF">
                                                <td align="center">[${vo.cateName}]${vo.curriName}</td>
                                                <td align="center">
                                                    <c:if test="${vo.cardPayState != 'N'}">
                                                        신용카드
                                                    </c:if>
                                                    <c:if test="${vo.cardPayState eq 'N'}">
                                                        현금결제
                                                    </c:if>
                                                </td>
                                                    <%--<% if Rs("CardReceiptStat")<>"N" then%>신용카드<%else%>현금결제<% end if %></td>--%>
                                                <td align="center">
                                                    <c:if test="${vo.cardPayState != 'N'}">
                                                        ${vo.cardPayDate}
                                                    </c:if>
                                                    <c:if test="${vo.cardPayState eq 'N'}">
                                                        ${vo.depositDate}
                                                    </c:if>
                                                </td>
                                                <%--<% if Rs("CardReceiptStat")<>"N" then%><%=Rs("CardReceiptDate")%><%else%><%=Rs("ReceiptDate")%><% end if %></td>--%>
                                                <td align="center">
                                                    <c:if test="${vo.cardPayState != 'N'}">
                                                        ${vo.cardPayAmount}
                                                    </c:if>
                                                    <c:if test="${vo.cardPayState eq 'N'}">
                                                        ${vo.depositAmount}
                                                    </c:if>
                                                </td>
                                                <%--<% if Rs("CardReceiptStat")<>"N" then%><%=Rs("CardReceiptAmount")%><%else%><%=Rs("ReceiptAmount")%><% end if %></td>--%>
                                            </tr>
                                        </c:forEach>

                                    </c:otherwise>
                                </c:choose>
                                </tbody>
                            </table>
                        </div>
                    </div>
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