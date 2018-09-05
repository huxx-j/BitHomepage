<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<!DOCTYPE html>
<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<!--#include virtual="/job/include/dbconn.inc"-->
<!--#include virtual="/job/include/jobLoginChk.asp"-->

<html>
<link rel="stylesheet" type="text/css" href="/job/bodyStyle.css">
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
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			//$(".snb_1702 .newdepth1").eq(2).addClass("on");
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
		})
	</script>

	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<script language="JavaScript1.1">
function right(e) 
{  
if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))  
return false;  
else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3)) 
	{  
	alert("비트교육센터입니다.");  
	return false;  
	}  
return true;  
}  

document.onmousedown=right;  
if (document.layers) window.captureEvents(Event.MOUSEDOWN);  
window.onmousedown=right;  
</script>

<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

StudID = session("StudID")
%>

<%
' Studid 로부터 LoginID를 가져온다.
sql = ""
sql = "Select top 1 LoginID from db_bit.dbo.Member where StudID = " & Studid

Set Rs = Dbcon.Execute(sql)
LoginID = Rs("LoginID")
Rs.Close
Set Rs = nothing
%>

<%
'-- 기업위탁, 대학비트, 전문가, 청년취업, 국가기간 "수료"

'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'// 1. 권한검사 - (1) 전문가, 기업위탁, 대학비트, 청년취업, 국가기간일것 (2) 지원일자가 1년이내일것 (3) application.SelectResult가 '합격'일것 (4) application.Isuse=0 일것

' // YG 2016-03-30 : 권한부여 개선 (기수부여 뿐만 아니라, '수료' 상태라야 권한 有)
' sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID
sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID & " AND CompletStat='수료'"

Set rs = Dbcon.Execute(sql)

bRight=false '권한여부
do while rs.eof = false
	CourseID = rs("CourseID")
	
	'response.write("CourseID : " & CourseID & "<br/>")

	IF CourseID = "" THEN
	ELSE
		sql = "SELECT TOP 10 ExpertID from db_bit.dbo.Course where CourseID = '" & CourseID & "'"
		Set rs2 = Dbcon.Execute(sql)
		if rs2.eof or rs2.bof then
		else
			ExpertID = rs2("ExpertID")
		end if							
		rs2.Close
									
		'response.write("ExpertID : " & ExpertID & "<br/>")
		
		' 권한부여 과정 : 전문가 / 기업위탁 / 국가기간 / 대학비트 / 청년취업.
		IF ExpertID = "전문가" OR ExpertID = "기업위탁" OR ExpertID = "국가기간" OR ExpertID = "대학비트" OR ExpertID = "청년취업" THEN
			bRight = true
		ELSE
		END IF
	END IF
	
	'response.write("bRight : " & bRight & "<br/>")
	
	rs.moveNext
loop	

'// FROM HERE : 관리자에게 권한 강제부여.
' job : 팀장님
' acidstar : 임 대리님
' silverq : 정 대리님
' 김 대리님?
' bowery24 : 강기윤 x
' kitac : 김영산 x
' jjh0422 : 장재호 x
' k0sm0s1 : 김윤정 x
' hoone : 이지훈 x
' dnwjd748 : 강인영 (20180212)
IF LoginID = "job" OR LoginID = "acidstar" OR LoginID = "yglee" OR LoginID = "dnwjd748" THEN 
	bRight = true
END IF

IF bRight = false THEN
	call alertMsgGoURL ("권한이 없습니다. \n채용정보는 전문가과정 등을 수료하신 분들이 보실 수 있습니다.", "http://www.bitacademy.com/")
END IF

rs.Close
Set rs = Nothing
%>

<%
    StudID = ""        '세션
	StudID = session("StudID")
	StudName = session("StudName")
	StudTermNum = session("StudTermNum")
	'StudName = session("userName")
