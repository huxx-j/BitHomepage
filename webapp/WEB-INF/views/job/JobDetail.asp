<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
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
	alert("��Ʈ���������Դϴ�.");  
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
' Studid �κ��� LoginID�� �����´�.
sql = ""
sql = "Select top 1 LoginID from db_bit.dbo.Member where StudID = " & Studid

Set Rs = Dbcon.Execute(sql)
LoginID = Rs("LoginID")
Rs.Close
Set Rs = nothing
%>

<%
'-- �����Ź, ���к�Ʈ, ������, û�����, �����Ⱓ "����"

'///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
'// 1. ���Ѱ˻� - (1) ������, �����Ź, ���к�Ʈ, û�����, �����Ⱓ�ϰ� (2) �������ڰ� 1���̳��ϰ� (3) application.SelectResult�� '�հ�'�ϰ� (4) application.Isuse=0 �ϰ�

' // YG 2016-03-30 : ���Ѻο� ���� (����ο� �Ӹ� �ƴ϶�, '����' ���¶�� ���� ��)
' sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID
sql = "SELECT TOP 10 CourseID FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID & " AND CompletStat='����'"

Set rs = Dbcon.Execute(sql)

bRight=false '���ѿ���
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
		
		' ���Ѻο� ���� : ������ / �����Ź / �����Ⱓ / ���к�Ʈ / û�����.
		IF ExpertID = "������" OR ExpertID = "�����Ź" OR ExpertID = "�����Ⱓ" OR ExpertID = "���к�Ʈ" OR ExpertID = "û�����" THEN
			bRight = true
		ELSE
		END IF
	END IF
	
	'response.write("bRight : " & bRight & "<br/>")
	
	rs.moveNext
loop	

'// FROM HERE : �����ڿ��� ���� �����ο�.
' job : �����
' acidstar : �� �븮��
' silverq : �� �븮��
' �� �븮��?
' bowery24 : ������ x
' kitac : �迵�� x
' jjh0422 : ����ȣ x
' k0sm0s1 : ������ x
' hoone : ������ x
' dnwjd748 : ���ο� (20180212)
IF LoginID = "job" OR LoginID = "acidstar" OR LoginID = "yglee" OR LoginID = "dnwjd748" THEN 
	bRight = true
END IF

IF bRight = false THEN
	call alertMsgGoURL ("������ �����ϴ�. \nä�������� ���������� ���� �����Ͻ� �е��� ���� �� �ֽ��ϴ�.", "http://www.bitacademy.com/")
END IF

rs.Close
Set rs = Nothing
%>

<%
    StudID = ""        '����
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
		if mid(rs("Qualification"), 1, 1) = "1" then '���ڵ� �ʵ��,������ ����, ������ ����
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
			isStock = "����"
		else 
			isStock = "�����"
		end if
	end if
%>		

