<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->


<%
	
	  '기본 인적 사항
   Studid = TRIM(session("studid"))

   if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("로그인 정보가 없습니다. \n로그인 하신 후 수정해 주세요.", "/member/login.asp?return_url=/member/member_mod.asp")
	response.end
   end if
   
       
    Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db
    
    SelectEngName=Request.Form("user_nameEng_first")&","&Request.Form("user_nameEng_second")'영문이름 
    
    password  =Request.Form("password")     'E-Mail  



	Selectemail  =Request.Form("email")    'E-Mail  
    
    Selecthomepage=request.Form("homepage") '홈페이지 
    
    Selectczipcode=Request.Form("czipcode") '우편번호 
        
    Selectcaddr=Request.Form("caddr")      '집주소   
    
    Selectczipcode2=Request.Form("czipcode2")  '우편번호 
        
    Selectcaddr2=Request.Form("caddr2")      '집주소   
    
    sex=Request.Form("sex") '성별

	bitletter = Request.Form("bitletter") '비트레터 수신여부
   
    SelectHomeTel=Request.Form("telephone1")+"-"+Request.Form("telephone2")+"-"+Request.Form("telephone3") '집전화 
   
    SelectHandPhone=Request.Form("HandPhone1")+"-"+Request.Form("HandPhone2")+"-"+Request.Form("HandPhone3") '핸드폰  
    
    '*******************************Member Update ***************************************     
    sql=" Update Member "
    sql=sql&" Set Password   = '"&password&"',          "&vbcrlf
    sql=sql&"     NameEng	= '"&SelectEngName&"',			"&vbcrlf
    sql=sql&"     sex	= '"&sex&"',			"&vbcrlf
    sql=sql&"     HomePage	= '"&Selecthomepage&"',			"&vbcrlf
    sql=sql&"     Email		= '"&Selectemail&"',			"&vbcrlf
    sql=sql&"     PostNum   = '"&Selectczipcode&"',			"&vbcrlf
    sql=sql&"     Address   = '"&Selectcaddr&"',		    "&vbcrlf
    sql=sql&"     NowPostNum   = '"&Selectczipcode2&"',			"&vbcrlf
    sql=sql&"     NowAddress   = '"&Selectcaddr2&"',		    "&vbcrlf
    sql=sql&"     TelePhone = '"&SelectHomeTel&"',			"&vbcrlf
    sql=sql&"     HandPhone = '"&SelectHandPhone&"',			"&vbcrlf
	sql=sql&"     bitletter = '"&bitletter&"'              "&vbcrlf
    sql=sql&" Where Studid  = "&Studid&"           "&vbcrlf

'	 response.write "sql:"&sql&"<br>"
    Dbcon.Execute(sql)
    sql="DELETE FROM MemberScholarshipBTC Where Studid = "&Studid
'	 response.write "sql:"&sql&"<br>"
    Dbcon.Execute(sql)	   	
		
	  For q=0 to 3
											
			If Request.Form ("DteFr_"& q)=""  then
				exit for
			else
												
					PeriodFr=Request.Form ("DteFr_"& q)+"-"+Request.Form ("DayFr_"& q)							'기간부터
						 
					PeriodEnd=Request.Form ("DteEnd_"& q)+"-"+Request.Form ("DayEnd_"& q)					'기간까지    			     	 

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
'					response.write "strSQL:"&strSQL&"<br>"
			End if               	         
	 Next
	Dbcon.close
	set Dbcon = nothing
'response.end
	
'	Response.Redirect "Core_appform_work.asp?cid=" & AppCourse
	call alertMsgGoURL ("수정되었습니다..", "javascript:history.go(-2);")

%>