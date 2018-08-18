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
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/Member/login.asp?return_url=/Register/card_pay.asp")
	response.end
end if


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

 <html>

 <head>

 <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

 <title>비트교육센터 홈페이지에 오신 것을 환영합니다.</title>
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
				alert("카드결재금액을 입력하여 주십시요");
				frm.price.focus();
			}
			else{
		
				if(navigator.appName == 'Netscape')
				{
					if(document.INIpay == null )
						alert("이니페이 플러그인이 설치되지 않았습니다.\n\n플러그인을 설치한 후에 다시 시도 하십시오.");
					else
					{
						if (MakePayMessage(frm) == true) frm.submit();
						else alert("지불에 실패하였습니다.");
					}
				}
				else
				{
					if(document.INIpay.object == null )
						alert("이니페이 플러그인이 설치되지 않았습니다.\n\n플러그인을 설치한 후에 다시 시도 하십시오.");
					else
					{
						if (MakePayMessage(frm) == true) frm.submit();
						else alert("지불에 실패하였습니다.");
					}
				}
			}
		}
		
		function installPlugin()
		{
			window.location = "http://download.inicis.com/install_plugin.html";
		}

		function onlyNumber()//숫자만 입력하게 하는 방법
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
                sql=sql&"   And    App.CardReceiptStat != '승인'            "&vbcrlf

				Set Rs = Dbcon.Execute(sql)
				
			    If Rs.EOF then
					call alertMsgBack( "지원하신 교육과정이 없습니다" )
					Rs.Close
					Dbcon.close
					Response.End
				end if


				' 경남 IT 관련 지원자는 online 결제를 할 수 없다.
				if (Rs("AppFrom") = "1") then
					call alertMsgGoURL ("방문 결재(카드)만 가능합니다.\n\n(무통장 입금도 가능합니다.)", "/default.asp")
					Rs.Close
					Dbcon.close
					Response.End
				end if

				AppliKind=Rs("AppliKind")	  	
      			IF ( AppliKind="직장인") then
      				if Rs("CardReceiptStat")="승인" then 
						call alertMsgBack( "이미 카드 결재를 하셨습니다." )
						Rs.Close
						Dbcon.close
						Response.End      		
      				end if      
      			'----------------------------------------------------------------------------
      			elseif(AppliKind="전문가") then  '전문가 , 단기      		
      				if Rs("SelectResult")<>"합격" then
						call alertMsgBack( "전형결과를 확인하여주십시요\n합격한 지원자에 한하여 접수를 하실 수 있습니다." )
						Rs.Close
						Dbcon.close
						Response.End
      				elseif Rs("CardReceiptStat")="승인" then
						call alertMsgBack( "이미 카드 결재를 하셨습니다." )
						Rs.Close
						Dbcon.close
						Response.End
      				end if
					else
					    if Rs("SelectResult")<>"미전형" then
							call alertMsgBack( "전형결과를 확인하여주십시요\n합격한 지원자에 한하여 접수를 하실 수 있습니다." )
      						Rs.Close
      						Dbcon.close
      						Response.End
      					elseif Rs("CardReceiptStat")="승인" then
							call alertMsgBack( "이미 카드 결재를 하셨습니다." )
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
<!-- DB에 저장하기 위한 지원서의 key값들 -->
<input type=hidden name=applikind value=<%=applikind%>>
<input type=hidden name=yearmonth value=<%=yearmonth%>>


 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">

   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top 시작-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top 끝-->

   <tr>

