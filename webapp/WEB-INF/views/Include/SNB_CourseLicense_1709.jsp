<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:import url="/WEB-INF/views/Include/Common_CSS_SNB_1709.jsp"/>

<style>
    div.banner_wrap {
        display:none;
    }
    div#Content_Wrap {
        margin-top:10px;
    }
    .moveTop {
        left:1px;
    }
    #SNB_Wrap_1709 {
        background:#ffffff !important;
        width:188px !important;
    }
</style>

<style>
    #Content_Wrap { border:none !important; }
</style>
<nav id="SNB_Wrap_1709">
    <h3 style="line-height:30px;">비트 SW 자격증<br/>과정안내</h3>
    <ul class="snb_1709">
        <li><a href="${pageContext.request.contextPath}/course/license/Course_License_Expert" class="newdepth1">비트 SW Expert 자격증</a></li>
        <li><a href="${pageContext.request.contextPath}/course/license/Course_Licenses" class="newdepth1">BSPM (BIT Software Programming Master) 자격증</a></li>
    </ul>
</nav>
