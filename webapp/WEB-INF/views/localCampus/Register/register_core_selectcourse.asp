<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

SQL = "Select SelectDate From SelectCourse Where CourseID ='" & Request.QueryString("courseid") & "' Order By SelectDate"

Set Rs = Dbcon.Execute(SQL)

%>

<Script LAnguage="JavaScript">
   parent.AppForm.select3.clear;
   parent.AppForm.select3.options[0] = new Option('==º±≈√==', ''); 
<%
Count = 0
Do While Not Rs.Eof
   Count = Count + 1
%>
   parent.AppForm.select3.options[<%=Count%>] = new Option('<%=Left(RS(0), 10)%>', '<%=RS(0)%>'); 
<%

  RS.MoveNext
Loop
%>
</Script>
<%
	Rs.close
	Dbcon.close
	Set Rs = Nothing
	Set Dbcon = Nothing
%>