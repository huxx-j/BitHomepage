<%
' ===========================
' injection 처리
' 2008.11.11 기술연구소
' ===========================
Dim injection_filter    
injection_filter  = "union |delete|select|update |drop table|drop column|alter table|alter column|create |insert|shutdown|;--|declare|dEcLaRe|VaRcHaR(|cAsT(|exec|set @"

Function objXML_Log(BAD_WORD,QUERY_STRING) 

'━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
'IP,시간등 XML파일로 기록한다. 
'━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

'-----변수 선언
Dim objXML, blnFileExist
Dim objXMLv
Dim intID
Dim xml_file_name

On Error Resume Next 

Set objXML = server.CreateObject("Microsoft.XMLDOM")
objXML.async = False

'-----파일명칭
xml_file_name = "/Log/injection.xml"

'-----파일이 존재하는지 체크
blnFileExist = objXML.load(server.MapPath(xml_file_name))
If blnFileExist = False Then
  objXML.appendChild(objXML.createProcessingInstruction("xml","version=""1.0"""))
  objXML.appendChild(objXML.createElement("IP_LOGS"))
  intID = 1
Else
  intID = objXML.documentElement.childNodes(objXML.documentElement.childNodes.length - 1).childNodes(0).text + 1
End If

'-----프로세스 시작
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

'-----파일 저장

  objXML.documentElement.appendChild(objXMLv.cloneNode(True))
  objXML.save(server.MapPath(xml_file_name))

'-----객체 해제
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
        
        Response.Write "<font color=red><b>※ 알림</b><br>"
		Response.Write "- 명령이 처리 되지 않았습니다. 시스템 보안에 위배될 가능성이 있는 단어는 서버에 전달하지 않습니다.<br>"
		Response.Write "- 필터링 문자 : <font color=blue>"& injection_filter_arr(j) &"</font><br>"
		Response.Write "- <font color=red>입력이 필요한 경우 a.b.c 형태로 입력하여 주십시오.</font><br><br>"
      Call objXML_Log(injection_filter_arr(j),query_string)
        Response.End

        exit for
       end if
      next
    
End Function

' ===========================
' injection 처리 추가 끝
' ===========================

Function RegExp(str)

   If f_injection(str) = false then
   
	Dim reCheck, strPattern, strRet
	Set reCheck = new RegExp
	
	'''= [;] ['] [%] [--] [#] [exec ] [xp_] [sp_] 문자는 모두 제거합니다.
	strPattern = "(<script)|(</script)|(select)|(insert)|--|exec(\s|\+)+|(s|x)p_"
	
	reCheck.Pattern				= strPattern		
	reCheck.IgnoreCase		= True   ' 대소문자 구분 없이 검색여부
	reCheck.Global				= True   ' 전체 문장에 대해 검색 여부
	strRet = reCheck.Replace(str,"")   ' 검색을 실행
	
	RegExp = strRet

   End If
		
End Function
%>