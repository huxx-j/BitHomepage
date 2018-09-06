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

<script type="text/javascript">
	// no1 : 4차산업선도인력양성
	// no2 : 국가기간전략산업직종
	// no3 : 신입사원 채용교육
	// no4 : 국가인적자원개발컨소시엄
	function onclickIndustry40() { openWrap("no1"); return false; }
	function onclickKukka() { openWrap("no2"); return false; }
	function onclickEmploy() { openWrap("no3"); return false; }
	//function onclickConsortium() { openWrap("no4"); return false; }
</script>

<style>
	#Content_Wrap { border:none !important; }
</style>
<nav id="SNB_Wrap_1709">
	<h3 style="line-height:30px;">무료취업과정<br/>과정안내 </h3>
	<ul class="snb_1709">
		<style>
			.dnone {
				DISPLAY:NONE !important;
			}
		</style>
		
		<li class="dnone">
			<a href="#" onclick="return onclickIndustry40();" class="newdepth1" style="letter-spacing:0px;">4차산업선도인력양성</a>
			<ul class="newdepth2_wrap no1" style="height:50px;">
				<li><a href="/course/industry4.0/Course_Industry40_FinTech_Expert" class="newdepth2">AI기반 핀테크 융합 전문가과정</a></li>

				<!--<li><a href="/Course/Industry4.0/Course_Industry40_IoTSelfDriving_Expert.asp" class="newdepth2">IoT를 활용한 AI 기반 자율주행 전문가과정</a></li>-->
				<!--<li><a href="/Course/Industry4.0/Course_Industry40_BigData_Expert.asp" class="newdepth2" style="height:39px;">AI기반 빅데이터 엔지니어/사이언티스트 전문가과정</a></li>-->
			</ul>
		</li>
		<li>
			<a href="#" onclick="return onclickKukka();" class="newdepth1">국가기간전략산업직종.</a>
			<ul class="newdepth2_wrap no2" style="min-height:150px;"><!--"170px;">-->
				<li><a href="/course/kukka/Course_Kukka_Introduction.asp" style="height:26px;" class="newdepth2 long">국가기간전략산업직종훈련 소개</a></li>
				<li style="display:none;"><a href="/course/kukka/Course_Kukka_Projects20180102" style="height:14px;" class="newdepth2">프로젝트 발표회</a></li><!--  style="DISPLAY:NONE;" -->
				<li><a href="/course/kukka/Course_Kukka_EmbeddedService_2018" style="height:24px; padding-right:10px;" class="newdepth2 long">임베디드기반 IoT SW개발 고급인력양성 과정</a></li>

				
				<!--
				<li><a href="/Course/Kukka/Course_Kukka_Fintech_2018.asp" style="height:24px; padding-right:10px;" class="newdepth2 long">금융 IT기반 핀테크융합 전문가 양성과정</a></li>
				-->
				
				<li><a href="/course/kukka/Course_Kukka_JavaBigData_2018" style="height:24px; letter-spacing:-1px;" class="newdepth2 long">JAVA 기반 빅데이터 분석을 위한 고급인력 양성과정</a></li>
				<!--<li><a href="/Course/Kukka/Course_Kukka_AWSCloudWeb_2018.asp" style="height:38px;" class="newdepth2 long">AWS를 활용한 클라우드 기반 웹 개발 고급인력 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedDrone_2018.asp" style="height:24px; padding-right:10px;" class="newdepth2 long">임베디드 시스템 기반 드론 제작 고급인력 양성과정</a></li>-->
				<!--<li><a href="/Course/Kukka/Course_Kukka_RaspberryPiIoTEmbedded_2017.asp" style="height:38px;" class="newdepth2 long">라즈베리파이를 활용한 IoT임베디드 시스템 개발자 양성과정</a></li>-->
			</ul>
		</li>
		<li>
			<a href="/course/employ/Course_Employ" onclick="return onclickEmploy();" class="newdepth1">신입사원 채용교육</a>
			<ul class="newdepth2_wrap no3">
				<li><a href="/course/employ/Course_Employ" class="newdepth2">신입사원 채용교육 소개</a></li>
				<li><a href="/course/employ/Course_Employ_ITtelecom" class="newdepth2">㈜아이티텔레콤</a></li>
				<li><a href="/course/employ/Course_Employ_BAinfra" class="newdepth2">㈜비에이인프라</a></li>
				<li><a href="/course/employ/Course_Employ_ivis" class="newdepth2">㈜아이비스</a></li>
				<li><a href="/course/employ/Course_Employ_BitComputer" class="newdepth2">㈜비트컴퓨터</a></li>
				<li><a href="/course/employ/Course_Employ_AurosTech" class="newdepth2">㈜오로스테크놀로지</a></li>
				<li><a href="/course/employ/Course_Employ_PSK" class="newdepth2">㈜피에스케이</a></li>
				<li><a href="/course/employ/Course_Employ_BizTechPartners" class="newdepth2">㈜비즈테크파트너스</a></li>
				<li><a href="/course/employ/Course_Employ_TaehaMechatronics" class="newdepth2">㈜태하메카트로닉스</a></li>
				<li class="dnone"><a href="/course/employ/Course_Employ_LEETECH" class="newdepth2">㈜리텍</a></li>
				<li class="dnone"><a href="/course/employ/Course_Employ_voiceye" class="newdepth2">㈜보이스아이</a></li>
				<li class="dnone"><a href="/course/employ/Course_Employ_Cafe24" class="newdepth2">㈜카페24</a></li>
				<!--<li><a href="/Course/Employ/Course_Employ_WhiteInfoComm.asp" class="newdepth2 no5">㈜화이트정보통신</a></li>-->
			</ul>
		</li>
		<li class="dnone">
			<a href="/course/chung/Course_Chung_2018" class="newdepth1">청년취업아카데미</a>
		</li>
		<li class="dnone">
			<a href="#" onclick="return onclickConsortium();" class="newdepth1" style="letter-spacing:-0.5px;">국가인적자원개발컨소시엄</a>
			<ul class="newdepth2_wrap no4" style="height:48px;">
				<li><a href="/course/kukka/Course_Consortium_AWS_Cloud_Web" class="newdepth2 dnone">AWS를 활용한 클라우드 기반 웹 개발</a></li>
				<li><a href="/course/kukka/Course_Consortium_RaspberryPi_IoT" class="newdepth2">라즈베리파이를 활용한 IoT개발 실무과정</a></li>
			</ul>
		</li>
	</ul>
