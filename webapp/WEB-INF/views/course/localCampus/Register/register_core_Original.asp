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
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/member/login.asp?return_url=/register/register_core.asp")
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
 <script language='javascript' src='/js/BITobject.js'></script>
 <script language='javascript' src='/js/main.js'></script>
<!--#include virtual="/register/register_core_script.asp"-->

</head>




 

 <body onLoad="MM_preloadImages('/image/register/menu_06_01.gif','/image/register/menu_07_01.gif','/image/register/menu_08_01.gif','/image/register/menu_09_01.gif','/image/register/menu_01_01.gif','/image/register/menu_02_01.gif','/image/register/menu_03_01.gif','/image/register/menu_04_01.gif','/image/register/menu_05_01.gif')" onLoad="AppForm.select1.value='<%=UCase(code)%>';cngSelectDay('<%=UCase(code)%>');">
 <form name="AppForm" method="POST" action="register_core_Insert.asp">
 <div id=divMenu  style="width:37px; height:233px; position:absolute; left:940px; top:286px; z-index:1;; visibility: visible">

   <table width="84" border="0" cellspacing="0" cellpadding="0">
	 <!-- Top 시작-->
	<!--#include virtual="/top.asp"-->
	 <!-- Top 끝-->

   <tr>

<!--      <td background="/image/register/flashimg_bg.gif"><img src="/image/register/flashimg.jpg" width="965" height="146"></td> -->
	 <td><img src="/image/register/flashimg.gif" width="965" height="146"></td>
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
             <td height="45" background="/image/register/menu_02_top.gif"><table width="701" border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td align="right"><img src="/img/spot.gif" width="7" height="9"> <span class="small">홈 &gt; 수강안내 &gt; 신규지원 &nbsp;</span></td>
               </tr>
             </table></td>
           </tr>
           <tr>
             <td><img src="/image/register/02_b_tittle.gif" width="602" height="42"></td>
           </tr>
 		  <tr>
             <td height="25">&nbsp;&nbsp;<span class="text3">1. 기본등록정보</span></td>
           </tr>
           <tr>
             <td align="center"><table width="680"  border="0" cellspacing="0" cellpadding="0">
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                 </tr>
 				<tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>지원과정</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><select id="select1" style="WIDTH: 300px; HEIGHT: 22px" name="select1" onChange="cngSelectDay(this.value)">
					 <option value="" selected>==선택==</option>
			<% 
				'지원과정 DB 에서 가져와서 콤보에 뿌려주기
	        
				sql="SELECT CourseId, CourseName FROM Course WHERE ExpertID = '핵심과정' and key_word like 'open' order by CourseName"
				Set Rs = Dbcon.Execute(SQL)

				if not Rs.EOF then
					
		 		DO While not Rs.EOF
					Response.Write "<option value='"& Rs("CourseID") & "'>"
				    Response.Write Rs("CourseName") & "</option>"
				    Rs.MoveNext 
				loop
				end if
				Rs.Close
			 %>
                     </select></td>
 				</tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>개강일자</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><select id="select3" style="WIDTH: 160px; HEIGHT: 22px" name="select3" onChange="chkApplication(this.form.select1.value, this.value)">
                       <option value="" selected>==선택==</option>
                     </select></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
             	<td height="1" bgcolor="#E9E9E9"></td>
           	  </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>지원종류</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left">
						<select id="select2" style="WIDTH: 160px; HEIGHT: 22px" name="select2">
						<option value="">==선택==</option> 
							<option value=일반지원 selected>일반지원</option>
							<option value=재직자환급지원>재직자환급지원</option>
							<%
								if value="재직자환급지원" then
									select2="재직자환급지원"
								end if
							%>
						 </select>
					  </td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
             	<td height="1" bgcolor="#E9E9E9"></td>
           	  </tr>

<%   
      SQL="Select NameHan, NameEng,Sex, StudResNum, Email,HomePage,PostNum,Address,NowPostNum,NowAddress,TelePhone,HandPhone,bitletter "
      SQL=SQL&" From Member	"&vbcrlf
      SQL=SQL&" Where StudID = " & Studid &"															"&vbcrlf

      Set Rs = Dbcon.Execute(SQL)

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
      homepage=Rs("homepage")
      postnum=Rs("postnum")
      address=Rs("address")
      Nowpostnum=Rs("Nowpostnum")
      Nowaddress=Rs("Nowaddress")
      bitletter=Rs("bitletter")

		     
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
	
	%>
			   <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>이름</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><font color="black">
	                     <input name="user_name" value="<%=NameHan%>"  maxlength="10" size="17" readonly>
						 </font></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
             	<td height="1" bgcolor="#E9E9E9"></td>
           	  </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>영문</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left">이름
                       <input type="text" maxLength="20" size="10" name="user_nameEng_first"  value="<%=nameeng(0)%>">
                       &nbsp; 성
                       <input type="text" maxLength="20" size="5" name="user_nameEng_second"  value="<%=nameeng(1)%>">
						 이름/성을 구분하여 입력</td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>주민등록번호</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left">
						<input name="jumin1" maxLength="6" size="7" readonly value="<%=StudResNum1%>"> 
						<!-- - <input name="jumin2" maxLength="7" size="7" readonly  value="<%=StudResNum2%>"></td> -->
						- <input name="jumin2" maxLength="7" size="7" readonly  value="*******"></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>성별</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left">
					 
         <%
			if left(StudResNum2, 1) = "1" then
