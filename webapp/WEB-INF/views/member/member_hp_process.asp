<%
session.codepage = 65001
Response.ChaRset = "UTF-8"
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->


<%
	'*********************************** 핸드폰인증 추가 (2016-02-19-YG) ******************************

    Dim clsCPClient
    Dim sSiteCode, sSitePassword, sCipherTime
    Dim sRequestNumber             '요청 번호
    Dim sResponseNumber            '인증 고유번호
    Dim sAuthType                  '인증 수단
    Dim sName                      '성명
    Dim sDupInfo                   '중복가입 확인값 (DI_64 byte)
    Dim sConnInfo                  '연계정보 확인값 (CI_88 byte)
    Dim sBirthDate                 '생일
    Dim sGender		               '성별
    Dim sNationalInfo              '내/외국인 정보 (사용자 매뉴얼 참조)
    Dim sReserved1, sReserved2, sReserved3
    Dim sResult
	
	Dim	sMobileNum					'휴대폰 번호
	
    sEncodeData = Fn_checkXss(Request("EncodeData"), "encodeData")
    sReserved1 = Fn_checkXss(Request("param_r1"), "")
    sReserved2 = Fn_checkXss(Request("param_r2"), "")
    sReserved3 = Fn_checkXss(Request("param_r3"), "")
    
		sSiteCode     	= "H0225"					'NICE로부터 부여받은 사이트 코드
		sSitePassword   = "KCRKENUII90J"			'NICE로부터 부여받은 사이트 패스워드
	
		SET clsCPClient  = SERVER.CREATEOBJECT("CPClient.Kisinfo")
		
    iRtn = clsCPClient.fnDecode(sSiteCode, sSitePassword, sEncodeData)
    
    IF iRtn = 0 THEN
	    sPlain           = clsCPClient.bstrPlainData
	    sCipherTime      = clsCPClient.bstrCipherDateTime
    
      	
        	iReturn = clsCPClient.fnGetAuthInfo("REQ_SEQ")
          sRequestNumber= clsCPClient.bstrAuthInfo
'response.write "sRequestNumber : " & sRequestNumber & "<br/>"
					iReturn = clsCPClient.fnGetAuthInfo("RES_SEQ")
          sResponseNumber= clsCPClient.bstrAuthInfo
'response.write "sResponseNumber : " & sResponseNumber & "<br/>"
		  
		  iReturn = clsCPClient.fnGetAuthInfo("AUTH_TYPE")
          sAuthType= clsCPClient.bstrAuthInfo

          'iReturn = clsCPClient.fnGetAuthInfo("UTF8_NAME")
          'sName= clsCPClient.bstrAuthInfo

          iReturn = clscpclient.fngetauthinfo("NAME")
          sName= clscpclient.bstrauthinfo
response.write "[이름]sName(UTF8) : " & unescape(sName) & "<br/>"

session("sName") = sName
'response.write "session(""sName"") : " & session("sName") & "<br/>"

		  iReturn = clsCPClient.fnGetAuthInfo("BIRTHDATE")
          sBirthDate= clsCPClient.bstrAuthInfo
'response.write "sBirthDate : " & sBirthDate & "<br/>"          
          iReturn = clsCPClient.fnGetAuthInfo("GENDER")
          sGender= clsCPClient.bstrAuthInfo
'response.write "sGender : " & sGender & "<br/>"          
          iReturn = clsCPClient.fnGetAuthInfo("NATIONALINFO")
          sNationalInfo= clsCPClient.bstrAuthInfo
'response.write "sNationalInfo : " & sNationalInfo & "<br/>"
          iReturn = clsCPClient.fnGetAuthInfo("DI")
          sDupInfo= clsCPClient.bstrAuthInfo
'response.write "sDupInfo : " & sDupInfo & "<br/>"          
          iReturn = clsCPClient.fnGetAuthInfo("CI")
          sConnInfo= clsCPClient.bstrAuthInfo
          
          
          ' 휴대폰 번호
          iReturn = clsCPClient.fnGetAuthInfo("MOBILE_NO")
          sConnInfo= clsCPClient.bstrAuthInfo
		  sMobileNum = sConnInfo
