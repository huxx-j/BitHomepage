<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"
      FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
  Response.Expires = -1 
  Response.Expiresabsolute = Now() - 1 
  Response.AddHeader "pragma","no-cache" 
  Response.AddHeader "cache-control","private" 
  Response.CacheControl = "no-cache" 

  response.buffer = True
  
%>
<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<html>
<head>
<title> 비트교육센터 홈페이지에 오신 것을 환영합니다.</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
 <link href="/css/main.css" rel="stylesheet" type="text/css">
</head>

<script language="javascript">
<!--
function chit()
{
   id = document.idch.memid.value;
   x = /^\w{2,8}$/;
   result = x.test(id)
   for(i=0;i<=id.length;i++)
   {
     if (!result && id.charCodeAt(i) < 12644) 
	 {
      alert("아이디는 공백없이 \n 영문과 숫자의 조합입니다.\n(영문/숫자:6~8자)"); 		
      return;
	  break;
     }
    }
   if(id.length > 8 || id.length < 4)
	{
		alert("ID는 4문자이상 8문자까지 입니다!");
		document.idch.memid.focus();
		return;
	}

   
   if (document.idch.memid.value=="")
   {
      alert("사용할 ID를 입력해주세요") ;
      document.idch.memid.focus() ;
   }
   
   else if (document.idch.memid.value.length<4)
   {
      alert("ID는 4자 이상 입력해주세요") ;
      document.idch.memid.focus() ;
   }
   
   else
   {
      document.idch.action = "checkid.asp" ;   
      document.idch.submit() ;
      return true;
   }
}


//-->
</script>
<body bgcolor="#FFFFFF" text="#000000" topmargin=10 leftmargin=10>

<%
  DIM memid,SQLid,RSid
   MemId = Trim(request("memid"))
   


   Set Dbcon = Server.CreateObject("ADODB.Connection")
   Dbcon.Open Con_bit_db

   SQL = "SELECT * FROM Member WHERE LoginID = '" &MemId&  "' "
   Set Rs = Dbcon.Execute(SQL)

	if Rs.Eof or Rs.bof then
		isMakeID = "Y"	'아이디가 없는 경우
	else		
		isMakeID = "N"	'아이디가 존재
End if			

Rs.close
Set Rs = nothing

Dbcon.close
Set Dbcon = Nothing


%>
<form name="idch" method="post" action="javascript:chit();">
<table border=0 cellpadding=0 cellspacing=0 width=430>
  <tr> 
    <td><img src="images/pop_duplication.gif" width="430" height="48"></td>
  </tr>
  <tr>
    <td height=17></td>
  </tr>
  <tr bgcolor=#CFCFCF>
    <td height=80> 
   <% IF isMakeID="N" THEN %>
      <table border=0 cellpadding=0 cellspacing=1 width=430 height=80>
        <tr bgcolor=#F0F0F0> 
          <td class=club_tb_02_pop align="center"> 
            <table width="200" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td valign="middle"><span class="text">입력 하신 I D : <%=MemId%></span></td>
                </tr>
                <tr> 
                  <td height="8"></td>
                </tr>
                <tr> 
                  <td><font color="ff8c00" class="orangemenu">아이디가 이미 사용중 입니다</font><BR><INPUT TYPE="text" NAME="memid" style="background-color:#ffffff;font-weight:bold;height:17px;border:1px solid silver;">&nbsp;[<A HREF="javascript:chit();" class="text">검사</A>]</td>
                </tr>
            </table>
          </td>
        </tr>
      </table>
    <%ElseIf isMakeID="Y" THEN %>
      <table border=0 cellpadding=0 cellspacing=1 width=430 height=80>
        <tr bgcolor=#F0F0F0> 
          <td class=club_tb_02_pop align="center"> 
            <table width="200" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td valign="middle"><span class="text">입력 하신 I D : <%=MemId%></span></td>
                </tr>
                <tr> 
                  <td height="8"></td>
                </tr>
                <tr> 
                  <td><font color="ff8c00" class="orangemenu">선택하신 ID는 사용하실 수 있습니다.</font><BR><INPUT TYPE="text" NAME="memid" style="background-color:#ffffff;font-weight:bold;height:17px;border:1px solid silver;">&nbsp;[<A HREF="javascript:chit();" class="text">검사</A>]</td>
                </tr>
            </table>
          </td>
        </tr>
      </table>
    <% END IF %>
    </td>
  </tr>
  <tr>
    <td height=17></td>
  </tr>
  <tr>
    <td height=32 align="center" bgcolor="#FFFFFF"> <a href="javascript:sendit();"><img src="/member/images/bt_ok.gif" width="55" height="17" border="0"></a>&nbsp;<a href="javascript:close();"><img src="/member/images/bt_cancel.gif" hspace=5 width="55" height="17" border="0"></a></td>
  </tr>
</form>
</table>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
function sendit()
{
   opener.document.memform.username.value = "<%=memid%>" ;
   opener.document.memform.idcheck.value = "Y" ;
   opener.document.memform.password.focus();
   this.close() ;   
}
//-->
</SCRIPT>