<!--      <td background="/image/register/flashimg_bg.gif"><img src="/image/register/flashimg.jpg" width="965" height="146"></td> -->
	 <td><img src="/image/register/flashimg.jpg" width="965" height="146"></td>

   </tr>

   <tr>

		<td>	 
			<!-- LEFT 시작-->
			<!--#include virtual="/register/register_left.asp"-->
			<!-- LEFT 끝-->
		</td>

         <td width="15">&nbsp;</td>

         <td width="701" valign="top"><table width="701" border="0" cellspacing="0" cellpadding="0">

           <tr>

             <td height="45" background="/image/register/menu_04_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">홈 &gt; 수강안내 &gt; 카드결제 &nbsp;</span></td>

               </tr>

             </table></td>

           </tr>

           <tr>

             <td><table width="700" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td width="20">&nbsp;</td>
                 <td><table width="670" border="0" cellspacing="0" cellpadding="10">
                   <tr>
                     <td><span class="style1">반드시 플러그인의 설치를 완료한 후에 &quot;지불&quot;을 누르십시오.</span><br>
                       플러그인은 이 페이지에 접근하는 순간 자동으로 다운로드 되어 설치됩니다.<br>
                       다운로드에 다소 시간이 걸리는 수도 있으니 보안경고창이 나타날 때까지 기다려 주시기 바랍니다.
                       <p>플러그인은 <span class="style1">지불정보를 안전하게 암호화</span>하는 역할 이외에는 어떠한 용도로도 사용되지 않습니다.<br>
                         만일 플러그인 설치가 되지 않는 경우에는 <a href="http://download.inicis.com/archive/INIpayplugin128_v4.exe">여기</a>를 눌러서 플러그인을 설치하십시오.</p></td>
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
                                       <td width="120" bgcolor="#76A9E2"><span class="style2">과정명</span></td>
                                       <td><input name="goodname" size="30" value="<%=strCoruse%>" readonly></td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">카드 결제액<br>
                                       </span></td>
                                       <td>
											<% if AppliKind="전문가" then %>
												<input type=text name="price" class=txt size=30  value="" onkeypress="JavaScript:onlyNumber()" readonly>
											<% else %>
												<input type=text name="price" class=txt size=30 value="<%=money%>" readonly>
											<% end if%>		
										</td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">성명</span></td>
                                       <td><input name="buyername" size="25" value="<%=session("NameHan")%>" readonly></td>
                                     </tr>
                                     <tr>
                                       <td>&nbsp;</td>
                                       <td bgcolor="#76A9E2"><span class="style2">전화번호</span></td>
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
                                 <td align="center" class="big">*개인정보는 <a href="/member/member_mod.asp" target="mainFrame"><font color="3366cc">개인정보</font></a>에서 수정하시기 바랍니다.
								 </td>
                               </tr>
                               <tr>
                                 <td align="center"><table width="200" border="0" cellspacing="0" cellpadding="0">
                                   <tr align="center">
                                     <td><input type="button" class=txt value=" 지 불 " onclick=javascript:pay(this.form)></td>
                                     <td><input type="button" class=txt value=" 취 소 " onclick=javascript:goIndex(this.form)></td>
                                   </tr>
<!-- 
                                   <tr align="center">
                                     <td><input type=image src='/image/register/02_09.gif' alt='지불' onclick=javascript:pay(this.form)></td>
                                     <td><input type=image src='/image/register/cancel_btn.gif' alt='취소' onclick=javascript:goIndex(this.form)></td>
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
                       <td align="center"><p>&quot;지불&quot;버튼을 누르면 지불정보를 안전하게 암호화하기 위한 INIPAY Plugin 128이 나타납니다.<br>
                         필요정보를 모두 기입한 후, &quot;확인&quot; 버튼을 누리면 지불처리가 시작됩니다.<br>
                         지불시스템의 사정에 따라 다소 시간이 걸릴 수도 있으니 &quot;중지&quot;버튼을 누리지 마시고 잠시만 기다려주십시오.??????</p></td>
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
	<!-- BOTTOM 시작-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->

 </table>


<!-- mid : 머천트 아이디 발급 후 변경 -->
<input type=hidden name=mid value="bitcampus1">

<!-- 화폐단위 -->
<input type=hidden name=currency value="WON">
<!--input type=hidden name=currency value="USD"-->

<!-- 무이자 할부 미시행 -->
<input type=hidden name=nointerest value="no">
<!-- 무이자 할부 시행 -->
<!--input type=hidden name=nointerest value="yes"-->

<!-- 플러그인 창에서 선택가능한 카드할부기간 지정 -->
<!-- (각 카드사별로 지원 가능한 개월수가 다르므로 유의) -->
<input type=hidden name=quotabase value="일시불:2개월:3개월:4개월:5개월:6개월:7개월:8개월:9개월:10개월:11개월:12개월">

<!-- 기타설정 -->
<!-- 본인인증 : VERIFY(함) / NOVERIFY(안함) -->
<!-- 가맹점구분 : NOSELF(대표가맹) / SELF(자체가맹) -->
<!-- 지불방법선택 : DC(증권카드) / VC(버추얼카드) / MX(Mondex) / OCB(OK Cashbag Point) -->
<input type=hidden name=acceptmethod value="VERIFY">

<!-- 아래의 필드는 절대 삭제/수정 불가 -->
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
<!-- 몬덱스 사용시 반드시 수정 -->
<input type=hidden name=mdxurl value="http://www.demo.com/asp/INImdx.exe">
</form>
 </body>

 </html>
