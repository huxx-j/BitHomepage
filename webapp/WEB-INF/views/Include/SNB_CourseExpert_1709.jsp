<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h3 style="line-height:30px;">전문가과정<br/>과정안내 </h3>
	<ul class="snb_1709">
		<li><a href="/course/expert/Course_Expert_JavaExpert" class="newdepth1">자바 전문가과정</a></li>
		<li><a href="javascript:alert('준비중입니다. (문의 02-3486-3456)');" class="newdepth1">윈도우 닷넷 전문가과정</a></li>
		<li><a href="/course/expert/Course_Expert_Embedded" class="newdepth1" style="letter-spacing:-1px;">임베디드 시스템 전문가과정</a></li>
		<li><a href="javascript:alert('준비중입니다. (문의 02-3486-3456)');" class="newdepth1">청년실업 해소펀드</a></li>
	</ul>
</nav>
