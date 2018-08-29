<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel= "shortcut icon" href="${pageContext.request.contextPath}/assets/Images/favicon.ico">
    <!-- #include virtual="/Include/Meta.asp"-->
    <c:import url="/WEB-INF/views/Include/Meta.jsp"/>
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
            // $(".snb_1709 a.newdepth1").eq(3).addClass("on");								// 자격증 및 확인서 신청 ON
            ajaxLoad('#ConDetail', '', '/Course/Tap/CoursePro_01.asp');
            //$(".snb .depth1").eq(3).addClass("on");
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
                        <img src="${pageContext.request.contextPath}/assets/Images/Icons/icn_ArrowTriangleRight.png"/>청년실업해소펀드 제도 안내
                    </p>
                    <h4>청년실업해소펀드 제도</h4>
                </div>

                <section class="section">
                    <div class="con_wrap1709 first">
                        <p>상위 1% IT 전문교육기관인 비트교육센터에서는 청년실업 해소를 위해 청년실업해소펀드 10억을 조성하였습니다.
                            본 제도는 청년실업해소와 인력부족으로 고군분투하는 SW 회사에 원활한 인력을 공급하기 위해, 전문가과정의 교육비를 펀드에서 지원받아 납입하고 전문가과정을 수료한 뒤 취업하여 갚아나가는 제도입니다. 이 펀드를 지원해 줄 수 있는 이유는 비트교육센터의 전문가과정을 수료하면 100% 취업이 당연하기 때문에 취업 후에 갚을 수 있으므로 만들어지게 되었습니다. 지원대상은 전문가과정 입학 대상자 중 SW개발자로 취업을 희망하는 졸업예정자 및 기 졸업자를 대상으로 합니다.
                        </p>
                        <p class="mar_t20 blueTxt">&lt;과정별 교육비와 지원금&gt;</p>
                        <table class="table_col_type2">
                            <colgroup>
                                <col style="width:34%">
                                <col style="width:22%">
                                <col style="width:22%">
                                <col style="width:22%">
                            </colgroup>
                            <thead>
                            <tr>
                                <th scope="col">과정명</th>
                                <th scope="col">교육비</th>
                                <th scope="col">펀드지원금</th>
                                <th scope="col">개인부담금</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Embedded System 전문가과정</td>
                                <td>6,550,000 원</td>
                                <td>6,550,000 원</td>
                                <td>0 원</td>
                            </tr>
                            <tr>
                                <td>Client/Server 전문가과정</td>
                                <td>5,700,000 원</td>
                                <td>5,700,000 원</td>
                                <td>0 원</td>
                            </tr>
                            <tr>
                                <td>JAVA 전문가과정</td>
                                <td>5,700,000 원</td>
                                <td>5,700,000 원</td>
                                <td>0 원</td>
                            </tr>
                            <tr>
                                <td>MS Expert 전문가과정</td>
                                <td>5,700,000 원</td>
                                <td>5,700,000 원</td>
                                <td>0 원</td>
                            </tr>
                            <tr>
                                <td>Network 전문가과정</td>
                                <td>5,700,000 원</td>
                                <td>5,700,000 원</td>
                                <td>0 원</td>
                            </tr>
                            <tr>
                                <td>NET 전문가과정</td>
                                <td>5,700,000 원</td>
                                <td>5,700,000 원</td>
                                <td>0 원</td>
                            </tr>
                            </tbody>
                        </table>
                        <p class="mar_t10 blueTxt">* 상기 과정 교육비에 대하여 교육비 전액 펀드로 지원이 가능하며, 수료 후 취업하여 갚아나가시면 됩니다. 다만, 그 기간 동안의 이자는 발생합니다..</p>
                        <br/>
                    </div>
                    <!-- //con_wrap -->
                    <!-- con_wrap -->
                    <div class="con_wrap last">
                        <h5>지원대상</h5>
                        <ul class="ul_dot_gray">
                            <li>전문가과정 전형에 합격한 전문가과정 입학 대상자</li>
                            <li>졸업예정자 및 졸업자로서 전문가과정 수료 후 바로 취업이 가능한 자</li>
                        </ul>
                    </div>
                </section>
            </div>
            <!--<a href="#this" class="moveTop">Top</a>-->
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