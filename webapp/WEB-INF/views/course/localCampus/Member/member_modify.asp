<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Studid = TRIM(session("Studid"))

'response.write "Studid:"&Studid&"<br>"

if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/member/login.asp?return_url=/member/member_mod.asp")
	response.end
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!--<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0">-->
<meta http-equiv="X-UA-Compatible" content="IE=8">

<!-- CSS  -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- Script -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<!--#include virtual="/member/member_mod_script.asp"-->
</head>
<body onLoad="MM_preloadImages('/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_01_01.gif','/image/member/menu_02_01.gif','/image/member/menu_03_01.gif','/image/member/menu_04_01.gif','/image/member/menu_05_01.gif','/image/member/menu_06_01.gif','/image/member/menu_07_01.gif','/image/member/menu_08_01.gif','/image/member/menu_09_01.gif')">
<form name="memform" method="POST" action="/localCampus/Member/member_mod_ok.asp">
<div id="Wrapper">
	<!-- SkipMenu -->
	<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
	<!-- //SkipMenu -->

	<!-- Header_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Header.asp"-->
	<!-- //Header_Wrap -->
	<div id="Container">
		<div id="Content" class="sub register">
			<h3>������������</h3>
			<section class="section mar_t40">
				<div class="section_header">
					<h4 class="fl">1. �⺻�������[����]</h4>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1 member_modify" summary="�⺻�������[����]">
						<caption>Table - �⺻�������[����]</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
						<%   
							  SQL="Select LoginID, NameHan, NameEng,Sex, StudResNum, Email,HomePage,PostNum,Address,NowPostNum,NowAddress,TelePhone,HandPhone,bitletter "
							  SQL=SQL&" From Member	"&vbcrlf
							  SQL=SQL&" Where StudID = " & Studid &"															"&vbcrlf

							  Set Rs = Dbcon.Execute(SQL)

							  LoginID=Rs("LoginID")
							  NameHan=Rs("NameHan")

							  nameeng=split(Rs("nameeng"),",")
							  if ubound(nameeng)<1 then
								redim nameeng(2)
								nameeng(0)=Rs("nameeng")
								nameeng(1)=""
							  end if

							  StudResNum1=LEFT(Rs("StudResNum"), 6)
							  StudResNum2=RIGHT(Rs("StudResNum"), 7)
							  sex=Rs("sex")
							  email=Rs("email")
							  homepage=TRIM(Rs("homepage"))
							  postnum=Rs("postnum")
							  address=Rs("address")
							  Nowpostnum=Rs("Nowpostnum")
							  Nowaddress=Rs("Nowaddress")
							  bitletter=Rs("bitletter")

							if homepage = "" then
								homepage="http://"
							end if


									 
							  if Rs("TelePhone") = "" then		
								redim Tel(3)      	
								Tel(0) = ""
								Tel(1) = ""
								Tel(2) = ""		     
							  else 	   			
								 Tel=split(Rs("TelePhone"),"-")
								if ubound(tel)<2 then
									redim tel(3)
									tel(0) = ""
									tel(1) = ""
									tel(2) = ""
								end if
							 end if
									
							 if Rs("HandPhone") = "" then
								Redim Hand(3)
									Hand(0)=""
									Hand(1)=""		  
								 Hand(2)=""
							 else	    
									Hand=split(Rs("HandPhone"),"-")
								if ubound(Hand)<2 then
									redim Hand(3)
										Hand(0)=""
										Hand(1)=""		  
									Hand(2)=""
								end if      
							end if 

							Rs.Close
							
							%>
							<tr>
								<th scope="row">�ѱ��̸�</th>
								<td class="l"><%=NameHan%></td>
							</tr>
							<tr>
								<th scope="row">���� �̸�</th>
								<td class="l">
									�̸� : <input type="text" maxLength="30" size="15" name="user_nameEng_first"  value="<%=nameeng(0)%>">
									��: <input type="text" maxLength="20" size="5" name="user_nameEng_second"  value="<%=nameeng(1)%>"> �̸�/���� �����Ͽ� �Է�
								</td>
							</tr>
							<tr>
								<th scope="row">���̵�</th>
								<td class="l"><%=LoginID%></td>
							</tr>
							<tr>
								<th scope="row">��й�ȣ</th>
								<td class="l">
									<input name="password" type="password" class="slim_input" id="pw">
									<span class="mar_l5">��,�ҹ��ڸ� �����մϴ�.</span>
								</td>
							</tr>
							<tr>
								<th scope="row">��й�ȣȮ��</th>
								<td class="l">
									<input name="confirm_pwd" type="password" class="slim_input" id="pw2">
									<span class="ks1">�ѹ� �� ��й�ȣ�� �Է��Ͽ� �ּ���.</span>
								</td>
							</tr>
							<tr>
								<th scope="row">�ֹε�Ϲ�ȣ</th>
								<td class="l"><%=StudResNum1%> - *******</td>
							</tr>
							<tr>
								<th scope="row">����</th>
								<td class="l">
									<%
										if left(StudResNum2, 1) = "1" then
										'if oRS1("Sex")="0" then
									%>
										<input name="sex" type="radio" CHECKED readonly value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;���� 
										<input name="sex" type="radio" value="1" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;����</td>
									<%
										'Elseif oRS1("Sex")="1" then
										Elseif left(StudResNum2, 1) = "2" then
									%>
										<input name="sex" type="radio" value="0" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;���� 
										<input name="sex" type="radio" CHECKED value="1" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;����</td>
									<%  
									End if
									%> 
								</td>
							</tr>
							<tr>
								<th scope="row">��ȭ��ȣ</th>
								<td class="l">
									<input type="text" name="telephone1"   maxlength="3" size="4" value="<%=Tel(0)%>"> - 
									<input type="text" maxlength="4" name="telephone2" size="4" value="<%=Tel(1)%>"> - 
									<input type="text" name="telephone3"   maxlength="4" size="5" value="<%=Tel(2)%>"> &nbsp;(��: 02-1111-1111)
								</td>
							</tr>
							<tr>
								<th scope="row">�ڵ�����ȣ</th>
								<td class="l">
									<input type="text" maxlength="3" name="handphone1" size="4" value="<%=Hand(0)%>"> -
									<input type="text" maxlength="4" name="handphone2" size="4" value="<%=Hand(1)%>"> - 
									<input type="text" name="handphone3" maxlength="4" size="5" value="<%=Hand(2)%>"> &nbsp;(��:011-1111-1111)
								</td>
							</tr>
							<tr>
								<th scope="row">�̸���</th>
								<td class="l"><input name="email" size="30" maxlength="30" value="<%=email%>"></td>
							</tr>
							<tr>
								<th scope="row">Ȩ������</th>
								<td class="l"><input name="homepage" size="30" maxlength="30" value="<%=homepage%>"></td>
							</tr>
							<tr>
								<th scope="row">�����ȣ</th>
								<td class="l">
									<input type="text" name="czipcode" maxLength="7" size="7" value="<%=PostNum%>">
									<input name="zipsearch" type="button" value="�����ȣ�˻�" style="WIDTH: 81px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; HEIGHT: 19px; BORDER-BOTTOM-STYLE: none" align="left" size="16">
								</td>
							</tr>
							<tr>
								<th scope="row">�ֹε�ϻ��ּ�</th>
								<td class="l"><input type="text" maxlength="50" size="50" value="<%=address%>"  align="left" name="caddr"></td>
							</tr>
							<tr>
								<th scope="row">�����ȣ</th>
								<td class="l">
									<input type="text" name="czipcode2" maxLength="7" size="7" value="<%=NowPostNum%>">
									<input  type="button" onclick="zip_search2()" value="�����ȣ�˻�" style="WIDTH: 81px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; HEIGHT: 19px; BORDER-BOTTOM-STYLE: none" align="left" size="16">
									<input type=checkbox name=sendaddr onclick="chk_sendaddr(this.form)" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none"> ���� �ּҿ� ������
								</td>
							</tr>
							<tr>
								<th scope="row">���ּ�</th>
								<td class="l"><input type="text" maxlength="50" size="50" value="<%=Nowaddress%>" align="left" name="caddr2"></td>
							</tr>
							<tr>
								<th scope="row">���ϼ���</th>
								<td class="l">
									<span><input name="bitletter" type="radio" value="yes" <%if bitletter="yes" then%> checked<%end if%>>�̸��ϼ���</span>
									<span class="mar_l20"><input name="bitletter" type="radio" value="no" <%if bitletter="no" then%> checked<%end if%>>�̸��ϼ��ž���</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
			<section class="section mar_t40">
				<div class="section_header">
					<h4>2. �зµ������</h4>
					<h5>�з��Է��� ����б����� �Է��� �ּ���.</h5>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1" summary="�зµ������ - �Ⱓ, �б�, ������, ����, ����, ������, ��������">
						<caption>Table - �зµ������</caption>
						<colgroup>
							<col width="28%">
							<col width="20%">
							<col width="*">
							<col width="*">
							<col width="*">
							<col width="*">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">�Ⱓ</th>
								<th scope="col">�б�</th>
								<th scope="col">������</th>
								<th scope="col">����</th>
								<th scope="col">����</th>
								<th scope="col">������</th>
								<th scope="col">��������</th>
							</tr>
						</thead>
						<tbody>
							 <%
								SQL=""
								SQL="select * from MemberScholarshipBTC "
								SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
								SQL=SQL&"     Order  By periodfr, Num "&vbcrlf
												   
								Set Rs = Dbcon.Execute(SQL)
									
								EdCnt=Rs.RecordCount
								
								'Response.cookies("EdCnt")=EdCnt
								
								For i=0 TO 3

								If not Rs.EOF then 

									YYFr=TRIM(left(Rs("PeriodFr"),4))
									MMFr=TRIm(Right(Rs("PeriodFr"),2))
							
									YYEnd=TRIM(Left(Rs("PeriodTo"),4))
									MMEnd=TRIM(Right(Rs("PeriodTo"),2) )

									If i=0 then  
										selectschool=TRIM(right(Rs("School"),4)) '����б�/������� ����
									Else	  						  
										selectschool=TRIM(right(Rs("School"),3)) '����/���б�/���п� ����
									end if
									
									if Rs("school")<>"" then
										School=left(Rs("School"),Instr(Rs("School"),selectschool)-1)'����/���б�/���п��� ������ �б���      							      							      							
									else	
										school=""
									end if	
									location=Rs("Location")
									degree=Rs("Degree")
									major=Rs("Major")
									submajor=Rs("SubMajor")
									num=Rs("Num")
									bigo=Rs("stat")
									
									Rs.MoveNext	   
										 
								else 'DB�� �Էµ� �з������� ���̻� ������ �󹮼��� ����Ѵ�
										YYFr=""
										MMFr=""
							
										YYEnd=""
										MMEnd=""
										school=""
										selectschool=""
										location=""
										degree=""
										major=""
										submajor=""
										num=""
										bigo=""
								end if	    	 
							%>  
							<tr>
								<td>
									<input name="DteFr_<%=i%>"  value="<%=YYFr%>"  size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)"> /
									<select name="DayFr_<%=i%>" size="1">
										<option value=""></option>
										<% 								    
											For c=1 To 12				
											  IF c < 10 then									  
												Cnt= "0" & Cstr(c)
											  else
												cnt=Cstr(c)								
											  End if	    
											  %>
											   <option <%IF MMFr=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>
										<% Next %>          
									</select> ~
 									<input name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();"> /
									<select name="DayEnd_<%=i%>" size="1">
									<option value=""></option>
										<% 								    
											For c=1 To 12				
											IF c < 10 then									  
											Cnt= "0" & Cstr(c)
											else
											cnt=Cstr(c)								
											End if
										%>
										<option  <%IF MMEnd=Cnt then%> selected<%end if%> value='<%=cnt%>'><%=Cnt%></option>
										<% Next %>          
									</select>
								</td>
								<td>
									<input name="School_<%=i%>" value="<%=School%>" maxLength="14" size="9">
									 <select name="schoolclassify_<%=i%>"   style="HEIGHT: 22px;WIDTH: 55px">
									 <option value=""></option>
									 <% if i=0 then%>
										<option value="����б�" <%if selectschool="����б�" then%> selected<%end if%>>����б�</option>
										<option value="�������"  <%if selectschool="�������" then%> selected<%end if%>>�������</option>
									<%else%>	
										<option value=" ����" <%if selectschool=" ����" then%> selected<%end if%>>����</option>
										<option value="���б�"  <%if selectschool="���б�" then%> selected<%end if%>>���б�</option>
										<option value="���п�"  <%if selectschool="���п�" then%> selected<%end if%>>���п�</option>			
									<%end if%>	
									</select>	
								</td>
								<td><input name="SchLocation_<%=i%>" value="<%=Location%>" maxLength="20" size="7"></td>
								<td>&nbsp;</td>
								<td><input name="SchDepartment_<%=i%>" value="<%=Major%>" maxLength="25" size="8"></td>
								<td><input name="SchSubDepartment_<%=i%>" value="<%=SubMajor%>" maxLength="25" size="7"></td>
								<input type="hidden" name="Num_<%=i%>" value="<%=Num%>">
								<td>
									<select name="Bigo_<%=i%>"  style="HEIGHT: 22px;WIDTH: 55px"> 
										<option value="">����</option>       
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
										<option value="��������" <%if bigo="��������" then%> selected<%end if%>>��������</option>
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
										<option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
									</select>
								</td>
								<%Next
							   '**************************************************************************************************  		
								%> 
							</tr>
							
						</tbody>
						
					</table>
				</div>
				<div class="btn_wrap c pd_t30 pd_b30">
					<a href="javascript:submit_it();" title="" class="btn big green1">�Ϸ�</a>
					<a href="javascript:history.back();" title="" class="btn big white">���</a>
				</div>
			</section>
		</div>
	</div>
	<!-- Footer_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
	<!-- //Footer_Wrap -->
</div>
</form>
</body>
</html>
