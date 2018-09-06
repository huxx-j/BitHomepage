<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->

<%-- <%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Response.Cookies("flag")="1"
code = Request.QueryString("code")

Studid = TRIM(session("Studid"))
LoginID = TRIM(session("LoginID"))
'response.write "Studid:"&Studid&"<br>"
%> --%>

<%-- <%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%> --%>

<%-- <%
	requestorName = Left( SQLClean( Request.Form("counselName") ) , 10 )
	requestorPhone = Left( SQLClean( Request.Form("counselPhone") ) , 15 )
	courseID = Request.Form("counselCourseID")
	
	'//Response.Write requestorName & "<br/>"
	'//Response.Write requestorPhone & "<br/>"
	
%> --%>


<%-- 
<%
sql = "INSERT INTO db_bit.dbo.onlineRequestCounsel (CourseID, Name, Phone) " &_
	  "VALUES ('" & courseID & "', '" & requestorName & "', '" & requestorPhone & "')"
Set Rs = Dbcon.Execute(sql)
%> --%>

<%-- <%
Dbcon.Close
Set Dbcon = nothing

'//Rs.close
'//set Rs = nothing

%>
 --%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>비트교육센터</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView 및 .btn_refundView2는 /JS/Common.js 에 이벤트핸들러 정의 -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
		
			<c:import url="/WEB-INF/views/Include/Common_eventHandlers_SNB_1709.jsp"/>
			<c:import url="/WEB-INF/views/Include/HeaderScriptReady1709.jsp"/>
		});
	</script>
	<link rel="stylesheet" type="text/css" href="CommonStyle_DetailPage.css">
	<style>
		#Content_Wrap { 
			border:initial; 
		    margin: 30px auto 220px;	
		}
	</style>
</head>
<body><!-- style="background:#ffffff;">-->
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual="/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap">

				<!-- Content -->
				<div id="Content">
					<section class="section">
						<div class="con_wrap1709 first">
							<h5 class="brownTxt">신청되었습니다. 빠른 시간 내로 연락드리겠습니다.</h5>
							<p>(문의 : 02-3486-3456)</p>
							<br/>
							<a href="#" onclick="javascript:history.back(-1);" class="btnBlueBorder big">확인</a>
						</div>
					</section>
				</div>
			</div>
			<!-- // Content_Wrap -->
		</div>
		<!-- // Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>