<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

SQL = "Select Count(*) From Application Where CourseID ='" & Request.QueryString("courseid") & "' And CAST(Left(SelectDateTime, 16) as DATETIME) > GetDATE() And studid = " & Request.QueryString("studid")

Set Rs = Dbcon.Execute(SQL)

'   Set RS = oConn.Execute("Select Count(*) From Application Where CourseID ='" & Request.QueryString("courseid") & "' And CAST(Left(SelectDateTime, 10) as DATETIME) > GetDATE() And studid = " & Request.QueryString("studid"))
%>

<Script LAnguage="JavaScript">
<% If Rs(0) > 0 Then %>
   alert('�� ������ �̹� �����ϼ̽��ϴ�.\n�ٸ� �����Ϸ� �������� ������� �� �����Ͻʽÿ�.');  
   parent.AppForm.select3.selectedIndex = 0;
   parent.AppForm.select1.selectedIndex = 0;

   for (i=15; i>0; i--) {
     parent.AppForm.select3[i] = null;
   }
<% End If %>
</Script>
<%
	Rs.close
	Dbcon.close
	Set Rs = Nothing
	Set Dbcon = Nothing
%>