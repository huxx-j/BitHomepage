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
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/Member/login.asp?return_url=/Register/receipts_confirm.asp")
	response.end
end if

	
'	Set INIpay = Server.CreateObject("INItx40.INItx40.1")
	Set INIpay = Server.CreateObject("INItx41.INItx41.1")

	nInstance = INIpay.Initialize("")
	INIpay.SetActionType CLng(nInstance), "SECURE_PAY"

	'아래 5줄은 수정불가
	INIpay.SetField CLng(nInstance), "PGID", 	"IniTechPG_"
	INIpay.SetField CLng(nInstance), "PG_ADDR", 	"203.238.37.3"
	INIpay.SetField CLng(nInstance), "spgip", "203.238.3.10" '예비 PG IP (고정)  새로 추가

	INIpay.SetField CLng(nInstance), "TIMEOUT", 	"30"
	INIpay.SetField CLng(nInstance), "IOCBD_ADDR", 	"203.238.37.3"
	INIpay.SetField CLng(nInstance), "IOCBD_PORT", 	"9200"
	

	INIpay.SetField CLng(nInstance), "ADMIN", "1111" '주의: "ADMIN"은 고치지 마십시오.  	'상점아이디에 상응하는 패스워드
	INIpay.SetField CLng(nInstance), "mid", request("mid")'상점아이디
	INIpay.SetField CLng(nInstance), "goodName", request("goodname")'상품명
	INIpay.SetField CLng(nInstance), "currency", request("currency")'화폐단위
	INIpay.SetField CLng(nInstance), "price", request("price")'가격
	INIpay.SetField CLng(nInstance), "buyername", request("buyername")'구매자성명
	INIpay.SetField CLng(nInstance), "buyertel", request("buyertel")'구매자 전화번호
	INIpay.SetField CLng(nInstance), "buyeremail", request("buyeremail")'구매자 이메일
			''INIpay.SetField CLng(nInstance), "recvname", request("recvname")	'수취인 성명
			''INIpay.SetField CLng(nInstance), "recvtel", request("reecvtel")	'수취인 전화번호
			''INIpay.SetField CLng(nInstance), "recvaddr", request("recvaddr")	'수취인 주소
			''INIpay.SetField CLng(nInstance), "recvpostnum", request("recvpostnum")	'수취인 우편번호
			''INIpay.SetField CLng(nInstance), "recvmsg", request("rcvmsg")	'수취인에게 전달할 메시지
	INIpay.SetField CLng(nInstance), "paymethod", request("paymethod")	'지불방법 (플러그인이 채움)
	INIpay.SetField CLng(nInstance), "encrypted", request("encrypted")'암호화된 정보 1 (플러그인이 채움)
	INIpay.SetField CLng(nInstance), "sessionkey", request("sessionkey")'암호화된 정보 2 (플러그인이 채움)
	INIpay.SetField CLng(nInstance), "uid", request("uid")
	INIpay.SetField CLng(nInstance), "sid", request("sid")


'	flag = INIpay.StartAction(CLng(nInstance))

'###############################################################################
'# 5. 지불 요청 #
'################
flag = INIpay.StartAction(CLng(nInstance))




