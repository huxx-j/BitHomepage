<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

%>
<html>
<head>
<title>�����ȣ�� �˻��մϴ�.</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
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
-->
</style>
<form method="POST" action="zipcode2.asp"  name="form" id="form">
<body bgcolor="#ffffff" topmargin=0 leftmargin=0>
<table width="400" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td>
      <table width="380" height=100 border="0" cellpadding="5" cellspacing="1" bgcolor="#ebebeb">
        <tr bgcolor="#3366cc" height=30 width=50> 
          <td bgcolor="#4a63b5"><font color="#FFFFFF"><b> �����ȣ �˻� / �Է�</b></font></td>
        </tr >
        <tr bgcolor="#e0f0ff"  width=50> 
          <td bgcolor="#F5F8F8">             
<%
Dong=request("dong") 


'sql="select zipcode+' '+sido+gugun+dong as juso" & vbcrlf
'sql=sql&" from PostCode Where Dong like '%"& Dong &"%'    "& vbcrlf
sql=""
sql="select zipcode,sido,gugun,dong,BUNJI  "&vbcrlf
sql= sql&"  from PostCode Where Dong like '%"& Dong &"%'    "& vbcrlf
sql= sql&"  ORDER BY ZIPCODE  "& vbcrlf
Set Rs = Dbcon.Execute(sql)

'Response.Write SQL
' Response.End 
if Rs.EOF  then
%>
            <div align="center"><font color="#3366cc"><pre>
            </pre>
            �Է��Ͻ� ��/ ��/ ���� �����ϴ�. Ȯ���� �ٽ� �Է����ּ���.</font>
            <pre></pre>
            <INPUT type="button" value="Ȯ ��" id=button1 name=button1 onclick='javascript:history.back()'>
           
             
<%else 
      Rs.MoveFirst 
%>      
            <div align="center"><font color="#3366cc"><pre>
            </pre>�Ʒ� �˻��� �ּ� �� �ش�Ǵ� �ּҸ� �����ϼ���.</font>
              <p>
         
              <select  style="WIDTH:300px; HEIGHT: 22px" name="select1" onchange='javascript:submit()'> 
			  <option selected>************** �� �� *******************</option>
			 
			 <%	
				DO While not Rs.EOF
		        if Rs("BUNJI")= null then
		           juso = Rs("zipcode") &" " & Rs("sido") & " " & Rs("gugun") &" " & Rs("dong") &" " 
		        Else
		           juso = Rs("zipcode") &" " & Rs("sido") & " " & Rs("gugun") &" " & Rs("dong") &" " & Rs("BUNJI")
		     	End if
		     
		     	Response.Write "<option value='"&juso&"'>"
			    Response.Write " "&juso &"  </option>"
			    Rs.MoveNext 
			   
			   loop
			    
			    
			 %>
             
				</select>                
				<Input Type="Hidden" Name="dong" Value="<%=dong%>">  
				<input type=hidden name=path value=<%=Request("path")%>>
		
<%end if%>

          </td>
        </tr>
      </table>
    </td>
  </tr>
 </table>
</body>
</html>



