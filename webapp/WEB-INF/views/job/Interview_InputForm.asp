<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Response.Cookies("flag")="1"
code = Request.QueryString("code")

Studid = TRIM(session("Studid"))
LoginID = TRIM(session("LoginID"))
'response.write "Studid:"&Studid&"<br>"
%>

<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<%
Dbcon.Close
Set Dbcon = nothing
%>


<!DOCTYPE html>
<html lang="ko">
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	
	<style>
		.myTitle {
			font-size:20pt;
			font-weight:900;
			text-align:center;
			margin:10px;
		}
		.myWeight900 { font-weight:900; }
		.myHeadline {
			font-size:11pt;
			text-align:center;
		}
		.myUnderline {
			text-decoration:underline;
		}
		.myMarginL50 {
			margin-left:50px;
		}
		table tr td {
			text-align:center;
			border-radius:5px;
		}
		.myBorder1 {
			border: 1px solid black;		
		}
		.my10percent {
			width:10%;
			height:55px;
		}
		.my9pt {
			font-size:6pt;
		}
		.myInterval {
			height:20px;
		}
		.myFinish {
			height:40px;
			weight:150px;
			font-size:13pt;
			border-radius:3px;
			background-color:#eeeead;
		}
		.myTable tr th {
			font-size:13pt;
			color:#8b6338;
			background-color:#fbfbec;
		}
	</style>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>		
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt;">
	<div class="myTitle">�����ı� �ۼ�</div>
	<br/>
	<form method="post" action="Interview_InputForm_Complete.asp" name="Form1" onSubmit="checkForm(); return false;">
		<div>
			<table class="myTable">
				<colgroup>
					<col style="width:15%;">
					<col style="width:85%;">
				</colgroup>
				<tr>
					<th>ȸ���</th>
					<td style="text-align:left;"><input type="text" name="CompName" style="width:300px;" REQUIRED /></td>
				</tr>
				<tr style="display:none;">
					<th>�����⵵</th>
					<td style="text-align:left;"><input type="text" name="EstablishYear" style="width:300px;" /></td>
				</tr>
				<tr style="display:none;">
					<th>�ַ»��</th>
					<td style="text-align:left;"><input type="text" name="Business" style="width:300px;" /></td>
				</tr>
				<tr style="display:none;">
					<th>�ּ�</th>
					<td style="text-align:left;"><input type="text" name="Address" style="width:580px;" /></td>
				</tr>
				<tr>
					<th>Ȩ������<span style="color:red;">*</span></th>
					<td style="text-align:left;"><input type="text" name="HomePage" style="width:300px;" REQUIRED /></td>
				</tr>
				<tr style="display:none;">
					<th>�������</th>
					<td style="text-align:left;"><input type="text" name="YearSell" style="width:300px;"/></td>
				</tr>
				<tr style="display:none;">
					<th>������</th>
					<td style="text-align:left;"><input type="text" name="StaffNum" style="width:300px;"/></td>
				</tr>
				<tr>
					<th>��������<span style="color:red;">*</span></th>
					<td><textarea name="InterviewDescription" cols="80" rows="10" REQUIRED></textarea></td>
				</tr>
				<tr>
					<th>�������µ�<span style="color:red;">*</span></th>
					<td><textarea name="InterviewManner" cols="80" rows="8" REQUIRED></textarea></td>
				</tr>
				<tr>
					<th>������<span style="color:red;">*</span></th>
					<td><textarea name="InterviewOpinion" cols="80" rows="10" REQUIRED></textarea></td>
				</tr>
				<tr>
					<th>ȸ����<span style="color:red;">*</span></th>
					<td><textarea name="CompReputation" cols="80" rows="10" REQUIRED></textarea></td>
				</tr>
				
				
			</table>
		</div>
		<div style="text-align:center; margin-top:15px; margin-bottom:15px;">
			<input type="submit" class="myFinish" value="�ۼ��Ϸ�">
		</div>
	</form>
	
</body>
</html>