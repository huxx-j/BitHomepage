<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include virtual="/Include/Common_Defend_1709.asp"-->
<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Studid = TRIM(session("Studid"))

'response.write "Studid:"&Studid&"<br>"

if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/Member/login.asp?return_url=/Register/card_approval.asp")
	response.end
end if


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>

	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(3).addClass("on");								// ī�����
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");						// 
			//$(".snb_1709 .newdepth2_wrap.no2 .newdepth2").eq(2).addClass("on");  	// 

			//ajaxLoad('#ConDetail', '', '/Course/Tap/Course_Expert_01.asp');
			//$(".snb_1702 .newdepth1").eq(3).addClass("on");
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
				alert("ī������ݾ��� �Է��Ͽ� �ֽʽÿ�");
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
			fm.action="/";
			fm.submit();
		}
		
		// (2018-07-16-YG) ������ 1�� ������ �����ִ� �������� Ʋ�� ����߰� : �ٸ� ���� ����.
		function showUpTheUnpaid() {
			$("#divListUnpaid").show();
		}
	</script>
	<style>
		#Wrapper { margin-top:-16px !important; }
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>

	<%
		strYyMm = left(now,7)


	'�ߺ������� ���� �ʴ� ������ ����(2012.11.30)	- ������ ��¥�� �˻�			
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
	'				sql=sql&"   And	   App.SelectResult = '�հ�' ORDER BY App.YearMonth DESC " 
%>

<%
	IF cID="" Then
'//		response.write "cID is blank.<br/>"
	Else
'//		response.write "cID = " & cID & "<br/>"
	End IF
%>

