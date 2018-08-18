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
	call alertMsgGoURL ("로그인 정보가 없습니다. \n다시 로그인해 주세요.", "/localCampus/Member/login.asp?return_url=/localCampus/Register/register.asp&idx=&idx")
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
<!--#include virtual="/localCampus/Register/register_core_script.asp"-->
</head>
<body onLoad="AppForm.select1.value='<%=UCase(code)%>';" onLoad="cngSelectDay('<%=UCase(code)%>');">
<form name="AppForm" method="POST" action="/localCampus/Register/register_core_Insert.asp">
<div id="Wrapper">
	<!-- SkipMenu -->
	<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
	<!-- //SkipMenu -->

	<!-- Header_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Header.asp"-->
	<!-- //Header_Wrap -->
	<div id="Container">
		<div id="Content" class="sub register">
			<h3>신규지원[대학비트과정]</h3>
			<section class="section mar_t40">
				<div class="section_header">
					<h4 class="fl">1. 기본정보등록</h4>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1" summary="기본정보등록 - 지원과정, 지원종류, 이름, 영문, 성별, E-Mail, 주소, 핸드폰, 연락처">
						<caption>Table - 기본정보등록</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">지원과정</th>
								<td colspan="3" class="l">
									<select id="select1" name="select1" onChange="cngSelectDay(this.value)" class="register_course">
										<option value="" selected>==선택==</option>
										<% 
											'지원과정 DB 에서 가져와서 콤보에 뿌려주기
										
											sql="SELECT CourseId, CourseName FROM Course WHERE ExpertID = '지방캠퍼스' and key_word like 'open' order by CourseName"
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
									 </select>
								</td>
							</tr>
							<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
							<tr>
								<th scope="row">개강일자</th>
								<td class="l">
									<select id="select3" name="select3"  onChange="chkApplication(this.form.select1.value, this.value)" class="register_date">
										<option value="" selected>==선택==</option>
									</select>
								</td>
							</tr>
							<tr>
								<th scope="row">지원종류</th>
								<td colspan="3" class="l">
									<select id="select2" style="WIDTH: 160px; HEIGHT: 22px" name="select2">
										<option value="">==선택==</option> 
											<option value=일반지원 selected>일반지원</option>
											<!--<option value=재직자환급지원>재직자환급지원</option>
											<%
												if value="재직자환급지원" then
													select2="재직자환급지원"
												end if
											%>-->
									 </select>
								</td>
							</tr>
							<%   
								  SQL="Select NameHan, NameEng,Sex, StudResNum, Email,HomePage,PostNum,Address,NowPostNum,NowAddress,TelePhone,HandPhone,bitletter "
								  SQL=SQL&" From Member	"&vbcrlf
								  SQL=SQL&" Where StudID = " & Studid &""&vbcrlf

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
								<th scope="row">이름</th>
								<td colspan="3" class="l"><%=NameHan%></td>
							</tr>
							<tr>
								<th scope="row">영문</th>
								<td colspan="3" class="l"><%=nameeng(0)%> .<%=nameeng(1)%></td>
							</tr>
							<tr>
								<th scope="row">성별</th>
								<td colspan="3" class="l">
									<%
										if left(StudResNum2, 1) = "1" then
										'if oRS1("Sex")="0" then
									%>남자 

									<%
										'Elseif oRS1("Sex")="1" then
										Elseif left(StudResNum2, 1) = "2" then
									%>여자
									<%  
										End if
									%> 	  
								</td>
							</tr>
							<tr>
								<th scope="row">E-Mail</th>
								<td colspan="3" class="l"><%=Rs("Email")%></td>
							</tr>

							<tr>
								<th scope="row">주소</th>
								<td colspan="3" class="l"><%=Rs("NowAddress")%></td>
							</tr>
							<tr>
								<th scope="row">핸드폰</th>
								<td colspan="3" class="l"><%=Tel(0)%> - <%=Tel(1)%> - <%=Tel(2)%></td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td colspan="3" class="l"><%=Hand(0)%> - <%=Hand(1)%> - <%=Hand(2)%></td>
							</tr>
						</tbody>
					</table>
					<% Rs.Close
					   '**********************************************************************************************************************************  
					%>
					<p class="mar_t10"> 위의 개인정보 항목들은 개인정보에서 수정하시기 바랍니다. <a href="/localCampus/Member/member_modify.asp" title="개인정보수정" class="mar_l10 btn mid green1">개인정보수정</a></p>
				</div>
			</section>
			<section class="section mar_t40">
				<div class="section_header">
					<h4>2. 학력등록정보</h4>
					<h5>학력입력은 고등학교부터 입력해 주세요.</h5>
				</div>
				<div class="form_type1 bor_solid_top10_green">
					<table border="1" class="table_col_type1" summary="학력등록정보 - 기간, 학교, 소재지, 학위, 전공, 부전공, 졸업구분">
						<caption>Table - 학력등록정보</caption>
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
								<th scope="col">기간</th>
								<th scope="col">학교</th>
								<th scope="col">소재지</th>
								<th scope="col">학위</th>
								<th scope="col">전공</th>
								<th scope="col">부전공</th>
								<th scope="col">졸업구분</th>
							</tr>
						</thead>
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
						<tbody>
							<tr>
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
							</tr>
						</tbody>
						<%Next
						   '**************************************************************************************************  		
							%> 
					</table>
				</div>
				<div class="btn_wrap c pd_t30 pd_b30">
					<a href="javascript:submit_it()" title="" class="btn big green1">지원서제출</a>
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
<%
'	Rs.close
	Dbcon.close
'	Set Rs = Nothing
	Set Dbcon = Nothing
%>