'###############################################################################
'# 6. 지불 결과 #
'################
Tid = INIpay.GetResult(CLng(nInstance), "tid") '거래번호
ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode") '결과코드 ("00"이면 지불성공)
ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg") '결과내용
PayMethod = INIpay.GetResult(CLng(nInstance), "paymethod") '지불방법 (매뉴얼 참조)
Price1 = INIpay.GetResult(CLng(nInstance), "price1") 'OK Cashbag 복합결재시 신용카드 지불금액
Price2 = INIpay.GetResult(CLng(nInstance), "price2") 'OK Cashbag 복합결재시 포인트 지불금액
AuthCode = INIpay.GetResult(CLng(nInstance), "authcode") '신용카드 승인번호
CardQuota = INIpay.GetResult(CLng(nInstance), "cardquota") '할부기간
QuotaInterest = Request("quotainterest") '무이자할부 여부("1"이면 무이자할부)
CardCode = INIpay.GetResult(CLng(nInstance), "cardcode") '신용카드사 코드 (매뉴얼 참조)
CardIssuerCode = INIpay.GetResult(CLng(nInstance), "cardissuercode") '신용카드 발급사(은행) 코드 (매뉴얼 참조)
AuthCertain = INIpay.GetResult(CLng(nInstance), "authcertain") '본인인증 수행여부 ("00"이면 수행)
PGAuthDate = INIpay.GetResult(CLng(nInstance), "pgauthdate") '이니시스 승인날짜
PGAuthTime = INIpay.GetResult(CLng(nInstance), "pgauthtime") '이니시스 승인시각
OCBSaveAuthCode = INIpay.GetResult(CLng(nInstance), "ocbsaveauthcode") 'OK Cashbag 적립 승인번호
OCBUseAuthCode = INIpay.GetResult(CLng(nInstance), "ocbuseauthcode") 'OK Cashbag 사용 승인번호
OCBAuthDate = INIpay.GetResult(CLng(nInstance), "ocbauthdate") 'OK Cashbag 승인일시
EventFlag = INIpay.GetResult(CLng(nInstance), "eventflag") '각종 이벤트 적용 여부


'response.write ":" & AuthCode & ":"

'###############################################################################
'# 7. 결과 수신 확인 #
'#####################
'지불결과를 잘 수신하였음을 이니시스에 통보.
'[주의] 이 과정이 누락되면 모든 거래가 자동취소됩니다.
IF ResultCode = "00" THEN
'	response.write "hahaha1"

	AckResult = INIpay.Ack(CLng(nInstance))
	IF AckResult <> "SUCCESS" THEN '(실패)
		'=================================================================
		' 정상수신 통보 실패인 경우 이 승인은 이니시스에서 자동 취소되므로
		' 지불결과를 다시 받아옵니다(성공 -> 실패).
		'=================================================================
		ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode")
		ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg")

'		response.write "hahaha2"
	END IF
END IF
	
	'결과
	'*** flag = "SUCCESS" 가 "승인성공'을 의미하는 것이 아님
'	IF flag = "SUCCESS" THEN
'		Tid = INIpay.GetResult(CLng(nInstance), "tid") '거래아이디
'		ResultCode = INIpay.GetResult(CLng(nInstance), "resultcode") '결과코드 ( '00' : 승인성공 )
'		ResultMsg = INIpay.GetResult(CLng(nInstance), "resultmsg") '결과메시지
'		CardAuthCode = INIpay.GetResult(CLng(nInstance), "cardauthcode") '승인번호
'	ELSE
'		Tid = ""
'		ResultCode = 01
'		ResultMsg = "SERVER ERROR"
'		CardAuthCode = ""
'	END IF

	INIpay.Destroy CLng(nInstance)
	