</nav>


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

<script type="text/javascript">
    // no1 : 4차산업선도인력양성
    // no2 : 국가기간전략산업직종
    // no3 : 신입사원 채용교육
    // no4 : 국가인적자원개발컨소시엄
    function onclickIndustry40() { openWrap("no1"); return false; }
    function onclickKukka() { openWrap("no2"); return false; }
    function onclickEmploy() { openWrap("no3"); return false; }
    //function onclickConsortium() { openWrap("no4"); return false; }
</script>

<style>
    #Content_Wrap { border:none !important; }
</style>
<nav id="SNB_Wrap_1709">
    <h3 style="line-height:30px;">무료취업과정<br/>과정안내 </h3>
    <ul class="snb_1709">
        <style>
            .dnone {
                DISPLAY:NONE !important;
            }
        </style>

        <li class="dnone">
            <a href="#" onclick="return onclickIndustry40();" class="newdepth1" style="letter-spacing:0px;">4차산업선도인력양성</a>
            <ul class="newdepth2_wrap no1" style="height:50px;">
                <li><a href="/Course/Industry4.0/Course_Industry40_FinTech_Expert.asp" class="newdepth2">AI기반 핀테크 융합 전문가과정</a></li>

                <!--<li><a href="/Course/Industry4.0/Course_Industry40_IoTSelfDriving_Expert.asp" class="newdepth2">IoT를 활용한 AI 기반 자율주행 전문가과정</a></li>-->
                <!--<li><a href="/Course/Industry4.0/Course_Industry40_BigData_Expert.asp" class="newdepth2" style="height:39px;">AI기반 빅데이터 엔지니어/사이언티스트 전문가과정</a></li>-->
            </ul>
        </li>
        <li>
            <a href="#" onclick="return onclickKukka();" class="newdepth1">국가기간전략산업직종</a>
            <ul class="newdepth2_wrap no2" style="min-height:132px;"><!--"170px;">-->
                <li><a href="${pageContext.request.contextPath}/course/kukka/Course_Kukka_Introduction" style="height:26px;" class="newdepth2 long">국가기간전략산업직종훈련 소개</a></li>
                <li style="display:none;"><a href="${pageContext.request.contextPath}/Course/Kukka/Course_Kukka_Projects20180102" style="height:14px;" class="newdepth2">프로젝트 발표회</a></li><!--  style="DISPLAY:NONE;" -->
                <li><a href="/${pageContext.request.contextPath}course/kukka/Course_Kukka_RaspberryPiIoTService_2018" style="height:24px; padding-right:10px;" class="newdepth2 long">IoT를 활용한 자바 웹&amp;모바일 고급인력 양성과정</a></li>
                <li class="dnone"><a href="${pageContext.request.contextPath}/Course/Kukka/Course_Kukka_FinTech_2018" style="height:24px; padding-right:10px;" class="newdepth2 long">금융 IT기반 핀테크 전문가 양성과정</a></li>
                <li><a href="${pageContext.request.contextPath}/course/kukka/Course_Kukka_JavaBigData_2018" style="height:24px; letter-spacing:-1px;" class="newdepth2 long">JAVA 기반 빅데이터 분석을 위한 고급인력 양성과정</a></li>
                <li><a href="${pageContext.request.contextPath}/course/kukka/Course_Kukka_Fintech_2018" style="height:24px; letter-spacing:-1px;" class="newdepth2 long">금융IT기반 핀테크융합 전문가 양성과정</a></li>
                <!--<li><a href="/Course/Kukka/Course_Kukka_AWSCloudWeb_2018.asp" style="height:38px;" class="newdepth2 long">AWS를 활용한 클라우드 기반 웹 개발 고급인력 양성과정</a></li>-->
                <!--<li><a href="/Course/Kukka/Course_Kukka_EmbeddedDrone_2018.asp" style="height:24px; padding-right:10px;" class="newdepth2 long">임베디드 시스템 기반 드론 제작 고급인력 양성과정</a></li>-->
                <!--<li><a href="/Course/Kukka/Course_Kukka_RaspberryPiIoTEmbedded_2017.asp" style="height:38px;" class="newdepth2 long">라즈베리파이를 활용한 IoT임베디드 시스템 개발자 양성과정</a></li>-->
            </ul>
        </li>
        <li>
            <a href="/course/employ/Course_Employ" onclick="return onclickEmploy();" class="newdepth1">신입사원 채용교육</a>
            <ul class="newdepth2_wrap no3">
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ" class="newdepth2">신입사원 채용교육 소개</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_ITtelecom" class="newdepth2">㈜아이티텔레콤</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_BAinfra" class="newdepth2">㈜비에이인프라</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_ivis" class="newdepth2">㈜아이비스</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_BitComputer" class="newdepth2">㈜비트컴퓨터</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_AurosTech" class="newdepth2">㈜오로스테크놀로지</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_PSK" class="newdepth2">㈜피에스케이</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_BizTechPartners" class="newdepth2">㈜비즈테크파트너스</a></li>
                <li><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_TaehaMechatronics" class="newdepth2">㈜태하메카트로닉스</a></li>
                <li class="dnone"><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_LEETECH" class="newdepth2">㈜리텍</a></li>
                <li class="dnone"><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_voiceye" class="newdepth2">㈜보이스아이</a></li>
                <li class="dnone"><a href="${pageContext.request.contextPath}/course/employ/Course_Employ_Cafe24" class="newdepth2">㈜카페24</a></li>
                <!--<li><a href="/Course/Employ/Course_Employ_WhiteInfoComm.asp" class="newdepth2 no5">㈜화이트정보통신</a></li>-->
            </ul>
        </li>
        <li class="dnone">
            <a href="/course/chung/Course_Chung_2018" class="newdepth1">청년취업아카데미</a>
        </li>
        <li class="dnone">
            <a href="#" onclick="return onclickConsortium();" class="newdepth1" style="letter-spacing:-0.5px;">국가인적자원개발컨소시엄</a>
            <ul class="newdepth2_wrap no4" style="height:48px;">
                <li><a href="/course/kukka/Course_Consortium_AWS_Cloud_Web" class="newdepth2 dnone">AWS를 활용한 클라우드 기반 웹 개발</a></li>
                <li><a href="/course/kukka/Course_Consortium_RaspberryPi_IoT" class="newdepth2">라즈베리파이를 활용한 IoT개발 실무과정</a></li>
            </ul>
        </li>
    </ul>
</nav>
>>>>>>> refs/remotes/origin/master
