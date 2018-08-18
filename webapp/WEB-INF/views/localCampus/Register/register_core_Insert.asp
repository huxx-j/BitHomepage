<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
	
	  '기본 인적 사항
   Studid = TRIM(session("studid"))

   if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("로그인 정보가 없습니다. \n로그인 하신 후 다시 지원해 주세요.", "/member/login.asp?return_url=/register/register_core.asp")
	response.end
   end if
   
       
    Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db


	' 중복 지원을 확인한다.
	Set RS = Dbcon.Execute("Select CourseID, SelectDateTime From Application Where CourseID ='" & trim(Request.Form("select1")) & "' and studid = " & Studid)
	if RS.EOF or RS.BOF then
	else
		Response.Write "<script language='javascript'>alert('이미 지원하셨습니다.');location.href='register_apply.asp'</script>"
		Response.End
	end if
	
	Set RS = Dbcon.Execute("Select CourseID, SelectDateTime From Application Where SelectDateTime ='" & trim(Request.Form("select3")) & "' and studid = " & Studid)
	if RS.EOF or RS.BOF then
	else
		Response.Write "<script language='javascript'>alert('개강일이 중복됩니다.');location.href='register_apply.asp'</script>"
		Response.End
	end if
	
    Studid=TRIM(session("studid"))
    
    SelectEngName=Request.Form("user_nameEng_first")&","&Request.Form("user_nameEng_second") '영문이름 
    
    Selectemail  =Request.Form("email")     'E-Mail  
    
    Selecthomepage=request.Form("homepage")'홈페이지 
    
    Selectczipcode=Request.Form("czipcode")'우편번호 
        
    Selectcaddr=Request.Form("caddr")      '집주소   
    
    Selectczipcode2=Request.Form("czipcode2")'우편번호 
        
    Selectcaddr2=Request.Form("caddr2")      '집주소   
    
    sex=Request.Form("sex") '성별

	bitletter = Request.Form("bitletter") '비트레터 수신여부
   
    SelectHomeTel=Request.Form("HomeTel1")+"-"+Request.Form("HomeTel2")+"-"+Request.Form("HomeTel3") '집전화 
   
    SelectHandPhone=Request.Form("HandPhone1")+"-"+Request.Form("HandPhone2")+"-"+Request.Form("HandPhone3")'핸드폰  
    
    SchCnt=Request.Form("schcnt")
    edcnt=Request.Form("edcnt")
    
   '*******************************Member Update ***************************************     
    'sql=" Update Member "
    'sql=sql&" Set NameEng   = '"&SelectEngName&"',          "&vbcrlf
    'sql=sql&"     HomePage	= '"&Selecthomepage&"',			"&vbcrlf
    'sql=sql&"     Email		= '"&Selectemail&"',			"&vbcrlf
    'sql=sql&"     sex       = '"&sex&"',                    "&vbcrlf
	'sql=sql&"     bitletter = '"&bitletter&"',              "&vbcrlf
    'sql=sql&"     PostNum   = '"&Selectczipcode&"',			"&vbcrlf

    'sql=sql&"     Address   = '"&Selectcaddr&"',		    "&vbcrlf
    'sql=sql&"     NowPostNum   = '"&Selectczipcode2&"',			"&vbcrlf
    'sql=sql&"     NowAddress   = '"&Selectcaddr2&"',		    "&vbcrlf
    'sql=sql&"     TelePhone = '"&SelectHomeTel&"',			"&vbcrlf
    'sql=sql&"     HandPhone = '"&SelectHandPhone&"'			"&vbcrlf
    'sql=sql&" Where Studid  = "&Studid&"           "&vbcrlf
 
    'Dbcon.Execute(sql)
	
   'StudID=TRIM(session("studid"))
	  
   AppCourse=trim(Request.Form("select1"))		'지원과정
   AppType=Request.Form("select2")				'지원종류
   Selectdate=trim(Request.Form("select3"))	    '개강날짜
'   AppDate=date						        '전형일시
   AppDate = Request.Cookies("selectDate")
   HopeExpert=Request.Form("hope")				'전문가지원희망여부   

   Set RS = Dbcon.Execute("Select ExpertID From Course Where CourseID ='" & AppCourse & "'")
   ExpertID = RS("ExpertID")

      
'   ----------지원종류가 재직자환급지원인경우 회사정보가 정확한지  먼저 확인-----------
   
'	if AppType<>"일반지원" and AppType<>"" then
'		sql="Select Studid From MemberCareerBTC Where Studid="&Studid
'		sql=sql &" and ServiceStat=1 and CompSeqNum is not null and ComItem is not null and ComCondition is not null and  OnerName is not null"
		
'		oRs.Open sql,oConn,1
		
'		if oRs.EOF then%>
		<Script language=javascript>
		<!--
