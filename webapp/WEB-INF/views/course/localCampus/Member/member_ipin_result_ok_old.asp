<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->


<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"

SearchIDtxt=Request.Form("username")	
Name=Request.Form("name")
Password= Request.Form("password")    
SelectHomeTel=Request.Form("telephone1")+"-"+Request.Form("telephone2")+"-"+Request.Form("telephone3") '����ȭ    
SelectHandPhone=Request.Form("handphone1")+"-"+Request.Form("handphone2")+"-"+Request.Form("handphone3")'�ڵ���  
       
email= Request.Form("mail1")&"@"&Request.Form("mail2")
bitletter= Request.Form("bitletter")    
job= Request.Form("job") 

if mail_flag="1" then
	mail_flag="yes"
else
	mail_flag="no"
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

  'id �ߺ�üũ	
  SQL="select LoginID from Member Where LoginID='" & SearchIDtxt & "'"
'  response.write "SQL:"&SQL&"<br>"
  Set Rs = Dbcon.Execute(SQL)

  if not Rs.EOF then
	Rs.Close
	set Rs=nothing
	Dbcon.close
	set Dbcon=nothing	
	call alertMsgBack ("�̹� �����ϴ� ���̵��Դϴ�.\n�ٽ� Ȯ���� �ּ���.")
	Response.End	
end if

		'================================================================================
		'*********�������� ���
sql="update Member SET LoginID='"&SearchIDtxt&"', Password='"&Password&"', Email='"&email&"', TelePhone='"&SelectHomeTel&"', HandPhone='"&SelectHandPhone&"', bitletter='"&bitletter&"' WHERE StudID=(SELECT max(StudID) FROM Member)"

		Dbcon.Execute sql
		'Response.Write sql

		SQL="select Studid From Member where LoginID='"&SearchIDtxt&"'"
		Set Rs = Dbcon.Execute(SQL)

	if not(Rs.EOF) then
		session("studid")=TRIM(Rs("studid"))

		Rs.Close 
		set Rs = nothing
		session("userid") = trim(SearchIDtxt)
		session("NameHan") = trim(Name)		
		call alertMsgGoURL ("ȸ������ó�� �Ϸ� �Ǿ����ϴ�..", "/localCampus")
	end if

set Rs = nothing

Dbcon.Close 
set Dbcon = nothing			 
%>	
 
   
	