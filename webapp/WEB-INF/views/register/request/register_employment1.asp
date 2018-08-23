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
	'if TRIM(session("Studid")) = "" OR isEmpty(TRIM(session("Studid"))) OR isNULL(TRIM(session("Studid"))) then
		call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "http://www.bitacademy.com/Member/login.asp?return_url=http://www.bitacademy.com/Register/Request/register_employment1.asp")
		response.end
	end if

	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	'// ���� : register_employment1.asp �� �Ѿ���� idx ���� ���ٰ� �������Ƿ�, �Ʒ� ó�� "AND idx = ..." ���ٴ� ���� "order by idx desc" �� ������ ���Դϴ�. (2017-11-25-YG)
	'SQL = "SELECT * FROM Application WHERE StudID="&Studid&" AND idx = "&idx
	SQL = "SELECT * FROM Application WHERE StudID="&Studid&" ORDER BY idx DESC"
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
	<!--#include virtual="/Register/Request/register_employment_script1.asp"-->

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
			$(".snb_1709 .newdepth2_wrap.no1 .newdepth2").eq(6).addClass("on");  	// ���Ի��ä�뱳�� ON
			
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
			if ( $("#selCourse").val()=='' ) {
				alert("���������� �������ּ���.");
				$("#selCourse").focus();
			} else if($("#inputSchoolName0").val()=='' && $("#inputSchoolName1").val()=='') {
				alert("�зµ�������� �ʼ��Է»����Դϴ�.");
				$("#inputSchoolName0").focus();
			} else if( ($("#DteFr_0").val()=='' || $("#DayFr_0").val()=='' || $("#DteEnd_0").val()=='' || $("#DayEnd_0").val()=='') &&
				($("#DteFr_1").val()=='' || $("#DayFr_1").val()=='' || $("#DteEnd_1").val()=='' || $("#DayEnd_1").val()=='') ) {
				alert("�зµ�������� �ʼ��Է»����Դϴ�.");
				$("#DteFr_0").focus();
			} else {
				document.ExpertApp.submit();
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
			iSelectDay.location = "/Register/Request/register_common_selectdate_expert.asp?courseid=" + value;
			SelectSubject(this);
		}
	</script>								
	<iframe id="iSelectDay" name="iSelectDay" height="0" width="0"></iframe>
	<form name="ExpertApp" method="POST" action="/Register/Request/register_employment_insert1.asp">
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
							<h4>���Ի��ä�뱳��</h4>
						</div>

						<div class="con_wrap1709 bg_none">
							<section class="section">
								<!--<span style="color:blue; font-weight:bold"><br>�� ��������� ��� ���������� ���� ���޵Ǵ� �ڷ��Դϴ�.<br>���Ͻô� ����� �Ի������ϵ� ������ �ۼ��Ͽ� �ֽñ� �ٶ��ϴ�.</span>-->
								<p class="brownTxt" style="font-size:1.2em;">�� �� ��������� ��� ���������� ���� ���޵Ǵ� �ڷ��Դϴ�. <br/>���Ͻô� ����� �Ի������ϵ� ������ �ۼ��Ͽ� �ֽñ� �ٶ��ϴ�.</p>

								<h5>�ű�����</h5>
								<div class="divTable">
									<table>
										<colgroup>
											<col style="width:20%">
											<col style="width:80%">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">��������</th>
												<td colspan="3" class="l">
													<!--<select id="selCourse" style="width:180px;" name="select1_fir"  onchange="return SelectSubject(this)">-->
													<select id="selCourse" style="width:180px;" name="select1_fir"  onchange="return onChangeSelect1DB(this.value)">
													<option value="">==����==</option>
													<option value="ITtelecom_EX">�߾���Ƽ�ڷ���</option>
													<option value="BAinfra_CX">�ߺ���������</option>
													<option value="ivis_EX">�߾��̺�</option>
													<option value="AurosTech_CX">�߿��ν���ũ�����</option>
													<option value="BnEpartners_JX">�ߺ�����ũ��Ʈ�ʽ�</option>
													<option value="PSK_CX">���ǿ�������</option>
													<option value="BITcom">�ߺ�Ʈ��ǻ��</option>
													<option value="Taeha_EX">�����ϸ�īƮ�δн�</option>
													<!--
													<option value="duzon_JX">�ߴ��������</option>
													<option value="LEETECH_CX">�߸���</option>
													<option value="VOICEYE_CX">�ߺ��̽�����</option>
													<option value="Cafe24_JX">��ī��24</option>
													<option value="BITcom">JX(��Ʈ��ǻ��)</option>
													<option value="AurosTech_CX">CX(���ν���ũ�����)</option>
													<option value="PSK_CX">CX(�ǿ�������)</option>
													<option value="BnEpartners_JX">JX(������ũ��Ʈ�ʽ�)</option>
													<option value="Taeha_EX">EX(���ϸ�īƮ�δн�)</option>
													<option value="ivis_EX">EX(���̺�)</option>
													<option value="LEETECH_CX">CX(����)</option>
													<option value="VOICEYE_CX">CX(���̽�����)</option>
													-->

														<% 	
															''' YG : '������'�� ����� �������� �� ������ ���� ���̵��� �ϱ� ���ؼ� -- �Ʒ��� �� ���� �۾��� ���ָ� �˴ϴ� :
															''' 1) �������� <option> �׸� ���� �߰�
															''' 2) �Ʒ� "and CourseID not in (...)" ���� �߰�
															' SQL="SELECT CourseID,CourseName From   Course"
															' SQL=SQL &"   Where  Expertid = '�����Ź' and key_word like 'open'"
															
															' SQL=SQL & " and CourseID not in ('VOICEYE_CX', 'DIGIENCE_CX', 'BANKWARE_JX', 'DAREINC_CX', 'KCTech_CX', 'LEETECH_CX', 'QMC_CX', 'ivis_EX', 'SEMICS_CX','INTEKDIGITAL_JX','BnEpartners_JX')"
															' SQL=SQL & " order by CourseName asc"
															
															' Set Rs = Dbcon.Execute(SQL)
															' If (Rs.EOF) then
															' else

															' Rs.MoveFirst 
															' DO While not Rs.EOF
																' If isAppYN="Y" AND app_CourseID = Trim(Rs("CourseID")) Then 
																' Response.Write "<option value='"& Rs("CourseID") & "' selected>"
																' Else
																' Response.Write "<option value='"& Rs("CourseID") & "'>"
																' End If 
																' Response.Write Rs("CourseName") & "</option>"
																' Rs.MoveNext
														   ' loop
															' Rs.close
															' Set Rs = Nothing
														   ' end if
														 %>
													</select>
												</td>
											</tr>
											<tr style="display:none;">
												<th scope="row">��������</th>
												<td colspan="3" class="l">
													<select id="select" style="width:140px" name="select2">
														<option value='������ȯ������' <%If isAppYN="Y" AND app_AppliType = "������ȯ������" Then %>selected<%End if%>>������ȯ������</option>
													 </select>
												</td>
											</tr>
											<tr>
												<th scope="row">��������</th>
												<td colspan="3" class="l">
													<select style="width: 140px" name="select3"  disabled>
														<option value="">�������� ����</option>
													</select>
												</td>
											</tr>
											<tr>
												<th scope="row">��������</th>
												<td class="l">
													<select id="select4" style="width:140px" name="select4" onclick="JavaScript:SelectDateCheck()">
													   <option value="">==����==</option>
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

											'			sql="select SelectDate From SelectDateTable Where S_Max > S_Current and selectdate like '"&left(date,7)&"%' and ExpertID='������' order by selectdate"
											' (���ĳ�) ��¥ ������ �ɷ��ִ� �κ��� ������. (selectdate like '%left(date,7)%')
														SQL="select SelectDate From SelectDateTable Where S_Max > S_Current and ExpertID='�����Ź' order by selectdate"
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
													</select> <input type=hidden value="<%=totSelectDate%>" name="totselectdate"> 
												</td>
											</tr>
											<tr>
												<th scope="row">�̸�</th>
												<td colspan="3" class="l"><%=Rs("NameHan")%></td>
											</tr>
											<tr>
												<th scope="row">����</th>
												<td colspan="3" class="l"><%=Rs("NameEng")%></td>
											</tr>
											<input type="hidden" name="jumin1" value="<%=StudResnum1%>">
											<input type="hidden" name="jumin2" value="<%=StudResnum2%>">	
											<tr>
												<th scope="row">E-Mail</th>
												<td colspan="3" class="l"><%=Rs("Email")%></td>
											</tr>

											<tr>
												<th scope="row">�ּ�</th>
												<td colspan="3" class="l"><%=Rs("NowPostNum")%>&nbsp;&nbsp;<%=Rs("NowAddress")%></td>
											</tr>
											<tr>
												<th scope="row">�ڵ���</th>
												<td colspan="3" class="l"><%=Hand(0)%> - <%=Hand(1)%> - <%=Hand(2)%></td>
											</tr>
											<tr>
												<th scope="row">����ó</th>
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
							
							<!-- # i n c l ude virtual="/Register/Include/register_info_01.asp" -->
							<!-- From /Register/Include/register_info_01.asp -->
							<%
							'// �۾��ǵ� : (2017-11-������ �۾���) /Register/Include/register_info_01.asp �� ������ ����� ������. �ٸ� �ҽ����� �̸� ����� ���� �幰�� ������ ������ ���ŷο�, Include������ ������ ���� �ʿ並 ������.
							'// ���������δ� register_chung1.asp �� ����� �����ϹǷ�, register_chung1.asp �� ������ ����. ��.
							%>
							<section class="section mar_t20">
								<h5>�зµ������</h5>
								<div class="divTable">
									<table class="padding2px">
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

										  SQL="select * from MemberScholarshipBTC "
										  SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
										  SQL=SQL&"     Order  By periodfr, Num "&vbcrlf
															 
										  Set Rs = Dbcon.Execute(SQL)
										  
										  EdCnt=Rs.RecordCount
										  
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
												<td> <!-- �Ⱓ -->
													<input id="DteFr_<%=i%>" type="text" name="DteFr_<%=i%>"  value="<%=YYFr%>" size=3  maxLength="4" onkeypress="onlyNumber();" onchange="JavaScript:chknext(this)" style="width:33px">
													��
													<select id="DayFr_<%=i%>" name="DayFr_<%=i%>" size="1">
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
													~<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
													<input id="DteEnd_<%=i%>" name="DteEnd_<%=i%>"  size=3 value="<%=YYEnd%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:33px">
													��
													<select id="DayEnd_<%=i%>" name="DayEnd_<%=i%>" size="1">
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
													<input id="inputSchoolName<%=i%>" name="School_<%=i%>" value="<%=School%>" maxLength="14" size="9" style="width:70px; height:22px;" >
													<select id="selectSchool<%=i%>" name=schoolclassify_<%=i%>   style="HEIGHT:22px; WIDTH:85px; background-color:#f7f7ff;" onChange="OnSelectChangeSchool(<%=i%>);">
														<option value="">����</option>
														<% if i=0 then%>
															<option value="����б�" <%if selectschool="����б�" then%> selected<%end if%>>����б�</option>
															<option value="�������" <%if selectschool="�������" then%> selected<%end if%>>�������</option>
														<%else%>
															<option value="���б�"  <%if selectschool="���б�" then%> selected<%end if%>>���б�</option>
															<option value="���п�"  <%if selectschool="���п�" then%> selected<%end if%>>���п�</option>			
															<option value="����" <%if selectschool="����" then%> selected<%end if%>>����</option>														
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
												<td> <!-- ���� -->
													<% if i=0 then%>
													  <input type=hidden name='SchDegree_0' value="">
													  <% else%>
													  <select name="SchDegree_<%=i%>" style="HEIGHT: 22px;WIDTH: 55px">
														<option value="">����</option>
														<%	if (selectschool = " ����") then%>
															<option value=�л� <%if Degree="�����л�" then %> selected<%end if%>>�����л�</option>
															<option value=���� <%if Degree="����" then %> selected<%end if%>>����</option>
															<option value=�ڻ� <%if Degree="�ڻ�" then %> selected<%end if%>>�ڻ�</option>
														<%	elseif (selectschool = "���б�") then%>
															<option value=�л� <%if Degree="�л�" then %> selected<%end if%>>�л�</option>
															<option value=���� <%if Degree="����" then %> selected<%end if%>>����</option>
															<option value=�ڻ� <%if Degree="�ڻ�" then %> selected<%end if%>>�ڻ�</option>
														<%	elseif (selectschool = "���п�") then%>
															<option value=���� <%if Degree="����" then %> selected<%end if%>>����</option>
															<option value=�ڻ� <%if Degree="�ڻ�" then %> selected<%end if%>>�ڻ�</option>
														<%	end if%>
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
											
											<tr>
												<th>����������Ʈ ����/����</th>
												<td colspan="6" class="l"><textarea onkeyup="chklen(this,'������')"  name="papertext"  style="width:100%; height:110px; padding:0px; border:0px"><%=Paper%></textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>
							
							<section class="section">
								<h5>�п�����</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:23%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:37%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">�Ⱓ</th>
												<th scope="col">�����Ⱓ</th>
												<th scope="col">��������</th>
												<th scope="col">�ֿ䱳������</th>
											</tr>
										</thead>
										 <%  '********************************�̷� ���� ��ȸ*************************************************** 
						
											  SQL="select * from MemberEducation "
											  SQL=SQL&"     Where  StudID="&Studid&" "&vbcrlf
											  SQL=SQL&"     Order by Num "&vbcrlf

											  Set Rs = Dbcon.Execute(SQL)

											  SchCnt=Rs.RecordCount            
											  
											For i=0 To 3

											  If not Rs.EOF then
													YYFr=Left(Rs("PeriodFr"),4)
													MMFr=Right(Rs("PeriodFr"),2)        
													YYEnd=Left(Rs("PeriodTo"),4)
													MMEnd=Right(Rs("PeriodTo"),2)
													
													Academy=Rs("Academy")
													Course=Rs("Course")
													Contents=Rs("Contents")
													num=Rs("Num")
													
													Rs.MoveNext	   
														
												
												elseif YYFr<>"" then 'DB�� �Էµ� ��������� ���̻� ������ �󹮼��� ����Ѵ�
														
													YYFr=""
													MMFr=""        
													YYEnd=""
													MMEnd=""
													Academy=""
													Course=""
													Contents=""
													num=""			
													
												end if		
										  %>      
										<tbody>
											<tr>
												<td>
													<input type="text" name="EdDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													��
													<select name="EdDayFr_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For c=1 To 12				
																IF c < 10 then									  
																	Cnt= "0" & Cstr(c)
																else
																	cnt=Cstr(c)								
																End if	    
														%>
														<option value=<%=cnt%> <%IF MMFr=Cnt then%> selected<%end if%>><%=Cnt%></option>
														<% Next %>          
													</select>
													��
													~<br/>&nbsp; &nbsp; &nbsp; 
													<input type="text" name="EdDteEnd_<%=i%>" value="<%=YYEnd%>"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													��
													<select name="EdDayEnd_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For d=1 To 12				
																IF d < 10 then									  
																	Cnt1= "0" & Cstr(d)
																else
																	cnt1=cstr(d)
																End if	    
														%>
																<option value=<%=cnt1%> <%IF MMEnd=Cnt1 then%> selected<%end if%>><%=Cnt1%></option>
														<% Next %>          
													</select>
													��
												</td>
												<td>
													<select name="EdName_<%=i%>"  onchange="JavaScript:togglefaq('faq<%=i%>',this)"   style="HEIGHT: 22px;WIDTH: 140px">
														<option value=""></option>
														<% SQL="select Name1 From IDTable where IDType='�������' order by ID"
														   Set Rs1 = Dbcon.Execute(SQL)
														   switch=false
														   do until Rs1.EOF%>
															<option value='<%=Rs1("Name1")%>' <%if Rs1("Name1")=Academy then %> selected<%end if%>><%=Rs1("Name1")%></option>
														 <%
														   if Rs1("Name1")=Academy then
															switch=true
														   end if
														   Rs1.MoveNext
														   loop
														   Rs1.Close
														   if switch=false and Academy > "" then
																Response.Write "<option value='"& Academy &"' selected>"& Academy &"</option>"		   
														   end if
														%>	  
														<option value="��Ÿ">��Ÿ</option>
													 </select><br>
													 <span ID="faq<%=i%>" style="display:none">
														<input type="text" name="EdEtcName_<%=i%>" value="" style="width:128px;" placeholder="�Է����ּ���."/>
													 </span>
												</td>
												<td><input type="text" name="EdCourseName_<%=i%>" value="<%=Course%>" size="18"></td>
												<td><input type="text" name="EdContents_<%=i%>" value="<%=Contents%>" size="37"></td>
											</tr>
											<input type="hidden" name="Num2_<%=i%>" value="<%=Num%>">
											<%Next
											Rs.Close%> 
										</tbody>
									</table>
								</div>
							</section>
							
							<section class="section">
								<h5>����ٹ����</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:35%">
											<col style="width:20%">
											<col style="width:15%">
											<col style="width:15%">
											<col style="width:5%">
											<col style="width:5%">
											<col style="width:5%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">�Ⱓ</th>
												<th scope="col">ȸ���</th>
												<th scope="col">�μ�</th>
												<th scope="col">�־���/�������α׷�</th>
												<th scope="col">����</th>
												<th scope="col">����</th>
												<th scope="col">��������</th>
											</tr>
										</thead>
										 <%
					 
										SQL="select * From MemberCareerBTC Where StudID="&Studid&""
										SQL=SQL&"     Order by Num "

										 Set Rs = Dbcon.Execute(SQL)
											
											CarrCnt=Rs.RecordCount 
											'Response.cookies("CarrCnt")=CarrCnt
											
											For i=0 To 3
											
											IF not Rs.EOF then		  
														   
												YYFr=TRIM(left(Rs("PeriodFr"),4))
												MMFr=TRIM(Right(Rs("PeriodFr"),2))
									 
												YYEnd=TRIM(Left(Rs("PeriodTo"),4))
												MMEnd=TRIM(Right(Rs("PeriodTo"),2) )

												CompName=Rs("CompName")							
												Department=Rs("Department")
												Operation=Rs("Operation")
												Grade=Rs("Grade")
												Yearpay=Rs("Yearpay")
												RetireReason=Rs("RetireReason")
												Num=Rs("Num")
												
												Rs.MoveNext	   
													 
											else 'DB�� �Էµ� ��������� ���̻� ������ �󹮼��� ����Ѵ�				
												
													YYFr=""
													MMFr=""
									 
													YYEnd=""
													MMEnd=""
													
													CompName=""
													Department = ""
													Grade=""
													Operation=""
													Yearpay=""
													RetireReason=""
													Num=""
											end if	    
														
										%> 
										<tbody>
											<tr>
												<td>
													<input type="text" name="CarrDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();" style="width:30px">
													��
													<select name="CarrDayFr_<%=i%>" size="1">
													<option value=""></option>
													<% 								    
														For c=1 To 12				
															IF c < 10 then									  
																Cnt= "0" & Cstr(c)
															else
																cnt=Cstr(c)								
															End if	    
													%>
															<option value=<%=cnt%> <%IF MMFr=Cnt then%> selected<%end if%>><%=Cnt%></option>
													<% Next %>          
													</select>
													��
													~ <br/>&nbsp; &nbsp; 
													<input type="text" name="CarrDteEnd_<%=i%>" value="<%=YYEnd%>"  maxLength="4" onchange="JavaScript:chknext(this)" onkeypress="onlyNumber();"  style="width:30px">
													��
													<select name="CarrDayEnd_<%=i%>" size="1">
														<option value=""></option>
														<% 								    
															For d=1 To 12				
																IF d < 10 then									  
																	Cnt1= "0" & Cstr(d)
																else
																	cnt1=cstr(d)
																End if	    
														%>
																<option value=<%=cnt1%> <%IF MMEnd=Cnt1 then%> selected<%end if%>><%=Cnt1%></option>
														<% Next %>          
													</select>
													��
												</td>
												<td><input type="text" name="CarrName_<%=i%>" value="<%=CompName%>" style="WIDTH: 125px"></td>
												<td><input type="text" name="CarrDep_<%=i%>" value="<%=Department%>" style="WIDTH: 92px"></td>
												<td><input type="text" name="CarrOp_<%=i%>" value="<%=Operation%>" style="WIDTH: 120px"></td>
												<td><input type="text" name="CarrDegree_<%=i%>" value="<%=Grade%>" style="WIDTH: 35px"></td>
												<td><input type="text" name="CarrYearpay_<%=i%>" value="<%=Yearpay%>" style="WIDTH: 35px"></td>
												<td><input type="text" name="CarrRetire_<%=i%>" value="<%=RetireReason%>" style="WIDTH: 60px" maxlength=100></td>
											</tr>
											<input type="hidden" name="CarrNum_<%=i%>" value="<%=Num%>">
											<%
											Next
											Rs.close
											'*********************************************************************************************************************
											%>
										</tbody>
									</table>
								</div>
							</section>
							<% 
							  '*******************************�ܱ��� ��ȸ**********************************************************************************			
								
								Dim Eng1(5)
								
								Eng1(0)="����"
								Eng1(1)="�Ͼ�"
								Eng1(2)="����"
								Eng1(3)="�Ҿ�"
								Eng1(4)="�߱���"
							   

								SQL="select LangType,EngRead,EngComposit,EngTalk,SecLangType,SecRead,SecComposit,SecTalk  "&vbcrlf
								SQL=SQL&"   FROM   Member						 "&vbcrlf
								SQL=SQL&"   Where  Studid="&Studid&"   "&vbcrlf
									
								Set Rs = Dbcon.Execute(SQL)
								
								EngRead=Rs("EngRead")
								EngComposit=Rs("EngComposit")
								EngTalk=Rs("EngTalk")

								SecLangType=Rs("SecLangType")				
								SecRead=Rs("SecRead")
								SecComposit=Rs("SecComposit")
								SecTalk=Rs("SecTalk")

								Rs.Close
								'set oRS0=nothing
							%>

							<section class="section">
								<h5>�ܱ���</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:8%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:20%">
											<col style="width:25%">
										</colgroup>
										
										<thead>
											<tr>
												<th scope="col">���</th>
												<th scope="col">����</th>
												<th scope="col">�۹�</th>
												<th scope="col">ȸȭ</th>
												<th scope="col">���ν��輺��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="c">����</td>
												<td class="c">
													<input name="Eread" type="radio"  <% If EngRead = "0" Then %> CHECKED <%end if%>  value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��

													 <input name="Eread" type="radio" <% If EngRead = "1" Then %> CHECKED <%end if%>  value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">�� 

													 <input name="Eread" type="radio"  <% If EngRead = "2" Then %> CHECKED <%end if%> value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��
												</td>
												<td class="c">
													<input name="Ewrite" type="radio"  <% If EngComposit = "0" Then %> CHECKED <%end if%> value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��

													 <input name="Ewrite" type="radio" <% If EngComposit = "1" Then %> CHECKED <%end if%> value="1"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��

													 <input name="Ewrite" type="radio" <% If EngComposit = "2" Then %> CHECKED <%end if%> value="2"   style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��
												</td>
												<td class="c">
													<input name="Espeak" type="radio"  <% If EngTalk = "0" Then %> CHECKED <%end if%> value="0" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��

													<input name="Espeak" type="radio" <% If EngTalk = "1" Then %> CHECKED <%end if%>  value="1" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��

													<input name="Espeak" type="radio"  <% If EngTalk = "2" Then %> CHECKED <%end if%> value="2" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none">��
												</td>
												<td class="c">
													<select name="langname1"><option selected>����</option>
													  <%
														  SQL="select LangName,Score from LangGrade where studid="&Studid&" order by langname"
										
														  Set Rs = Dbcon.Execute(SQL)
														  Dim LangName(2),ExamScore(2)
															i=0
															do until Rs.EOF
																LangName(i)=Rs("LangName")
																ExamScore(i)=Rs("Score")							
																Rs.MoveNext
																i=i+1
															loop
															Rs.Close

														  sql="select Name1 from idtable where idtype ='������'"
														  
														  Set Rs = Dbcon.Execute(SQL)
															 do until Rs.EOF %> 
															  
																	<option <%If LangName(0)=Rs("Name1") Then%> selected<%end if%> ><%=Rs("Name1")%></option>
																  
														   <%Rs.MoveNext 
															 Loop
														   %>
												  </select>
												<input name="ExamScore1" value="<%=ExamScore(0)%>" style="WIDTH: 25px"> ��</td>
											</tr>
											<tr>
												<td class="c">
													<select style="WIDTH: 55px" name="SecLangType">		
													  <% For i=0 To 4 %>                 
															  <option <%If SecLangType=Eng1(i) Then%> selected<%end if%>><%=Eng1(i)%></option>
													  <% Next %>
													</select>
												</td>
												<td class="c">
													<input name="Secread" type="radio"  <% If SecRead = "0" Then %> CHECKED <%end if%> value="0">��
													<input name="Secread" type="radio"  <% If SecRead = "1" Then %> CHECKED <%end if%> value="1">��
													<input name="Secread" type="radio"  <% If SecRead = "2" Then %> CHECKED <%end if%> value="2">��
												</td>
												<td class="c">
													<input name="Secwrite" type="radio" <% If SecComposit = "0" Then %> CHECKED <%end if%> value="0">��
													<input name="Secwrite" type="radio" <% If SecComposit = "1" Then %> CHECKED <%end if%> value="1">��
													<input name="Secwrite" type="radio" <% If SecComposit = "2" Then %> CHECKED <%end if%> value="2">��
												</td>
												<td class="c">
													<input name="Secspeak" type="radio"  <% If SecTalk = "0" Then %> CHECKED <%end if%> value="0">��
													<input name="Secspeak" type="radio"  <% If SecTalk = "1" Then %> CHECKED <%end if%> value="1">��
													<input name="Secspeak" type="radio"  <% If SecTalk = "2" Then %> CHECKED <%end if%> value="2">��
												</td>
												<td class="c">
													<select name="langname2"><option selected>����</option>
														  <%
															  Rs.MoveFirst
																 do until Rs.EOF %> 
																  
																		<option <%If LangName(1)=Rs("Name1") Then%> selected<%end if%>><%=Rs("Name1")%></option>
																	  
															   <%Rs.MoveNext 
																 Loop
																 Rs.Close%>		
													  </select>
													<input name="ExamScore2" value="<%=ExamScore(1)%>" style="WIDTH: 25px">��
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>����</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:25%">
											<col style="width:25%">
											<col style="width:10%">
											<col style="width:10%">
											<col style="width:30%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">�Դ���</th>
												<th scope="col">������</th>
												<th scope="col">����</th>
												<th scope="col">���</th>
												<th scope="col">���ʻ���</th>
											</tr>
										</thead>
										
										<tbody>
											<% 
												  SQL="select MilArm,MilRank,MilEnrollDate,MilDischargeDate,MilincompletReason "
												  SQL=SQL&"  From   Member														"&vbcrlf
												  SQL=SQL&"  Where  StudID="&Studid&"                                 "&vbcrlf
												  Set Rs = Dbcon.Execute(SQL)
												  
												  iF  Rs("MilEnrollDate") = "" or isnull(Rs("MilEnrollDate"))  Then
													'
												  else		  
														YYFr1=Left(Rs("MilEnrollDate"),4)
														MMFr1=Mid(Rs("MilEnrollDate"),6,2)
														DDFr1=Right(Rs("MilEnrollDate"),2)  
																	
														YYFr2=Left(Rs("MilDischargeDate"),4)
														MMFr2=Mid(Rs("MilDischargeDate"),6,2)
														DDFr2=Right(Rs("MilDischargeDate"),2) 
												  end if
												  MilArm=Rs("MilArm")
												  MilRank=Rs("MilRank")
												  MilincompletReason=Rs("MilincompletReason")
												  
												  Rs.Close 
											%> 
											<tr>
												<td class="c">
													<input type="text" name="MilYearFr1" value="<%=YYFr1%>" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px">
													��
													<select name="MilMonFr1" size="1">
														<option value=""></option>
														<% 
															For c=1 To 12														
																IF c <10 then									  
																	Cnt= "0" & Cstr(c)
																else
																	cnt=Cstr(c)
																End if 
														%>
																<option <%IF MMFr1=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>								              
														<% Next %>
													</select>   
													��
												</td>
												<td class="c">
													<input type="text" name="MilYearFr2" value="<%=YYFr2%>" maxlength="4" onChange="JavaScript:chknext(this)"  onKeyPress="onlyNumber();" style="width:30px"> 
													��
													<select name="MilMonFr2" size="1">
														<option value=""></option>
														<% 
															For c=1 To 12														
																IF c <10 then									  
																	Cnt2= "0" & Cstr(c)
																else
																	Cnt2=Cstr(c)
																End if 
														%>
																<option <%IF MMFr2=Cnt2 then%> selected<%end if%> value=<%=cnt2%>><%=Cnt2%></option>								              			       
														<% Next %>
													</select>
													��
												</td>
												<td class="c"><input type="text" name="MilArm" value="<%=MilArm%>" style="width:50px"></td>
												<td class="c"><input type="text" name="MilRank" value="<%=MilRank%>" style="width:50px"></td>
												<td class="c"><input type="text" name="MilReason" value="<%=MilincompletReason%>" style="width:190px"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>�ڰ�/����</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">�����</th>
												<th scope="col">����</th>
											</tr>
										</thead>
										<tbody>
											<%
												 SQL="select AcquireDate,LiceName From MemberLiceExamPrize Where StudID ="&Studid
												 SQL=SQL&"     Order by AcquireDate Desc "
									   
												 Set Rs = Dbcon.Execute(SQL)
												
												For i=0 To 1
												
												IF not Rs.EOF then		  
															   
													YYFr=Left(Rs("AcquireDate"),4)
													MMFr=Right(Rs("AcquireDate"),2) 

													LiceName=Rs("LiceName")

													Rs.MoveNext	   
														 
												elseif YYFr<>"" then 'DB�� �Էµ� �ڰ������� ���̻� ������ �󹮼��� ����Ѵ�				
													
														YYFr=""
														MMFr=""
											
														LiceName=""
														Num=""
												end if	    
															
											%>
											<tr>
												<td class="c">
													<input type="text" name="LDteFr_<%=i%>" value="<%=YYFr%>" maxLength="4" onchange="JavaScript:chknext(this)"  onkeypress="onlyNumber();" style="WIDTH: 32px; BORDER-TOP-STYLE: outset; BORDER-LEFT-STYLE: outset">
													��
													<select name="LDayFr_<%=i%>" size="1"> 
														<option value=""></option>	    
														<% 
															For c=1 To 12												
																IF c <10 then									  
																	Cnt= "0" & Cstr(c)
																else 
																	Cnt = cstr(c)
																End if
														%>
																<option <%IF MMFr=Cnt then%> selected<%end if%> value=<%=cnt%>><%=Cnt%></option>								              
															<%Next%>									          
													</select>
													��
												</td>
												<td class="c"><input type="text" name="LName_<%=i%>" value="<%=LiceName%>" style="WIDTH: 300px"></td>
											</tr>
											<%  Next 
													Rs.close
											   %>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>���� �� ��ȹ</h5>
								<div class="divTable">
									<table class="padding2px">
										<colgroup>
											<col style="width:50%">
											<col style="width:50%">
										</colgroup>
										<tbody>
											<tr>
												<td class="l" colspan="2">
													<input name="hope" type="checkbox" value="0" <%If isAppYN="Y" AND InStr(app_Hope, "0")>0 Then %>checked<%End If %>> ���
													<input name="hope" type="checkbox" value="1" <%If isAppYN="Y" AND InStr(app_Hope, "1")>0 Then %>checked<%End If %>>�ؿ����
													<input name="hope" type="checkbox" value="2" <%If isAppYN="Y" AND InStr(app_Hope, "2")>0 Then %>checked<%End If %>>����Ȥ�� ����
													<input name="hope" type="checkbox" value="3" <%If isAppYN="Y" AND InStr(app_Hope, "3")>0 Then %>checked<%End If %>>���п�����
													<input name="hope" type="checkbox" value="4" <%If isAppYN="Y" AND InStr(app_Hope, "4")>0 Then %>checked<%End If %>>����Ư��
													<input name="hope" type="checkbox" value="5" <%If isAppYN="Y" AND InStr(app_Hope, "5")>0 Then %>checked<%End If %>>��Ÿ
												</td>
											</tr>
											<tr>
												<th scope="col" class="tit">���� �� ��ȹ (��ü������)</th>
												<th scope="col" class="tit">���� �������</th>
											</tr>
											<tr>
												<td>
													<textarea onBlur="chklen_plan(this)" name="hopetext" style="width:100%; height:100px; padding:0px; border:0px"><%=app_HopeText%></textarea>
												</td>
												<td>
													<% 
														SQL = "Select  Yearmonth,CourseID,SelectResult,IntervOpinion                                           " & vbCrLf
														SQL = SQL & "From    Application                                                    " & vbCrLf
														SQL = SQL & "Where   Studid = " & studid & "                                        " & vbCrLf
														SQL = SQL & "And    left(YearMonth,7) = (select max(left(YearMonth,7))                              " & vbCrLf
														SQL = SQL & "                             From Application                          " & vbCrLf
														SQL = SQL & "                             Where Studid = " & studid & "             " & vbCrLf
														SQL = SQL & "                             And YearMonth < '" & left(date,7) & "')   " & vbCrLf
														
														Set Rs = Dbcon.Execute(SQL)
														do until Rs.EOF
															Response.Write Rs("YearMonth")&"�� "&Rs("CourseID")&"���� "&Rs("selectresult")&"<br><b>�����ǰ�</b>:"&Rs("IntervOpinion")&"<br>"
															Rs.MoveNext
														Loop
														Rs.Close
													%>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>

							<section class="section">
								<h5>������</h5>
								<div class="divTable">
									<table class="padding2px">
										<tbody>
											<tr>
												<td class="l">
													<select name="smoke" style='width:62'>
														<option value=''>����</option>
														<option value='����' <%if smoke="����" then %> selected<%end if%>>����</option>				
														<option value='0.5������' <%if smoke="0.5������" then %> selected<%end if%>>0.5������</option>
														<option value='1������' <%if smoke="1������" then %> selected<%end if%>> 1������</option>
														<option value='1.5������' <%if smoke="1.5������" then %> selected<%end if%>>1.5������</option>
														<option value='2������' <%if smoke="2������" then %> selected<%end if%>> 2������</option>
														<option value='2.5������' <%if smoke="2.5������" then %> selected<%end if%>>2.5������</option>
														<option value='3������' <%if smoke="3������" then %> selected<%end if%>> 3������</option>
														<option value='3���̻�' <%if smoke="3���̻�" then %> selected<%end if%>>3���̻�</option>				
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</section>
							<!-- // from /Register/Include/register_info_01.asp -->
							
							<div class="btn_wrap c pd_t30 pd_b30">
								<a href="javascript:submitCheck();" title="" class="btnGreenBorder big" style="width:80px;">����������</a>
								<a href="/Register/register_newRequest.asp" title="" class="btnWhiteBorder big" style="width:80px;">���</a>
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