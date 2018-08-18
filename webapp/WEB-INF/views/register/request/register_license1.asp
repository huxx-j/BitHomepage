<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<!--#include Virtual="/Include/common_function.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 

Studid = TRIM(session("Studid"))
idx = TRIM(request("idx"))

If idx="" Then idx=0

'response.write "Studid:"&Studid&"<br>"

if Studid = "" OR isEmpty(Studid) OR isNULL(Studid) then
	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/Register/Request/register_license1.asp")
	response.end
end if

Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db

SQL = "SELECT * FROM Application WHERE StudID="&Studid&" AND idx = "&idx
Set Rs = Dbcon.Execute(SQL)


if Rs.Eof or Rs.bof Then
	isAppYN = "N"
Else
	isAppYN ="Y"
	app_YearMonth = trim(Rs("YearMonth"))
	app_CourseID = trim(Rs("CourseID"))
	app_SecCourseID = trim(Rs("SecCourseID"))
	app_SelectStat = trim(Rs("SelectStat"))
	app_IntervStat = trim(Rs("IntervStat"))
	app_AppliKind = trim(Rs("AppliKind"))
	app_AppliType = trim(Rs("AppliType"))
	app_SelectDateTime = trim(Rs("SelectDateTime"))
	app_SelectSubject = trim(Rs("SelectSubject"))
	app_SelectScore = trim(Rs("SelectScore"))
	app_SelectResult = trim(Rs("SelectResult"))
	app_IntervOpinion = trim(Rs("IntervOpinion"))
	app_Hope = trim(Rs("Hope"))
	app_HopeText = trim(Rs("HopeText"))  
	app_AppliWayID = trim(Rs("AppliWayID"))	
	app_AppliMotive = trim(Rs("AppliMotive"))	
	app_AppWayEtcName = trim(Rs("AppWayEtcName"))
	app_AppWayEtcPosition = trim(Rs("AppWayEtcPosition"))
	app_AppWayEtcRelation = trim(Rs("AppWayEtcRelation"))
	app_ReceiptStat = trim(Rs("ReceiptStat"))	
	app_ReceiptDate = trim(Rs("ReceiptDate"))
	app_ReceiptMethodID = trim(Rs("ReceiptMethodID"))
	app_ReceiptAmount = trim(Rs("ReceiptAmount"))
	app_CardReceiptStat = trim(Rs("CardReceiptStat"))
	app_CardReceiptAmount= trim(Rs("CardReceiptAmount"))
	app_ReceiptNote = trim(Rs("ReceiptNote"))
	app_Note = trim(Rs("Note"))
	app_IsUse = trim(Rs("IsUse"))
	app_InterNo = trim(Rs("InterNo"))
	app_InterNo1 = trim(Rs("InterNo1"))
	app_InterNo2 = trim(Rs("InterNo2"))
	app_InterNo3 = trim(Rs("InterNo3"))
	app_ExecuteCheck = trim(Rs("ExecuteCheck"))
	app_SelectReSubject = trim(Rs("SelectReSubject"))
	app_SelectReScore = trim(Rs("SelectReScore"))
	app_PrintFlag = trim(Rs("PrintFlag"))
	app_AppFrom = trim(Rs("AppFrom"))
	app_AppFromFlag = trim(Rs("AppFromFlag"))
End if			

Rs.close
Set Rs = Nothing

