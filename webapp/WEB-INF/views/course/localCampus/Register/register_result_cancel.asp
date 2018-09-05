<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

 <%
	studid=TRIM(session("studid"))
	idx=TRIM(Request.QueryString("idx"))

	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	sql="Delete from Application Where StudID = "&Studid&" and idx = "&idx&"   "

'	response.write "sql:"&sql&"<br>"
'	response.end
	Set Rs = Dbcon.Execute(sql)
	call alertMsgGoURL ("지원 취소 되었습니다.", "/localCampus/Register/register_result.asp")

	Dbcon.close
	Set Dbcon = nothing

  %>  
