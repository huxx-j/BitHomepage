<%
If Trim(session("JobLoginYN")) <> "Y" Then  

	strScript = "<script language='javascript'>" & vbCRLF & _
			"<!--" & vbCRLF & _
			"	document.location.href='/job/jobSearchLogin.asp';" & vbCRLF & _
			"-->" & vbCRLF & _
			"</script>" & vbCRLF		
'''''	Response.Write strScript
'''''	Response.End


End If 

%>