%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel= "shortcut icon" href="/images/favicon.ico">
	<!-- #include virtual="/Include/Meta.asp"-->
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/Register/Request/register_license_script1.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- .btn_refundView �� .btn_refundView2�� /JS/Common.js �� �̺�Ʈ�ڵ鷯 ���� -->
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >
	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		var schoolNameNumber; // [�зµ������] 0 : ù°ĭ, 1 : ��°ĭ, 2 : ��°ĭ, 3 : ��°ĭ.

		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");								// �ű�����
			$(".snb_1709 .newdepth2_wrap").eq(0).addClass("on");						// �ű�����SUB OPEN
			$(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(8).addClass("on");  	// BSPM(��ƮSW���α׷��� �ڰ���)
			
			$('.myBlurAll').on('click', function() {
				$('.myPopup').css('display','none');
				$('.myBlurAll').css('display','none');
				$('body').css('overflow','auto');
			});
			
			$(document).on('click', '#aClose1', function(e) {
				e.preventDefault();
				
				$('.myPopup').css('display','none');
				$('.myBlurAll').css('display','none');			
				$('body').css('overflow','auto');
			});
		});
		
		function OnSelectChangeSchool(num) {
			// selectSchool ������ ����� �� ���� �־��ش�.
		
			if($("#selectSchool0").val() == "����б�" && num==0) { 
				var strPlus = '&schoolType=high';
				ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=0' + strPlus );
				schoolNameNumber = 0;
			} else if(($("#selectSchool1").val() == "���б�" || $("#selectSchool1").val() == "����" || $("#selectSchool1").val() == "���п�") && num==1) { 
				var strPlus = '&schoolType=univ';
				ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=1' + strPlus );
				schoolNameNumber = 1;
			} else if(($("#selectSchool2").val() == "���б�" || $("#selectSchool2").val() == "����" || $("#selectSchool2").val() == "���п�") && num==2) { 
				var strPlus = '&schoolType=univ';
				ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=2' + strPlus );
				schoolNameNumber = 2;
			} else if(($("#selectSchool3").val() == "���б�" || $("#selectSchool3").val() == "����" || $("#selectSchool3").val() == "���п�") && num==3) { 
				var strPlus = '&schoolType=univ';
				ajaxLoad('#myBox1', '', '/Popup/SchoolSearchPopupInclude.asp?schoolNameNumber=3' + strPlus );
				schoolNameNumber = 3;
			} else {
				return;
			}
			//e.preventDefault();
			$(".myPopup").css('display','block');
			$(".myBlurAll").css('display','block');
		}

		function submitCheck() {
			if ( $("#itemInfo_01").val()=='' ) {
				alert("���������� �������ּ���.");
				$("#itemInfo_01").focus();
			} else if($("#inputSchoolName0").val().trim()=='' && $("#inputSchoolName1").val().trim()=='') {
				alert("�зµ���������� �б����� �Է����ּ���.");
				$("#inputSchoolName0").focus();
			} else if( ($("#DteFr_0").val()=='' || $("#DayFr_0").val()=='' || $("#DteEnd_0").val()=='' || $("#DayEnd_0").val()=='') &&
				($("#DteFr_1").val()=='' || $("#DayFr_1").val()=='' || $("#DteEnd_1").val()=='' || $("#DayEnd_1").val()=='') ) {
				alert("�зµ���������� �Ⱓ�� �Է����ּ���.");
				$("#DteFr_0").focus();
			} else {
				document.LicenseApp.submit();
			}
		}
	</script>
	<style>
		.myPopup {
			position:fixed; 
			left:45%; 
			top:15%; 
			
			opacity:1; 
			z-index:10000; 
			
			background-color:#fff;
			font-family:'Nanum Gothic Bold'; 
			font-weight:800;
			
			width:315px;
			height:70%;
			padding:30px;
			border-radius:1px;
			box-shadow: 0 0 80px rgba(0,0,0,0.99);
			
			overflow: scroll;
		}
		.myBlurAll {
			position:fixed;
			left:0;
			top:0;
			width:100%;
			height:100%;
			
			opacity:0.49;
			z-index:9999;
			background-color:#000;
		}
		table.padding2px tr td {
			padding-left:2px;
			padding-right:2px;
			font-size:13px;
		}
	</style>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<script type="text/javascript">
		// (Added : 2017-12-22-YG)
		function onChangeSelect1DB(value) {
			iSelectDay.location = "/Register/Request/register_common_selectdate_license.asp?courseid=" + value;
			SelectSubjectLicense(this);
		}
	</script>								
	<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
	<form name="LicenseApp" method="POST" action="/Register/Request/register_license_insertMMS.asp">
		<input type="hidden" name="idx" value="<%=idx%>">
		<input type="hidden" name="isAppYN" value="<%=isAppYN%>">
		<div id="Wrapper">
			<!-- Header_Wrap -->
			<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
			<!-- //Header_Wrap -->

			<div id="Container_Wrap">
				<div id="Content_Wrap">
					<!-- SNB_Wrap-->
					<!-- #include virtual = "/Include/SNB_Register_1709.asp"-->
					<!-- //SNB_Wrap-->

					<div id="Content">
						<div class="hGroup1709">
							<p>
								<img src="/Images/Icons/icn_Home.png"/>
								<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>������û
								<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�ű�����
							</p>
							<h4>BSPM (��ƮSW���α׷��� �ڰ���)</h4>
						</div>

						<div class="con_wrap1709">
							<section class="section">
								<div class="section_header">
									<h5>�ű�����</h5>
								</div>
								<div class="divTable">
									<table>
										<caption>��Ʈ SW ���α׷��� �ڰ�������</caption>
										<colgroup>
											<col style="width:20%">
											<col style="width:80%">
										</colgroup>
										<tbody>
											<tr>
												<th class="darker c" scope="row">
													<label for="itemInfo_01">��������</label>
												</th>
												<td colspan="3" class="l">
													<!--<select id="itemInfo_01" name="select1_fir"  onchange="return SelectSubjectLicense(this)" style="width:180px" >-->
													<select id="itemInfo_01" name="select1_fir"  onchange="return onChangeSelect1DB(this.value)" style="width:180px" >
													<option value="">====����====</option>
													  <% 	
															SQL="SELECT CourseID,CourseName From   Course"
															SQL=SQL &"   Where  Expertid =  '�ڰ���' and key_word like 'open'"

															Set Rs = Dbcon.Execute(SQL)

															Rs.MoveFirst 
															DO While not Rs.EOF
																If isAppYN="Y" AND app_CourseID = Trim(Rs("CourseID")) Then 
																Response.Write "<option value='"& Rs("CourseID") & "' selected>"
																Else
																Response.Write "<option value='"& Rs("CourseID") & "'>"
																End If 
																Response.Write Rs("CourseName") & "</option>"
																Rs.MoveNext
														   loop
														 %>
													</select>
												</td>
											</tr>
											<tr style="display:none;">
												<th class="darker c" scope="row">
													<label for="itemInfo_02">��������displaynone</label>
												</th>
												<td colspan="3" class="l">
													<select id="itemInfo_02" name="select2" style="width:140px">
														<option value='�Ϲ�����' <%If isAppYN="Y" AND app_AppliType = "�Ϲ�����" Then %>selected<%End if%>>�Ϲ�����</option>
													 </select>
												</td>
											</tr>
											<tr style="display:none;">
												<th class="darker c" scope="row">
													<label for="itemInfo_03">��������displaynone</label>
												</th>
												<td colspan="3" class="l">
													<select id="itemInfo_03" name="select3"  disabled>
														<option value="">�������� ����</option>
													</select>
												</td>
											</tr>

											<tr>
												<th class="darker c" scope="row">
													<label for="itemInfo_04">�����Ͻ�</label>
												</th>
												<td class="l">
													<select id="itemInfo_04" name="select4" onclick="JavaScript:SelectDateCheck()" style="width150px">
													   <option value="">=====����=====</option>
	<%
														'------------------------------------------------------------------------
														'sql="select Studid From Application Where Studid="& Studid &" and AppliKind='������' and ReceiptStat<>'�̳�' and 'ReceiptStat<>'ȯ��' and ReceiptStat<>''"

														SQL="select Studid From Application Where Studid="& Studid &" and AppliKind='������' and ReceiptStat = '�ϳ�' and ReceiptStat<>'ȯ��' and selectResult = '�հ�' and ReceiptStat<>''"

														'�������� �ѹ� ����� ������ �ƴ���...üũ�Ѵ�.
														'ReceipStat -> ����� �Ϸ� �Ǿ����...

														Set Rs = Dbcon.Execute(SQL)
														ExistWork = Rs.recordcount			
														Rs.close
														'------------------------------------------------------------------------
														
														'���� ���� �߿� 9:00 �ΰ�.
														'set hong = server.CreateObject("adodb.recordset")
														'sql ="SELECT SelectDate From SelectDateTable Where right(SelectDate,5) = '9:00'"

														'hong.Open sql, oConn
														
														'NineoClock=oRS1.recordset
														'oRS1.close
														
														'---------------------------------------------
														'set oRS3=server.CreateObject("adodb.recordset")
														'sql ="SELECT SelectDate From SelectDateTable Where right(SelectDate,5) != '9:00'"
														
														'oRS3.Open sql, oConn		
														
														'---------------------------------------------

														'sql="select SelectDate From SelectDateTable Where S_Max > S_Current and selectdate like '"&left(date,7)&"%' and ExpertID='�ڰ���' order by selectdate"
														'(���ĳ�) ��¥ ������ �ɷ��ִ� �κ��� ������. (selectdate like '%left(date,7)%')
														SQL="select SelectDate From SelectDateTable Where S_Max > S_Current and ExpertID='�缺����' order by selectdate"
														'���� �������� ���� ���� �����ߴ��� Ȯ���Ѵ�. (tcoms���� ������ ���� Ǯ��)

														Set Rs = Dbcon.Execute(SQL)					
														totselectDate = Rs.recordcount 
														
														'---------------------------------------------

														'ùŸ���� 9���� ��� ���� ������ ���� ����ų� ���� ��� �ִ� ����� ��û�� �� �ִ�
														
														if not Rs.BOF and Rs.EOF then'�������� ������ 9�ò��� ����� �Ҹ��Դϴ�.
														
														  if mid(Rs("SelectDate"),12,5)="08:00" then
																		
																if ExistWork > 0 then  ' �������� �ѹ��̻� ����� ������ �ƴ��� üũ
																	Response.Write "<option value='"& Rs("SelectDate")&"'>"'selectDate = ���� ��-��-��
																	Response.Write Rs("SelectDate") & "</option>" 
																end if
															
														  else
																Response.Write "<option value='"& Rs("SelectDate")&"'>"
																Response.Write Rs("SelectDate") & "</option>" 			  
														  end if	
														  Rs.movenext
														  
														end if			

														'---------------------------------------------
														do while not Rs.EOF

															
																'Response.Write "<option value='"& oRS1("SelectDate")&"'>"
																'Response.Write oRS1("SelectDate") & "</option>" 

																if mid(Rs("SelectDate"),12,5)="08:00" then
																		
																if ExistWork > 0 then  ' �������� �ѹ��̻� ����� ������ �ƴ��� üũ
																	Response.Write "<option value='"& Rs("SelectDate")&"'>"'selectDate = ���� ��-��-��
																	Response.Write Rs("SelectDate") & "</option>" 
																end if
																
														  else
																Response.Write "<option value='"& Rs("SelectDate")&"'>"
																Response.Write Rs("SelectDate") & "</option>" 			  
														  end if	
															
															Rs.movenext
															i=i+1
															
														loop   
														Rs.Close
	%>
														<%

														 SQL="Select NameHan, NameEng,Sex, StudResnum, Email,HomePage,PostNum,Address,NowPostNum,NowAddress,TelePhone,HandPhone,Smoke,Paper "
														 SQL=SQL&" From Member																					"&vbcrlf
														 SQL=SQL&" Where StudID = "&Studid&"															"&vbcrlf

														 Set Rs = Dbcon.Execute(SQL)	
														 
														 StudResnum = TRIM(Rs("StudResnum"))
														 StudResnum1 = left(StudResnum, 6)
														 StudResnum2 = right(StudResnum, 7)
														 
														 if Rs("TelePhone") = "" then		
															redim tel(3)      	
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
															redim hand(3)
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
													   Paper=replace(Rs("Paper"),"<br>",chr(13)&chr(10))
													   Smoke=Rs("Smoke")
														 %>
													</select> 
													<input type=hidden value="<%=totSelectDate%>" name="totselectdate"> 
												</td>
											</tr>
											<tr>
												<th class="darker c" scope="row">�̸�</th>
												<td colspan="3" class="l"><%=Rs("NameHan")%></td>
											</tr>
											<tr>
												<th class="darker c" scope="row">����</th>
												<td colspan="3" class="l"><%=Rs("NameEng")%></td>
											</tr>
											<input type="hidden" name="jumin1" value="<%=StudResnum1%>">
											<input type="hidden" name="jumin2" value="<%=StudResnum2%>">	
											<tr>
												<th class="darker c" scope="row">�������</th>
												<td>19<%=Left(StudResnum1, 2)%>�� <%=Mid(StudResnum1, 3, 2)%>�� <%=right(StudResnum1, 2)%>�� ��&nbsp;&nbsp;(�� :<%=Year(date)-Cint("19"&left(StudResnum1,2))%>��)</td>
											</tr>
											<tr>
												<th class="darker c" scope="row">E-Mail</th>
												<td colspan="3" class="l"><%=Rs("Email")%></td>
											</tr>

											<tr>
												<th class="darker c" scope="row">�ּ�</th>
												<td colspan="3" class="l">
													<%=Rs("NowPostNum")%>&nbsp;&nbsp;<%=Rs("NowAddress")%>
												</td>
											</tr>
											<tr>
												<th class="darker c" scope="row">�ڵ���</th>
												<td colspan="3" class="l"><%=Hand(0)%> - <%=Hand(1)%> - <%=Hand(2)%></td>
											</tr>
											<tr>
												<th class="darker c" scope="row">����ó</th>
												<td colspan="3" class="l"><%=Tel(0)%> - <%=Tel(1)%> - <%=Tel(2)%></td>
											</tr>
										</tbody>
									</table>
									<p class="mar_t10 brownTxt"> ���� �������� �׸���� [������������] ���� �����Ͻñ� �ٶ��ϴ�. <a href="/Member/Member_modify.asp" title="������������" class="mar_l10 btnGreenBorder">������������</a></p>
								</div>
							</section>
							
							<div id="myBox1" class="myPopup" style="display:none;">
								<h2>
									<span class="blueTxt" style="font-size:1.6em;">�б� �˻�</span> 
								</h2>
								<br/><p>��ø� ��ٷ��ּ���.</p>
							</div>
							<div class="myBlurAll" style="display:none;"></div>
							
							<section class="section mar_t20">
								<h5>�зµ������</h5>
								<div class="divTable">
									<table class="padding2px">
										<caption>Table - �зµ������</caption>
										<colgroup>
											<col style="width:28%">
											<col style="width:27%">
											<col style="width:15%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:10%">
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
													selectschool=right(Rs("School"),4) '����б�/������� ����
												Else	  						  
													selectschool=right(Rs("School"),3) '����/���б�/���п� ����
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

										<tbody>
											<tr>
												<td>	<!-- �Ⱓ -->
													<input name="DteFr_<%=i%>"  value="<%=YYFr%>" size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)" style="width:33px">
														��
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
														��
														~
													
													<br/>
													<span>&nbsp; &nbsp; &nbsp; &nbsp;</span>
													
													<input name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:33px">
														��
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
														��
												</td>
												<td>		<!-- �б� -->
													<input id="inputSchoolName<%=i%>" name="School_<%=i%>" value="<%=School%>" maxLength="14" size="9" style="width:70px; height:22px;">
													<select id="selectSchool<%=i%>" name=schoolclassify_<%=i%>   style="HEIGHT:22px; WIDTH:85px; background-color:#f7f7ff;" onChange="OnSelectChangeSchool(<%=i%>);">
														<option value="">����</option>
														<% if i=0 then%>
															<option value="����б�" <%if selectschool="����б�" then%> selected<%end if%>>����б�</option>
															<option value="�������" <%if selectschool="�������" then%> selected<%end if%>>�������</option>
														<%else%>
															<option value="����" <%if selectschool="����" then%> selected<%end if%>>����</option>
															<option value="���б�"  <%if selectschool="���б�" then%> selected<%end if%>>���б�</option>
															<option value="���п�"  <%if selectschool="���п�" then%> selected<%end if%>>���п�</option>			
														<%end if%>	
													</select>	
												</td>
												<td>		<!-- ������ -->
													<!--<input name="SchLocation_ < % = i % > " value=" < % = Location % > " maxLength="20" size="7" style="width:60px">-->
													<select name="SchLocation_<%=i%>" value="<%=Location%>" style="width:110px; HEIGHT:22px; background-color:#f7f7ff;">
														<option value="">����</option>
														<option value="">����Ư����</option>
														<option value="">�λ걤����</option>
														<option value="">��õ������</option>
														<option value="">�뱸������</option>
														<option value="">���ֱ�����</option>
														<option value="">����������</option>
														<option value="">��걤����</option>
														<option value="">����Ư����ġ��</option>
														<option value="">��⵵</option>
														<option value="">������</option>
														<option value="">��û����</option>
														<option value="">��û�ϵ�</option>
														<option value="">���ϵ�</option>
														<option value="">��󳲵�</option>
														<option value="">����ϵ�</option>
														<option value="">���󳲵�</option>
														<option value="">����Ư����ġ��</option>
														
													</select>
												</td>
												<td>		<!-- ���� -->
													<% if i=0 then%>
														<input type=hidden name='SchDegree_0' value="">
													<% else%>
														<select name="SchDegree_<%=i%>" style="HEIGHT: 22px;WIDTH: 55px">
															<option value="">����</option>
															<option value="�л�">�����л�</option>
															<option value="�л�">�л�</option>
															<option value="����">����</option>
															<option value="�ڻ�">�ڻ�</option>
															
														</select>
													<%end if%>
												</td>
												<td><input name="SchDepartment_<%=i%>" value="<%=Major%>" maxLength="25" size="8" style="width:60px"></td>
												<td>
													<input name="SchSubDepartment_<%=i%>" value="<%=SubMajor%>" maxLength="25" size="7" style="width:60px">
													<input type="hidden" name="Num_<%=i%>" value="<%=Num%>">
												</td>
												<td>
													<select name="Bigo_<%=i%>" style='HEIGHT: 22px;WIDTH: 55px'>
														  <option value="">����</option>
														  <option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
														  <option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
											<%'		      <option value="����" <'%if bigo="����" then%'> selected<'%end if%'>>����</option>%>
														  <option value="��������" <%if bigo="��������" then%> selected<%end if%>>��������</option>
											<%'		      <option value="����" <'%if bigo="����" then%'> selected<'%end if%'>>����</option>%>
														  <option value="��������" <%if bigo="��������" then%> selected<%end if%>>��������</option>
														  <option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
														  <option value="����" <%if bigo="����" then%> selected<%end if%>>����</option>
														<option value="0"> </option>
														<option value="-">�����С�</option>
														<option value="��1/1" <%if bigo="��1/1" then%> selected<%end if%>>1�г�1�б�</option>
														<option value="��1/2" <%if bigo="��1/2" then%> selected<%end if%>>1�г�2�б�</option>
														<option value="��2/1" <%if bigo="��2/1" then%> selected<%end if%>>2�г�1�б�</option>
														<option value="��2/2" <%if bigo="��2/2" then%> selected<%end if%>>2�г�2�б�</option>
														<option value="��3/1" <%if bigo="��3/1" then%> selected<%end if%>>3�г�1�б�</option>
														<option value="��3/2" <%if bigo="��3/2" then%> selected<%end if%>>3�г�2�б�</option>
														<option value="��4/1" <%if bigo="��4/1" then%> selected<%end if%>>4�г�1�б�</option>
														<option value="��4/2" <%if bigo="��4/2" then%> selected<%end if%>>4�г�2�б�</option>

														<option value="0"> </option>
														<option value="-">�����С�</option>
														<option value="��1/1" <%if bigo="��1/1" then%> selected<%end if%>>1�г�1�б�</option>
														<option value="��1/2" <%if bigo="��1/2" then%> selected<%end if%>>1�г�2�б�</option>
														<option value="��2/1" <%if bigo="��2/1" then%> selected<%end if%>>2�г�1�б�</option>
														<option value="��2/2" <%if bigo="��2/2" then%> selected<%end if%>>2�г�2�б�</option>
														<option value="��3/1" <%if bigo="��3/1" then%> selected<%end if%>>3�г�1�б�</option>
														<option value="��3/2" <%if bigo="��3/2" then%> selected<%end if%>>3�г�2�б�</option>
														<option value="��4/1" <%if bigo="��4/1" then%> selected<%end if%>>4�г�1�б�</option>
														<option value="��4/2" <%if bigo="��4/2" then%> selected<%end if%>>4�г�2�б�</option>
												  </select>
												</td>
											</tr>
											<%Next
												Rs.close
											 '**************************************************************************************************  		
											%> 
										</tbody>
									</table>
								</div>
							</section>

							<div class="btn_wrap c">
								<!-- �ּ�ȭ : <a href="javascript:submit_it()" title="" class="btn mid green1">�����ϱ�</a>-->
								<a href="javascript:submitCheck();" title="" class="btnGreenBorder big" style="width:64px;">�����ϱ�</a>
								<a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:64px;">���</a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Footer_Wrap -->
			<!-- #include virtual="/Include/FooterHTML1709.asp"-->
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