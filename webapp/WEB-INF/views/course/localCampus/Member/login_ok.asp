<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
userid = TRIM(request.form("username"))
password = TRIM(request.form("password"))
return_url = TRIM(request.form("return_url"))
return_url = replace(return_url,"**","&")

if return_url = "" then
	return_url = "http://www.bitschool.co.kr/localCampus"
end if

if userid = "" or password = ""  then
	call alertMsgBack ("아이디와 패스워드를 다시 확인하여 주세요.")
End if
   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Con_bit_db

   SQL = "SELECT M.*,  "
   SQL = SQL & " (select COUNT(*) from CourseTermStudent WHERE M.STUDID = STUDID AND CompletStat='수료' AND CourseID in (select CourseID from Course where ExpertID ='전문가')) AS EXPERTCNT"
   SQL = SQL & " FROM Member M"
   SQL = SQL & " WHERE LoginID = '" &userid& "' and Password = '"&password&"'"
   Set Rs = Dbcon.Execute(SQL)

'   response.write "SQL:"&SQL&"<br>"
 ' response.end

 session("ExpertCnt") = 0

if Rs.Eof or Rs.bof then
	call alertMsgBack ("로그인에 실패하였습니다.\n\n다시 로그인을 시도해 주세요.")
else		

	session("studid") = trim(Rs("studid"))
	session("userid") = trim(Rs("LoginID"))
	session("StudResNum") = trim(Rs("StudResNum"))
	session("NameHan") = trim(Rs("NameHan"))
	session("ExpertCnt") = Trim(rs("EXPERTCNT"))
	
	Session.TimeOut = 60
	
	response.Redirect return_url
'	response.Redirect nextPage
End if			

Rs.close
Set Rs = nothing
Dbcon.close
Set Dbcon = nothing
%>