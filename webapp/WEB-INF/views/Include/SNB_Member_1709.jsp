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

<script>
    <!--
    function mem_del()
    {
        //if(confirm( "비트교육센터 회원 탈퇴 하시겠습니까? \n 비트교육센터 회원으로 등록된 정보를 삭제합니다." ))
        if(confirm( '비트교육센터에 등록된 회원님의 정보를 삭제합니다. \n정말로 회원탈퇴 하시겠습니까? (<%--<%=session("userid")%>--%>)' ))
        {
            location.href="/member/member_del";
        }
    }
    //-->
</script>

<nav id="SNB_Wrap_1709">
    <h3 style="line-height:62px;">멤버</h3>
    <ul class="snb_1709">
        <style>
            .dnone {
                DISPLAY:NONE !important;
            }
        </style>
        <c:choose>
            <c:when test="${sessionScope.authUser eq null}">
                <li><a href="${pageContext.request.contextPath}/member/login" class="newdepth1">로그인</a></li>
                <li><a href="${pageContext.request.contextPath}/member/Join_Step1" class="newdepth1">회원가입</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="${pageContext.request.contextPath}/member/Member_modify" class="newdepth1">개인정보수정</a></li>
                <li><a href="javascript:mem_del();" class="newdepth1">탈퇴하기</a></li>
            </c:otherwise>
        </c:choose>
        <li><a href="${pageContext.request.contextPath}/member/id_pass_search_01" class="newdepth1">아이디/패스워드 찾기</a></li>
        <!--<li><a href="/Member/notice_list.asp" class="newdepth1">공지사항</a></li>-->
        <!--<li><a href="/Member/siteMap.asp" class="newdepth1">사이트맵</a></li>-->
        <li><a href="${pageContext.request.contextPath}/member/policy" class="newdepth1">개인정보처리방침</a></li>
    </ul>
</nav>
