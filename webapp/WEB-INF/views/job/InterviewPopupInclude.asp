<!DOCTYPE html>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
Response.AddHeader "Pragma","no-cache"
Response.AddHeader "cache-control", "no-staff"
Response.Expires  = -1

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>
<%
	Dim StrInterviewManner			' �������µ�
	Dim StrInterviewDescription		' ��������
	Dim StrInterviewOpinion			' ������
	Dim StrCompReputation			' ȸ����
	
	Dim StrCompName					' ȸ���
	Dim StrEstablishYear			' �����⵵
	Dim StrBusiness					' �ַ»��
	Dim StrAddress					' �ּ�
	Dim StrHomePage					' Ȩ������
	Dim StrYearSell					' ������� + "��"
	Dim StrStaffNum					' ������ + "��"
	Dim StrUpdateDate					' ��������
%>

<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<!--<meta charset="euc-kr">-->
	
	
	<%
		' << retrieving values from the dbo.Interview >>
'response.write "111<br/>"
'response.end
		
		Num = request.querystring("Num") 				'// Num : �����ı� �� ��ȣ.
		'response.write(Num & "<br/>")
	%>
	<%
		sql = "select * from db_bit.dbo.InterviewHitCount where Num=" & Num
'response.write sql & "<br/>"		
'response.end		
		set Rs = Dbcon.execute(sql)
		
		IF Rs.EOF THEN
			'// ó�� ��ȸ���ϴ�(��ȸ��=0) �۹�ȣ�� ���.
			sql = "INSERT INTO db_bit.dbo.InterviewHitCount (Num, HitCount) VALUES (" & Num & ",1)"
			Dbcon.execute(sql)
		ELSE
			'// �̹� ��ȸ���غ�(��ȸ��>0) �۹�ȣ�� ���.
			hitCount = Cint(Rs("HitCount"))
			sql = "UPDATE db_bit.dbo.InterviewHitCount SET HitCount=" & (hitCount+1) & " WHERE Num=" & Num
'response.write sql
'response.end
			Set Rs2 = Dbcon.execute(sql)
			Set Rs2 = nothing
		END IF
		
		Rs.close
		Set Rs = Nothing
	
	%>
	<%
		sql = "select * from db_bit.dbo.Interview where Num=" & Num
		'response.write(sql)
		'response.end
		
		set rs = Dbcon.execute(sql)
		
		IF NOT rs.EOF THEN
			StrInterviewManner = rs("InterviewManner")
			StrInterviewDescription = rs("InterviewDescription")
			StrInterviewOpinion = rs("InterviewOpinion")
			StrCompReputation = rs("CompReputation")
			
			StrInterviewManner = Replace(StrInterviewManner, """", "&quot;")
			StrInterviewDescription = Replace(StrInterviewDescription, """", "&quot;")
			StrInterviewOpinion = Replace(StrInterviewOpinion, """", "&quot;")
			StrCompReputation = Replace(StrCompReputation, """", "&quot;")
			
			StrCompName = rs("CompName")
			StrEstablishYear = rs("EstablishYear")
			StrBusiness = rs("Business")
			StrAddress = rs("Address")
			StrHomePage = rs("HomePage")
			StrYearSell = rs("YearSell")
			StrStaffNum = rs("StaffNum")
			StrUpdateDate = rs("UpdateDate")
			
		END IF
		
	%>
	
	<script>
		$(document).ready(function() {
			showUpInterviewContents();
			
			/* NOT Working PROPERLY. 2016-11-21-YG
			$("#divContent1, #divContent2").bind("mousewheel", function(e) {
				// tell the browser we're handling this event
				e.preventDefault();
				e.stopPropagation();

			});
			*/
		});
		
		function showUpInterviewContents() {
			var strPre = '<div style="margin-top:30px; margin-bottom:5px; padding:5px; font-size:13pt; color:#8b6338; background-color:#fbfbec;">';
			var strMid = '</div><p style="font-size:11pt; color:#4f4f4f; line-height:15pt;">';
			var strPost = '</p>';

			//var strSubject = '<div style="padding:10px; font-size:15pt; font-weight:900; border:1px solid #d7d7d7;">' + $('.Subject').eq(i).val() + '</div>';
			var str1 = strPre + '���� ����' + strMid + $('.Str1').eq(0).val() + strPost;
			var str2 = strPre + '������ �µ�' + strMid + $('.Str2').eq(0).val() + strPost;
			var str3 = strPre + '������' + strMid + $('.Str3').eq(0).val() + strPost;
			var str4 = strPre + 'ȸ�� ��' + strMid + $('.Str4').eq(0).val() + strPost;
			
			//$('#myBox1').html(str1 + str2 + str3 + str4);
			$('#divContent2').html(str1 + str2 + str3 + str4);

			
		}
	</script>
</head>
<body>
	<form name="form2" style="height:10px;">  <!-- to share between ASP and JS -->
		<input type="hidden" class="Str1" value="<%=replace(strInterviewDescription, chr(13), "<br/>")%>"/>
		<input type="hidden" class="Str2" value="<%=replace(strInterviewManner, chr(13), "<br/>")%>" />
		<input type="hidden" class="Str3" value="<%=replace(strInterviewOpinion, chr(13), "<br/>")%>" />
		<input type="hidden" class="Str4" value="<%=replace(strCompReputation, chr(13), "<br/>")%>" />
		
	</form>
	
	<%
		sql2 = "SELECT * FROM db_bit.dbo.InterviewImageLogoPath WHERE CompName like '%"&rs("CompName")&"%'"
		Set Rs2 = Dbcon.Execute(sql2)
		
		if Rs2.eof = false then
			ImagePath = Rs2("ImageLogoPath")
			HomepageURL = Rs2("HomepageURL")
		else
			ImagePath = ""
			HomepageURL = ""
		end if
		Rs2.Close
	%>
	<div id="divContent1" style="margin-bottom:10px;">
		<div style="float:left;"><h2> <img src="<%=ImagePath%>" style="max-width:175px; max-height:39px;"/><span class="blueTxt" style="font-size:1.6em;"><%=strCompName %> </span> �����ı�</h2></div>
		<div style="float:right; font-weight:900; font-size:1.25em;"><a id="aClose1" href="#"><span class="redTxt">[�ݱ�]</span></a></div>
		<div style="clear:both;"></div>
		<div style="float:right; margin-right:10px; font-size:0.8em; "><a href="<%=HomepageURL%>" target="_blank"><u><span style="color:#8f8f8f;"><%=HomepageURL%></span></u></a></div>
		<div style="clear:both;"></div>
	</div>
	
	<div id="divContent2" style="margin-bottom:10px;">
	</div>
	

</body>	

<%
	rs.close
	Set rs = Nothing
	
	Dbcon.close
	Set Dbcon = Nothing
%>
