<%
' 메세지 출력후 history.back
	Sub alertMsgBack( strMessage )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	alert(" & Chr(34) & strMessage & Chr(34) & ");" & vbCRLF & _
				"	history.back();" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
		Response.End
	End Sub
	
' 메세지 출력 후 창 닫기
	Sub alertMsg( strMessage )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	alert(" & Chr(34) & strMessage & Chr(34) & ");" & vbCRLF & _
				"	window.close();" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub
	
' 메세지 출력
	Sub alert( strMessage )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	alert(" & Chr(34) & strMessage & Chr(34) & ");" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub

	' 메세지 출력후 해당 URL로 이동
	Sub alertMsgGoURL( strMessage, strURL )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	alert(" & Chr(34) & strMessage & Chr(34) & ");" & vbCRLF & _
				"	self.location.href='" & strURL & "';" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub
	
	
	' 메세지 없이 해당 URL로 이동
	Sub alertGoURL( strURL )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	self.location.href='" & strURL & "';" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub
	
	

	' 경고 메세지 없이  Parent URL 이동
	Sub alertMsgParentURL(strURL )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	parent.location.href='" & strURL & "';" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF		
		Response.Write strScript
		Response.end
	End Sub


    'redirect with new window
    Sub redirectURL(strURL )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	windows.open('" & strURL & "','_blank');" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF		
		Response.Write strScript
		Response.end
	End Sub
%>	