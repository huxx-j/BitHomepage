<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->


<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Studid = TRIM(session("Studid"))

'response.write "Studid:"&Studid&"<br>"

if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/Member/login.asp?return_url=/Register/receipts_confirm.asp")
	response.end
end if

	
'	Set INIpay = Server.CreateObject("INItx40.INItx40.1")
	Set INIpay = Server.CreateObject("INItx41.INItx41.1")

	nInstance = INIpay.Initialize("")
	INIpay.SetActionType CLng(nInstance), "SECURE_PAY"

	'�Ʒ� 5���� �����Ұ�
	INIpay.SetField CLng(nInstance), "PGID", 	"IniTechPG_"
	INIpay.SetField CLng(nInstance), "PG_ADDR", 	"203.238.37.3"
	INIpay.SetField CLng(nInstance), "spgip", "203.238.3.10" '���� PG IP (����)  ���� �߰�

	INIpay.SetField CLng(nInstance), "TIMEOUT", 	"30"
	INIpay.SetField CLng(nInstance), "IOCBD_ADDR", 	"203.238.37.3"
	INIpay.SetField CLng(nInstance), "IOCBD_PORT", 	"9200"
	

	INIpay.SetField CLng(nInstance), "ADMIN", "1111" '����: "ADMIN"�� ��ġ�� ���ʽÿ�.  	'�������̵� �����ϴ� �н�����
	INIpay.SetField CLng(nInstance), "mid", request("mid")'�������̵�
	INIpay.SetField CLng(nInstance), "goodName", request("goodname")'��ǰ��
	INIpay.SetField CLng(nInstance), "currency", request("currency")'ȭ�����
	INIpay.SetField CLng(nInstance), "price", request("price")'����
	INIpay.SetField CLng(nInstance), "buyername", request("buyername")'�����ڼ���
	INIpay.SetField CLng(nInstance), "buyertel", request("buyertel")'������ ��ȭ��ȣ
	INIpay.SetField CLng(nInstance), "buyeremail", request("buyeremail")'������ �̸���
			''INIpay.SetField CLng(nInstance), "recvname", request("recvname")	'������ ����
			''INIpay.SetField CLng(nInstance), "recvtel", request("reecvtel")	'������ ��ȭ��ȣ
			''INIpay.SetField CLng(nInstance), "recvaddr", request("recvaddr")	'������ �ּ�
			''INIpay.SetField CLng(nInstance), "recvpostnum", request("recvpostnum")	'������ �����ȣ
			''INIpay.SetField CLng(nInstance), "recvmsg", request("rcvmsg")	'�����ο��� ������ �޽���
	INIpay.SetField CLng(nInstance), "paymethod", request("paymethod")	'���ҹ�� (�÷������� ä��)
	INIpay.SetField CLng(nInstance), "encrypted", request("encrypted")'��ȣȭ�� ���� 1 (�÷������� ä��)
	INIpay.SetField CLng(nInstance), "sessionkey", request("sessionkey")'��ȣȭ�� ���� 2 (�÷������� ä��)
	INIpay.SetField CLng(nInstance), "uid", request("uid")
	INIpay.SetField CLng(nInstance), "sid", request("sid")


'	flag = INIpay.StartAction(CLng(nInstance))

'###############################################################################
'# 5. ���� ��û #
'################
flag = INIpay.StartAction(CLng(nInstance))




'###############################################################################
'# 6. ���� ��� #
'################
Tid = INIpay.GetResult(CLng(nInstance), "tid") '�ŷ���ȣ
ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode") '����ڵ� ("00"�̸� ���Ҽ���)
ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg") '�������
PayMethod = INIpay.GetResult(CLng(nInstance), "paymethod") '���ҹ�� (�Ŵ��� ����)
Price1 = INIpay.GetResult(CLng(nInstance), "price1") 'OK Cashbag ���հ���� �ſ�ī�� ���ұݾ�
Price2 = INIpay.GetResult(CLng(nInstance), "price2") 'OK Cashbag ���հ���� ����Ʈ ���ұݾ�
AuthCode = INIpay.GetResult(CLng(nInstance), "authcode") '�ſ�ī�� ���ι�ȣ
CardQuota = INIpay.GetResult(CLng(nInstance), "cardquota") '�ҺαⰣ
QuotaInterest = Request("quotainterest") '�������Һ� ����("1"�̸� �������Һ�)
CardCode = INIpay.GetResult(CLng(nInstance), "cardcode") '�ſ�ī��� �ڵ� (�Ŵ��� ����)
CardIssuerCode = INIpay.GetResult(CLng(nInstance), "cardissuercode") '�ſ�ī�� �߱޻�(����) �ڵ� (�Ŵ��� ����)
AuthCertain = INIpay.GetResult(CLng(nInstance), "authcertain") '�������� ���࿩�� ("00"�̸� ����)
PGAuthDate = INIpay.GetResult(CLng(nInstance), "pgauthdate") '�̴Ͻý� ���γ�¥
PGAuthTime = INIpay.GetResult(CLng(nInstance), "pgauthtime") '�̴Ͻý� ���νð�
OCBSaveAuthCode = INIpay.GetResult(CLng(nInstance), "ocbsaveauthcode") 'OK Cashbag ���� ���ι�ȣ
OCBUseAuthCode = INIpay.GetResult(CLng(nInstance), "ocbuseauthcode") 'OK Cashbag ��� ���ι�ȣ
OCBAuthDate = INIpay.GetResult(CLng(nInstance), "ocbauthdate") 'OK Cashbag �����Ͻ�
EventFlag = INIpay.GetResult(CLng(nInstance), "eventflag") '���� �̺�Ʈ ���� ����


