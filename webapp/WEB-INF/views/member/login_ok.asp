<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!-- #include virtual="/Include/Common_Defend_1709.asp" -->

<%
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글
%>

<%
	DIM BirthDate

	'//2017-11-28-YG : To Prevent SQL Injection attacks.
	'//userid = TRIM(request.form("username"))
	'//password = TRIM(request.form("password"))
	'//return_url = TRIM(request.form("return_url"))
	userid = SQLClean( TRIM(request.form("username")) )
	password = SQLCleanMINIMUM( TRIM(request.form("password")) )
	return_url = SQLCleanURL( TRIM(request.form("return_url")) )
	
	return_url = replace(return_url,"**","&")
	return_IPIN_url = "https://www.bitschool.com/Member/IPIN/member_ipin_update.asp?userid="&userid

	if return_url = "" then
		return_url = "http://www.bitacademy.com"
	end if

	if userid = "" or password = ""  then
		CALL alertMsgBack ("아이디와 패스워드를 다시 확인하여 주세요.")
	End if

	Response.cookies("id") = Request.Form("username")
	'Response.cookies("checkSaveID") = Request.Form("checkSaveID")
	Response.cookies("checkSaveID") = "on"
	Response.cookies("id").Expires=date+365 
	Response.cookies("checkSaveID").Expires=date+365 
	
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	'// 먼저, 휴면계정인지 여부를 체크. Added By YG 2016-04-xx.
	SQL = "SELECT top 1 LoginID FROM db_bit.dbo.MemberSleepingAccount WHERE LoginID = '" & userid & "' AND Password = '" & password & "'"

	'// 로깅 추가 : 2017-12-02-YG.
	Call YGLogger("SQL", SQL, "(login_ok)", "userid:"&userid)		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
									
	Set Rs = Dbcon.Execute(SQL)
	
	IF NOT Rs.EOF THEN
		'// 휴면계정임.
		session("userid") = trim(Rs("LoginID"))
		
		response.Redirect "/Member/login_ActivateSleepingAccount.asp"
		
	ELSE
		'// 휴면계정이 아님.
		session("LoginID") = userid
		
		SQL = "SELECT M.*,  "
		SQL = SQL & " (select COUNT(*) from CourseTermStudent WHERE M.STUDID = STUDID AND CompletStat='수료' AND CourseID in (select CourseID from Course where ExpertID ='전문가')) AS EXPERTCNT"
		SQL = SQL & " FROM Member M"
		SQL = SQL & " WHERE LoginID = '" &userid& "' and Password = '"&password&"'"

		Set Rs = Dbcon.Execute(SQL)

		if Rs.EOF then
			BirthDate=-1
		else
			BirthDate=Trim(Rs("BirthDate"))
		End if

		session("ExpertCnt") = 0

		if BirthDate=-1 then
			CALL alertMsgBack ("로그인에 실패하였습니다.\n\n다시 로그인을 시도해 주세요.\n\n(문의 02-3486-3456)")
		else
			session("studid") = trim(Rs("studid"))
			session("userid") = trim(Rs("LoginID"))
			session("StudResNum") = trim(Rs("StudResNum"))
			session("NameHan") = trim(Rs("NameHan"))
			session("ExpertCnt") = Trim(rs("EXPERTCNT"))
			
			Session.TimeOut = 60
			
			'// 가입일(재동의일) 후 2년 경과한 회원인지. Added By YG 2016-04-18.
			Dim bMoreThanTwoYears
			bMoreThanTwoYears = false
			
			'// (조건1) 가입일로부터 2년 경과함
			IF session("studid")<=48800 THEN			'// 2016/5/9 현재 StudID <= 48800 이면, 가입일이 2년 경과.  
				'// 가입일로부터 2년 경과.

				'// (조건2) 재동의일이 있다면, 재동의일로부터 2년 경과함
				LoginID = session("userid")
				SQL = "SELECT top 1 * FROM db_bit.dbo.MemberReagree WHERE LoginID='"&LoginID&"' AND DATEDIFF(day, ReagreeDate,GETDATE())<=365*2-1 AND AgreeYN='Y' ORDER BY idx DESC"
				Set Rs = Dbcon.Execute(SQL)
				IF NOT Rs.EOF THEN
					'// 'Y' 라고 재동의한 날이 2년 이내에 있는 경우.
					bMoreThanTwoYears = false
				ELSE
					'// 'Y' 라고 재동의한 날이 2년 이내엔 없는 경우.
					bMoreThanTwoYears = true
				END IF
			END IF
			
			'// (조건1 and 조건2)이면 재동의 화면으로 이동.
			IF bMoreThanTwoYears=true THEN
				response.Redirect "http://www.bitacademy.com/Member/login_Reagree.asp"
			END IF
						
			
			if LEN(BirthDate) = 6 then
				'// 아이핀 인증 필요한 회원인 경우.
				response.Redirect return_IPIN_url	' "https://www.bitschool.com/Member/IPIN/member_ipin_update.asp?userid="&아이디

			else
				'// 과거 Logging LOGIN 기록 삭제 - 2016-04-14-YG.
				'// 즉, POLICY : dbo.MemberLogging 에서 LOGIN 기록은 LoginID 별로 1개씩 존재.
				'//LoginID = session("userid")
				'//(Modified 2017-11-28-YG : To prevent SQL Injection attacks)
				LoginID = SQLClean( session("userid") )
				
				SQL = "DELETE FROM db_bit.dbo.MemberLogging WHERE LoginID = '" & LoginID & "' AND Event='LOGIN'"
				Dbcon.Execute(SQL)
				
				'// Logging 기록 - 2016-04-14-YG.
				SQL = "INSERT INTO db_bit.dbo.MemberLogging (LoginID, Event) VALUES ('" & LoginID & "','LOGIN')"
				Dbcon.Execute(SQL)
				
				response.Redirect return_url		' "http://www.bitacademy.com"
				'	response.Redirect nextPage
			End if

		End if			
	END IF
	
Rs.close
Set Rs = nothing
Dbcon.close
Set Dbcon = nothing
%>