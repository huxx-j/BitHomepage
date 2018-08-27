<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<link rel="stylesheet" href="/JS/main/gallerot.css"/>
<script src="/JS/main/jquery.gallerot.js"></script>

<style>
	.myTable2 tbody tr th {
		background:#fffae9;
	}
	.myHyperlink {
		text-decoration: underline;
		color: #0000FF;
		cursor:pointer;
	}
	#gallerot1 div.divCompany {
		
	} 
	.divCompany {
		width:90px; 
		margin:4px 3px 3px 3px;
		padding:5px;
		text-align:center;
		border:1px solid #afafaf;
		box-shadow:1px 1px 3px #dfdfdf;
		font-weight:900;
		font-size:9pt;
		
	} 
	.divCompany div {
		height:46px;
	}
</style>

<!-- con_wrap -->
<div class="con_wrap last">
	<h5>Java프로그래밍 마스터 자격증 시험 안내</h5>
	<p>
		BSPM(BIT Software Programming Master)은 자격기본법 제 17조 제2항에 따라 주무부처인 미래창조과학부에 등록하고 한국직업능력개발원에서 승인한 민간자격증입니다.<br/>
		본 비트의 BSPM 자격증을 소지한 자는 전문가 수준의 Language 프로그래밍 실력을 갖추었고, 응용 프로그래밍을 개발할 수 있는 수준임을 증명할 수 있습니다.. 취업에 있어 이 자격증을 소지한 자를 적극 우대 및 가산점을 적용하는 제도를 진행하고 있습니다..
	</p>

	<!-- BSPM Slider -->
	<!--#include virtual="/COurse/License/Common_LicenseCompanies.inc" -->
	<c:import url="/WEB-INF/views/course/license/Common_LicenseCompanies.jsp"/>
	
	<div id="gallerot1" class="gallerot-container" style="width:720px; height:110px;">
	</div>
	<div style="clear:both;"></div>
	<a href="/Course/License/Course_Licenses.asp" target="_blank" class="btn sml blue" style="margin-bottom:15px;"> 협약기업(총 개 기업) 전체보기</a>
	
	<!-- //BSPM Slider -->

	<table class="table_col_type1 myTable2" style="width:70%; margin-left:2%;">
		<colgroup>
			<col style="width:30%">
			<col style="width:70%">
		</colgroup>
		<tbody>
			<tr>
				<th>자격증 명칭</th>
				<td>Java프로그래밍 마스터 / BCJPM(BIT Certified JAVA Programming Master)</td>
			</tr>
			<tr>
				<th>등급</th>
				<td>단일</td>
			</tr>
			<tr>
				<th>평가방법 및 시험시간</th>
				<td>필기 - 주관식 20문제 / 1시간 30분</td>
			</tr>
			<tr>
				<th>검정과목(분야 또는 영역)</th>
				<td>
					1.	기초문법<br/>
					2.	객체지향<br/>
					3.	API
				</td>
			</tr>
			<tr>
				<th>합격기준</th>
				<td>과목당 40점 이상, 평균 60점 이상</td>
			</tr>
			<tr>
				<th>응시료</th>
				<td>10,000원</td>
			</tr>
			<tr>
				<th>자격증 유효기간</th>
				<td>자격증 취득일로부터 5년</td>
			</tr>
			<tr>
				<th>시험장소</th>
				<td>비트교육센터 4층 테스트센터</td>
			</tr>
		</tbody>
	</table>
	<a href="${pageContext.request.contextPath}/course/license/Course_Licenses.asp" target="_blank" style="float:right;" class="btn sml blue">자격증 내용 자세히 보기</a>
	<div style="clear:both;"></div>
</div>
<!-- con_wrap -->
