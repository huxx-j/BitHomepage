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
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/localCampus/Member/login.asp?return_url=/localCampus/Register/card_approval.asp")
	response.end
end if


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<!-- #include virtual="/localCampus/Include/Meta.asp"-->
<title>��Ʈ����</title>
<!-- CSS  -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- Script -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<script type="text/javascript">
	$(document).ready(function(){
		ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp');
		$(".snb .depth1").eq(0).addClass("on");
	});
</script>
<script language=javascript src="http://plugin.inicis.com/pay40.js"></script>
<!--	
<script language=javascript src="http://bitacademy.com/online_pay/pay40.js"></script>
-->
<script language=javascript>
	StartSmartUpdate();
	function pay(frm)
	{
		if(frm.price.value=="")
		{
			alert("ī�����ݾ��� �Է��Ͽ� �ֽʽÿ�");
			frm.price.focus();
		}
		else{
	
			if(navigator.appName == 'Netscape')
			{
				if(document.INIpay == null )
					alert("�̴����� �÷������� ��ġ���� �ʾҽ��ϴ�.\n\n�÷������� ��ġ�� �Ŀ� �ٽ� �õ� �Ͻʽÿ�.");
				else
				{
					if (MakePayMessage(frm) == true) frm.submit();
					else alert("���ҿ� �����Ͽ����ϴ�.");
				}
			}
			else
			{
				if(document.INIpay.object == null )
					alert("�̴����� �÷������� ��ġ���� �ʾҽ��ϴ�.\n\n�÷������� ��ġ�� �Ŀ� �ٽ� �õ� �Ͻʽÿ�.");
				else
				{
					if (MakePayMessage(frm) == true) frm.submit();
					else alert("���ҿ� �����Ͽ����ϴ�.");
				}
			}
		}
	}
	
	function installPlugin()
	{
		window.location = "http://download.inicis.com/install_plugin.html";
	}

	function onlyNumber()//���ڸ� �Է��ϰ� �ϴ� ���
	{
		if((event.keyCode<48)||(event.keyCode>57))
			event.returnValue = false;
	}
	
	function goIndex(fm)
	{
		fm.action="/register/test_result.asp";
		fm.submit();
	}
</script>
</head>
<body>
<%
	strYyMm = left(now,7)


'�ߺ����簡 ���� �ʴ� ������ ����(2012.11.30)	- ������ ��¥�� �˻�			
'				sql=""
'				sql="       select mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
'				sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
'				sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
'				sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
'				sql=sql&"   And    App.yearmonth = mem.recentdte " 

				

'���������� ���� �� "�����Ͻ� ���������� �����ϴ�"�� �ߴ� ��� �Ʒ� ������ ���� �ϸ� ��.- ������������ ���� �ֱ� ������ ��츸 �ش�
'				sql=""
'				sql="       select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
'				sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
'				sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
'				sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
'				sql=sql&"   And App.SelectResult = '�հ�' ORDER BY App.YearMonth DESC " 


