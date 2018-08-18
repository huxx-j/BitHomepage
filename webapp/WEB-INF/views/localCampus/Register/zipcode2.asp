<html>
<head>
<title>우편번호를 검색합니다.</title>
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
<Script language=JavaScript>
<!--
function fill_postno(postnum,add,si)
{	
	opener.document.form_regist.applier_postnum_first.value = postnum.substring(0,3);
	opener.document.form_regist.applier_postnum_second.value = postnum.substring(3,6);
	opener.document.form_regist.applier_address1.value    = add;
	
	self.close() ;
}
//-->
</Script>

<form method="POST" name="zip" action="">  
<body bgcolor="#FFFFFF" topmargin=0 leftmargin=0>
<table width="400" border="0" cellspacing="0" cellpadding="10">
  <tr>
    <td>
        <table width="380" border="0" cellpadding="5" cellspacing="1" bgcolor="#ebebeb">
          <tr bgcolor="#3366cc" height=40> 
            <td bgcolor="#4a63b5"><font color="#FFFFFF"><b> 우편번호 검색 / 입력</b></font></td>
        </tr>
        <tr bgcolor="#e0f0ff"> 
            <td align="left" bgcolor="#F5F8F8"> 
              <%
			dim str '우편번호랑 주소 자르기.......^^
			str=Request.Form ("select1")
			zipcode=left(str,7) '우편번호
			i=len(str)-len(zipcode)
			addr=trim(right(str,i))'주소
			%>
              <br>
		  <font color="#3366cc" size=3>우편번호 :</font>&nbsp;&nbsp;<input type="text" name="zip1" size="7"  value="<%=zipcode%>" maxlength="7" style="border-style: solid; width:90px; border-width: 1" >
		  <br>
              <br>
              <font color="#3366cc"size=3>나머지 주소를 기입해주세요.</font>
		  <input type="text"  name="address1" align="left" id="address1" size="50" value="<%=addr%>"  style="border-style: solid; width=350px; border-width: 1">
		  <br><br>
		  <center>
			<%
			if Request("path")="comp" then
			%>
			     <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.AppForm.czipcode2.value=zip.zip1.value; window.opener.AppForm.caddr2.value=zip.address1.value;javascipt:parent.close(this)">			
		  
		   <%
			elseif Request.Cookies("flag")="" then
			%>
			     <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.AppForm.czipcode.value=zip.zip1.value; window.opener.AppForm.caddr.value=zip.address1.value;javascipt:parent.close(this)">
			     <!--<input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.NewIDform.czipcode.value=zip.zip1.value; window.opener.NewIDform.caddr.value=zip.address1.value;javascipt:parent.close(this)">-->			     
			<%	
			else				  
		    select case Request.Cookies("flag") 
				case 2:%>
		       
		           <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.Update_ExitsExpert1.czipcode.value=zip.zip1.value; window.opener.Update_ExitsExpert1.caddr.value=zip.address1.value;javascipt:parent.close(this)">         
         
          <%  case 1:%>
		
				   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.AppForm.czipcode.value=zip.zip1.value; window.opener.AppForm.caddr.value=zip.address1.value;javascipt:parent.close(this)">
         
          <% case 3:%>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.Expert1.czipcode.value=zip.zip1.value; window.opener.Expert1.caddr.value=zip.address1.value;javascipt:parent.close(this)">
		  <% case 4: %>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.short1.czipcode.value=zip.zip1.value; window.opener.short1.caddr.value=zip.address1.value;javascipt:parent.close(this)">
          <% case 5: %>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.work1.czipcode.value=zip.zip1.value; window.opener.work1.caddr.value=zip.address1.value;javascipt:parent.close(this)">
          
          <% case 6: %>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.job1.czipcode.value=zip.zip1.value; window.opener.job1.caddr.value=zip.address1.value;javascipt:parent.close(this)">
          <% case 7: %>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.job.jobpost.value=zip.zip1.value; window.opener.job.address.value=zip.address1.value;javascipt:parent.close(this)">     
          <% case 8: %>   
        
                   <input type="button" value=" 확 인 " name="B3" style="color:black;background-color:#3366699c;border:1 solid black;height:20" onclick="window.opener.job_Exi.jobpost.value=zip.zip1.value; window.opener.job_Exi.address.value=zip.address1.value;javascipt:parent.close(this)">     
          
        
         <% end select
			end if %>
        
          </center>
              <br>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
</form>
</html>
        