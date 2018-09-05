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
    <h3 style="line-height:62px;">취업지원센터</h3>
    <ul class="snb_1709">
        <style>
            .dnone {
                DISPLAY:NONE !important;
            }
        </style>

        <li><a href="${pageContext.request.contextPath}/employment/employment_jobCenter" class="newdepth1" style="letter-spacing:-1px;">비트교육센터 취업지원센터</a></li>
        <li><a href="${pageContext.request.contextPath}/job/WriteRecruit" class="newdepth1">구인의뢰 신청</a></li>
        <li><a href="${pageContext.request.contextPath}/job/List" class="newdepth1">채용정보 확인</a></li>
        <li><a href="${pageContext.request.contextPath}/job/Interview?page=1" class="newdepth1">면접후기</a></li>
        <li><a href="${pageContext.request.contextPath}/employment/employment_bitAdvantage" class="newdepth1">비트출신 장점</a></li>
        <li><a href="${pageContext.request.contextPath}/employment/employment_company" class="newdepth1">비트출신 진출기업</a></li>
        <li class="last"><a href="${pageContext.request.contextPath}/employment/employment_companyEmployment" class="newdepth1">신입채용교육 진행 기업</a></li>
        <li><a href="${pageContext.request.contextPath}/course/BITsupporters_2018" class="newdepth1">SW개발자 후견인 제도</a></li>
    </ul>
</nav>
