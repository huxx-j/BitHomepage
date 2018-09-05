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
	text_InterviewDescription = request.form("InterviewDescription")
	text_InterviewManner = request.form("InterviewManner")
	text_InterviewOpinion = request.form("InterviewOpinion")
	text_CompReputation = request.form("CompReputation")
	text_CompName = request.form("CompName")
	text_EstablishYear = request.form("EstablishYear")
	text_Business = request.form("Business")
	text_Address = request.form("Address")
	text_HomePage = request.form("HomePage")
	text_YearSell = request.form("YearSell")
	text_StaffNum = request.form("StaffNum")
	
	text_InterviewDescription = processString (text_InterviewDescription)
	text_InterviewManner = processString (text_InterviewManner)
	text_InterviewOpinion = processString (text_InterviewOpinion)
	text_CompReputation = processString (text_CompReputation)
	text_CompName = processString (text_CompName)
	text_EstablishYear = processString (text_EstablishYear)
	text_Business = processString (text_Business)
	text_Address = processString (text_Address)
	text_HomePage = processString (text_HomePage)
	text_YearSell = processString (text_YearSell)
	text_StaffNum = processString (text_StaffNum)
	
	'response.write ("InterviewDescription : " & text_InterviewDescription & "<br/>")
	'response.write ("InterviewManner : " & text_InterviewManner & "<br/>")
	'response.write ("InterviewOpinion : " & text_InterviewOpinion & "<br/>")
	'response.write ("CompReputation : " & text_CompReputation & "<br/>")
	'response.write ("회사명 : " & text_CompName & "<br/>")
	'response.write ("설립년도 : " & text_EstablishYear & "<br/>")
	'response.write ("주력사업 : " & text_Business & "<br/>")
	'response.write ("주소 : " & text_Address & "<br/>")
	'response.write ("홈페이지 : " & text_HomePage & "<br/>")
	'response.write ("연매출액 : " & text_YearSell & "<br/>")
	'response.write ("직원수 : " & text_StaffNum & "<br/>")
	'response.end
	
%>

<%
'EvaluationDate = Year(Date) & "-" & Month(Date) & "-" & Day(Date)
'response.write("<br/>오늘 날짜 : " & EvaluationDate )
%>

<%
sql = "INSERT INTO db_bit.dbo.Interview (InterviewDescription, InterviewManner, InterviewOpinion, CompReputation, CompName, EstablishYear, Business, Address, HomePage, YearSell, StaffNum, UpdateDate ) " &_
	  "VALUES ('"&text_InterviewDescription&"','"&text_InterviewManner&"','"&text_InterviewOpinion&"','"&text_CompReputation&"','"&text_CompName&"','"&text_EstablishYear&"','"&text_Business&"', " &_
	  "'"&text_Address&"','"&text_HomePage&"','"&text_YearSell&"','"&text_StaffNum&"',GETDATE()" &_
	  ")"
'response.write "<br/>sql : " & sql & "<br/>"
Set Rs = Dbcon.Execute(sql)


%>

<%
Dbcon.Close
Set Dbcon = nothing


response.write("<br/>입력되었습니다. 감사합니다.")
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
	</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="font-size:10pt; ">
	<br/>
	<div style="margin-left:30px;">
		<br/>
		<a href="#" onclick="javascript:self.close();">닫기</a>
	</div>
	
</body>
</html>