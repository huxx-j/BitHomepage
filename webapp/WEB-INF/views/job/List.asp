<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "cache-control", "no-store"
Response.Expires = -1
%>

<!DOCTYPE html>
<head>

	<!--#include virtual="/Include/config.asp"-->
	<!--#include Virtual="/Include/javaScriptFun.asp"-->

	<!--#include file="include/jobLoginChk.asp"--> 

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

	//document.onmousedown=right;  
	//if (document.layers) window.captureEvents(Event.MOUSEDOWN);  
	//window.onmousedown=right;  
	</script>

	<script language="javascript">
	function goRegister() {
		location.href = "/job/WriteRecruit.asp";
		return true;
	}
	</script>

	<script language="javascript">
	<!--
	function notice(num)
	{
		window.open("http://www.bitacademy.com/job/Notice.asp?num="+num, "sun","height=440,width=645,status=no,toolbar=yes,titlebar=no,menubar=no, scrollbars=yes ,resizable=yes,location=0,left=-1200,top=120");  
	}
	//-->
	 </script>


	<!--#include file="include/dbconn.inc"-->

	<%
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db
	%>

	<%
	' // StudName, StudTermNum �� DB���� �ҷ��� ���ǿ� �����Ѵ�.
	StudID = session("StudID")
	Dim StudName
	Dim StudTermNum

	' (1) StudName from dbo.Member (NameHan), USING StudID
	IF StudID = "" OR isEmpty(StudID) OR isNULL(StudID) THEN
		StudName = ""
	ELSE
		'select top 1 NameHan from db_bit.dbo.Member where StudID = session("StudID")
		sql = "SELECT TOP 1 NameHan FROM db_bit.dbo.Member WHERE StudID='" & StudID & "'"
		Set Rs = Dbcon.Execute(sql)
		
		IF Rs.eof = false THEN
			session("StudName") = Rs("NameHan")
		END IF
		
		Rs.close
		Set Rs = Nothing
	END IF

	' (2) StudTermNum from dbo.CourseTermStudent, USING StudID, ORDER BY UpdateDate DESC
	IF StudID =  "" OR isEmpty(StudID) OR isNULL(StudID) THEN
		StudTermNum = ""
	ELSE
		'select top 1 TermNum from db_bit.dbo.CourseTermStudent where StudID='' order by UpdateDate desc
		sql = "SELECT TOP 1 TermNum FROM db_bit.dbo.CourseTermStudent WHERE StudID=" & StudID & " ORDER BY UpdateDate DESC"
		Set Rs = Dbcon.Execute(sql)
		
		IF Rs.eof = false THEN
			session("StudTermNum") = Rs("TermNum")
		ELSE
			session("StudTermNum") = ""
		END IF
				
		Rs.close
		Set Rs = Nothing
	END IF


	%>

	<%
	'''4Testing
	'session("StudID") = 51955
	'session("StudName") = "�̿���"

	StudID = ""  '����
	StudID = session("StudID")
	StudName = session("StudName")
	StudTermNum = session("StudTermNum")

	'''if trim(StudID)="" or StudID = "0" or request("id") = "" then
	'''	Response.Redirect "/job/JobSearchLogin.asp"
	'''end if	
	if StudID = "" OR isEmpty(StudID) OR isNULL(StudID) then
		call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/job/List.asp")
		response.end
	end if
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
	' silverq : �� �븮�� X
	' bowery24 : ������ X
	' kitac : �迵�� x
	' jjh0422 : ����ȣ x
	' k0sm0s1 : ������ x
	' hoone : ������ x
	' karnmou : ������
	' vntltl92 : ������
	' dagi1227 : �����
	' dnwjd748 : ���ο� (201802012)
	IF LoginID = "job" OR LoginID = "acidstar" OR LoginID = "yglee" OR LoginID = "karnmou" OR LoginID = "vntltl92" OR LoginID = "dagi1227" OR LoginID = "dnwjd748" THEN 
		bRight = true
	END IF

	IF bRight = false THEN
		call alertMsgGoURL ("������ �����ϴ�. \nä�������� ���������� ���� �����Ͻ� �е��� ���� �� �ֽ��ϴ�.", "http://www.bitacademy.com/")
	END IF

	rs.Close
	Set rs = Nothing
	%>

	<%
	if request("page") =""then 
		page=1
	else
		page=request("page")
	end if	

	'set oConn=server.CreateObject("adodb.connection")
	'	oConn.Open "Provider=SQLOLEDB.1;Persist Security Info=False" & _
	'	            ";User ID=bitdb;Password=bit!bt?qlxm.rhksflwk#" & _
	'	           ";Initial Catalog=DB_BIT;Data Source=localhost;Network Address=localhost, 1433;Network Library=dbmssocn"
	  
	set rs = server.CreateObject("adodb.recordset") 

	sql = "SELECT C.CompName, J.RequestDate, J.Department, J.SeqNum" & _
		" FROM Company C INNER JOIN JobOffer J ON C.CompSeqNum=J.CompSeqNum" & _
		" WHERE  (J.CentClub=0 or J.CentClub is null) AND J.isShow > 0 ORDER BY J.RequestDate DESC, C.CompName  "

		
	rs.PageSize =10 '�������� ����� ���� ...�ݵ�� ��ũ��¿������� �������־�� �Ѵ�.

	rs.Open sql, oConn, 1 '���ڵ� Ŀ�� Ÿ��(1)�� ������ �־�� �Ѵ�. ���� ������ �ȵǸ� ����¡�� �ȵȴ�. ,3

	%>

	<link rel="stylesheet" type="text/css" href="/job/bodyStyle.css"> 
	<title>��Ʈ�������Ϳ� ���Ű��� ȯ���մϴ�.</title>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	
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
		});
	</script>
	
	<!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; margin:0;" ><!--<%=StudID%><%=StudName%><%=StudTermNum%>-->

	<% 
	if not rs.EOF then
		totalpage =rs.PageCount 
		rs.AbsolutePage =page
		totalNum = rs.RecordCount 
	elseif rs.EOF then
		totalpage = 1
	   ' rs.AbsolutePage =page
		totalNum = 0
	end if
	%>
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

		<div id="Container_Wrap" style="min-height:210px;">
			<div id="Content_Wrap" style="min-height:210px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
						</p>
						<h4 style="float:left;">ä������ Ȯ��</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
								
					<!-- 4Testing -->
					<div style="color:#ef7676;">
						<!--
						StudId :  < % =StudID % > <br/>
						StudName :  < % =StudName % > <br/>
						StudTermNum :  < % =StudTermNum % > <br/>
						userid :  < % =session("userid") % >					
						-->
					</div>
					<!-- //4Testing -->
					<style>
						.myTitle {
							font-family:'Nanum Gothic Bold';
							font-size:13pt;
							color:#8b6338;
							text-shadow: 1px 1px 2px #b9b9b9;
						}
						.table_col_type3 th {
							font-family:'Nanum Gothic Bold';
							font-size:18px;
						}
						.table_col_type3 td {
							font-size:15px;
							font-family:'Nanum Gothic Bold';
						}
						.gradBg {
							background: linear-gradient(to bottom, #f2f6f8, #fffae9); 
						}
						A:link {
							color:#0073e6;
						}
						A:visited {
							color:#73808c;
						}
					</style>
					<div style="margin-left:0px;">
						<div class="con_wrap1709">
							<h5>ä������ ���</h5>
						</div>
						<table align="center" border="0" >
							<tr>
								<td>

									<table border="0" cellSpacing="0" cellpadding="0" style="height:20px; width:95%;" class="table_col_type3">
										<tr>
											<td width="152">
												<span style="float:left; margin-top:7px;">�ѵ�ϼ� <font color="red"><b><%=totalNum%></b></font>&nbsp;&nbsp;&nbsp;</span>
											</td> 
											<td align="right" vAlign="bottom" > 
												<!--
												<span style="float;right;">
													<button class="btn sml green1" style="margin:5px 0;" onClick="javascript:goRegister();">ä���Ƿ� ����</button>
												</span>
												-->
													<!--<button class="btn sml white" style="margin:5px 0;" onClick="javascript:logout();">�α׾ƿ�</button>-->
													<!--<button class="btn sml green1" style="margin:5px 0;" onClick="javascript:goJobInfo();">�������</button>-->											
												<div style="clear:both;"></div>
												<!--
												<input name="btnVol" style="HEIGHT: 17px; LEFT: 61px; TOP: 2px; WIDTH: 60px" type="button" style=" CURSOR: hand;" value="�α� �ƿ�" onClick="logout();"> 
												<input name="btnVol" style="HEIGHT: 17px; LEFT: 61px; TOP: 2px; WIDTH: 60px" type="button" style=" CURSOR: hand;" value="��� ����" onClick="goJobInfo();">  
												-->
											</td>
										</tr>
									</table>

									<table border="0" cellPadding="0" cellSpacing="2" style="width:95%;" class="table_col_type3">
										<colgroup>
											<col style="width:15%;">
											<col style="width:30%;">
											<col style="width:55%;">
										</colgroup>
										<thead>
											<tr>
												<th class="gradBg" style="text-align:center;">�����</th> <!-- .tit -->
												<th class="gradBg" style="text-align:center;">ȸ���</th> <!-- .tit -->
												<th class="gradBg" style="text-align:center;">��������</th> <!-- .tit -->
											</tr>
										</thead>
										<tbody>
											<%
												i=1
												do until rs.EOF or i>rs.PageSize
											  
												RequestDate = FormatDateTime(rs("RequestDate"), 2) 
												Department = rs("Department")
												CompName = rs("CompName")
												SeqNum= rs("SeqNum")
											%>
											
											<tr> 
												<td width="113" style="text-align:center;"><%=RequestDate%></td>
												<td width="220" style="text-align:center;"><a href="/job/JobDetail.asp?id=<%=SeqNum%>&page=<%=page%>" type="text/css"> <%=CompName%></a></td>
												<td width="298"><a href="/job/JobDetail.asp?id=<%=SeqNum%>&page=<%=page%>" type="text/css"> <%=Department%></a></td>											
											</tr>
											
											
											<%
											rs.MoveNext 
											i=i+1
											loop
											%>

											<!--
											<tr bgColor="#e0ebec" style="height:1px;">
												<td style="width:420px; height:5px; padding:0;" colspan="3"></td>										
											</tr>
											-->
											<!--
											<tr bgColor="#d9f8ff">
												<td align="left" height="1" width="110">    
												</td>
												<td align="middle" borderColor="#0099ff" width="400">
												</td>
												<td width="160"> <div align="left"> 
												</td>
											</tr>
											-->									

										</tbody>
									</table>
								</td>
							</tr>
						</table>
						
						<!-- page navigator -->
						<table border="0" cellPadding="1" cellSpacing="1"style="HEIGHT: 26px;"><!-- width:95%;">-->
							<tr>
								<td align="middle">
									<div style="width:100%; margin-top:10px; font-size:15px; font-weight:900; font-family:'Nanum Gothic Bold';">

										<%
											'ù�������� �ƴ϶��, "����" �� ǥ����.
										%>
										<% IF page <> 1 THEN %>
											<span style="color:darkblue;"><a href="/job/List.asp?page=<%=page-1%>">����</a></span>
										<% END IF %>
										
										<% 
											'(OLD) <span style="color:darkblue; margin:0 20px 0 20px;"> < % = page % > /  < % = totalpage % > </span>
										%>
										<%
											FOR l = 1 to totalpage
												strStyleAdded = ""
												IF l = Cint(page) THEN
													strStyleAdded = "color:red; text-decoration:underline; font-weight:800;"
												ELSE
													strStyleAdded = ""
												END IF
												response.write (" <a href='/job/List.asp?page=" & l & "' style='margin-left:10px;'><span style='" & strStyleAdded & "'>" & l & "</span></a> ")
										%>
											
										<%
											NEXT
										%>
									
										<% IF rs.RecordCount <= 0 THEN %>
											<table align="center" border="0" cellPadding="1" cellSpacing="1" style=" WIDTH: 430px; margin-left:50px; margin-top:10px;">
												<tr>
													<td>
														<!--
														<strong><font align="center" color="#cc6600" face="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														���� ��ϵ� �Խù��� �����ϴ�.</font></strong>  <br>
														<font color="darkgreen" face="����"><strong>&nbsp;�Խù�</strong>��&nbsp;<strong><font color="#cc6600" face="����">��,��</font>���� 
														��ħ 10��</strong>   </font><font color="darkgreen" face="����">���� <strong>���� 7�ñ��� </strong>��ϵ˴ϴ�<strong>.</strong></font>
														-->
														<strong><font align="center" color="#cc6600" face="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														���� ������ ä�������� �����ϴ�.</font></strong>  <br>
														<font color="darkgreen" face="����"><strong>&nbsp;ä������</strong>��&nbsp;<strong><font color="#cc6600" face="����">������, �����</font> 
														��ħ 10��</strong>   </font><font color="darkgreen" face="����">���� <strong>���� 7�ñ��� </strong>�����˴ϴ�<strong>.</strong></font>
													</td>
												</tr>
											</table>
										<% END IF %>

										
										<% 
											'�� ������ �������� �ƴ϶��, "����" �� ǥ����. 
										%>
										<% IF Cint(page)<>Cint(totalpage) THEN %>	 
											<a href="/job/List.asp?page=<%=page+1%>" style="margin-left:10px;"> ����	</a>
										<% END IF %>
									</div>
									
									<%
									  rs.close
									%>
								
									<%
									 sql = "select top 10 num, title, updatedate  from JobNotice where isshow=1 order by updatedate DESC"	                        
									 rs.Open sql, oConn  
									%>

								</td>
							</tr>
						</table>
						<br/><br/><br/><br/>
					</div>
					
					<div style="height:20px; background:url('/Images/Common/ico_dotted_gray.png') 0 bottom repeat-x;">
					</div>
					
					<div style="margin-left:0px;">
						<div class="con_wrap1709 mar_t20">
							<h5>��������</h5>
						</div>
						
		<!--				
						<table border="0" align="center" cellPadding="0" cellSpacing="0" style="margin-top:40px; width:80%;" class="table_col_type3">
							<tr>
								<td>
		-->						
									<table border="0" cellPadding="0" cellSpacing="2" style="margin-top:40px; margin-bottom:20px;" class="table_col_type3">

										<colgroup>
											<col style="width:80%;">
											<col style="width:20%;">
										</colgroup>
										<thead>
											<tr>
												<th class="gradBg" style="border-top:1px solid #e0e0e0;"> <!-- .tit -->
													<p align="center">��������</p>
												</th>
												<th class="gradBg" style="border-top:1px solid #e0e0e0;"> <!-- .tit -->
													<p align="center">�ۼ���</p>
												</th>
											</tr>
										</thead>
										<body>
											<%
												find = 0
												if not rs.EOF and not rs is nothing  then
													do until rs.EOF 
											%>

											<%  if  not rs("title") ="" then %>
												<tr language="javascript" onclick="notice('<%=rs("num")%>')" onmouseout="this.style.backgroundColor='snow'" onmouseover="this.style.backgroundColor='mistyrose'">
													<td size="2" face="����" style="CURSOR: hand; MARGIN-BOTTOM: 2px; MARGIN-TOP: 2px; WORD-SPACING: 2px">
														<p style="cursor:pointer;">&nbsp;<%=rs("title")%></font>
												 
														<% 
														'************* �� �� �ΰ���Ű�� *************
														if DateDiff("d",rs("updatedate"), Now()) = 0  then 
														%>
															&nbsp;
															<img src="/job/images/new1.gif" align="absmiddle">
														<% end if %>   
														</p>
													</td>
													<td align="middle">
														<font size="2"><%=FormatDateTime(rs("updatedate"),2)%></font>
													</td>
													<% find = 1 %>
												</tr>
												<% end if%>
												
												<%
												rs.MoveNext
												loop
											end if 
											%>
									
											<% if find = 0 then %>
												<tr>
													<td align="middle" size="2" face="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* ���������� �����ϴ� *</font>  </td>
												</tr>  
											<% end if %>
								   
											<!--
											<tr bgColor="#e0ebec" style="height:1px;">
												<td style="width:420px; height:5px; padding:0;" colspan="2"></td>										
											</tr>
											-->
											
										</tbody>

									</table>
							
							
							<!--
							<br/>					
							<tr>
								<td>
									<a href="http://www.bit.kr" target="_blank" style="margin-left:230px;"><img border="0" height="36" src="/job/images/copyright.gif" width="275">
									</a>
								</td>
								
							</tr>
							-->
						<!--</table>  -->
								   
								  
						<br/>
					</div>
					
				</div>
				
			</div>

		</div>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->	
	</div>
</body>
</html>
<%
rs.Close 
oConn.Close
set rs=nothing
set oConn =nothing
%>