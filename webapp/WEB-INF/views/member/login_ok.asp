<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!-- #include virtual="/Include/Common_Defend_1709.asp" -->

<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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
		CALL alertMsgBack ("���̵�� �н����带 �ٽ� Ȯ���Ͽ� �ּ���.")
	End if

	Response.cookies("id") = Request.Form("username")
	'Response.cookies("checkSaveID") = Request.Form("checkSaveID")
	Response.cookies("checkSaveID") = "on"
	Response.cookies("id").Expires=date+365 
	Response.cookies("checkSaveID").Expires=date+365 
	
	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	'// ����, �޸�������� ���θ� üũ. Added By YG 2016-04-xx.
	SQL = "SELECT top 1 LoginID FROM db_bit.dbo.MemberSleepingAccount WHERE LoginID = '" & userid & "' AND Password = '" & password & "'"

	'// �α� �߰� : 2017-12-02-YG.
	Call YGLogger("SQL", SQL, "(login_ok)", "userid:"&userid)		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
									
	Set Rs = Dbcon.Execute(SQL)
	
	IF NOT Rs.EOF THEN
		'// �޸������.
		session("userid") = trim(Rs("LoginID"))
		
		response.Redirect "/Member/login_ActivateSleepingAccount.asp"
		
	ELSE
		'// �޸������ �ƴ�.
		session("LoginID") = userid
		
		SQL = "SELECT M.*,  "
		SQL = SQL & " (select COUNT(*) from CourseTermStudent WHERE M.STUDID = STUDID AND CompletStat='����' AND CourseID in (select CourseID from Course where ExpertID ='������')) AS EXPERTCNT"
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
			CALL alertMsgBack ("�α��ο� �����Ͽ����ϴ�.\n\n�ٽ� �α����� �õ��� �ּ���.\n\n(���� 02-3486-3456)")
		else
			session("studid") = trim(Rs("studid"))
			session("userid") = trim(Rs("LoginID"))
			session("StudResNum") = trim(Rs("StudResNum"))
			session("NameHan") = trim(Rs("NameHan"))
			session("ExpertCnt") = Trim(rs("EXPERTCNT"))
			
			Session.TimeOut = 60
			
			'// ������(�絿����) �� 2�� ����� ȸ������. Added By YG 2016-04-18.
			Dim bMoreThanTwoYears
			bMoreThanTwoYears = false
			
			'// (����1) �����Ϸκ��� 2�� �����
			IF session("studid")<=48800 THEN			'// 2016/5/9 ���� StudID <= 48800 �̸�, �������� 2�� ���.  
				'// �����Ϸκ��� 2�� ���.

				'// (����2) �絿������ �ִٸ�, �絿���Ϸκ��� 2�� �����
				LoginID = session("userid")
				SQL = "SELECT top 1 * FROM db_bit.dbo.MemberReagree WHERE LoginID='"&LoginID&"' AND DATEDIFF(day, ReagreeDate,GETDATE())<=365*2-1 AND AgreeYN='Y' ORDER BY idx DESC"
				Set Rs = Dbcon.Execute(SQL)
				IF NOT Rs.EOF THEN
					'// 'Y' ��� �絿���� ���� 2�� �̳��� �ִ� ���.
					bMoreThanTwoYears = false
				ELSE
					'// 'Y' ��� �絿���� ���� 2�� �̳��� ���� ���.
					bMoreThanTwoYears = true
				END IF
			END IF
			
			'// (����1 and ����2)�̸� �絿�� ȭ������ �̵�.
			IF bMoreThanTwoYears=true THEN
				response.Redirect "http://www.bitacademy.com/Member/login_Reagree.asp"
			END IF
						
			
			if LEN(BirthDate) = 6 then
				'// ������ ���� �ʿ��� ȸ���� ���.
				response.Redirect return_IPIN_url	' "https://www.bitschool.com/Member/IPIN/member_ipin_update.asp?userid="&���̵�

			else
				'// ���� Logging LOGIN ��� ���� - 2016-04-14-YG.
				'// ��, POLICY : dbo.MemberLogging ���� LOGIN ����� LoginID ���� 1���� ����.
				'//LoginID = session("userid")
				'//(Modified 2017-11-28-YG : To prevent SQL Injection attacks)
				LoginID = SQLClean( session("userid") )
				
				SQL = "DELETE FROM db_bit.dbo.MemberLogging WHERE LoginID = '" & LoginID & "' AND Event='LOGIN'"
				Dbcon.Execute(SQL)
				
				'// Logging ��� - 2016-04-14-YG.
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