'response.write ":" & AuthCode & ":"

'###############################################################################
'# 7. ��� ���� Ȯ�� #
'#####################
'���Ұ���� �� �����Ͽ����� �̴Ͻý��� �뺸.
'[����] �� ������ �����Ǹ� ��� �ŷ��� �ڵ���ҵ˴ϴ�.
IF ResultCode = "00" THEN
'	response.write "hahaha1"

	AckResult = INIpay.Ack(CLng(nInstance))
	IF AckResult <> "SUCCESS" THEN '(����)
		'=================================================================
		' ������� �뺸 ������ ��� �� ������ �̴Ͻý����� �ڵ� ��ҵǹǷ�
		' ���Ұ���� �ٽ� �޾ƿɴϴ�(���� -> ����).
		'=================================================================
		ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode")
		ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg")

'		response.write "hahaha2"
	END IF
END IF
	
	'���
	'*** flag = "SUCCESS" �� "���μ���'�� �ǹ��ϴ� ���� �ƴ�
'	IF flag = "SUCCESS" THEN
'		Tid = INIpay.GetResult(CLng(nInstance), "tid") '�ŷ����̵�
'		ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode") '����ڵ� ( '00' : ���μ��� )
'		ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg") '����޽���
'		CardAuthCode = INIpay.GetResult(CLng(nInstance), "cardauthcode") '���ι�ȣ
'	ELSE
'		Tid = ""
'		ResultCode = 01
'		ResultMsg = "SERVER ERROR"
'		CardAuthCode = ""
'	END IF

	INIpay.Destroy CLng(nInstance)
	
'	response.write "hahaha3"

	'Browser�� ������ ������ �� ���� ���
	chk=response.isclientconnected
	IF Not chk THEN
		cancelInstance = INIpay.Initialize("")
		INIpay.SetActionType CLng(cancelInstance), "CANCEL"
		INIpay.SetField CLng(cancelInstance), "mid", request("mid")
		INIpay.SetField CLng(cancelInstance), "tid", TID
		INIpay.SetField CLng(cancelInstance), "msg", "�������"
		INIpay.StartAction(CLng(cancelInstance))
		INIpay.Destroy CLng(cancelInstance)

'		response.write "hahaha4"
'response.write "mid:"&request("mid")&"<br>"
	END IF

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- #include virtual="/localCampus/Include/Meta.asp"-->
<title>��Ʈ����</title>
<!-- #include virtual="/localCampus/Include/ContentStyle.asp"-->
<!-- #include virtual="/localCampus/Include/Script.asp"-->
<script language="JavaScript1.1">
function right(e) 
{  
if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))  
return false;  
else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3)) 
	{  
	alert("��Ʈ���������Դϴ�.");  
	return false;  
	}  
return true;  
}  

function go(fm)
{
	fm.target="_self";
	fm.action="/Register/approval_process.asp";
	fm.submit();
	document.location='/default.asp'
}

function goPage(fm)
{
	fm.target="_self";
	fm.action="/default.asp";
	fm.submit();
}

