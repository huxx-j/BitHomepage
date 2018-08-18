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
    <h3 style="line-height:62px;">지원안내</h3>
    <ul class="snb_1709">
        <li><a href="${pageContext.request.contextPath}/Support/Support_online_list.asp" class="newdepth1">온라인문의 (Q&A)</a></li>
        <li><a href="${pageContext.request.contextPath}/support/Support_etcRent" class="newdepth1">강의실 임대문의</a></li>
        <li><a href="javascript:alert('준비중입니다. 문의(02-3486-3456)');" class="newdepth1">자주묻는질문 (FAQ)</a></li>
        <li><a href="${pageContext.request.contextPath}/support/Support_certification" class="newdepth1">자격증 및 확인서 신청</a></li>
        <li><a href="${pageContext.request.contextPath}/support/Support_instructor" class="newdepth1">비트교육센터 강사모집</a></li>
    </ul>
    <a href="http://bitacademy.com/Support/Support_cacaoView.asp" target="_blank"><img src="${pageContext.request.contextPath}/assets/Images/Common/KakaoTalk4SNB_1704.png" style="width:100%; "/></a>
</nav>