'���������� �� ������ ���� ������ ��� ���
	sql=""
	sql="       select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
	sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
	sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
	sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
	sql=sql&"   And    App.CardReceiptStat != '����'            "&vbcrlf
	sql=sql&"   And App.SelectResult <> '�հ�' ORDER BY App.YearMonth DESC" 

	Set Rs = Dbcon.Execute(sql)
	
	If Rs.EOF then
		call alertMsgBack( "�����Ͻ� ���������� �����ϴ�" )
		Rs.Close
		Dbcon.close
		Response.End
	end if


	' �泲 IT ���� �����ڴ� online ������ �� �� ����.
	if (Rs("AppFrom") = "1") then
		call alertMsgGoURL ("�湮 ����(ī��)�� �����մϴ�.\n\n(������ �Աݵ� �����մϴ�.)", "/default.asp")
		Rs.Close
		Dbcon.close
		Response.End
	end if

	AppliKind=Rs("AppliKind")	  	
	IF ( AppliKind="������") then
		if Rs("CardReceiptStat")="����" then 
			call alertMsgBack( "�̹� ī�� ���縦 �ϼ̽��ϴ�." )
			Rs.Close
			Dbcon.close
			Response.End      		
		end if      
	'----------------------------------------------------------------------------
	elseif(AppliKind="������") then  '������ , �ܱ�      		
		if Rs("SelectResult")<>"�հ�" then
			call alertMsgBack( "��������� Ȯ���Ͽ��ֽʽÿ�\n�հ��� �����ڿ� ���Ͽ� ������ �Ͻ� �� �ֽ��ϴ�." )
			Rs.Close
			Dbcon.close
			Response.End
		elseif Rs("CardReceiptStat")="����" then
			call alertMsgBack( "�̹� ī�� ���縦 �ϼ̽��ϴ�." )
			Rs.Close
			Dbcon.close
			Response.End
		end if
		else
			if Rs("SelectResult")<>"������" then
				call alertMsgBack( "��������� Ȯ���Ͽ��ֽʽÿ�\n�հ��� �����ڿ� ���Ͽ� ������ �Ͻ� �� �ֽ��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End
			elseif Rs("CardReceiptStat")="����" then
				call alertMsgBack( "�̹� ī�� ���縦 �ϼ̽��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End      		
		end if


	end if

	AppliType=Rs("AppliType")
	Yearmonth=Rs("Yearmonth")
	Tel=Rs("Telephone")
	email=Rs("Email")
			
	sql="select CourseName,Money From Course Where Courseid = '"&Rs("CourseID")&"' "
	Set Rs1 = Dbcon.Execute(sql)
	  
	strCoruse="["& AppliKind &"]" & Rs1("CourseName")
	Money=Rs1("Money")
	Rs1.Close 
			
	Rs.Close
%>

<form name="inicis" method="post" action="/Register/card_pay_ok.asp">
<!-- DB�� �����ϱ� ���� �������� key���� -->
<input type=hidden name=applikind value=<%=applikind%>>
<input type=hidden name=yearmonth value=<%=yearmonth%>>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Header.asp"-->
		<!-- //Header_Wrap -->
		<hr>
		<div id="Container">
			<div id="Content" class="sub">
				<section class="section">
					<!-- con_wrap -->
					<div class="con_wrap">
						<h3>ī�����</h3>
							<p>
							�ݵ�� �÷������� ��ġ�� �Ϸ��� �Ŀ� "����"�� �����ʽÿ�.<br>
							�÷������� �� �������� �����ϴ� ���� �ڵ����� �ٿ�ε� �Ǿ� ��ġ�˴ϴ�.<br>
							�ٿ�ε忡 �ټ� �ð��� �ɸ��� ���� ������ ���Ȱ��â�� ��Ÿ�� ������ ��ٷ� �ֽñ� �ٶ��ϴ�. <br>
							�÷������� ���������� �����ϰ� ��ȣȭ�ϴ� ���� �̿ܿ��� ��� �뵵�ε� ������ �ʽ��ϴ�.<br>
							���� �÷����� ��ġ�� ���� �ʴ� ��쿡�� <a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe" class="blueTxt">����</a>�� ������ �÷������� ��ġ�Ͻʽÿ�.
						</p>
					</div>
					<!-- //con_wrap -->
					<!-- con_wrap -->
					<div class="con_wrap">
						<table class="table_col_type2">
							<colgroup>
								<col style="width:20%">
								<col style="width:80%">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row" class="tit">������</th>
									<td><input type="text" name="goodname" size="30" value="<%=strCoruse%>" readonly></td>
								</tr>
								<tr>
									<th scope="row" class="tit">ī�������</th>
									<td>
										<% if AppliKind="������" then %>
											<input type=text name="price" class=txt size=30  value="<%=money%>"  readonly>
										<% else %>
											<input type=text name="price" class=txt size=30 value="<%=money%>" readonly>
										<% end if%>		
									</td>
								</tr>
								<tr>
									<th scope="row" class="tit">����</th>
									<td><input type="text" name="buyername" size="25" value="<%=session("NameHan")%>" readonly></td>
								</tr>
								<tr>
									<th scope="row" class="tit">��ȭ��ȣ</th>
									<td><input type="text" name="buyertel" size="25" value="<%=Tel%>" readonly></td>
								</tr>
								<tr>
									<th scope="row" class="tit">E-Mail</th>
									<td><input type="text" name="buyeremail" size="25" value="<%=Email%>" readonly></td>
								</tr>
							</tbody>
						</table>
						<div class="btn_wrap c mar_t20">
							<input type="button" value=" �� �� " onclick="javascript:pay(this.form)" class="txt">
							<input type="button" value=" �� �� " onclick="javascript:goIndex(this.form)" class="txt">
						</div>
						<!-- mid : ��õƮ ���̵� �߱� �� ���� -->
						<input type=hidden name=mid value="bitcampus1">

						<!-- ȭ����� -->
						<input type=hidden name=currency value="WON">
						<!--input type=hidden name=currency value="USD"-->

						<!-- ������ �Һ� �̽��� -->
						<input type=hidden name=nointerest value="no">
						<!-- ������ �Һ� ���� -->
						<!--input type=hidden name=nointerest value="yes"-->

						<!-- �÷����� â���� ���ð����� ī���ҺαⰣ ���� -->
						<!-- (�� ī��纰�� ���� ������ �������� �ٸ��Ƿ� ����) -->
						<input type=hidden name=quotabase value="�Ͻú�:2����:3����:4����:5����:6����:7����:8����:9����:10����:11����:12����">

						<!-- ��Ÿ���� -->
						<!-- �������� : VERIFY(��) / NOVERIFY(����) -->
						<!-- ���������� : NOSELF(��ǥ����) / SELF(��ü����) -->
						<!-- ���ҹ������ : DC(����ī��) / VC(���߾�ī��) / MX(Mondex) / OCB(OK Cashbag Point) -->
						<input type=hidden name=acceptmethod value="VERIFY">

						<!-- �Ʒ��� �ʵ�� ���� ����/���� �Ұ� -->
						<input type=hidden name=quotainterest value="">
						<input type=hidden name=paymethod value="">
						<input type=hidden name=cardcode value="">
						<input type=hidden name=cardquota value="">
						<input type=hidden name=rbankcode value="">
						<input type=hidden name=reqsign value="DONE">
						<input type=hidden name=encrypted value="">
						<input type=hidden name=sessionkey value="">
						<input type=hidden name=uid value="">
						<input type=hidden name=sid value="">
						<input type=hidden name=version value=4000>
						<input type=hidden name=clickcontrol value="">
						<input type=hidden name=gopaymethod value="Card">
						<!-- �󵦽� ���� �ݵ�� ���� -->
						<input type=hidden name=mdxurl value="http://www.demo.com/asp/INImdx.exe">
					</div>
					<!-- //con_wrap -->
					<!-- con_wrap -->
					<div class="con_wrap">
						<p>
							"����"��ư�� ������ ���������� �����ϰ� ��ȣȭ�ϱ� ���� INIPAY Plugin 128�� ��Ÿ���ϴ�.<br>
							�ʿ������� ��� ������ ��, "Ȯ��" ��ư�� ������ ����ó���� ���۵˴ϴ�.<br>
							���ҽý����� ������ ���� �ټ� �ð��� �ɸ� ���� ������ "����"��ư�� ������ ���ð� ��ø� ��ٷ��ֽʽÿ�.
						</p>
					</div>
					<!-- //con_wrap -->
				</section>
			</div>
		</div>
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/localCampus/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</form>
</body>
</html>