<%
' �޼��� ����� history.back
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
	
' �޼��� ��� �� â �ݱ�
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
	
' �޼��� ���
	Sub alert( strMessage )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	alert(" & Chr(34) & strMessage & Chr(34) & ");" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub

	' �޼��� ����� �ش� URL�� �̵�
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
	
	
	' �޼��� ���� �ش� URL�� �̵�
	Sub alertGoURL( strURL )
		Dim strScript
		strScript = "<script language='javascript'>" & vbCRLF & _
				"<!--" & vbCRLF & _
				"	self.location.href='" & strURL & "';" & vbCRLF & _
				"-->" & vbCRLF & _
				"</script>" & vbCRLF
		
		Response.Write strScript
	End Sub
	
	

	' ��� �޼��� ����  Parent URL �̵�
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