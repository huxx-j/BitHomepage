<%
' ===========================
' injection ó��
' 2008.11.11 ���������
' ===========================
Dim injection_filter    
injection_filter  = "union |delete|select|update |drop table|drop column|alter table|alter column|create |insert|shutdown|;--|declare|dEcLaRe|VaRcHaR(|cAsT(|exec|set @"

Function objXML_Log(BAD_WORD,QUERY_STRING) 

'����������������������������������������������������������
'IP,�ð��� XML���Ϸ� ����Ѵ�. 
'����������������������������������������������������������

'-----���� ����
Dim objXML, blnFileExist
Dim objXMLv
Dim intID
Dim xml_file_name

On Error Resume Next 

Set objXML = server.CreateObject("Microsoft.XMLDOM")
objXML.async = False

'-----���ϸ�Ī
xml_file_name = "/Log/injection.xml"

'-----������ �����ϴ��� üũ
blnFileExist = objXML.load(server.MapPath(xml_file_name))
If blnFileExist = False Then
  objXML.appendChild(objXML.createProcessingInstruction("xml","version=""1.0"""))
  objXML.appendChild(objXML.createElement("IP_LOGS"))
  intID = 1
Else
  intID = objXML.documentElement.childNodes(objXML.documentElement.childNodes.length - 1).childNodes(0).text + 1
End If

'-----���μ��� ����
Set objXMLv = objXML.createElement("IP_LOG")

  objXMLv.appendChild(objXML.createElement("ID"))
  objXMLv.appendChild(objXML.createElement("USER_ID"))
  objXMLv.appendChild(objXML.createElement("Filtering_WORD"))
  objXMLv.appendChild(objXML.createElement("QUERY_STRING"))
  objXMLv.appendChild(objXML.createElement("HTTP_REFERER"))
  objXMLv.appendChild(objXML.createElement("REMOTE_ADDR"))
  objXMLv.appendChild(objXML.createElement("LOCAL_ADDR"))
  objXMLv.appendChild(objXML.createElement("DATE"))

  objXMLv.childNodes(0).text = intID
  objXMLv.childNodes(1).text = session("USER_ID")
  objXMLv.childNodes(2).text = BAD_WORD
  objXMLv.childNodes(3).text = Request.ServerVariables("SCRIPT_NAME") &"?"& QUERY_STRING
  objXMLv.childNodes(4).text = Request.ServerVariables("HTTP_REFERER")
  objXMLv.childNodes(5).text = Request.ServerVariables("REMOTE_ADDR")
  objXMLv.childNodes(6).text = Request.ServerVariables("LOCAL_ADDR")
  objXMLv.childNodes(7).text = Now()

'-----���� ����

  objXML.documentElement.appendChild(objXMLv.cloneNode(True))
  objXML.save(server.MapPath(xml_file_name))

'-----��ü ����
Set objXMLv = Nothing
Set objXML = Nothing

End Function

Function f_injection(query_string)
    
	  Dim injection_filter_arr, injection_filter_cnt, j

      f_injection = false
    
      injection_filter_arr = split(injection_filter,"|")
      injection_filter_cnt = Ubound(injection_filter_arr)
      
      for j = 0 to injection_filter_cnt
       
       if InStr(1,query_string,injection_filter_arr(j),1) > 0 Then

        f_injection = true
        
        Response.Write "<font color=red><b>�� �˸�</b><br>"
		Response.Write "- ����� ó�� ���� �ʾҽ��ϴ�. �ý��� ���ȿ� ����� ���ɼ��� �ִ� �ܾ�� ������ �������� �ʽ��ϴ�.<br>"
		Response.Write "- ���͸� ���� : <font color=blue>"& injection_filter_arr(j) &"</font><br>"
		Response.Write "- <font color=red>�Է��� �ʿ��� ��� a.b.c ���·� �Է��Ͽ� �ֽʽÿ�.</font><br><br>"
      Call objXML_Log(injection_filter_arr(j),query_string)
        Response.End

        exit for
       end if
      next
    
End Function

' ===========================
' injection ó�� �߰� ��
' ===========================

Function RegExp(str)

   If f_injection(str) = false then
   
	Dim reCheck, strPattern, strRet
	Set reCheck = new RegExp
	
	'''= [;] ['] [%] [--] [#] [exec ] [xp_] [sp_] ���ڴ� ��� �����մϴ�.
	strPattern = "(<script)|(</script)|(select)|(insert)|--|exec(\s|\+)+|(s|x)p_"
	
	reCheck.Pattern				= strPattern		
	reCheck.IgnoreCase		= True   ' ��ҹ��� ���� ���� �˻�����
	reCheck.Global				= True   ' ��ü ���忡 ���� �˻� ����
	strRet = reCheck.Replace(str,"")   ' �˻��� ����
	
	RegExp = strRet

   End If
		
End Function
%>