response.write "sConnInfo : " & sMobileNum & "<br/>"
		  
          ' 이통사 정보
          'iReturn = clsCPClient.fnGetAuthInfo("MOBILE_CO")
          'sConnInfo= clsCPClient.bstrAuthInfo
          ' checkplus_success 페이지에서 결과값 null 일 경우, 관련 문의는 관리담당자에게 하시기 바랍니다
                 	
					sRequestNO = sRequestNumber
				        
        IF session("REQ_SEQ") <> sRequestNO THEN
    	    RESPONSE.WRITE "세션값이 다릅니다. 올바른 경로로 접근하시기 바랍니다.<br>"
        END IF
	        
		ELSE
	    RESPONSE.WRITE "요청정보_암호화_오류:" & iRtn & "<br>"
	    ' -1 : 암호화 시스템 에러입니다.
	    ' -4 : 입력 데이터 오류입니다.
	    ' -5 : 복호화 해쉬 오류입니다.
	    ' -6 : 복호화 데이터 오류입니다.
	    ' -9 : 입력 데이터 오류입니다.
      '-12 : 사이트 패스워드 오류입니다.
    END IF
    
	Set clsCPClient = Nothing
%>

<%   
		'******************************** 핸드폰인증 추가 (2016-02-19-YG) ******************************
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
%>


<%
'DIM sSiteCode, sSitePw, sResponseData, sCPRequest
'DIM IPIN_DLL, clsIPINDll
'DIM iRtn, sRtnMsg
'DIM sVNumber, sName, sDupInfo, sAgeCode, sGenderCode, sBirthDate, sNationalInfo, sCPRequestNum

'Response.CharSet="euc-kr"
'Session.codepage="949"
'Response.codepage="949"
'Response.ContentType="text/html;charset=euc-kr"

'sSiteCode	  = "I261"
'sSitePw	  = "38010800"

'sResponseData = Request("enc_data")

'sCPRequest = SESSION("CPREQUEST")

'IPIN_DLL		= "IPIN2Client.Kisinfo"

'SET clsIPINDll	= Server.CreateObject(IPIN_DLL)

'iRtn = clsIPINDll.fnResponse(sSiteCode, sSitePw, sResponseData)

'IF (iRtn = 1) THEN

'		sVNumber = clsIPINDll.bstrVNumber 
'		sName	= clsIPINDll.bstrName		
'		sDupInfo= clsIPINDll.bstrDupInfo
'		sAgeCode= clsIPINDll.bstrAgeCode	
'		sGenderCode= clsIPINDll.bstrGenderCode	 
'		sBirthDate= clsIPINDll.bstrBirthDate		
'		sNationalInfo	= clsIPINDll.bstrNationalInfo	
'		sCPRequestNum	= clsIPINDll.bstrCPRequestNUM
'		
'        sAuthInfo	= clsIPINDll.bstrAuthInfo	
'    	CoInfo1 	= clsIPINDll.bstrCoInfo1
'        sCIUpdate	= clsIPINDll.bstrCIUpdate

'		sRtnMsg = "정상 처리되었습니다."
'END IF

'SET clsIPINDll = NOTHING
	
'		Function Fn_checkXss (CheckString, CheckGubun) 
'			CheckString = trim(CheckString)
'			CheckString = replace(CheckString,"<","&lt;")
'			CheckString = replace(CheckString,">","&gt;")
'			CheckString = replace(CheckString,"""","")  
'			CheckString = replace(CheckString,"'","")   
'			CheckString = replace(CheckString,"(","")
'			CheckString = replace(CheckString,")","")
'			CheckString = replace(CheckString,"#","")
'			CheckString = replace(CheckString,"%","")
'			CheckString = replace(CheckString,";","")
'			CheckString = replace(CheckString,":","")
'			CheckString = replace(CheckString,"-","")      
'			CheckString = replace(CheckString,"`","")
'			CheckString = replace(CheckString,"--","")
'			CheckString = replace(CheckString,"\","")
'			IF CheckGubun <> "encodeData" THEN	
'				CheckString = replace(CheckString,"+","")
'				CheckString = replace(CheckString,"=","")
'				CheckString = replace(CheckString,"/","")
'			END IF	
'			Fn_checkXss = CheckString
'		End Function

%>
		
<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<%
	'Response.Write "<br/>[TEST]<br/>"
	'Response.End
%>


<%    
'Bdate=Mid(sBirthDate,3,6)
'FVNumber=Mid(sVNumber,1,6)
'RVNumber=Mid(sVNumber,7,7)

Bdate=Mid(sBirthDate,3,6)
FVNumber=Bdate
RVNumber=sGender

