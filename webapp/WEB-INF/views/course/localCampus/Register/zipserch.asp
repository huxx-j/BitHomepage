
<html>
<head>
<title>�����ȣ�� �˻��մϴ�.</title>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script language="JavaScript">
<!-- 
function sendit()
{
   var str;

   str = document.form.dong.value;
   //���ϴ� ���� ���Կ��� üũ
   if(str == "") {
  alert("�˻��Ͻ� ���鵿 �̸��� �Է��ϼ���     ");
  document.form.dong.focus();
  return true;
  }
document.form.submit();
 }
//-->
</script>
</head>

<style type="text/css">	
<!--
	A:active {text-decoration:none}
	TD, TH {font-size:9pt}
	font {font-size:9pt}

	.black {text-decoration:none;color:black}
	.red {color:red}
	.blue {color:blue}
	.line  {line-height:150%}
	.line1  {text-decoration:none;color:white}
	.line3  {text-decoration:none;color:yellow}
	.line2  {color:#4B7913}
	INPUT
{
    BORDER-RIGHT: gray 1pt outset;
    BORDER-TOP: gray 1pt outset;
    BORDER-LEFT: gray 1pt outset;
    BORDER-BOTTOM: gray 1pt outset;
}
-->
</style>

<body bgcolor="#FFFFFF" topmargin=0 leftmargin=0 onload="document.form.dong.focus();">
<table width="400" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td>
      <table width="380" border="0" cellpadding="5" cellspacing="1" bgcolor="#ebebeb">
        <tr bgcolor="#3366cc" height=30> 
          <td bgcolor="#4a63b5"><font color="#FFFFFF"><b> �����ȣ �˻� / �Է�</b></font></td>
        </tr>
        <tr bgcolor=#e0f0ff> 
          <td bgcolor="#F5F8F8"> 
            <div align="center"><font color="#3366cc"><br>
              �Է��� �ּ� �� </font>��/��/��<font color="#3366cc">�� �̸��� �������ּ���. (��:������)</font><br>
              <br>
              <form method="POST" action="/register/zipcode1.asp" name="form" >
              <input type="text" name="dong" size="20" >
              &nbsp;&nbsp;
              <input type="button" value="�� ��" name="B1" onclick="sendit()" style="color:black;background-color:#3366cc;border:1 solid black;height:20">
              <input type=hidden name=path value=<%=Request.QueryString("path")%>>
              </form>
              <br>
              <br>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
</html>
