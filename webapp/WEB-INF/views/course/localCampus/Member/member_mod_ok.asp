<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->


<%
	
	  '�⺻ ���� ����
   Studid = TRIM(session("studid"))

   if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�α��� �Ͻ� �� ������ �ּ���.", "/member/login.asp?return_url=/member/member_mod.asp")
	response.end
   end if
   
       
    Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db
    
    SelectEngName=Request.Form("user_nameEng_first")&","&Request.Form("user_nameEng_second")'�����̸� 
    
    password  =Request.Form("password")     'E-Mail  



	Selectemail  =Request.Form("email")    'E-Mail  
    
    Selecthomepage=request.Form("homepage") 'Ȩ������ 
    
    Selectczipcode=Request.Form("czipcode") '�����ȣ 
        
    Selectcaddr=Request.Form("caddr")      '���ּ�   
    
    Selectczipcode2=Request.Form("czipcode2")  '�����ȣ 
        
    Selectcaddr2=Request.Form("caddr2")      '���ּ�   
    
    sex=Request.Form("sex") '����

	bitletter = Request.Form("bitletter") '��Ʈ���� ���ſ���
   
    SelectHomeTel=Request.Form("telephone1")+"-"+Request.Form("telephone2")+"-"+Request.Form("telephone3") '����ȭ 
   
    SelectHandPhone=Request.Form("HandPhone1")+"-"+Request.Form("HandPhone2")+"-"+Request.Form("HandPhone3") '�ڵ���  
    
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
												
					PeriodFr=Request.Form ("DteFr_"& q)+"-"+Request.Form ("DayFr_"& q)							'�Ⱓ����
						 
					PeriodEnd=Request.Form ("DteEnd_"& q)+"-"+Request.Form ("DayEnd_"& q)					'�Ⱓ����    			     	 

					HighSchool= Request.Form ("School_"& q)+Request.Form("schoolclassify_"&q)
	 
					strSQL="Insert MemberScholarshipBTC "
					strSQL=strSQL&"(StudID,Num,PeriodFr,PeriodTo,School,Location,Degree,Major,SubMajor,Stat)" & vbcrlf 
					strSQL=strSQL&" Values ("& StudID &",										  "& vbcrlf 'ȸ��������ȣ
					strSQL=strSQL&"         "& 1+q &",		         			              "& vbcrlf 'Num
					strSQL=strSQL&"         '"& PeriodFr &"',                                  "& vbcrlf '�Ⱓ����
					strSQL=strSQL&"         '"& PeriodEnd &"',                                 "& vbcrlf '�Ⱓ����
					strSQL=strSQL&"         '"& HighSchool &"',                               "& vbcrlf '�б�
					strSQL=strSQL&"         '"& Request("SchLocation_"& q) &"',            "& vbcrlf '������
					strSQL=strSQL&"         '"& Request("SchDegree_"& q) &"',              "& vbcrlf '���
					strSQL=strSQL&"         '"& Request("SchDepartMent_"& q) &"',          "& vbcrlf '����
					strSQL=strSQL&"         '"& Request("SchSubDepartMent_"& q) &"',       "& vbcrlf '������
					strSQL=strSQL&"         '"& Request("Bigo_"& q) &"')       "& vbcrlf '���

					Dbcon.execute(strSQL)
'					response.write "strSQL:"&strSQL&"<br>"
			End if               	         
	 Next
	Dbcon.close
	set Dbcon = nothing
'response.end
	
'	Response.Redirect "Core_appform_work.asp?cid=" & AppCourse
	call alertMsgGoURL ("�����Ǿ����ϴ�..", "javascript:history.go(-2);")

%>