'''''	if trim(StudID)="" or StudID = "0" or request("id") = "" then
'''''		Response.Redirect "/job/JobSearchLogin.asp"
'''''	end if	

	SeqNum = request("id")
	
   
    sql = "SELECT C.CompName, C.Business, C.Capital, C.EstablishYear, C.YearSell, C.StaffNum, C.Postcode, C.Address, C.Homepage, C.Introduct, C.Welfare, C.isStock" & _
	", J.SeqNum, J.Department, J.RecruitStaffNum, J.RecruitStaffNum_M, J.RecruitStaffNum_F, J.Location, J.Operation, J.JobType, J.Career, J.CareerYear" & _
	", J.DevelopOS, J.DevelopLang, J.DevelopDB,  J.Qualification, J.QualiMajor, J.Pay, J.Bonus, J.AnnualSalary, J.SelectStep, J.Paper, J.Need , J.Note " & _
	"  FROM Company C INNER JOIN JobOffer J  ON  C.CompSeqNum=J.CompSeqNum AND J.IsShow=1 WHERE J.SeqNum=" & SeqNum
	'''''"  FROM Company C INNER JOIN JobOffer J  ON  C.CompSeqNum=J.CompSeqNum AND J.IsShow=1 WHERE J.SeqNum=13317"
	    	   	
    set rs = server.CreateObject("adodb.recordset")
	rs.Open sql, oConn
      
    if oConn.Errors.Count > 0 then    
			
	   	set objErr=server.CreateObject ("adodb.error")
				
	   	dim CriticalError
	   	for each objErr in oConn.Errors 
					 
	   		 if objErr.number <>0 then
						
	   			Response.Write "Number:"& objerr.Number & "<p>"
	   			Response.Write "Description:"& objerr.Description &"<p>"
	   			Response.Write "Source:" & objerr.source & "<p>"
	   			Response.Write "sqlstate:" & objerr.sqlstate &"<p>"
	              CriticalError = true
	            end if
	       next
			    
	       set objerr=nothing
			   
	       if CriticalError then
	   		Response.End
	       end if
	end if
	
	if not rs.EOF then
		if mid(rs("Qualification"), 1, 1) = "1" then '레코드 필드명,가져올 문자, 가져올 갯수
			Q0 = "CHECKED"
		end if
		if mid(rs("Qualification"), 2, 1) = "1" then
			Q1 = "CHECKED"
		end if
		if mid(rs("Qualification"), 3, 1) = "1" then
			Q2 = "CHECKED"
		end if
		if mid(rs("Qualification"), 4, 1) = "1" then
			Q3 = "CHECKED"
		end if
		if (rs("isStock")) = "1" then
			isStock = "상장"
		else 
			isStock = "비상장"
		end if
	end if
%>		