<%
	'// 2018-07-16-YG : OnLoad CourseID ���ñ�� �߰�.
	cID = Request.QueryString("cID")

		'���������� �� ������ ���� ������ ��� ���
		'// (2018-03-23-YG) SelectResult�� '�հ�'�� �ƴϾ�� ���� �����. ���� �̷�.
		sql=""
		sql="select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
		sql=sql&"	From   Application App,Member Mem                   "&vbcrlf

		IF cID="" Then
			'// ������Ʈ�� cID�� ���� ��. ��, ������ ����� ����� ��Ȳ.
			sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
			sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
			sql=sql&"   And    App.CardReceiptStat != '����'            "&vbcrlf
			sql=sql&"   AND    App.CourseID NOT IN ('CP_Master','JP_Master')"
			sql=sql&"   And    App.SelectResult <> '�հ�' ORDER BY App.YearMonth DESC" 
		Else
			'// ������Ʈ�� cID�� ���� ��. ��, ������ CourseID�� �ִ� ��Ȳ.
			sql=sql&" WHERE App.Studid = Mem.Studid" &_
					" AND App.CourseID = '"&cID&"' " &_
					" AND App.CardReceiptStat != '����'" &_
					" AND App.SelectResult <> '�հ�' " &_
					" ORDER BY App.YearMonth DESC"  
		END IF
		
		Call YGLogger("SQL", sql, "/Request/card_approval.asp", "Studid:"&Studid)		'// USAGE : CALL YGLogger(logName, logText, logWhere, loginID)
		Set Rs = Dbcon.Execute(sql)
		
		If Rs.EOF then
			call alertMsgBack( "�����Ͻ� ���������� �����ϴ�." )
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
				call alertMsgBack( "�̹� ī�� ������ �ϼ̽��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End      		
			end if      
		'----------------------------------------------------------------------------
		elseif(AppliKind="������") then  '������ , �ܱ�      		
			if Rs("SelectResult")<>"�հ�" and Rs("SelectResult")<>"������" then
				call alertMsgBack( "��������� Ȯ���Ͽ��ֽʽÿ�\n�հ��� �����ڿ� ���Ͽ� ������ �Ͻ� �� �ֽ��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End
			elseif Rs("CardReceiptStat")="����" then
				call alertMsgBack( "�̹� ī�� ������ �ϼ̽��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End
			end if
		else
			if Rs("SelectResult")<>"������" then
				call alertMsgBack( "(" & Rs("SelectResult") & ") " & "��������� Ȯ���Ͽ��ֽʽÿ�\n�հ��� �����ڿ� ���Ͽ� ������ �Ͻ� �� �ֽ��ϴ�." )
				Rs.Close
				Dbcon.close
				Response.End
			elseif Rs("CardReceiptStat")="����" then
				call alertMsgBack( "�̹� ī�� ������ �ϼ̽��ϴ�." )
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
			<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
			<!-- //Header_Wrap -->

			<div id="Container_Wrap" style="min-height:700px;">
				<div id="Content_Wrap">
					<!-- SNB_Wrap-->
					<!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
					<!-- //SNB_Wrap-->
					
					<!-- con_wrap1709 -->
					<div id="Content">
						<div class="hGroup1709">
							<p>
								<img src="/Images/Icons/icn_Home.png"/>
								<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>������û
							</p>
							<h4>ī�����</h4>
						</div>

						<section class="section">
							<!-- con_wrap1709 -->
							<div class="con_wrap1709 first">
								<p class="mar_b10">
									<span class="redTxt" style="text-decoration:underline; font-size:1.2em;"><b>�÷������� ��ġ�� �Ϸ��Ͻ� �Ŀ� "����"�� �����ּ���.</b></span>
								</p>
								<p class="mar_b10">
									�÷������� �� �������� �����鼭 �ڵ����� �ٿ�ε� �Ǿ� ��ġ�˴ϴ�.<br>
									�ٿ�ε忡 �ټ� �ð��� �ɸ� �� �����Ƿ�, ���Ȱ��â�� ��Ÿ�� ������ ��ٷ� �ּ���.
								</p>
								<p class="mar_b10">
									�÷������� ���������� �����ϰ� ��ȣȭ�ϴ� ���� �̿ܿ� ��� �뵵�ε� ������ �ʽ��ϴ�.
								</p>
								<p class="mar_b10">
									���� �÷����� ��ġ�� ���� �ʴ� ��쿡�� "������ġ" ��ư�� ������ �÷������� ��ġ���ּ���. 
									<!--<a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe" class="btnBlueBorder">������ġ</a>-->
									<a href="https://www.inicis.com/blog/archives/496" class="btnBlueBorder">������ġ</a>
								</p>
								<p class="mar_b10 blueTxt" style="line-height:24px;">
									�� ������ ���Ǵ� �÷������� Internet Explorer(IE) 11<img src="Images/ie.jpg" style="width:24px;"/> ȯ���� �����մϴ�.
								<p>
								<!--<h5>ī�����</h5>-->
								<!--
								<p>
									<span class="redTxt"><b>�ݵ�� �÷������� ��ġ�� �Ϸ��� �Ŀ� "����"�� �����ʽÿ�.</b></span><br>
									�÷������� �� �������� �����ϴ� ���� �ڵ����� �ٿ�ε� �Ǿ� ��ġ�˴ϴ�.<br>
									�ٿ�ε忡 �ټ� �ð��� �ɸ��� ���� ������ ���Ȱ��â�� ��Ÿ�� ������ ��ٷ� �ֽñ� �ٶ��ϴ�. <br>
								</p>
								<p>
									�÷������� ���������� �����ϰ� ��ȣȭ�ϴ� ���� �̿ܿ��� ��� �뵵�ε� ������ �ʽ��ϴ�.<br>
									���� �÷����� ��ġ�� ���� �ʴ� ��쿡�� <a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe" class="blueTxt"><u>����</u></a>�� ������ �÷������� ��ġ�Ͻʽÿ�.
								</p>
								-->
							</div>
							<!-- //con_wrap1709 -->
							
							<!-- con_wrap1709 -->
							<div class="con_wrap1709">
								<p class="mar_t40 brownTxt">
									������ ������ Ȯ���Ͻ� �� "����" ��ư�� �����ּ���.
								<p>
								<style>
									.divTable table tr td input {
										font-size:1.1em; 
										padding:3px;
									}
								</style>
								<div class="divTable">
									<table>
										<colgroup>
											<col style="width:30%">
											<col style="width:70%">
										</colgroup>
										<tbody>
											<tr>
												<td scope="row" class="darker c">������</td>
												<td><input name="goodname" size="55" value="<%=strCoruse%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">ī�������</td>
												<td>
													<% IF AppliKind="������" THEN %>
														<input type=text name="price" size="23"  value="<%=money%>"  readonly>
														
		
		<%
'		ELSEIF StudID = 58669 THEN
		' ������ 58669 �λ�ܴ� ��ް���5�� (2018-03����) 3,200,000 -> 600,000 * 5 + 200,000 * 1 (�� 6ȸ)���ҳ���
		' �̹� �޺���(2018��3��) �� 5���� ���ҳ��θ� �� �����̸�, 600,000�� * 4�� / 200,000�� * 1ȸ �������� ���࿹��...
		' NoNo. �������� 2ȸ������ �̸� �޾Ҵٰ� ��.
		' 1ȸ�� 600,000 (2018-03-23) / 2ȸ�� 600,000 (2018-05-28) / 3ȸ�� 600,000 (2018-06-26) / 4ȸ�� 200,000 (2018-07-31 ����Ȯ��). ��.
		'//<input type="text" name="price" class=txt size=30 value="200000" readonly>
		%>
		

													<% ELSE %>
														<input type=text name="price" size="23" value="<%=money%>" readonly>
													<% END IF%>		
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c">����</td>
												<td><input name="buyername" size="25" value="<%=session("NameHan")%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">��ȭ��ȣ</td>
												<td><input name="buyertel" size="25" value="<%=Tel%>" readonly></td>
											</tr>
											<tr>
												<td scope="row" class="darker c">E-Mail</td>
												<td><input name="buyeremail" size="25" value="<%=Email%>" readonly></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="c mar_t20 mar_b20">
									<input type="button" value="����" onclick="javascript:pay(this.form)" class="txt btnBlueBorder big mar_r10">
									<input type="button" value="���" onclick="javascript:goIndex(this.form)" class="txt btnWhiteBorder big">
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
							<!-- //con_wrap1709 -->

							<style>
								.linkUnpaid {
									font-size:12pt;
									line-height:24px;
									color:red;
									text-decoration:underline !important;
								}
							</style>
							<div class="con_wrap1709 mar_b20">
								<input type="button" value="> �ٸ� ���� ����" onclick="javascript:showUpTheUnpaid();" class="btnRedBorder" style="float:right;" />
								<div style="clear:both;"></div>
								<div id="divListUnpaid" class="mar_t20" style="width:80%; box-shadow:1px 1px 3px #000000; display:none; float:right;">
<%
								sql = "select top 10 a.ApplicationDate Date,c.CourseName CName, a.CourseID CID " &_
									"from db_bit.dbo.Application a left outer join db_bit.dbo.Course c " &_
									"on a.CourseID=c.CourseID " &_
									"where StudID=51955 " &_
									"order by a.ApplicationDate desc"
								
								Set Rs2 = Dbcon.Execute(sql)
								if not Rs2.EOF then										
									Rs2.MoveFirst 							
									DO While not Rs2.EOF
										Response.Write "<a class='linkUnpaid mar_l20' href='/Register/card_approvalv2.asp?CID=" & Rs2("CID") & "'>" & "��û�� : " & Rs2("Date") & " / " & Rs2("CName") & "</a><br/>"
'										If DUTY_CD = Trim(Rs("CourseID")) Then 
'											Response.Write "<option value='"& Rs("CourseID") & "' selected>"
'										Else
'											Response.Write "<option value='"& Rs("CourseID") & "'>"												
'										End If 												
'										Response.Write Rs("CourseName") & "</option>"
										Rs2.MoveNext 
									loop
								end if
								Rs2.Close
%>
								</div>
								<div style="clear:both;"></div>
							</div>
							
							<!-- con_wrap1709 -->
							<div class="con_wrap1709">
								<p>
									"����" ��ư�� �����ø� ���� ������ �����ϰ� ��ȣȭ�ϰ� ������ ���͵帮�� INIPAY Plugin 128�� ���۵˴ϴ�.<br>
									INIPAY Plugin 128���� �ʿ��� ������ ��� �����Ͻ� �� "Ȯ��" ��ư�� ������ ���� ó���� �Ϸ�˴ϴ�.<br>
									INIPAY Plugin 128 �ý����� ������ ���� �ټ� �ð��� �ɸ� ���� ������ "����" ��ư�� ������ ���ð� ��ø� ��ٷ��ּ���.
									<!--
									"����"��ư�� ������ ���������� �����ϰ� ��ȣȭ�ϱ� ���� INIPAY Plugin 128�� ��Ÿ���ϴ�.<br>
									�ʿ������� ��� ������ ��, "Ȯ��" ��ư�� ������ ����ó���� ���۵˴ϴ�.<br>
									���ҽý����� ������ ���� �ټ� �ð��� �ɸ� ���� ������ "����"��ư�� ������ ���ð� ��ø� ��ٷ��ֽʽÿ�.
									-->
								</p>
							</div>
							<!-- //con_wrap1709 -->
							
						</section>
						<!--<a href="#this" class="moveTop">Top</a>-->
					</div>
					<!-- //con_wrap1709 -->
				</div>
			</div>
			<!-- Footer_Wrap -->
			<!-- #include virtual="/Include/FooterHTML1709.asp"-->
			<!-- //Footer_Wrap -->
		</div>
	</form>
</body>
</html>
