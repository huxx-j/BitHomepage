<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
	
	  '�⺻ ���� ����
   Studid = TRIM(session("studid"))

   if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�α��� �Ͻ� �� �ٽ� ������ �ּ���.", "/member/login.asp?return_url=/register/register_core.asp")
	response.end
   end if
   
       
    Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db


	' �ߺ� ������ Ȯ���Ѵ�.
	Set RS = Dbcon.Execute("Select CourseID, SelectDateTime From Application Where CourseID ='" & trim(Request.Form("select1")) & "' and studid = " & Studid)
	if RS.EOF or RS.BOF then
	else
		Response.Write "<script language='javascript'>alert('�̹� �����ϼ̽��ϴ�.');location.href='register_apply.asp'</script>"
		Response.End
	end if
	
	Set RS = Dbcon.Execute("Select CourseID, SelectDateTime From Application Where SelectDateTime ='" & trim(Request.Form("select3")) & "' and studid = " & Studid)
	if RS.EOF or RS.BOF then
	else
		Response.Write "<script language='javascript'>alert('�������� �ߺ��˴ϴ�.');location.href='register_apply.asp'</script>"
		Response.End
	end if
	
    Studid=TRIM(session("studid"))
    
    SelectEngName=Request.Form("user_nameEng_first")&","&Request.Form("user_nameEng_second") '�����̸� 
    
    Selectemail  =Request.Form("email")     'E-Mail  
    
    Selecthomepage=request.Form("homepage")'Ȩ������ 
    
    Selectczipcode=Request.Form("czipcode")'�����ȣ 
        
    Selectcaddr=Request.Form("caddr")      '���ּ�   
    
    Selectczipcode2=Request.Form("czipcode2")'�����ȣ 
        
    Selectcaddr2=Request.Form("caddr2")      '���ּ�   
    
    sex=Request.Form("sex") '����

	bitletter = Request.Form("bitletter") '��Ʈ���� ���ſ���
   
    SelectHomeTel=Request.Form("HomeTel1")+"-"+Request.Form("HomeTel2")+"-"+Request.Form("HomeTel3") '����ȭ 
   
    SelectHandPhone=Request.Form("HandPhone1")+"-"+Request.Form("HandPhone2")+"-"+Request.Form("HandPhone3")'�ڵ���  
    
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
	  
   AppCourse=trim(Request.Form("select1"))		'��������
   AppType=Request.Form("select2")				'��������
   Selectdate=trim(Request.Form("select3"))	    '������¥
'   AppDate=date						        '�����Ͻ�
   AppDate = Request.Cookies("selectDate")
   HopeExpert=Request.Form("hope")				'�����������������   

   Set RS = Dbcon.Execute("Select ExpertID From Course Where CourseID ='" & AppCourse & "'")
   ExpertID = RS("ExpertID")

      
'   ----------���������� ������ȯ�������ΰ�� ȸ�������� ��Ȯ����  ���� Ȯ��-----------
   
'	if AppType<>"�Ϲ�����" and AppType<>"" then
'		sql="Select Studid From MemberCareerBTC Where Studid="&Studid
'		sql=sql &" and ServiceStat=1 and CompSeqNum is not null and ComItem is not null and ComCondition is not null and  OnerName is not null"
		
'		oRs.Open sql,oConn,1
		
'		if oRs.EOF then%>
		<Script language=javascript>
		<!--
//			alert("������ȯ�������� �Ͻǰ�� ȸ�������� �ʼ��׸��� �Է��ϼž� �մϴ�.");
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
	'Application �� �Է��ϴ� sql

   
	SQL="select YearMonth,StudID,SelectResult,ApplicationDATE,applikind,courseid from Application where AppliKind='" & ExpertID & "'and YearMonth='"&date&"' and Studid="&studid

'	response.write "SQL:"&SQL&"<br>"
'	response.end
	Set Rs = Dbcon.Execute(SQL)
	
  ' 	if oRS.EOF then
	strSQL="insert Application "
	strSQL=strSQL &"(YearMonth,StudID,age,ApplicationDate,Courseid,AppliType,AppliKind,SelectStat,SelectDateTime,AppFrom,AppFromFlag)" 
	strSQL=strSQL&"values ('" & date	& "',                       "   '������� 
	strSQL=strSQL&"         " & StudID		& ",                    "	'�л�������ȣ 
	strSQL=strSQL&"         " & age			& ",                    "    '����
	strSQL=strSQL&"        '" & date	& "',                       "	'�������� 
	strSQL=strSQL&"        '" & AppCourse & "',                     "    '�������� 
	strSQL=strSQL&"        '" & AppType		& "','" & ExpertID & "','1',      "	'��������
	strSQL=strSQL&"        '" & Selectdate & "', 0, 0)                          "    '�������� 	
	
	Dbcon.execute(strSQL)
	
	strsql = "UPDATE Member Set recentdte = '" & date & "' WHERE StudID = " & StudID
'	strsql = strsql & " HopeExpert='"&HopeExpert&"' WHERE StudID = " & StudID

	Dbcon.Execute(strsql)
  '*************************************�� �� �� �� �� ��**********************************  
  
  strSQL="Delete From MemberScholarshipBTC where studid="&Studid
  Dbcon.execute(strSQL)
    
  For q=0 to 3
   			    			   			
  		If Request.Form ("DteFr_"& q)=""  then
  			exit for
  		else
    			           			        
  		 		PeriodFr=Request.Form ("DteFr_"& q)+"-"+Request.Form ("DayFr_"& q)							'�Ⱓ����
					 
				PeriodEnd=Request.Form ("DteEnd_"& q)+"-"+Request.Form ("DayEnd_"& q)						'�Ⱓ����    			     	 

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
	call alertMsgGoURL ("�����Ǿ����ϴ�..", "/localCampus/Register/register_result.asp")

%>