<%
	'// 홈페이지 주소 링크.
	strRsHomePage = rs("HomePage")
	IF IsNull(strRsHomePage) THEN
		strRsHomePage = ""
	ELSEIF ( Ubound(split(strRsHomePage,"."))>=2 ) OR ( Ubound(split(strRsHomePage,"www"))>=1 ) OR ( Ubound(split(strRsHomePage,".net"))>=1) OR ( Ubound(split(strRsHomePage,".kr"))>=1)THEN
		'홈페이지 주소인 경우
		IF Ubound(split(strRsHomePage,"://"))>=1 THEN
			'그냥 이대로. DO NOTHING.
			strRsHomePage = "<a href='" & strRsHomePage & "'" & " target='_blank'> " & rs("HomePage") & "<br/>"
		ELSE
			strRsHomePage = "<a href='http://" & strRsHomePage & "'" & " target='_blank'> " & rs("HomePage") & "<br/>"
		END IF
	ELSE
		'홈페이지 주소가 아닌 경우
		strRsHomePage = "<span style='color:#9caf9c;'>" & strRsHomePage & "</span><br/>"
	END IF
	

	'// 설립년도 깔끔하게.
	strRsEstablishYear = rs("EstablishYear")
	IF IsNull(strRsEstablishYear) THEN
		strRsEstablishYear = ""
	ELSEIF Ubound(split(strRsEstablishYear,"0000"))>=1 THEN
		strRsEstablishYear = ""
	ELSE
		strRsEstablishYear = "<span class='myBold'>설립년도: </span>" & strRsEstablishYear &"<br/>"
	END IF

	'// 자본금, 연매출액 깔끔하게.
	Dim RsCapital 
	Dim RsYearSell 
	
	RsCapital = rs("Capital")
	IF IsNull(RsCapital) THEN
		RsCapital = ""
	ELSEIF Ubound(split(RsCapital, "만원")) >= 1 THEN
		' Do Nothing.
	ELSEIF Ubound(split(RsCapital, ",")) >= 2 THEN
		RsCapital = RsCapital & "원"
	ELSE
		RsCapital = RsCapital & "억원"
	END IF
	RsCapital = Replace(RsCapital,"억억","억")
	
	RsYearSell = rs("YearSell")
	IF IsNull(RsYearSell) THEN
		RsYearSell = ""
	ELSEIF Ubound(split(RsYearSell, ",")) >= 2 THEN
		RsYearSell = RsYearSell & "원"
	ELSE
		RsYearSell = RsYearSell & "억원"
	END IF
	RsYearSell = Replace(RsYearSell, "억억", "억")
	
	IF RsYearSell="억원" THEN
		RsYearSell=""
	END IF
	
	IF RsCapital="억원" THEN
		RsCapital=""
	END IF
	
	'// 직원수 깔끔하게
	Dim RsStaffNum
	
	RsStaffNum = rs("StaffNum")
	IF IsNull(RsStaffNum) OR RsStaffNum = "" THEN
		RsStaffNum = "" 
	END IF
	
	'// 모집인원 총.남.여 깔끔하게.
	RsRecruitStaffNum = rs("RecruitStaffNum")
	RsRecruitStaffNum_M = rs("RecruitStaffNum_M")
	RsRecruitStaffNum_F = rs("RecruitStaffNum_F")
	IF RsRecruitStaffNum = "" THEN
		RsRecruitStaffNum = "0"
	END IF
	IF RsRecruitStaffNum_M = "" THEN
		RsRecruitStaffNum_M = "0"
	END IF
	IF RsRecruitStaffNum_F = "" THEN
		RsRecruitStaffNum_F = "0"
	END IF

	
	'// 월급, 상여금 깔끔하게.
	strRsPay = rs("Pay")
	strRsBonus = rs("Bonus")
	IF strRsPay <> "" THEN
		strRsPay = "<span class='myBold'>월급: </span> " & strRsPay & " 만원<br/>"
	END IF
	IF strRsBonus <> "" THEN
		strRsBonus = "<span class='myBold'>상여금: </span>" & strRsBonus & " %<br/>"
	END IF
	
	
	'// 학과 스마트하게.
	strQualiMajor = trim(rs("QualiMajor"))
	IF strQualiMajor = "" THEN
		strQualiMajor = "(학과 무관)"
	END IF
	
	'// 고용형태 및 경력사항
	strRsJobType = trim(rs("JobType"))
	strRsCareer = trim(rs("Career"))
	strRsCareerYear = trim(rs("CareerYear"))
	IF strRsJobType = "1" THEN
		strRsJobType = "계약직"
	ELSEIF strRsJobType = "0" THEN
		strRsJobType = "정규직"
	END IF
	
	IF strRsCareer = "0" THEN
		strRsCareer = "신입 및 경력"
		IF strRsCareerYear<>"" THEN
			strRsCareer = strRsCareer & " (" & strRsCareerYear & "년 이상)"
		END IF
	ELSEIF strRsCareer = "1" THEN
		strRsCareer = "신입"
	ELSEIF strRsCareer = "2" THEN
		strRsCareer = "경력"
		IF strRsCareerYear<>"" THEN
			strRsCareer = strRsCareer & " (" & strRsCareerYear & "년 이상)"
		END IF
	END IF
		
