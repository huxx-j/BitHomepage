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
                                <c:choose>
                                    <c:when test="${list eq '[]'}">
                                        <tr>
                                            <td colspan="9" class="brownTxt c">지원하신 과정이 존재하지 않습니다.</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${list}" var="vo">
                                            <tr>
                                                <td class="c">
                                                    ${vo.applyYear} /<br/>
                                                    ${vo.applyMon} / ${vo.applyDay}
                                                </td>
                                                <td class="c">
                                                    <c:if test="${vo.testYear eq null}">
                                                        <span style="color:red; font-size:8pt; font-weight:800;">(주의:전형일시 없음)</span>
                                                    </c:if>
                                                    <c:if test="${vo.testYear != null}">
                                                        ${vo.testYear} /<br/>
                                                        ${vo.testMon} / ${vo.testDay}
                                                    </c:if>
                                                </td>
                                                <td class="c">${vo.curriName}</td>
                                                <td class="c">
                                                   ${vo.cateName}
                                                </td>

                                                <td class="c">
                                                    <c:if test="${vo.curriName eq 'Presentation'}">
                                                        -
                                                    </c:if>
                                                    <c:if test="${vo.curriName != 'Presentation'}">
                                                        ${vo.testLang}
                                                    </c:if>
                                                </td>

                                                <td align="center">
                                                    <c:if test="${vo.curriName != 'Presentation'}">
                                                        ${vo.testResult}
                                                    </c:if>
                                                    <c:if test="${vo.curriName eq 'Presentation'}">
                                                        -
                                                    </c:if>
                                                </td>

                                                <td align="center">
                                                    <c:choose>
                                                        <c:when test="${vo.coment != ''}">
                                                            <div class="tooltip">
                                                                자세히
                                                                <span class="tooltipText">${vo.coment}</span>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            -
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td> <!-- 면접위원 의견 -->
                                                <c:choose>
                                                    <c:when test="${vo.testResult eq '미전형'}">
                                                        <td height="30" align="center"><a href="#this" onclick="del(${vo.applicant_no});" onMouseOver="this.style.cursor='hand'" class="btnRedBorder small">취소</a></td>
                                                    </c:when>
                                                    <c:when test="${vo.testResult eq '청년취업'}">
                                                        <td height="30" align="center"><a href="#this" onclick="del(${vo.applicant_no});" onMouseOver="this.style.cursor='hand'" class="btnRedBorder small">취소</a></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td height="30" align="center">-</td>
                                                    </c:otherwise>
                                                </c:choose>

                                                <c:choose>
                                                    <c:when test="${vo.testResult eq ''}">
                                                        <td height="30" align="center">
                                                            <span style="color:red; font-weight:800;">-</span>
                                                        </td>
                                                    </c:when>
                                                    <c:when test="${vo.testResult eq '미전형' and vo.cateName eq '기업위탁' and vo.testDate != '' and vo.CDate eq '거짓'}">
                                                        <td height="30" align="center">
                                                            <a  onclick="mod(1, ${vo.testDate}, ${vo.applicant_no});" onMouseOver="this.style.cursor='hand'" class="btnGreenBorder small" >수정</a>
                                                        </td><!--  지원서 수정 -->
                                                    </c:when>
                                                    <c:when test="${vo.testResult eq '미전형' and vo.cateName eq '전문가' and vo.testDate != '' and vo.CDate eq '거짓'}">
                                                        <td height="30" align="center">
                                                            <a  onclick="mod(2, ${vo.testDate}, ${vo.applicant_no});" onMouseOver="this.style.cursor='hand'"  class="btnGreenBorder small" >수정</a>
                                                        </td><!--  지원서 수정 -->
                                                    </c:when>
                                                    <c:when test="${vo.testResult eq '미전형' and vo.cateName eq '국가기간' and vo.testDate != '' and vo.CDate eq '거짓'}">
                                                        <td height="30" align="center">
                                                            <a  onclick="mod(3, ${vo.testDate}, ${vo.applicant_no});" onMouseOver="this.style.cursor='hand'"   class="btnGreenBorder small" >수정</a>
                                                        </td><!--  지원서 수정 -->
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td height="30" align="center">-</td>
                                                    </c:otherwise>
                                                </c:choose>
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
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