<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->

<%
DIM sDupInfo,sName
sDupInfo=REQUEST("sDupInfo")
sDupInfo=REPLACE(sDupInfo," ","+")
sName=REQUEST("sName")
%>
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>

<!-- Mobon Tracker v3.1 [��ȯ] start -->
<script type="text/javascript">
<!--
function mobConv(){
  var cn = new EN();
  cn.setData("uid",  "bit12345");
  cn.setData("ordcode",  "");
  cn.setData("qty", "1"); 		// 1 ?
  cn.setData("price", "1");		// 1 won ?
  cn.setData("pnm", encodeURIComponent(encodeURIComponent("counsel")));
  cn.setSSL(true);
  cn.sendConv();
   }
  //-->
</script>
<script src="https://cdn.megadata.co.kr/js/enliple_min2.js" defer="defer" onload="mobConv()"></script>
<!-- Mobon Tracker v3.1 [��ȯ] end -->

<%
'//SearchIDtxt=Request.Form("username")	
SearchIDtxt= SQLClean( Request.Form("username") )

'response.write("SearchIDtxt : " & SearchIDtxt)
'response.end

Name=Request.Form("name")
Password= Request.Form("password")    
SelectHomeTel=Request.Form("telephone1")+"-"+Request.Form("telephone2")+"-"+Request.Form("telephone3") '����ȭ    
SelectHandPhone=Request.Form("handphone1")+"-"+Request.Form("handphone2")+"-"+Request.Form("handphone3")'�ڵ���  
Zipcode = Request.Form("czipcode2")	'�����ȣ -- AddedByYG : 2016-04-02
Address = Request.Form("caddr2") 	'�ּ� -- AddedByYG : 2016-04-02
       
email= Request.Form("mail1")&"@"&Request.Form("mail2")
bitletter= Request.Form("bitletter")    
job= Request.Form("job") 

if mail_flag="1" then
	mail_flag="yes"
else
	mail_flag="no"
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

  'id �ߺ�üũ	
  SQL="select LoginID from Member Where LoginID='" & SearchIDtxt & "'"

  '// �α� �߰� : 2018-02-09-YG.
  Call YGLogger("SQL", SQL, "/Member/member_ipin_result_ok_old.asp (0:CheckDuplicate)", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
	  
'  response.write "SQL:"&SQL&"<br>"
  Set Rs = Dbcon.Execute(SQL)

	if not Rs.EOF then
		Rs.Close
		set Rs=nothing
		Dbcon.close
		set Dbcon=nothing	
		call alertMsgBack ("�̹� �����ϴ� ���̵��Դϴ�.\n*���̵� �ٽ� Ȯ���� �ּ���.")
		Response.End	
	end if

	'================================================================================
	'*********�������� ���
	'sql="update Member SET NameHan='" & sName & "', LoginID='"&SearchIDtxt&"', Password='"&Password&"', Email='"&email&"', TelePhone='"&SelectHomeTel&"', HandPhone='"&SelectHandPhone&"', bitletter='"&bitletter&"' WHERE StudID=(SELECT TOP 1 StudID FROM Member WHERE sDupInfo='"&sDupInfo&"' )"
	'sql="update Member SET NameHan='" & sName & "', LoginID='"&SearchIDtxt&"', Password='"&Password&"', Email='"&email&"', TelePhone='"&SelectHomeTel&"', HandPhone='"&SelectHandPhone&"', NowPostNum='"&Zipcode&"', NowAddress='"&Address&"', bitletter='"&bitletter&"' WHERE StudID=(SELECT TOP 1 StudID FROM Member WHERE sDupInfo='"&sDupInfo&"' )"
	sql="update Member SET NameHan='" & sName & "', LoginID='"&SearchIDtxt&"', Password='"&Password&"', Email='"&email&"', TelePhone='"&SelectHomeTel&"', HandPhone='"&SelectHandPhone&"', NowPostNum='"&Zipcode&"', NowAddress='"&Address&"', PostNum='"&Zipcode&"', Address='"&Address&"', bitletter='"&bitletter&"' WHERE StudID=(SELECT TOP 1 StudID FROM Member WHERE sDupInfo='"&sDupInfo&"' )"

	'// �α� �߰� : 2017-12-02-YG.
	Call YGLogger("SQL", sql, "/Member/member_ipin_result_ok_old.asp", "-")		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
									
	Dbcon.Execute sql
	
	'Response.Write "<br/>" & SearchIDtxt & "<br/>"
	'Response.end

	SQL="select Studid From Member where LoginID='"&SearchIDtxt&"'"
	Set Rs = Dbcon.Execute(SQL)

	if not(Rs.EOF) then
		session("studid")=TRIM(Rs("studid"))

		Rs.Close 
		set Rs = nothing
		session("userid") = trim(SearchIDtxt)
		session("NameHan") = trim(Name)		
		'//call alertMsgGoURL ("ȸ������ó�� �Ϸ� �Ǿ����ϴ�..", "http://www.bitacademy.com")
		call alertMsgGoURL ("���ԵǾ����ϴ�. �ٽ� �α������ּ���.", "http://www.bitacademy.com")
	else
		call alertMsgGoURL ("�����Դϴ�. �����ڿ��� �����ٶ��ϴ�. (02-3486-3456)", "http://www.bitacademy.com")
	end if

set Rs = nothing

Dbcon.Close 
set Dbcon = nothing			 
%>	

