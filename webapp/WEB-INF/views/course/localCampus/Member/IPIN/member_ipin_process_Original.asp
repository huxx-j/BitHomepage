﻿<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->


<%
DIM sSiteCode, sSitePw, sResponseData, sCPRequest
DIM IPIN_DLL, clsIPINDll
DIM iRtn, sRtnMsg
DIM sVNumber, sName, sDupInfo, sAgeCode, sGenderCode, sBirthDate, sNationalInfo, sCPRequestNum

Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"

sSiteCode	  = "I261"
sSitePw	  = "38010800"

 sResponseData = Request("enc_data")

 sCPRequest = SESSION("CPREQUEST")

IPIN_DLL		= "IPIN2Client.Kisinfo"

SET clsIPINDll	= Server.CreateObject(IPIN_DLL)

iRtn = clsIPINDll.fnResponse(sSiteCode, sSitePw, sResponseData)

IF (iRtn = 1) THEN

		sVNumber = clsIPINDll.bstrVNumber 
		sName	= clsIPINDll.bstrName		
		sDupInfo= clsIPINDll.bstrDupInfo
		sAgeCode= clsIPINDll.bstrAgeCode	
		sGenderCode= clsIPINDll.bstrGenderCode	 
		sBirthDate= clsIPINDll.bstrBirthDate		
		sNationalInfo	= clsIPINDll.bstrNationalInfo	
		sCPRequestNum	= clsIPINDll.bstrCPRequestNUM
		
        sAuthInfo	= clsIPINDll.bstrAuthInfo	
    	CoInfo1 	= clsIPINDll.bstrCoInfo1
        sCIUpdate	= clsIPINDll.bstrCIUpdate

		sRtnMsg = "정상 처리되었습니다."
END IF

SET clsIPINDll = NOTHING
	
		Function Fn_checkXss (CheckString, CheckGubun) 
			CheckString = trim(CheckString)
			CheckString = replace(CheckString,"<","&lt;")
			CheckString = replace(CheckString,">","&gt;")
			CheckString = replace(CheckString,"""","")  
			CheckString = replace(CheckString,"'","")   
			CheckString = replace(CheckString,"(","")
			CheckString = replace(CheckString,")","")
			CheckString = replace(CheckString,"#","")
			CheckString = replace(CheckString,"%","")
			CheckString = replace(CheckString,";","")
			CheckString = replace(CheckString,":","")
			CheckString = replace(CheckString,"-","")      
			CheckString = replace(CheckString,"`","")
			CheckString = replace(CheckString,"--","")
			CheckString = replace(CheckString,"\","")
			IF CheckGubun <> "encodeData" THEN	
				CheckString = replace(CheckString,"+","")
				CheckString = replace(CheckString,"=","")
				CheckString = replace(CheckString,"/","")
			END IF	
			Fn_checkXss = CheckString
		End Function

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

    SQL="DELETE FROM Member WHERE StudResNum='"&sVNumber&"'"
    Dbcon.Execute SQL
    sql="insert Member(NameHan,StudResNum,AgeCode,GenderCode,BirthDate,NationalInfo)"
	sql=sql& " values('"&sName&"','"&sVNumber&"','"&sAgeCode&"','"&sGenderCode&"','"&sBirthDate&"','"&sNationalInfo&"')"
    Dbcon.Execute sql
'Response.Write sql

set Rs = nothing

Dbcon.Close 
set Dbcon = nothing		

%>


<html>
    <head>

     <meta http-equiv="Content-Language" content="ko">
     <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

        <script language="javascript">
            function fnLoad() {
                opener.document.location.href = "/member/member_ipin_result_old.asp";
                self.close();
            }

        </script> 
    </head>
    		<body onLoad="fnLoad()">
    		</body>
</html>