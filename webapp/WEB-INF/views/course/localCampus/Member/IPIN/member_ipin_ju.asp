<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

%>

<%
    
    
    Dim IPIN_DLL, clsIPIN
    Dim iReturnCode, sRequestData
    Dim sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL
    
    sIDPCODE        = "I261"                              
    sIDPPWD         = "38010800"                     
    sRETURNURL      = "http://bitschool.co.kr/member/IPIN/member_ipin_process.asp"
                                  ' ���� �Ϸ� �� ��������� ������ CP Return Page URL
    sCPREQUESTNUM   = ""                      ' CP ��û ��ȣ(CP���� ���Ƿ� ������ ��)

        IPIN_DLL        = "IPIN2Client.Kisinfo"   
     
    SET clsIPIN  = SERVER.CREATEOBJECT(IPIN_DLL)
    
    clsIPIN.fnRequestSEQ(sIDPCODE)
        sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ
    session("REQUEST_NUM") = sCPREQUESTNUM               ' CP ��û ��ȣ�� ���ǿ� ����
    
    iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)
        
    IF iReturnCode = 0 THEN        
        sRequestData = clsIPIN. bstrRequestCipherData        ' ��û������ ��ȣȭ�� ��      
    ELSEIF (iReturnCode = -1) THEN
        returnMsg = "��/��ȣȭ �ý��� ����"
        enc_data = ""
    ELSEIF (iReturnCode = -2) THEN
        returnMsg = "��ȣȭ ó�� ����"
        enc_data = ""
    ELSEIF (iReturnCode = -3) THEN
        returnMsg = "��ȣȭ ������ ����"
        enc_data = ""
    ELSEIF (iReturnCode = -9) THEN
        returnMsg = "�Է°� ����"
        enc_data = ""
    END IF
    
    SET clsIPIN = NOTHING
     %>



<form name="form_ipin" method="post">
    <input type="hidden" name="m" value="pubmain">  
    <input type="hidden" name="enc_data" value="<%= sRequestData %>">
</form>



 <html>
 <head>

<meta http-equiv="x-ua-compatible" content="edge" />
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=10">

 <title>��Ʈ�������� Ȩ�������� ���� ���� ȯ���մϴ�.</title>

 <link href="/css/main.css" rel="stylesheet" type="text/css">
 <script language='javascript' src='/js/BITobject.js'></script>
 <script language='javascript' src='/js/main.js'></script>
 <style type="text/css">
<!--
.ex {
	font-family: "����";
	line-height: 17px;
	text-decoration: none;
	font-size: 12px;
}
.style4 {
				text-align: left;
				color: #666666;
}
.style5 {
				text-align: left;
}
.style6 {
				color: #333333;
}
.style7 {
				color: #0033CC;
}
.style8 {
				text-align: center;
}
-->
 </style>
 <script language="JavaScript" type="text/JavaScript">
<!--
    function MM_preloadImages() { //v3.0
        var d = document; if (d.images) {
            if (!d.MM_p) d.MM_p = new Array();
            var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
        }
    }
    //-->
 </script>
 </head>
 

 <body onLoad="MM_preloadImages('/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif')">

<script language="javascript">
    window.name = "Parent_window";

    function fnPopup() {
        window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
        document.form_ipin.target = "popupIPIN2";
        document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
        document.form_ipin.submit();
    }
</script>


 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">

   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top ����-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top ��-->

   <tr>

<!--      <td background="/image/member/flashimg_bg.jpg"><img src="/image/member/flashimg.jpg" width="965" height="146"></td> -->
	 <td><img src="/image/member/flashimg.jpg" width="965" height="146"></td>

   </tr>

   <tr>
		<td>	 
			<!-- LEFT ����-->
			<!--#include virtual="/member/member_left.asp"-->
			<!-- LEFT ��-->
		</td>

         <td width="15">&nbsp;</td>

         <td width="701" valign="top"><table width="701" border="0" cellspacing="0" cellpadding="0">

           <tr>

             <td height="45" background="/image/member/menu_02_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">Ȩ &gt; ������ &gt; �α���  &nbsp;</span></td>

               </tr>

             </table></td>

           </tr>
           
                      <tr>

             <td><br><br><br><br><table width="701" border="0" cellspacing="0" cellpadding="0">
				
               <tr>

                 <td width="700" class="style5"><span class="style6">�� ������ ������ ���� ȸ������ ������(i-PIN)�̶� �������� ��ȣ�� ���� ���ͳݻ󿡼� �ֹε�Ϲ�ȣ�� ����Ͽ�, �������� Ȯ�ι��� �� �ִ� �ſ� Ȯ�� �����Դϴ�.
					</span>&nbsp;</td>

                 <td width="10">&nbsp;</td>

               </tr>

             </table><br><br></td>

           </tr>


           

           <tr>

             <td><br><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td width="450" align="center">
                     
                 <!--<a href="javascript:fnPopup();"><input name="Button1" type="button" value="������ �����ޱ�" /></a></td>-->

                 <input type="button" value="������ �����ޱ�" onclick="javascript: fnPopup();"/>

                 <td width="10">&nbsp;</td>

               </tr>

             </table><br></td>

           </tr>
           
            <tr>

             <td><br><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td width="701" class="style8">
                 <a href="http://i-pin.kisa.or.kr/kor/about/about.jsp">
					<span class="style7">������ �ڼ��� �˱�&nbsp;</span></td>

                 <td width="10">&nbsp;</td>

               </tr>

             </table><br></td>

           </tr>
           
                       <tr>

             <td><br><table width="701" border="0" cellspacing="0" cellpadding="0">

               <tr>

                 <td width="650" class="style4"><span class="style6">������(i-PIN)�� ����Ʈ �����ڰ� �ڽ��� �ſ������� �ŷ��� �� �ִ� ����Ȯ�α���� �����Ͽ� �Ǹ������� �ް� �ǹǷ�, ��Ʈ���𿡼��� ȸ������ �ֹε�Ϲ�ȣ�� ������ �� �����ϴ�.</span>&nbsp;</td>

                 <td width="10">&nbsp;</td>

               </tr>

             </table></td>

           </tr>

		

           <tr>

             <td height="25"></td>

           </tr>

         </table></td>

     </tr>

 </table></td>

   </tr>
	<!-- BOTTOM ����-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->
 </table>

 </body>

 </html>

