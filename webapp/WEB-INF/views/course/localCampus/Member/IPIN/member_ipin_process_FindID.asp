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
    
FVNumber=Mid(sVNumber,1,6)
RVNumber=Mid(sVNumber,7,7)

SQL="SELECT TOP 1 * FROM MEMBER WHERE BirthDate='"&FVNumber&"-"&RVNumber&"'"
    
Set Rs = Dbcon.Execute(SQL)
        
    IF Rs.EOF THEN
        CALL alertMsg( "IPIN을 사용한 회원 가입 내역이 없습니다." )
        Rs.Close
        Dbcon.close
        Response.End
    ELSE
        CALL alertMsg("ID: "&LEFT(Rs("LoginID"),LEN(Rs("LoginID"))-3)&"*** // PW: "&LEFT(Rs("Password"),LEN(Rs("Password"))-3)&"***")
        Rs.Close
        Dbcon.close
        Response.End
    END IF

set Rs = nothing

Dbcon.Close 
set Dbcon = nothing		

%>


<html>
    <head>

     <meta http-equiv="Content-Language" content="ko">
     <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
     <meta http-equiv="X-UA-Compatible" content="IE=10">

        <script language="javascript">
            function fnLoad() {
                window.close();
                window.opener.document.location.href = "http://bitschool.co.kr/member/id_pass_search.asp";
            }

        </script> 
    </head>
    		<body onLoad="fnLoad()">
    		</body>
</html>