%>


<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; margin:0;" >
	<!--<%=request("page")%>-->
	<style>
		.courseName {
			font-size:15pt !important;
		}
		.detailName {
			font-size:23pt !important;
		}
	</style>
	
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		
		<style>
			.myTableStyle {
				margin-top:20px;
				display: table;
				border-collapse: collapse;
				border-spacing: 1px;
				border-color: grey;				
			}
			.myTableStyle td {
				font-family:'Nanum Gothic';
				font-size:16px;
				color:#555555;
				line-height:22px;
				border:1px solid grey;
				padding:10px 10px;
			}
			.myTableStyle th {
				width:137px;
				font-family:'Nanum Gothic Bold';
				font-size:18px;
				display: table-cell;
				vertical-align: inherit;
				background-color: #efefef;
				border:1px solid grey;
				font-weight:700;
				color:#444444;
				height:26px;
				padding:10px;
			}
			.myBold {
				display:inline-block;
				font-weight:700; 
				color:#555555;
			}
		</style>
		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->

				<!-- Content -->
				<div id="Content" >
					<!-- 4Testing -->
					<!--
					<div style="color:#C06868; margin:10px;">
						StudID : < % = StudID  % > <br/>
						StudName : < % = StudName % > <br/>
						StudTermNum : < % = StudTermNum % > <br/>
						UserID : < % = session("userid") % >
					</div>
					-->
					<!-- //4Testing -->
					
					<FORM method="post" action="JobDetailApply.asp"   id=form1 name=form1>
						<INPUT name=txtSeqNum type=hidden value="<%=rs("SeqNum")%>"> 
						<div style="margin-top:20px; margin-left:35px;">
							<a class="btnWhiteBorder big" href="/job/List.asp?id=<%=StudName%>&page=<%=request("page")%>" style=""> < 목록보기 </a></td>
						</div>
						
						<TABLE class="myTableStyle" border=1 cellPadding=1 cellSpacing=0 width=560 style="margin-left:35px; WIDTH:95%;" borderColor =#66ccff borderColorLight=#ffffff >
						  	<tr>
								<th>회사명</th>
								<td><b><%=rs("CompName")%></b></td>
							</tr>
							<tr>
								<th>주력사업</th>
								<td> <%=rs("Business")%></td>
							</tr>
							<tr>
								<th>홈페이지</th>
								<td>
									<!-- <a href=" < % = rs("HomePage") % > " target="_blank" > < % = rs("HomePage") % > </a> -->
									<%= strRsHomePage %>
								</td>
							</tr>
							<%
								IF RsCapital<>"" OR RsYearSell<>"" OR RsStaffNum<>"" THEN
							%>
							<tr>
								<th></th>
								<td>
									<!--<span class="myBold">설립년도: </span> < % = rs("EstablishYear") % >  <br/>-->
									<%=strRsEstablishYear%>
									<% IF RsCapital<>"" THEN %>
										<span class="myBold">자본금 : </span> <%=RsCapital%><br/>
									<% END IF %>
									<% IF RsYearSell<>"" THEN %>
										<span class="myBold">연매출액 : </span> <%=RsYearSell %><br/>
									<% END IF %>
									<% IF RsStaffNum<>"" THEN %>
										<span class="myBold">직원수 : </span> <%=RsStaffNum %>명<br/>
									<% END IF %>
								</td>
							</tr>
							<%
								END IF
							%>
							<tr>
								<th>회사주소</th>
								<td><%=rs("Address")%></td>
							</tr>
							<tr>
								<th>회사소개</th>
								<td><%= rs("Introduct") %></td>
							</tr>
							<tr>
								<th>상장여부</th>
								<td><%=isStock%></td>
							</tr>
							<tr>
								<th>복지사항</th>
								<td><%=rs("Welfare")%></td>
							</tr>
							<tr>
								<th>모집부분</th>
								<td><%=rs("Department")%></td>
							</tr>
							<tr>
								<th>근무지</th>
								<td><%=rs("Location")%></td>
							</tr>
							<tr>
								<th>모집인원</th>
								<td>
									<span class="myBold" style="margin-right:5px;">총 : </span><%=RsRecruitStaffNum %> 명 
									<% IF RsRecruitStaffNum_M<>"무관" THEN %>
										<span class="myBold" style="margin-left:20px; margin-right:5px;">남 : </span><%=RsRecruitStaffNum_M %> 명
									<% END IF %>
									<% IF RsRecruitStaffNum_F<>"무관" THEN %>
										<span class="myBold" style="margin-left:20px; margin-right:5px;">여 : </span><%=RsRecruitStaffNum_F %> 명
									<% END IF %>
								</td>
							</tr>
							<tr>
								<th>담당업무</th>
								<td><%=rs("Operation")%></td>
							</tr>
							<tr>
								<th>개발환경</th>
								<td>
									<span class="myBold">사용 OS : </span><%=rs("DevelopOS")%><br/>
									<span class="myBold">사용 DB : </span><%=rs("DevelopDB")%><br/>
									<span class="myBold">사용언어 : </span><%=rs("DevelopLang")%>
								</td>
							</tr>
							<tr>
								<th>자격요건</th>
								<td>
									<INPUT name=chkQuali_A type=checkbox <%=Q0%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">석사
									<INPUT name=chkQuali_B type=checkbox <%=Q1%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" >대졸
									<INPUT name=chkQuali_C type=checkbox <%=Q2%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">전문대졸
									<INPUT name=chkQuali_D type=checkbox <%=Q3%> 
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">불문
									<br/>
									<span class="myBold">학과 : </span> <%=strQualiMajor%>
								</td>
							</tr>
							<tr>
								<th>고용형태</th>
								<td><%=strRsJobType%></td>
							</tr>
							<tr>
								<th>경력사항</th>
								<td><%=strRsCareer%></td>
							</tr>
							<tr>
								<th>급여</th>
								<td>
									<!-- <span class="myBold">월급: </span> < % = RsPay % > <br/> -->
									<!-- <span class="myBold">상여금: </span> < % = RsBonus % > <br/> -->
									<%=strRsPay %>
									<%=strRsBonus %>
									<span class="myBold">연봉 : </span><%=rs("AnnualSalary")%> 만원
								</td>											
							</tr>
							<tr>
								<th>전형절차</th>
								<td><%=rs("SelectStep")%></td>
							</tr>
							<tr>
								<th>제출서류</th>
								<td><%=rs("Paper")%></td>
							</tr>
							<tr>
								<th>요구사항</th>
								<td><%=rs("Need")%></td>
							</tr>
						</table>
					
						<div style="margin-top:25px; margin-left:35px; text-align:center;">
							<button class="btnGreenBorder big" onclick="javascript:ok();" style="">지원하기</button>
							<!--<INPUT name=submit1 onclick="ok();" style="HEIGHT: 21px; LEFT: 61px; TOP: 2px; WIDTH: 60px CURSOR: hand;" type=submit value=지원하기>-->
							<!--<INPUT name=btnVol onclick=logout(); style="HEIGHT: 21px; LEFT: 61px; TOP: 2px; WIDTH: 60px CURSOR: hand;" type=button value=로그아웃>-->
							<!--<button class="btn mid white" onclick="javascript:logout();">로그아웃</button>-->
							<!--
							<br>
							<A href="http://www.bit.co.kr" target=_blank><IMG border=0 height=36 src="/job/images/copyright.gif" style="LEFT: 0px; TOP: 1px"  width=275></A>
							-->
							
						</div>
						<br/><br/>
					</FORM>
				</div> <!-- //Content -->
				
			</div> <!-- //Content_Wrap -->

		</div>	
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
<%	
  rs.Close 
  oConn.Close 
	
  set rs = nothing
  set oConn=nothing
%>
	

</body>
</html>