//			alert("재직자환급지원을 하실경우 회사정보의 필수항목을 입력하셔야 합니다.");
//			location.href="SecWorkApp_Exi.asp"
		//-->
		</Script>
		
		<%
'		ors.Close
'		set ors=nothing
'		oConn.close
'		set oConn=nothing
'		Response.End	
'		end if		
'		
'		oRs.Close
'	end if
%>
 <%
   
   '-----------------------------------------------------------------------------------------------
   str=left(date,4)
   str1=left(TRIM(session("StudResNum")),2)
   str2=str-str1
   age=right(str2,2)
   
 	dim str
	'YYCurrent=date 
	'Application 에 입력하는 sql

   
	SQL="select YearMonth,StudID,SelectResult,ApplicationDATE,applikind,courseid from Application where AppliKind='" & ExpertID & "'and YearMonth='"&date&"' and Studid="&studid

'	response.write "SQL:"&SQL&"<br>"
'	response.end
	Set Rs = Dbcon.Execute(SQL)
	
  ' 	if oRS.EOF then
	strSQL="insert Application "
	strSQL=strSQL &"(YearMonth,StudID,age,ApplicationDate,Courseid,AppliType,AppliKind,SelectStat,SelectDateTime,AppFrom,AppFromFlag)" 
	strSQL=strSQL&"values ('" & date	& "',                       "   '지원년월 
	strSQL=strSQL&"         " & StudID		& ",                    "	'학생고유번호 
	strSQL=strSQL&"         " & age			& ",                    "    '나이
	strSQL=strSQL&"        '" & date	& "',                       "	'지원일자 
	strSQL=strSQL&"        '" & AppCourse & "',                     "    '지원과정 
	strSQL=strSQL&"        '" & AppType		& "','" & ExpertID & "','1',      "	'전형종류
	strSQL=strSQL&"        '" & Selectdate & "', 0, 0)                          "    '전형일자 	
	
	Dbcon.execute(strSQL)
	
	strsql = "UPDATE Member Set recentdte = '" & date & "' WHERE StudID = " & StudID
'	strsql = strsql & " HopeExpert='"&HopeExpert&"' WHERE StudID = " & StudID

	Dbcon.Execute(strsql)
  '*************************************학 력 등 록 정 보**********************************  
  
  strSQL="Delete From MemberScholarshipBTC where studid="&Studid
  Dbcon.execute(strSQL)
    
  For q=0 to 3
   			    			   			
  		If Request.Form ("DteFr_"& q)=""  then
  			exit for
  		else
    			           			        
  		 		PeriodFr=Request.Form ("DteFr_"& q)+"-"+Request.Form ("DayFr_"& q)							'기간부터
					 
				PeriodEnd=Request.Form ("DteEnd_"& q)+"-"+Request.Form ("DayEnd_"& q)						'기간까지    			     	 

 		        HighSchool= Request.Form ("School_"& q)+Request.Form("schoolclassify_"&q)
 
				strSQL="Insert MemberScholarshipBTC "
				strSQL=strSQL&"(StudID,Num,PeriodFr,PeriodTo,School,Location,Degree,Major,SubMajor,Stat)" & vbcrlf 
				strSQL=strSQL&" Values ("& StudID &",										  "& vbcrlf '회원고유번호
				strSQL=strSQL&"         "& 1+q &",		         			              "& vbcrlf 'Num
				strSQL=strSQL&"         '"& PeriodFr &"',                                  "& vbcrlf '기간부터
				strSQL=strSQL&"         '"& PeriodEnd &"',                                 "& vbcrlf '기간까지
			    strSQL=strSQL&"         '"& HighSchool &"',                               "& vbcrlf '학교
				strSQL=strSQL&"         '"& Request("SchLocation_"& q) &"',            "& vbcrlf '소재지
				strSQL=strSQL&"         '"& Request("SchDegree_"& q) &"',              "& vbcrlf '등급
				strSQL=strSQL&"         '"& Request("SchDepartMent_"& q) &"',          "& vbcrlf '전공
				strSQL=strSQL&"         '"& Request("SchSubDepartMent_"& q) &"',       "& vbcrlf '분전공
				strSQL=strSQL&"         '"& Request("Bigo_"& q) &"')       "& vbcrlf '비고

				Dbcon.execute(strSQL)
        End if               	         
 Next
  '***********************************************************************

	sql="Update SelectDateTable					     "&vbcrlf
	sql=sql&"   Set   S_Current = S_Current + 1      "&vbcrlf
	sql=sql&"   Where SelectDate ='"&AppCourse&"' and ExpertID='" & ExpertID & "'"&vbcrlf
  
	Dbcon.execute(sql)
	Rs.Close
	Dbcon.close
	set Dbcon = nothing
	
'	Response.Redirect "Core_appform_work.asp?cid=" & AppCourse
	call alertMsgGoURL ("지원되었습니다..", "/localCampus/Register/register_result.asp")

%>