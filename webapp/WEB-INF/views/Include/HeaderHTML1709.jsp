<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div id="Container" >
    <div id="Header_Outer_Wrap" style="min-width:960px;">
        <!--TopBar-->
        <div id="mainTopBar">
            <div style="width:960px; margin:0 auto;">
                <div class="fl" style="color:#d2d2d4; margin-left:12px; margin-top:14px;">입학이 긍지가 되고 수료가 날개가 되는&nbsp;</div>
                <div class="fl" style="color:#1498be; margin-top:14px;">상위1%전문가 양성을 위한 교육</div>
                <div style="float:right; margin-top:0px;">
                    <%--<%	if TRIM(session("userid")) ="" OR isEmpty(TRIM(session("userid"))) then %>--%>
                    <c:choose>
                        <c:when test="${sessionScope.authUser == null}">
                            <div class="fl"><a href="/member/Join_Step1"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Join.png" title="JOIN"/></a></div>
                            <div class="fl"><a href="/member/login?return_url=/index"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Login.png" title="LOGIN"/></a></div>
                        </c:when>
                        <c:otherwise>
                            <div class="fl"><a href="/register/register_requestResult"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Mypage.png" title="MyPage"/></a></div>
                            <div class="fl"><a href="/member/logout?return_url=/index"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Logout.png" title="LOGOUT"/></a></div>
                            <div style="clear:both;"></div>
                        </c:otherwise>
                    </c:choose>
                    <%--<div class="fl"><a href="/member/Join_Step1"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Join.png" title="JOIN"/></a></div>--%>
                    <%--<div class="fl"><a href="/member/login?return_url=/index"><img src="${pageContext.request.contextPath}/assets/Images/Btns/btn_Login.png" title="LOGIN"/></a></div>--%>
                    <%--<%	else	%>--%>
                    <%--<div class="fl"><a href="/Register/register_requestResult.asp"><img src="/Images/Btns/btn_Mypage.png" title="MyPage"/></a></div>--%>
                    <%--<div class="fl"><a href="/Member/logout.asp?return_url=/index.asp"><img src="/Images/Btns/btn_Logout.png" title="LOGOUT"/></a></div>--%>
                    <%--<div style="clear:both;"></div>--%>
                    <%--&lt;%&ndash;<%	end if	%>&ndash;%&gt;--%>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div id="Header_Wrap1709">
            <!--
            <p style="font-family:'SandolGothicNeo2'; font-weight:300;">폰트를 테스트합니다. <span style="color:blue; font-size:0.5em;">// (산돌고딕네오2a)</span></p>
            <p style="font-family:'SandolGothicNeo2'; font-weight:500;">폰트를 테스트합니다. <span style="color:blue; font-size:0.5em;">// (산돌고딕네오2c)</span></p>
            <p style="font-family:'SandolGothicNeo2'; font-weight:600;">폰트를 테스트합니다. <span style="color:blue; font-size:0.5em;">// (산돌고딕네오2d)</span></p>
            -->


            <!--LogoBar-->
            <div id="mainLogoBar">
                <div style="float:left;">
                    <a href="/index"><img src="${pageContext.request.contextPath}/assets/Images/MainPage__Logo.png" style="margin-top:11px; margin-left:12px;"/></a>
                </div>
                <!--
                <div style="float:left;">
                    <img src="/Images/MainPage__Slogan.gif" style="margin-top:25px; margin-left:4px; width:382px; "/>
                </div>
                -->
                <div style="clear:both;"></div>
            </div>
        </div>
    </div>
    <div id="Header_Outer_Wrap" style="border-top:1px solid #e8e8e8; border-bottom:3px solid #1b499b; height:54px; width:100%;"> <!-- 1px solid #e8e8e8;  -->
        <div id="Header_Wrap1709">
            <!--TopMenuBar-->
            <div id="mainTopMenuBar">
                <!--<img class="mainmenu" src="/Images/Menus/2/MainPage_Menu__menu1off.png"/>-->
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu2off.png"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu3off.png"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu4off.png"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu5off.png"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu6off.png"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu7off.png" h_ref="/employment/employment_jobCenter"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu8off.png" h_ref="/Course/Employ/Course_Employ.asp"/>
                <img class="mainmenu" src="${pageContext.request.contextPath}/assets/Images/Menus/2/MainPage_Menu__menu9off.png" h_ref="/course/license/Course_Licenses"/>
                <div style="clear:both;"></div>

                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:47px; z-index:3;"/>--%>
                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:140px; z-index:3;"/>--%>
                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:234px; z-index:3;"/>--%>
                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:329px; z-index:3;"/>--%>
                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:421px; z-index:3;"/>--%>
                <%--<img class="mainmenuTriangle" src='${pageContext.request.contextPath}/assets/Images/Icons/MainPage_Menubar__triangle.png' style="position:relative; top:-8px; left:513px; z-index:3;"/>--%>
                <%--<div style="clear:both;"></div>--%>
                <br/>


            </div>
        </div>
    </div>
    <div id="Container_Wrap" style="min-height:0px; margin-top:0px;">
        <!--#include virtual="/Include/mainDropdownMenu2017.asp"-->
        <c:import url="/WEB-INF/views/Include/mainDropdownMenu2017.jsp"/>

    </div>
