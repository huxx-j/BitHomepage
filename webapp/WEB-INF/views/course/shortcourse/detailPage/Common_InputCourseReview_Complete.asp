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

	Function processString(OriginalStr)
		
		OriginalStr = Replace ( OriginalStr , "'" , "" )
		OriginalStr = Replace ( OriginalStr , "--" , "" )
		OriginalStr = Replace ( OriginalStr , "--, #" , " " )
		OriginalStr = Replace ( OriginalStr , "/* */" , " " )
		OriginalStr = Replace ( OriginalStr , "' or 1=1--" , " " )
		OriginalStr = Replace ( OriginalStr , "union" , " " )
		OriginalStr = Replace ( OriginalStr , "select" , " " ) 
		OriginalStr = Replace ( OriginalStr , "SELECT" , " " )
		OriginalStr = Replace ( OriginalStr , "delete" , " " ) 
		OriginalStr = Replace ( OriginalStr , "DELETE" , " " )
		OriginalStr = Replace ( OriginalStr , "insert" , " " ) 
		OriginalStr = Replace ( OriginalStr , "INSERT" , " " )
		OriginalStr = Replace ( OriginalStr , "update" , " " ) 
		OriginalStr = Replace ( OriginalStr , "UPDATE" , " " )
		OriginalStr = Replace ( OriginalStr , "drop" , " " )   
		OriginalStr = Replace ( OriginalStr , "DROP" , " " )
		OriginalStr = Replace ( OriginalStr , "on error resume" , " " )
		OriginalStr = Replace ( OriginalStr , "execute" , " " )
		OriginalStr = Replace ( OriginalStr , "windows" , " " )
		OriginalStr = Replace ( OriginalStr , "boot" , " " )
		OriginalStr = Replace ( OriginalStr , "-1 or" , " " )
		OriginalStr = Replace ( OriginalStr , "-1' or" , " " )
		OriginalStr = Replace ( OriginalStr , "../" , " " )
		OriginalStr = Replace ( OriginalStr , "unexisting" , " " )
		OriginalStr = Replace ( OriginalStr , "win.ini" , " " )
				
		processString = OriginalStr
	End Function
	
%>

<%
	text_LoginID = request.form("LoginID")
	text_CourseID = request.form("CourseID")
	text_Subject = request.form("Subject")
	text_Content = request.form("Content")
	text_NameHan = request.form("NameHan")
	text_InputDate = request.form("InputDate")
	text_nRate = request.form("nRate")
	
	text_LoginID = processString(text_LoginID)
	text_CourseID = processString(text_CourseID)
	text_Subject = processString(text_Subject)
	text_Content = processString(text_Content)
	text_NameHan = processString(text_NameHan)
	text_InputDate = processString(text_InputDate)
	text_nRate = processString(text_nRate)
%>

	
<%
sql = "INSERT INTO db_bit.dbo.Lesson_CourseReview_FormFilled (LoginID, CourseID, Subject, Content, NameHan, InputDate, nRate) " &_
	  "VALUES ('"&text_LoginID&"','"&text_CourseID&"','"&text_Subject&"','"&text_Content&"','"&text_NameHan&"','"&text_InputDate&"'," & text_nRate &_
	  ")"
response.write "<br/>sql : " & sql & "<br/>"
Dbcon.Execute(sql)

sql = "UPDATE db_bit.dbo.Lesson_CourseReview_Ongoing_Member SET Status='formFilled' WHERE CourseID='"&text_CourseID&"' AND LoginID='"&text_LoginID&"' "
response.write "<br/>sql : " & sql & "<br/>"
Dbcon.Execute(sql)

%>

<%
Dbcon.Close
Set Dbcon = nothing

Response.Redirect "Course_androidR.asp"

%>

	