<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

SearchIDtxt=Request.Form("username")	
Name=Request.Form("name")
Password= Request.Form("password")    
SelectHomeTel=Request.Form("telephone1")+"-"+Request.Form("telephone2")+"-"+Request.Form("telephone3") '집전화    
SelectHandPhone=Request.Form("handphone1")+"-"+Request.Form("handphone2")+"-"+Request.Form("handphone3")'핸드폰  
       
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

  'id 중복체크	
  SQL="select LoginID from Member Where LoginID='" & SearchIDtxt & "'"
'  response.write "SQL:"&SQL&"<br>"
  Set Rs = Dbcon.Execute(SQL)

  if not Rs.EOF then
	Rs.Close
	set Rs=nothing
	Dbcon.close
	set Dbcon=nothing	
	call alertMsgBack ("이미 존재하는 아이디입니다.\n다시 확인해 주세요.")
	Response.End	
end if

		'================================================================================	
    	'*********개인정보 등록
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
		call alertMsgGoURL ("회원가입처리 완료 되었습니다..", "/")
	end if

set Rs = nothing

Dbcon.Close 
set Dbcon = nothing			 
%>	
 
   
	