<%
	'// Ȩ������ �ּ� ��ũ.
	strRsHomePage = rs("HomePage")
	IF IsNull(strRsHomePage) THEN
		strRsHomePage = ""
	ELSEIF ( Ubound(split(strRsHomePage,"."))>=2 ) OR ( Ubound(split(strRsHomePage,"www"))>=1 ) OR ( Ubound(split(strRsHomePage,".net"))>=1) OR ( Ubound(split(strRsHomePage,".kr"))>=1)THEN
		'Ȩ������ �ּ��� ���
		IF Ubound(split(strRsHomePage,"://"))>=1 THEN
			'�׳� �̴��. DO NOTHING.
			strRsHomePage = "<a href='" & strRsHomePage & "'" & " target='_blank'> " & rs("HomePage") & "<br/>"
		ELSE
			strRsHomePage = "<a href='http://" & strRsHomePage & "'" & " target='_blank'> " & rs("HomePage") & "<br/>"
		END IF
	ELSE
		'Ȩ������ �ּҰ� �ƴ� ���
		strRsHomePage = "<span style='color:#9caf9c;'>" & strRsHomePage & "</span><br/>"
	END IF
	

	'// �����⵵ ����ϰ�.
	strRsEstablishYear = rs("EstablishYear")
	IF IsNull(strRsEstablishYear) THEN
		strRsEstablishYear = ""
	ELSEIF Ubound(split(strRsEstablishYear,"0000"))>=1 THEN
		strRsEstablishYear = ""
	ELSE
		strRsEstablishYear = "<span class='myBold'>�����⵵: </span>" & strRsEstablishYear &"<br/>"
	END IF

	'// �ں���, ������� ����ϰ�.
	Dim RsCapital 
	Dim RsYearSell 
	
	RsCapital = rs("Capital")
	IF IsNull(RsCapital) THEN
		RsCapital = ""
	ELSEIF Ubound(split(RsCapital, "����")) >= 1 THEN
		' Do Nothing.
	ELSEIF Ubound(split(RsCapital, ",")) >= 2 THEN
		RsCapital = RsCapital & "��"
	ELSE
		RsCapital = RsCapital & "���"
	END IF
	RsCapital = Replace(RsCapital,"���","��")
	
	RsYearSell = rs("YearSell")
	IF IsNull(RsYearSell) THEN
		RsYearSell = ""
	ELSEIF Ubound(split(RsYearSell, ",")) >= 2 THEN
		RsYearSell = RsYearSell & "��"
	ELSE
		RsYearSell = RsYearSell & "���"
	END IF
	RsYearSell = Replace(RsYearSell, "���", "��")
	
	IF RsYearSell="���" THEN
		RsYearSell=""
	END IF
	
	IF RsCapital="���" THEN
		RsCapital=""
	END IF
	
	'// ������ ����ϰ�
	Dim RsStaffNum
	
	RsStaffNum = rs("StaffNum")
	IF IsNull(RsStaffNum) OR RsStaffNum = "" THEN
		RsStaffNum = "" 
	END IF
	
	'// �����ο� ��.��.�� ����ϰ�.
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

	
	'// ����, �󿩱� ����ϰ�.
	strRsPay = rs("Pay")
	strRsBonus = rs("Bonus")
	IF strRsPay <> "" THEN
		strRsPay = "<span class='myBold'>����: </span> " & strRsPay & " ����<br/>"
	END IF
	IF strRsBonus <> "" THEN
		strRsBonus = "<span class='myBold'>�󿩱�: </span>" & strRsBonus & " %<br/>"
	END IF
	
	
	'// �а� ����Ʈ�ϰ�.
	strQualiMajor = trim(rs("QualiMajor"))
	IF strQualiMajor = "" THEN
		strQualiMajor = "(�а� ����)"
	END IF
	
	'// ������� �� ��»���
	strRsJobType = trim(rs("JobType"))
	strRsCareer = trim(rs("Career"))
	strRsCareerYear = trim(rs("CareerYear"))
	IF strRsJobType = "1" THEN
		strRsJobType = "�����"
	ELSEIF strRsJobType = "0" THEN
		strRsJobType = "������"
	END IF
	
	IF strRsCareer = "0" THEN
		strRsCareer = "���� �� ���"
		IF strRsCareerYear<>"" THEN
			strRsCareer = strRsCareer & " (" & strRsCareerYear & "�� �̻�)"
		END IF
	ELSEIF strRsCareer = "1" THEN
		strRsCareer = "����"
	ELSEIF strRsCareer = "2" THEN
		strRsCareer = "���"
		IF strRsCareerYear<>"" THEN
			strRsCareer = strRsCareer & " (" & strRsCareerYear & "�� �̻�)"
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
							<a class="btnWhiteBorder big" href="/job/List.asp?id=<%=StudName%>&page=<%=request("page")%>" style=""> < ��Ϻ��� </a></td>
						</div>
						
						<TABLE class="myTableStyle" border=1 cellPadding=1 cellSpacing=0 width=560 style="margin-left:35px; WIDTH:95%;" borderColor =#66ccff borderColorLight=#ffffff >
						  	<tr>
								<th>ȸ���</th>
								<td><b><%=rs("CompName")%></b></td>
							</tr>
							<tr>
								<th>�ַ»��</th>
								<td> <%=rs("Business")%></td>
							</tr>
							<tr>
								<th>Ȩ������</th>
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
									<!--<span class="myBold">�����⵵: </span> < % = rs("EstablishYear") % >  <br/>-->
									<%=strRsEstablishYear%>
									<% IF RsCapital<>"" THEN %>
										<span class="myBold">�ں��� : </span> <%=RsCapital%><br/>
									<% END IF %>
									<% IF RsYearSell<>"" THEN %>
										<span class="myBold">������� : </span> <%=RsYearSell %><br/>
									<% END IF %>
									<% IF RsStaffNum<>"" THEN %>
										<span class="myBold">������ : </span> <%=RsStaffNum %>��<br/>
									<% END IF %>
								</td>
							</tr>
							<%
								END IF
							%>
							<tr>
								<th>ȸ���ּ�</th>
								<td><%=rs("Address")%></td>
							</tr>
							<tr>
								<th>ȸ��Ұ�</th>
								<td><%= rs("Introduct") %></td>
							</tr>
							<tr>
								<th>���忩��</th>
								<td><%=isStock%></td>
							</tr>
							<tr>
								<th>��������</th>
								<td><%=rs("Welfare")%></td>
							</tr>
							<tr>
								<th>�����κ�</th>
								<td><%=rs("Department")%></td>
							</tr>
							<tr>
								<th>�ٹ���</th>
								<td><%=rs("Location")%></td>
							</tr>
							<tr>
								<th>�����ο�</th>
								<td>
									<span class="myBold" style="margin-right:5px;">�� : </span><%=RsRecruitStaffNum %> �� 
									<% IF RsRecruitStaffNum_M<>"����" THEN %>
										<span class="myBold" style="margin-left:20px; margin-right:5px;">�� : </span><%=RsRecruitStaffNum_M %> ��
									<% END IF %>
									<% IF RsRecruitStaffNum_F<>"����" THEN %>
										<span class="myBold" style="margin-left:20px; margin-right:5px;">�� : </span><%=RsRecruitStaffNum_F %> ��
									<% END IF %>
								</td>
							</tr>
							<tr>
								<th>������</th>
								<td><%=rs("Operation")%></td>
							</tr>
							<tr>
								<th>����ȯ��</th>
								<td>
									<span class="myBold">��� OS : </span><%=rs("DevelopOS")%><br/>
									<span class="myBold">��� DB : </span><%=rs("DevelopDB")%><br/>
									<span class="myBold">����� : </span><%=rs("DevelopLang")%>
								</td>
							</tr>
							<tr>
								<th>�ڰݿ��</th>
								<td>
									<INPUT name=chkQuali_A type=checkbox <%=Q0%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">����
									<INPUT name=chkQuali_B type=checkbox <%=Q1%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" >����
									<INPUT name=chkQuali_C type=checkbox <%=Q2%>
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��������
									<INPUT name=chkQuali_D type=checkbox <%=Q3%> 
										style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">�ҹ�
									<br/>
									<span class="myBold">�а� : </span> <%=strQualiMajor%>
								</td>
							</tr>
							<tr>
								<th>�������</th>
								<td><%=strRsJobType%></td>
							</tr>
							<tr>
								<th>��»���</th>
								<td><%=strRsCareer%></td>
							</tr>
							<tr>
								<th>�޿�</th>
								<td>
									<!-- <span class="myBold">����: </span> < % = RsPay % > <br/> -->
									<!-- <span class="myBold">�󿩱�: </span> < % = RsBonus % > <br/> -->
									<%=strRsPay %>
									<%=strRsBonus %>
									<span class="myBold">���� : </span><%=rs("AnnualSalary")%> ����
								</td>											
							</tr>
							<tr>
								<th>��������</th>
								<td><%=rs("SelectStep")%></td>
							</tr>
							<tr>
								<th>���⼭��</th>
								<td><%=rs("Paper")%></td>
							</tr>
							<tr>
								<th>�䱸����</th>
								<td><%=rs("Need")%></td>
							</tr>
						</table>
					
						<div style="margin-top:25px; margin-left:35px; text-align:center;">
							<button class="btnGreenBorder big" onclick="javascript:ok();" style="">�����ϱ�</button>
							<!--<INPUT name=submit1 onclick="ok();" style="HEIGHT: 21px; LEFT: 61px; TOP: 2px; WIDTH: 60px CURSOR: hand;" type=submit value=�����ϱ�>-->
							<!--<INPUT name=btnVol onclick=logout(); style="HEIGHT: 21px; LEFT: 61px; TOP: 2px; WIDTH: 60px CURSOR: hand;" type=button value=�α׾ƿ�>-->
							<!--<button class="btn mid white" onclick="javascript:logout();">�α׾ƿ�</button>-->
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