document.onmousedown=right;  
if (document.layers) window.captureEvents(Event.MOUSEDOWN);  
window.onmousedown=right;  
</script>
</head>
<body>
<form name="inicis" method="post" >
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container_Wrap">
			<div id="Content_Wrap">
				<!-- Content -->
				<div id="Content" class="sub">
					<div class="hGroup">
						<h3>ī�����</h3>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<%
								 if resultcode<>"00" then
							%>
							<table class="table_col_type1">
								<tr> 
									<td colspan="2">���縦 ���� ���Ͽ����ϴ�.</td>
								</tr>
								<tr>
									<th scope="row" class="tit">�̰��� ����</th>
									<td class="l"><%=resultcode%>:<%=ResultMsg%></td>
								</tr>
								<tr>
									<td colspan="2">�̰��� ������ Ȯ���Ͻð� �ٽ� �õ��� �ֽñ�ٶ��ϴ�.</td>
								</tr>
							</table>
							<%
								sql="Update Application Set CardReceiptStat='����',CardReceiptDate='"&date()&"',CardReceiptAmount="&Request("price")  'X->����
								sql=sql&" Where AppliKind='"& request("applikind") &"' and Yearmonth='"& request("yearmonth") &"'"
								sql=sql&" and Studid="& Studid
								'response.write "���н�:"&sql&"<br>"
								Dbcon.Execute(sql)                          										
								else
							%>
							<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#f7f7f7">
								<tr> 
									<td align="center" colspan="3"> 
										<p>&nbsp;</p>
										<p><b>���簡 �Ǿ����ϴ�</b></p>
										<table width="75%" border="1" cellpadding="0" cellspacing="0" bgcolor="white" bordercolor="white" bordercolorlight="#AAAAAA">
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">�������</div>
												</td>
												<td width="73%"><%=ResultMsg%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">���ι�ȣ</div>
												</td>
												<td width="73%"><%=AuthCode%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">��û����</div>
												</td>
												<td width="73%"><%=request("goodname")%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">����ݾ�</div>
												</td>
												<td width="73%"><%=request("price")%></td>
											</tr>
										</table>
										<p>&nbsp;</p><br>
									</td>
								</tr>
							</table>
							<%
								IF chk THEN '�������� �������� üũ(������ ��� ���� ��ҵ�)
									sql="Update Application Set CardReceiptStat='����',CardReceiptAmount="&request("price") &", CardReceiptDate='"& date &"'" 'Y->����
									
								else 
									sql="Update Application Set CardReceiptStat='����',CardReceiptAmount="&request("price") &", CardReceiptDate='"& date &"'"  'Y->����
									
								end if
								
									sql=sql&" Where AppliKind='"& request("applikind") &"' and Yearmonth='"& request("yearmonth") &"'"
									sql=sql&" and Studid="& Studid
									'response.write "sql2:"&sql&"<br>"
									Dbcon.Execute(sql)


								' ���� ������=======================================================================
								Dim strContents
								strContents=""
								
								Set objMail = Server.CreateObject("CDONTS.NewMail")
								objMail.From="card@bit.co.kr"  ' �ڽ��� E-mail �ּҸ� ������
								objMail.To=Request("buyeremail")   ' �޴��̵� �ڽ��� E-mail �ּҸ� ������
								objMail.Subject="[��Ʈ��������]ī�����Ǿ����ϴ�."    '�̰� �����Դϴ�. 
								strContents=session("NameHan") &"�� ���� ��Ʈ���������� ���¸� ��û�� �ּż� �����մϴ�.<br><br>��û������ ������ �����ϴ�<br>"
								strContents=strContents& "<br><br>���� ��û ����<br>"
								strContents=strContents& "<br>��û��: "& date &"<br>"
								strContents=strContents& "<br>��û ����: " & request("goodname") &"<br>"
								strContents=strContents& "<br>���� �ݾ�: " & request("price") & "<br>"
								if chk=true then
									strContents=strContents& "<br>���ο���: �� �� <br>"								
								else
									strContents=strContents& "<br>���ο���: �� �� <br>"								
								end if
								strContents=strContents& "<br><br>���� ������ �� �������ͷ� �����ֽʽÿ�(����ó:Tel 02-3486-3456)"
								objMail.BodyFormat= 0
								objMail.MailFormat= 0								
								objMail.Body=strContents
								objMail.importance=0
								objMail.Send
								Set objMail = nothing
								'=======================================================================									
								end if
							%>
							<table class="table_col_type2">
                               <tr>
                                 <td><a href="/register/test_result.asp" target="_self">[ Ȯ�� ]</a></td>
                               </tr>
                               <tr>
                                 <td>������ ������ ���� ó���˴ϴ�.<br> ���ǻ����� �������ͷ� �����ּ���(02-34863456)</td>
                               </tr>
                           </table>
						</div>
						<!-- //con_wrap -->
					</section>
					<a href="#this" class="moveTop">Top</a>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</form>
</body>
</html>
<%
Dbcon.close
Set Dbcon = nothing
%>