' 중복체크는 생년월일로 하지 않고 (1) sDupInfo(DI값) (2) 핸드폰 번호를 사용하기로 한다.
'SQL="SELECT * FROM Member WHERE BirthDate like '"&FVNumber&"-"&RVNumber&"%'"
SQL = "SELECT * FROM db_bit.dbo.Member WHERE sDupInfo = '" & sDupInfo & "'"

Set Rs = Dbcon.Execute(SQL)

IF Rs.EOF THEN
	'// 중복이 아니므로, 새로 가입해야 하는 상황
    BirthDate=-1
ELSE
	'// 중복이므로, 가입시키면 안 되는 상황
    BirthDate=Trim(Rs("BirthDate"))
END IF

'***********************************************************************************************************************
'*  작업 : 2016-02-20-YG 
'*  작업내용 : 	기존에는 주민번호 13자리로 중복가입 체크를 하였으나,
'*           	주민번호 수집이 허용 안 되고부터는, 기존에 이 코드는 정상적으로 돌아가지 않았던 것으로 생각됩니다.
'*				저는 다음과 같은 방침을 세워 변경작업에 들어갔습니다.
'*				(1) 동일한 DI값(우리 DB 에서는 dbo.Member 의 sDupInfo) 이 DB 상에 이미 존재하고 있었다면 중복가입 이므로 가입 거절합니다.
'*				(2) 핸드폰 번호가 동일하다면? 역시, 중복가입 이므로 가입 거절합니다.
'***********************************************************************************************************************

' sName 을 못받아오고 있음.
' sAgeCode 가 뭔지 모름. 문의해야??






IF BirthDate=-1 THEN
	'// 중복이 아니므로, 새로 가입해야 하는 상황
	'// sGender 는 남:1, 여:2(아니면 0) -- □. 확인해야.
    IF sGender = 0 or sGender = 2 THEN
		'// 여자임
		sql="insert Member(NameHan,StudResNum,AgeCode,GenderCode,BirthDate,NationalInfo,sDupInfo)"
		sql=sql& " values('"&sName&"','"&Bdate&"-2xxxxxx','"&sAgeCode&"','"&sGenderCode&"','"&FVNumber&"-"&RVNumber&"','"&sNationalInfo&"','"&sDupInfo&"')"

		'// 로깅 추가 : 2018-02-10-YG.
		Call YGLogger("SQL", sql, "/Member/IPIN/member_hp_process.asp (회원가입 - 인증모듈 통과 직후)", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)

		Dbcon.Execute sql
    ELSE
		'// 남자임
		sql="insert Member(NameHan,StudResNum,AgeCode,GenderCode,BirthDate,NationalInfo,sDupInfo)"
		sql=sql& " values('"&sName&"','"&Bdate&"-1xxxxxx','"&sAgeCode&"','"&sGenderCode&"','"&FVNumber&"-"&RVNumber&"','"&sNationalInfo&"','"&sDupInfo&"')"

		'// 로깅 추가 : 2018-02-10-YG.
		Call YGLogger("SQL", sql, "/Member/IPIN/member_hp_process.asp (회원가입 - 인증모듈 통과 직후)", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)

		Dbcon.Execute sql
    END IF
ELSE
	'// 중복이므로(이미 가입된 사람이므로), 가입시키면 안 되는 상황
    'SQL="SELECT * FROM Member WHERE BirthDate='"&BirthDate&"' AND StudID=(SELECT TOP 1 StudID FROM Member WHERE BirthDate='"&BirthDate&"' ORDER BY StudID DESC)"
	SQL="SELECT * FROM Member WHERE sDupInfo='" & sDupInfo & "'"
    IF Rs("LoginID")="" THEN
		'// sDupInfo 는 있으나 LoginID 컬럼이 비어있는(="") 레코드가 있다면 무언가 잘못되었으므로, 회원정보입력 페이지로 보내기로 한다.
    Else
		'// 이미 가입하셨습니다... 를 출력하고 창 닫는 페이지로 이동.
		response.Redirect("/Member/id_pass_search_After03_3.asp?sDupInfo="&sDupInfo&"&sName="&sName)
    END IF
END IF

'// 회원가입 - 회원정보입력 페이지로 이동.
'response.Redirect("/Member/id_pass_search_After03_2.asp?sDupInfo="&sDupInfo&"&sName="&sName)
response.Redirect("/Member/id_pass_search_After03_2_Buffer_hp.asp?sDupInfo="&sDupInfo&"&sName="&escape(sName)&"&sMobileNum="&sMobileNum)

Rs.Close
set Rs = nothing
Dbcon.Close 
set Dbcon = nothing	
%>
