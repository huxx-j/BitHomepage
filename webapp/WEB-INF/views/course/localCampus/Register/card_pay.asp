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
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/Member/login.asp?return_url=/Register/card_pay.asp")
	response.end
end if


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

 <html>

 <head>

 <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

 <title>��Ʈ�������� Ȩ�������� ���� ���� ȯ���մϴ�.</title>
 <link href="/css/main.css" rel="stylesheet" type="text/css">
 <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
 <script language='javascript' src='/js/BITobject.js'></script>
 <script language='javascript' src='/js/main.js'></script>

	<script language=javascript src="http://plugin.inicis.com/pay40.js"></script>
<!--	<script language=javascript src="http://bitacademy.com/online_pay/pay40.js"></script>-->
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

 <body onLoad="MM_preloadImages('/image/register/menu_06_01.gif','/image/register/menu_07_01.gif','/image/register/menu_08_01.gif','/image/register/menu_09_01.gif','/image/register/menu_01_01.gif','/image/register/menu_02_01.gif','/image/register/menu_03_01.gif','/image/register/menu_04_01.gif','/image/register/menu_05_01.gif')">

  <%
			    strYyMm = left(now,7)
				
				sql=""
				sql="       select top 1 mem.Telephone,mem.Email,CourseID,App.Yearmonth,App.AppliKind,App.AppliType,App.SelectResult,App.CardReceiptStat,App.AppFrom "
				sql=sql&"	From   Application App,Member Mem                   "&vbcrlf
				sql=sql&"   Where  App.Studid = Mem.Studid                      "&vbcrlf  
				sql=sql&"   And    App.Studid = "&Studid&"            "&vbcrlf
                sql=sql&"   And    App.CardReceiptStat != '����'            "&vbcrlf

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
						
				Rs.Close%>
    

<form name="inicis" method="post" action="card_pay_ok.asp">
<!-- DB�� �����ϱ� ���� �������� key���� -->
<input type=hidden name=applikind value=<%=applikind%>>
<input type=hidden name=yearmonth value=<%=yearmonth%>>


 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">

   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top ����-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top ��-->

   <tr>