'           if oRS1("Sex")="0" then
         %>     <input name="sex" type="radio" CHECKED readonly value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;남자 
                <input name="sex" type="radio" value="1" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;여자</td>
         <%
'		   Elseif oRS1("Sex")="1" then
		   Elseif left(StudResNum2, 1) = "2" then
		 %>
               <input name="sex" type="radio" value="0" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;남자 
		       <input name="sex" type="radio" CHECKED value="1" readonly style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none" disabled>&nbsp;여자</td>
		  <%  
		   End if
		 %> 	   
					   </td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
               <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>E-Mail</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input name="email" size="30" maxlength="30" value="<%=Rs("Email")%>"></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>HomePage</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left">
						<input name="homepage" size="50" maxlength="50" <% if Rs("HomePage") <>""  then %> value="<%=Rs("HomePage")%>" <%else%>value="http://"<%end if%>>>
					 
					 </td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>우편번호</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" name="czipcode" maxLength="7" size="7" value="<%=PostNum%>">
                       <input name="zipsearch" type="button" value="우편번호검색" style="WIDTH: 81px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; HEIGHT: 19px; BORDER-BOTTOM-STYLE: none" align="left" size="16"></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>주민등록상 주소</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" maxlength="50" size="50" value="<%=Rs("Address")%>"  align="left" name="caddr"></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>우편번호</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" name="czipcode2" maxLength="7" size="7" value="<%=NowPostNum%>">
                       <input  type="button" onclick="zip_search2()" value="우편번호검색" style="WIDTH: 81px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; HEIGHT: 19px; BORDER-BOTTOM-STYLE: none" align="left" size="16">
                       <input type=checkbox name=sendaddr onclick="chk_sendaddr(this.form)" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none"> 
                       위의 주소와 동일함</td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>현주소</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" maxlength="50" size="50" value="<%=Rs("NowAddress")%>" align="left" name="caddr2"></td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>연락처</strong><span class="style5"><strong> * </strong></span></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" name="HomeTel1"   maxlength="3" size="4" value="<%=Tel(0)%>">
                       -
                         <input type="text" maxlength="4" name="HomeTel2" size="4" value="<%=Tel(1)%>">
                         -
                        <input type="text" name="HomeTel3"   maxlength="4" size="5" value="<%=Tel(2)%>">
                         &nbsp;(예: 02-1111-1111)</td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
 			  <tr>
                 <td><table width="100%"  border="0" cellpadding="0" cellspacing="0">
                   <tr>
                     <td width="130" height="35" bgcolor="#F5F5F5" align="center"><strong>핸드폰</strong></td>
                     <td width="15">&nbsp;</td>
                     <td align="left"><input type="text" maxlength="3" name="HandPhone1" size="4" value="<%=Hand(0)%>">
                       -
                         <input type="text" maxlength="4" name="HandPhone2" size="4" value="<%=Hand(1)%>">
                         -
                         <input type="text" name="HandPhone3" maxlength="4" size="5" value="<%=Hand(2)%>">
                         &nbsp;(예:011-1111-1111)</td>
                   </tr>
                   <tr>
                     <td height="1" colspan="3" bgcolor="#E9E9E9"></td>
                   </tr>
                 </table></td>
               </tr>
	<% Rs.Close
	   '**********************************************************************************************************************************  
    %>
			  <tr>
                  <td height="30" >
					<font color = "red">* 위의 개인정보 항목들은 개인정보에서 수정하시기 바랍니다.</font>
					</br><a href="/member/member_mod.asp"><img src="/image/register/go6.gif"  border="0"></a>
					</td>
               </tr>
 			  <tr>
 			    <td>&nbsp;</td>
 			    </tr>
             </table></td>
           </tr>
 		   <tr>
 			    <td height="30">&nbsp;&nbsp;<strong class="text3">2. 학력등록정보<span class="style5"><strong> *</strong></span></strong></td>
 		   </tr>
 		   <tr>
 			    <td height="25">&nbsp;&nbsp;&nbsp;<span class="style5">* 학력입력은 고등학교부터 입력해 주세요.</span></td>
 		   </tr>
 		   <tr>
              <td align="center"><table width="680"  border="0" cellpadding="0" cellspacing="1" bgcolor="#E9E9E9">
                <tr bgcolor="#F5F5F5" align="center">
                  <td width="206" height="30"><strong>기간</strong></td>
                  <td width="146"><strong>학교</strong></td>
                  <td width="68"><strong>소재지</strong></td>
                  <td width="63"><strong>학위</strong></td>
                  <td width="63"><strong>전공</strong></td>
                  <td width="57"><strong>부전공</strong></td>
                  <td width="69"><strong>졸업구분</strong></td>
                </tr>

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

  		        YYFr=left(Rs("PeriodFr"),4)
			    MMFr=Right(Rs("PeriodFr"),2)
        
				YYEnd=Left(Rs("PeriodTo"),4)
				MMEnd=Right(Rs("PeriodTo"),2) 

  				If i=0 then  
  					selectschool=right(Rs("School"),4) '고등학교/검정고시 구분
				Else	  						  
  					selectschool=right(Rs("School"),3) '대학/대학교/대학원 구분
  				end if
  				
  				if Rs("school")<>"" then
  					School=left(Rs("School"),Instr(Rs("School"),selectschool)-1)'대학/대학교/대학원을 제외한 학교명      							      							      							
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
				     
			else 'DB에 입력된 학력정보가 더이상 없을때 빈문서만 출력한다
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
                <tr bgcolor="#FFFFFF">
                  <td>
 				 <input name="DteFr_<%=i%>"  value="<%=YYFr%>"  size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)">
 		        /
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
		        </select>

 		        <sup>~</sup> 

 		        <input name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();">

 		        /
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
				  <select name=schoolclassify_<%=i%>   style="HEIGHT: 22px;WIDTH: 55px">
				  <option value=""></option>
				  <% if i=0 then%>
						<option value=고등학교 <%if selectschool="고등학교" then%> selected<%end if%>>고등학교</option>
						<option value=검정고시  <%if selectschool="검정고시" then%> selected<%end if%>>검정고시</option>
					<%else%>	
						<option value=" 대학" <%if selectschool=" 대학" then%> selected<%end if%>>대학</option>
						<option value="대학교"  <%if selectschool="대학교" then%> selected<%end if%>>대학교</option>
						<option value="대학원"  <%if selectschool="대학원" then%> selected<%end if%>>대학원</option>			
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
					  <option value="">선택</option>       
					  <option value="졸업" <%if bigo="졸업" then%> selected<%end if%>>졸업</option>
					  <option value="수료" <%if bigo="수료" then%> selected<%end if%>>수료</option>
					  <option value="휴학" <%if bigo="휴학" then%> selected<%end if%>>휴학</option>
					  <option value="재학" <%if bigo="재학" then%> selected<%end if%>>재학</option>
					  <option value="편입졸업" <%if bigo="편입졸업" then%> selected<%end if%>>편입졸업</option>
					  <option value="중퇴" <%if bigo="중퇴" then%> selected<%end if%>>중퇴</option>
					  <option value="자퇴" <%if bigo="자퇴" then%> selected<%end if%>>자퇴</option>
					  </select>
				</td>
		<%Next
       '**************************************************************************************************  		
		%> 
              </table></td>
 		   </tr>
 		   <tr>
 		     <td>&nbsp;</td>
 		   </tr>
 		   <tr>
		     <td height="30">&nbsp;&nbsp;<strong class="text3">3. 향후 전문가과정 지원 희망 </strong></td>
 		   </tr>
 		   <tr>
 		     <td align="center"><table  border="0" width="680" cellspacing="0" cellpadding="0" >
                <tr>
                  <td align=middle height="25" width=15%><input type=radio name=hope style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">
                      <font color=black>희망함</font></td>
                 <td width="85%" height="25"  align=left><input type=radio name=hope style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">
                      <font color=black>희망안함</font></td>
                </tr>
              </table></td>
 		   </tr>
 		   <tr>
 		     <td><iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe></td>
 		   </tr>
 		   <tr>
 		     <td height="35" align="center"><table width="208" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><A HREF="javascript:submit_it()"><img src="/image/register/send_btn.gif" width="120" height="43" border="0"></a></td>
                  <td><a href="/register/register_apply.asp" target="_self"><img src="/image/register/cancel_btn.gif" width="86" height="43" border="0"></a></td>
                  </tr>
              </table></td>
 		     </tr>
 		   <tr>
 		     <td height="50">&nbsp;</td>
 		     </tr>
         </table></td>
       </tr>
     </table></td>
   </tr>
	<!-- BOTTOM 시작-->
	<!--#include virtual="/bottom.asp"-->
	<!-- BOTTOM -->

 </table>
</form>
 </body>

 </html>

<%
'	Rs.close
	Dbcon.close
'	Set Rs = Nothing
	Set Dbcon = Nothing
%>