'	response.write "hahaha3"

	'Browser의 연결이 끊겼을 때 승인 취소
	chk=response.isclientconnected
	IF Not chk THEN
		cancelInstance = INIpay.Initialize("")
		INIpay.SetActionType CLng(cancelInstance), "CANCEL"
		INIpay.SetField CLng(cancelInstance), "mid", request("mid")
		INIpay.SetField CLng(cancelInstance), "tid", TID
		INIpay.SetField CLng(cancelInstance), "msg", "망상취소"
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
<title>비트스쿨</title>
<!-- #include virtual="/localCampus/Include/ContentStyle.asp"-->
<!-- #include virtual="/localCampus/Include/Script.asp"-->
<script language="JavaScript1.1">
function right(e) 
{  
if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))  
return false;  
else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3)) 
	{  
	alert("비트교육센터입니다.");  
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
						<h3>카드결제</h3>
					</div>
					<section class="section">
						<!-- con_wrap -->
						<div class="con_wrap">
							<%
								 if resultcode<>"00" then
							%>
							<table class="table_col_type1">
								<tr> 
									<td colspan="2">결재를 하지 못하였습니다.</td>
								</tr>
								<tr>
									<th scope="row" class="tit">미결제 사유</th>
									<td class="l"><%=resultcode%>:<%=ResultMsg%></td>
								</tr>
								<tr>
									<td colspan="2">미결제 사유를 확인하시고 다시 시도해 주시기바랍니다.</td>
								</tr>
							</table>
							<%
								sql="Update Application Set CardReceiptStat='실패',CardReceiptDate='"&date()&"',CardReceiptAmount="&Request("price")  'X->실패
								sql=sql&" Where AppliKind='"& request("applikind") &"' and Yearmonth='"& request("yearmonth") &"'"
								sql=sql&" and Studid="& Studid
								'response.write "실패시:"&sql&"<br>"
								Dbcon.Execute(sql)                          										
								else
							%>
							<table width="100%" border="0" cellspacing="1" cellpadding="0" bgcolor="#f7f7f7">
								<tr> 
									<td align="center" colspan="3"> 
										<p>&nbsp;</p>
										<p><b>결재가 되었습니다</b></p>
										<table width="75%" border="1" cellpadding="0" cellspacing="0" bgcolor="white" bordercolor="white" bordercolorlight="#AAAAAA">
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">결과내용</div>
												</td>
												<td width="73%"><%=ResultMsg%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">승인번호</div>
												</td>
												<td width="73%"><%=AuthCode%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">신청과목</div>
												</td>
												<td width="73%"><%=request("goodname")%></td>
											</tr>
											<tr>
												<td width="27%" bgcolor="#EEEDE5"> 
													<div align="center">결재금액</div>
												</td>
												<td width="73%"><%=request("price")%></td>
											</tr>
										</table>
										<p>&nbsp;</p><br>
									</td>
								</tr>
							</table>
							<%
								IF chk THEN '브라우저가 닫혔는지 체크(닫혔을 경우 결제 취소됨)
									sql="Update Application Set CardReceiptStat='승인',CardReceiptAmount="&request("price") &", CardReceiptDate='"& date &"'" 'Y->성공
									
								else 
									sql="Update Application Set CardReceiptStat='실패',CardReceiptAmount="&request("price") &", CardReceiptDate='"& date &"'"  'Y->성공
									
								end if
								
									sql=sql&" Where AppliKind='"& request("applikind") &"' and Yearmonth='"& request("yearmonth") &"'"
									sql=sql&" and Studid="& Studid
									'response.write "sql2:"&sql&"<br>"
									Dbcon.Execute(sql)


								' 메일 보내기=======================================================================
								Dim strContents
								strContents=""
								
								Set objMail = Server.CreateObject("CDONTS.NewMail")
								objMail.From="card@bit.co.kr"  ' 자신의 E-mail 주소를 쓰세요
								objMail.To=Request("buyeremail")   ' 받는이도 자신의 E-mail 주소를 쓰세요
								objMail.Subject="[비트교육센터]카드결재되었습니다."    '이건 제목입니다. 
								strContents=session("NameHan") &"님 저희 비트교육센터의 강좌를 신청해 주셔서 감사합니다.<br><br>신청내역은 다음과 같습니다<br>"
								strContents=strContents& "<br><br>수강 신청 내역<br>"
								strContents=strContents& "<br>신청일: "& date &"<br>"
								strContents=strContents& "<br>신청 과목: " & request("goodname") &"<br>"
								strContents=strContents& "<br>결제 금액: " & request("price") & "<br>"
								if chk=true then
									strContents=strContents& "<br>승인여부: 승 인 <br>"								
								else
									strContents=strContents& "<br>승인여부: 실 패 <br>"								
								end if
								strContents=strContents& "<br><br>문의 사항은 본 교육센터로 연락주십시요(연락처:Tel 02-3486-3456)"
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
                                 <td><a href="/register/test_result.asp" target="_self">[ 확인 ]</a></td>
                               </tr>
                               <tr>
                                 <td>관리자 승인후 결재 처리됩니다.<br> 문의사항은 교육센터로 연락주세요(02-34863456)</td>
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