<!--      <td background="/image/register/flashimg_bg.gif"><img src="/image/register/flashimg.jpg" width="965" height="146"></td> -->
	 <td><img src="/image/register/flashimg.jpg" width="965" height="146"></td>

   </tr>

   <tr>

		<td>	 
			<!-- LEFT ����-->
			<!--#include virtual="/register/register_left.asp"-->
			<!-- LEFT ��-->
		</td>

         <td width="15">&nbsp;</td>

         <td width="701" valign="top"><table width="701" border="0" cellspacing="0" cellpadding="0">

           <tr>

             <td height="45" background="/image/register/menu_04_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">Ȩ &gt; �����ȳ� &gt; ī����� &nbsp;</span></td>

               </tr>

             </table></td>

           </tr>

           <tr>

             <td><table width="700" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td width="20">&nbsp;</td>
                 <td><table width="670" border="0" cellspacing="0" cellpadding="10">
                   <tr>
                     <td><span class="style1">�ݵ�� �÷������� ��ġ�� �Ϸ��� �Ŀ� &quot;����&quot;�� �����ʽÿ�.</span><br>
                       �÷������� �� �������� �����ϴ� ���� �ڵ����� �ٿ�ε� �Ǿ� ��ġ�˴ϴ�.<br>
                       �ٿ�ε忡 �ټ� �ð��� �ɸ��� ���� ������ ���Ȱ��â�� ��Ÿ�� ������ ��ٷ� �ֽñ� �ٶ��ϴ�.
                       <p>�÷������� <span class="style1">���������� �����ϰ� ��ȣȭ</span>�ϴ� ���� �̿ܿ��� ��� �뵵�ε� ������ �ʽ��ϴ�.<br>
                         ���� �÷����� ��ġ�� ���� �ʴ� ��쿡�� <a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe">����</a>�� ������ �÷������� ��ġ�Ͻʽÿ�.</p></td>
                   </tr>
                 </table>
                   <table width="670" border="0" cellspacing="0" cellpadding="0">
                   <tr>
                     <td width="6" height="6" ><img src="/image/register/00_l_t.gif" width="6" height="6"></td>
                     <td width="688" height="6" background="/image/register/00_t.gif"></td>
                     <td width="6" height="6" ><img src="/image/register/00_r_t.gif" width="6" height="6"></td>
                   </tr>
                   <tr>
                     <td width="6" background="/image/register/00_l.gif"></td>
                     <td width="658"><table width="658" border="0" cellspacing="7" cellpadding="0">
                         <tr>
                           <td align="left"><table width="640" border="0" cellspacing="10" cellpadding="3">
                               <tr>
                                 <td><table width="600" border="0" cellspacing="1" cellpadding="5">
                                     <tr>
                                       <td width="150">&nbsp;</td>
                                       <td width="120" bgcolor="#76A9E2"><span class="style2">������</span></td>
                                       <td><input name="goodname" size="30" value="<%=strCoruse%>" readonly></td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">ī�� ������<br>
                                       </span></td>
                                       <td>
											<% if AppliKind="������" then %>
												<input type=text name="price" class=txt size=30  value="" onkeypress="JavaScript:onlyNumber()" readonly>
											<% else %>
												<input type=text name="price" class=txt size=30 value="<%=money%>" readonly>
											<% end if%>		
										</td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">����</span></td>
                                       <td><input name="buyername" size="25" value="<%=session("NameHan")%>" readonly></td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">��ȭ��ȣ</span></td>
                                       <td><input name="buyertel" size="25" value="<%=Tel%>" readonly></td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">E-mail</span></td>
                                       <td><input name="buyeremail" size="25" value="<%=Email%>" readonly></td>
                                     </tr>
                                 </table></td>
                               </tr>
                               <tr>
                                 <td align="center" class="big">*���������� <a href="/member/member_mod.asp" target="mainFrame"><font color="3366cc">��������</font></a>���� �����Ͻñ� �ٶ��ϴ�.
								 </td>
                               </tr>
                               <tr>
                                 <td align="center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                                   <tr align="center">
                                     <td><input type="button" class=txt value=" �� �� " onclick=javascript:pay(this.form)></td>
                                     <td><input type="button" class=txt value=" �� �� " onclick=javascript:goIndex(this.form)></td>
                                   </tr>
<!-- 
                                   <tr align="center">
                                     <td><input type=image src='/image/register/02_09.gif' alt='����' onclick=javascript:pay(this.form)></td>
                                     <td><input type=image src='/image/register/cancel_btn.gif' alt='���' onclick=javascript:goIndex(this.form)></td>
                                   </tr>
-->

                                 </table></td>
                               </tr>
                           </table></td>
                         </tr>
                     </table></td>
                     <td width="6" background="/image/register/00_r.gif"></td>
                   </tr>
                   <tr>
                     <td><img src="/image/register/00_l_b.gif" width="6" height="6"></td>
                     <td height="6" background="/image/register/00_b.gif"></td>
                     <td><img src="/image/register/00_r_b.gif" width="6" height="6"></td>
                   </tr>
                 </table>
                   <table width="670" border="0" cellspacing="0" cellpadding="10">
                     <tr>
                       <td align="center"><p>&quot;����&quot;��ư�� ������ ���������� �����ϰ� ��ȣȭ�ϱ� ���� INIPAY Plugin 128�� ��Ÿ���ϴ�.<br>
                         �ʿ������� ��� ������ ��, &quot;Ȯ��&quot; ��ư�� ������ ����ó���� ���۵˴ϴ�.<br>
                         ���ҽý����� ������ ���� �ټ� �ð��� �ɸ� ���� ������ &quot;����&quot;��ư�� ������ ���ð� ��ø� ��ٷ��ֽʽÿ�.??????</p></td>
                     </tr>
                   </table></td>
               </tr>
             </table></td>

           </tr>

           <tr>

             <td align="center">&nbsp;</td>

           </tr>

         </table></td>

       </tr>

     </table></td>

   </tr>
	<!-- BOTTOM ����-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->

 </table>


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
</form>
 </body>

 </html>
