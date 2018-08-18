<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->


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

userid = TRIM(request.QueryString("userid"))

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
    
Bdate=Mid(sBirthDate,3,6)
FVNumber=Mid(sVNumber,1,6)
RVNumber=Mid(sVNumber,7,7)

'Response.Write sVNumber
'// 0616527219553
'Response.End
'*********************************************************************************************
' (NOTE : 2017-11-04-YG)

' 과거에는 sVNumber가 주민번호였을 것으로 생각됩니다.
' 지금은 주민등록번호 수집이 금지된지 오래되었으므로, sVNumber에 알 수 없는 식별값들이 들어가 있었고
' 이 값들이 고스란히 우리 DB의 Member테이블의 BirthDate필드에 담기고 있었습니다.
' YG가 개발한 핸드폰인증으로 가입시에는 BirthDate에 올바른 값이 들어가고 있었는데,
' 이전에 누군가 개발한 아이핀인증으로 가입시에는 BirthDate에 옳지 않은 데이터가 담기고 있었던 겁니다.
' (원래 주민등록번호가 991212-1xxxxxx 라면, BirthDate 필드엔 991212-1 이 담겨야 맞는데, 다른 내용이 담기고 있었던 겁니다.)
' 한편, YG가 개발한 핸드폰인증으로 가입시에는 member_hp_process.asp 를 거치는데 이 경우엔 위 문제가 해결되어 BirthDate에 올바른 값이 들어가고 있었으니 
' 문제될 게 없고.
' 따라서, 이전에 누군가 개발한 member_ipin_process.asp 를 거치는 (즉, 아이핀 인증) 경우의 위 문제를 해결합니다 :
' (수정O) sDupInfo가 온전한 식별값이니, 이를 통해 비교하기로. // member_hp_process와 비슷한 방식입니다.
' (수정X) 기존에 잘못된 값이 들어가던 BirthDate필드엔 의미있는 '식별값'으로 보이는 값이 들어가고 있으므로, BirthDate필드에 들어가는 값은 수정하지 않기로 합니다.

'//SQL="SELECT * FROM Member WHERE BirthDate='"&FVNumber&"-"&RVNumber&"'"
SQL="SELECT * FROM Member WHERE sDupInfo='"&sDupInfo&"'"

'Response.Write SQL
'// SELECT * FROM Member WHERE BirthDate='061652-7219553'
'Response.End

Set Rs = Dbcon.Execute(SQL)

IF Rs.EOF THEN
	'// 중복이 아닌 경우.
    BirthDate=-1	
ELSE
	'// 중복인 경우.
    BirthDate=Trim(Rs("BirthDate"))	
END IF

IF BirthDate=-1 THEN
	'// 중복이 아니므로, 새로 가입해야 하는 상황
    IF sGenderCode = 0 THEN
		'// 여자인 경우
		sql="insert Member(NameHan,StudResNum,AgeCode,GenderCode,BirthDate,NationalInfo,sDupInfo)"
		sql=sql& " values('"&sName&"','"&Bdate&"-2xxxxxx','"&sAgeCode&"','"&sGenderCode&"','"&FVNumber&"-"&RVNumber&"','"&sNationalInfo&"','"&sDupInfo&"')"

		'// 로깅 추가 : 2018-02-10-YG.
		Call YGLogger("SQL", sql, "/Member/IPIN/member_ipin_process.asp (회원가입 - 인증모듈(IPIN) 통과 직후)", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)

		Dbcon.Execute sql
    ELSE
		'// 남자인 경우
		sql="insert Member(NameHan,StudResNum,AgeCode,GenderCode,BirthDate,NationalInfo,sDupInfo)"
		sql=sql& " values('"&sName&"','"&Bdate&"-1xxxxxx','"&sAgeCode&"','"&sGenderCode&"','"&FVNumber&"-"&RVNumber&"','"&sNationalInfo&"','"&sDupInfo&"')"

		'// 로깅 추가 : 2018-02-10-YG.
		Call YGLogger("SQL", sql, "/Member/IPIN/member_ipin_process.asp (회원가입 - 인증모듈(IPIN) 통과 직후)", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)

		Dbcon.Execute sql
    END IF
ELSE
	'// 중복이므로(이미 가입된 사람이므로), 가입시키면 안 되는 상황
	SQL="SELECT * FROM Member WHERE BirthDate='"&BirthDate&"' AND StudID=(SELECT TOP 1 StudID FROM Member WHERE BirthDate='"&BirthDate&"' ORDER BY StudID DESC)"
'Response.Write "SELECT * FROM Member WHERE BirthDate='"&BirthDate&"' AND StudID=(SELECT TOP 1 StudID FROM Member WHERE BirthDate='"&BirthDate&"' ORDER BY StudID DESC)" & "<br/>"
'// SELECT * FROM Member WHERE BirthDate='061652-7219553' AND StudID=(SELECT TOP 1 StudID FROM Member WHERE BirthDate='061652-7219553' ORDER BY StudID DESC)
'Response.End
	
	IF Rs("LoginID")="" THEN
    
	Else
		'// 이미 가입하셨습니다... 를 출력하고 창 닫는 페이지로 이동.
		response.Redirect("/Member/id_pass_search_After03_3.asp?sDupInfo="&sDupInfo&"&sName="&sName)
    END IF
END IF

'// 회원가입 - 회원정보입력 페이지로 이동.
response.Redirect("/Member/id_pass_search_After03_2.asp?sDupInfo="&sDupInfo&"&sName="&sName)

set Rs = nothing
Dbcon.Close 
set Dbcon = nothing	
%>