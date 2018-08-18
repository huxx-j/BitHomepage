<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!--#include file="Common_CSS_SNB_1709.inc"-->
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
    <h3 style="line-height:62px;">센터소개</h3>
    <ul class="snb_1709">
        <li><a href="${pageContext.request.contextPath}/center/Center_info" class="newdepth1">비트교육센터 소개</a></li>
        <li><a href="${pageContext.request.contextPath}/center/Center_feature" class="newdepth1">비트교육센터 특징</a></li>
        <li><a href="${pageContext.request.contextPath}/center/Center_history" class="newdepth1">비트교육센터 연혁</a></li>
        <li><a href="${pageContext.request.contextPath}/center/Center_gallery" class="newdepth1">비트교육센터 교육환경</a></li>
        <li><a href="${pageContext.request.contextPath}/center/location" class="newdepth1">찾아오시는길</a></li>
    </ul>
</nav>
