<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<!DOCTYPE html>
<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"  FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
  Response.Expires = -1 
  Response.Expiresabsolute = Now() - 1 
  Response.AddHeader "pragma","no-cache" 
  Response.AddHeader "cache-control","private" 
  Response.CacheControl = "no-cache" 

  response.buffer = TRUE
'--------------------------------------------
' ��ƮŬ�� ���ȸ�� ������� ���� ó��
' 2005-08-01
' ���α׷� : ���Ѹ� // �׾��� �ڵ� ��ü �����Ͽ� �츲 = YG.
'--------------------------------------------
%>

<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Dim CompSeqNum,CompResNum,CompName

CompSeqNum = ""  '����
CompSeqNum = session("CompSeqNum")
CompResNum = session("CompResNum")
CompName = session("CompName")

'if trim(CompSeqNum)="" or CompResNum = "" or CompName = "" then
'	call alertMsgGoURL ("�α��� ������ �����ϴ�. \n�ٽ� �α����� �ּ���.", "/job/advance_register_info.asp")
'end if	


Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<html>
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

	<title>��Ʈ�������� Ȩ�������� ���� ���� ȯ���մϴ�.</title>
	<!-- #include virtual="/Include/Meta.asp"-->

	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/job/WriteRecruit_script.asp"-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			//$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");
			
			$("#inputZipCode").click(function() {
				alert("�����ȣ�˻� ��ư�� �����ּ���.");
			});
		});
	</script>
	
	<!--<link href="/css/main.css" rel="stylesheet" type="text/css">-->
	<!--
	<script language='javascript' src='/js/BITobject.js'></script>
	<script language='javascript' src='/js/main.js'></script>
	-->
	
	<!-- �����ȣ DAUM API ���� -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function openDAUMapi() {
			new daum.Postcode({
				oncomplete: function(data) {
					$("#inputZipCode").val(data.zonecode);
					$("#inputAddress").val(data.roadAddress + " ");
					$("#inputAddress").focus();
					alert("�ԷµǾ����ϴ�. ���� ���ּҸ� �Է����ּ���.")
				},
				left: -900,
				top: 200
			}).open();
		}
	</script>
	
	<script language="JAVAScript">
	<!-- 
	function right(e) 
	{  
		if (navigator.appName == 'Netscape' &&   (e.which == 3 || e.which == 2))  
			return false;  
		else if (navigator.appName == 'Microsoft Internet Explorer' &&   (event.button == 2 || event.button == 3)) 
		{  
			alert("��Ʈ���������Դϴ�.");  
			return false;  
		}  
	return true;  
	}  
	document.onmousedown=right;  
	if (document.layers) window.captureEvents(Event.MOUSEDOWN);  
	window.onmousedown=right; 

	function saveit()
	{
		var FJ = document.form;

		if(FJ.czipcode.value == "") {
			alert("�����ȣ �� ȸ���ּҸ� �Է����ּ���.");
			FJ.czipcode.focus();
			return;
		}
		
		if(FJ.CompName.value == "") {
			alert("ȸ����� �Է����ּ���.");
			FJ.CompName.focus();
			return;
		}
		
		if(FJ.CompResNum.value == "") {
			alert("����ڵ�Ϲ�ȣ�� �Է����ּ���.");
			FJ.CompResNum.focus();
			return;
		}
		
		if(FJ.Business.value == "") {
			alert("�ַ»���� �Է����ּ���.");
			FJ.Business.focus();
			return;
		}

		if(FJ.Capital.value == "") {
			alert("�ں����� �Է����ּ���.");
			FJ.Capital.focus();
			return;
		}
		
		if(FJ.YearSell.value == "") {
			alert("��������� �Է����ּ���.");
			FJ.YearSell.focus();
			return;
		}
		
		if(FJ.CompanyStaffNum.value == "") {
			alert("�������� �Է����ּ���.");
			FJ.CompanyStaffNum.focus();
			return;
		}
		
		if(FJ.isStock.value == "-1") {
			alert("���忩�θ� �Է����ּ���.");
			FJ.isStock.focus();
			return;
		}

		if(FJ.caddr.value == "") {
			alert("ȸ���ּҸ� �Է����ּ���.");
			FJ.caddr.focus();
			return;
		}
		
		if(FJ.HomePage.value == "") {
			alert("Ȩ�������� �Է����ּ���.");
			FJ.HomePage.focus();
			return;
		}
		
		if(FJ.Welfare.value == "") {
			alert("���������� �Է����ּ���.");
			FJ.Welfare.focus();
			return;
		}
		
		if(FJ.Introduct.value == "") {
			alert("ȸ��Ұ��� �Է����ּ���.");
			FJ.Introduct.focus();
			return;
		}
		
		if(FJ.Department.value == "" ) {
			alert("�����ι��� ������ �ֽʽÿ�")
			FJ.Department.focus();
			return;
		}

		if(FJ.Location.value == "" ) {
			alert("�ٹ����� ������ �ֽʽÿ�")
			FJ.Location.focus();
			return;
		}

		if(FJ.StaffNum.value == "" ) {
			alert("�� �����ο��� ������ �ֽʽÿ�")
			FJ.StaffNum.focus();
			return;
		}

		if(FJ.Operation.value == "" ) {
			alert("�������� ������ �ֽʽÿ�")
			FJ.Operation.focus();
			return;
		}

		if(FJ.DevelopOS.value == "" ) {
			alert("����ȯ���� ������ �ֽʽÿ�")
			FJ.DevelopOS.focus();
			return;
		}

		if(FJ.DevelopDB.value == "" ) {
			alert("����ȯ���� ������ �ֽʽÿ�")
			FJ.DevelopDB.focus();
			return;
		}

		if(FJ.DevelopLang.value == "" ) {
			alert("����ȯ���� ������ �ֽʽÿ�")
			FJ.DevelopLang.focus();
			return;
		}

		if(FJ.Position.selectedIndex==0) {
			alert("ä�������� ������ �ֽʽÿ�")
			FJ.Position.focus();
			return;
		}

		if(FJ.salary.selectedIndex==0) {
			alert("�޿����� ������ �ֽʽÿ�")
			FJ.salary.focus();
			return;
		}

		if(FJ.SelectStep.value == "" ) {
			alert("���������� ������ �ֽʽÿ�")
			FJ.SelectStep.focus();
			return;
		}
		
		if(FJ.Paper.value == "" ) {
			alert("���⼭���� ������ �ֽʽÿ�")
			FJ.Paper.focus();
			return;
		}

		if(FJ.ChargeName.value == "" ) {
			alert("����� ������ ������ �ֽʽÿ�")
			FJ.ChargeName.focus();
			return;
		}

		if(FJ.ChargeTel.value == "" ) {
			alert("��ȭ��ȣ�� ������ �ֽʽÿ�")
			FJ.ChargeTel.focus();
			return;
		}
		if(FJ.ChargeHandphone.value == "" ) {
			alert("�ڵ�����ȣ�� ������ �ֽʽÿ�")
			FJ.ChargeHandphone.focus();
			return;
		}
		
		if(FJ.ChargeEmail.value == "" ) {
			alert("E-MAIL�� ������ �ֽʽÿ�")
			FJ.ChargeEmail.focus();
			return;
		}

		document.form.submit();
		return true;
	}

	//�ڰݿ�� �ҹ� ���ý� ��Ȱ��ȭ
	function setQualiMajor()
	{
		var FJ=document.form;
		if(FJ.chkQuali[3].checked==true){
			FJ.QualiMajor.disabled=true;
			FJ.QualiMajor.style.background = "#CCCCCC";
			FJ.QualiMajor.value=""

		}else{
			FJ.QualiMajor.disabled=false;
			FJ.QualiMajor.style.background = "#FFFFFF";	
		}
	}

	//������ ���ý� ��Ȱ��ȭ
	function setInternTerm()
	{
		var FJ=document.form;
		if(FJ.Job_Type[1].checked==true){
			FJ.Intern_Term.disabled=true;
			FJ.Intern_Term.style.background = "#CCCCCC";
			FJ.Intern_Term.value=""

		}else{
			FJ.Intern_Term.disabled=false;
			FJ.Intern_Term.style.background = "#FFFFFF";	
		}
	}

	//���� ���ý� ��Ȱ��ȭ
	function setCareerYear()
	{
		var FJ=document.form;
		if(FJ.Career[1].checked==true){
			FJ.Career_Year.disabled=true;
			FJ.Career_Year.style.background = "#CCCCCC";
			FJ.Career_Year.value=""

		}else{
			FJ.Career_Year.disabled=false;
			FJ.Career_Year.style.background = "#FFFFFF";	
		}
	}

	function logout()
	{ 
		//location.href = "../job/company_logout.asp";
		return true;
	}
	//-->
	
	function zip_search1()
	{
		window.open("WriteRecruit_Zipsearch.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")	
	}

	</script> 
	<link rel="stylesheet" type="text/css" href="/CSS/Base2017Webfont.css"/>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
 

<!--<body onLoad="MM_preloadImages('/image/employment/menu_05_01.gif','/image/employment/menu_06_01.gif','/image/employment/menu_07_01.gif','/image/employment/menu_08_01.gif','/image/employment/menu_09_01.gif','/image/employment/menu_01_01.gif','/image/employment/menu_02_01.gif','/image/employment/menu_04_01.gif')">-->
<body>
	<style>
		.courseName {
			font-size:15pt !important;
		}
		.detailName {
			font-size:23pt !important;
		}
	</style>
	<style>
		.myTableStyle {
			display: table;
			border-collapse: collapse;
			border-spacing: 1px;
		}
		.myTableStyle td {
			color:#666666;
			height:40px;
			padding:0;
			padding-left:16px;
			border-bottom:1px solid #d9d9d9;
		} /* 	padding:3px 7px;   border:1px solid grey;  */
		.myTableStyle td:not(.first) {
			border-top:1px solid #d9d9d9;
		}
		.myTableStyle td input {
			padding:5px 10px;
			border:none;
		}
		.myTableStyle td textarea {
			padding:5px 10px;
			border:none;
		}
		
		.myTableStyle th {
			display: table-cell;
			text-align:center;
			vertical-align: inherit;
			background-color: #e6e7e7;
			border-bottom:1px solid #d4d5d5;
			padding:1px 5px;
			color:#666666;
			min-height:30px;
			font-size: 16px;
			font-weight: 300;
			letter-spacing: -1px;
		}
		.myTableStyle th:not(.first) {
			border-top:1px solid #d4d5d5;
		}
		.myBold {
			font-weight:600; 
			color:#666666;
		}
		.myBtn {
			color: #ffffff;
			background-color: #73ad21;
			box-shadow: 0 1px 1px rgba(0,0,0,0.12),0 1px 1px rgba(0,0,0,0.24);
			border:none;
			
			height:20px; 
			width:60px; 
			font-size:8pt; 
			/* font-family:'Nanum Gothic Bold'; */
			border-radius:3px;
		}
		.myGrayThin {
			color: #8a8a8a;
			font-weight: 300;
		}
		#Container_Wrap {
			font-family:'SandolGothicNeo2' !important; 
			font-weight:500;
		}
		.divTable {
			border-top:1px solid #004192;
		}
									
	</style>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<div id="Container_Wrap" style="min-height:1570px; font-family:'SandolGothicNeo2' !important; ">
			<div id="Content_Wrap" style="min-height:1570px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_JobCenter_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>�����������
						</p>
						<h4 style="float:left;">�����Ƿ� ��û</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<div id=divMenu  style="margin-left:5px;">
						<div class="myConWrap" style="height:45px; font-size:14px; font-weight:600; line-height:22px; margin-bottom:20px;"> 
							<p class="blueTxt">�Ʒ��� ä�������� �Է��Ͻø� ��Ʈ�������� ����� �����Ƿڸ� �����Ͻ� �� �ֽ��ϴ�.</p>
							<p class="blueTxt">���� : 02-3486-3456 (job@bit.kr)</p>
						</div>
						
						<!-- �������� -->
						<div style="width:100%;">
							<FORM id="form" name="form" method="post" action="WriteRecruit_page2.asp">
								<!--
								<input type="hidden" name="CompSeqNum" value=" < % = CompSeqNum%>" >
								<input type="hidden" name="CompResNum" value="< % = CompResNum%>" >
								<input type="hidden" name="CompName" value="< % = CompName%>" >
								-->
								<div>
									<!--<span style="font-size:12pt;"><b>�� ��������</b></span>-->
									<span style="float:right; margin-bottom:5px; margin-right: 10px; color:#7a7a7a; font-size: 14px;"><span class="redTxt">* </span>�׸��� �ݵ�� ����</span>
								</div>
								<div style="clear:both;"></div>

								<div class="divTable">
									<table border="0" width="60%"  cellspacing="1" cellpadding="3" class="myTableStyle myGrayThin" >
										<colgroup>
											<col style='width:22%;'>
											<col style='width:78%;'>
										</colgroup>
										<tbody>
											<tr>
												<th class="first" width="90">ȸ���<span class="redTxt">*</span></th><!--*-->
												<td class="first"> 
													<input name="CompName" style="width:96%;" class="text" maxlength="50">
												</td>
											</tr>

											<tr>
												<th width="90">����ڵ�Ϲ�ȣ<span class="redTxt">*</span></th>
												<td> 
													<input name="CompResNum" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">(�� : 123-45-67890)</span>
												</td>
											</tr>

											<tr>
												<th width="90">�ַ»��<span class="redTxt">*</span></th>
												<td> 
													<input name="Business" style="width:96%; " class="text" maxlength="50">
												</td>
											</tr>

											<tr>
												<th width="90">�ں���<span class="redTxt">*</span></th>
												<td> 
													<input name="Capital" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">���</span>
												</td>
											</tr>

											<tr>
												<th width="90">�������<span class="redTxt">*</span></th>
												<td> 
													<input name="YearSell" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">���</span>
												</td>
											</tr>

											<tr>
												<th width="90">������<span class="redTxt">*</span></th>
												<td> 
													<input name="CompanyStaffNum" style="width:32%; " class="text" maxlength="50"> <span class="myGrayThin">��</span>
												</td>
											</tr>

											<tr>
												<th width="90">���忩��<span class="redTxt">*</span></th>
												<td> 
													<select name="isStock" style="height:28px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
														<option value="-1" selected>����</option>
														<option value="1">����</option>
														<option value="0">�����</option>
													</select>
												</td>
											</tr>

											<tr>
												<th rowspan="2" width="90">ȸ���ּ�<span class="redTxt">*</span></th>
												<td> 
													<input id="inputZipCode" type="text" name="czipcode" maxLength="7" size="7" value="" style="margin:3px;">
													<!--<input name="zipsearch" type="button" value="�����ȣ�˻�" align="left" size="16" onclick="javascript:openDAUMapi()" style="background-color:#8fd9e7; padding:1px 5px; height:25px; ">
													<a href="/Register/Request/register_shortCourse.asp?cID=C2_core" class="btn mid green1">�����ϱ�</a>-->
													<a name="zipsearch" class="myGrayThin" align="left" size="16" onclick="javascript:openDAUMapi()" style="font-size:13px; padding:6px 14px; line-height: 16px; background-color: #ddddde;">�����ȣ�˻�</a>
												</td>
											</tr>
											<tr>
												<td> 
													<input id="inputAddress" name="caddr" style="width:97%; " class="text" maxlength="50" size="50">
												</td>
											</tr>

											<tr>
												<th width="90">Ȩ������<span class="redTxt">*</span></th>
												<td> 
													<input name="HomePage" style="width:97%; " class="text" maxlength="50">
												</td>
											</tr>

											<tr>
												<th width="90">��������<span class="redTxt">*</span></th>
												<td> 
													<textarea name="Welfare" form="form" cols="60" rows="1" style="width:100%;"></textarea>
												</td>
											</tr>

											<tr>
												<th width="90">ȸ��Ұ�<span class="redTxt">*</span></th>
												<td> 
													<textarea name="Introduct" form="form" cols="60" rows="4" style="width:100%; "></textarea>
												</td>
											</tr>

											<!--<td><textarea name="textareaDevelopEnv" form="Form1" cols="60" rows="2"></textarea></td>-->
											
											
										
											<tr>
												<th width="90">�����ι�<span class="redTxt">*</span></th>
												<td> 
													<input name="Department" style="width:97%; " class="text" maxlength="50">
												</td>
											</tr>

											<tr> 
												<th width="90" >�ٹ���<span class="redTxt">*</span></th>
												<td> 
													<input name="Location" style="width:50%; " class="text" maxlength="20">
												</td>
											</tr>

											<tr> 
												<th width="90" >�����ο�<span class="redTxt">*</span></th>
												<td>
													��&nbsp;<input type=text name="StaffNum" style="width:30px; ;"maxlength="3">&nbsp;��&nbsp;
													(��&nbsp;<input type=text name="StaffNum_M" style="width:20px; ;"maxlength="3">&nbsp;�� / &nbsp;
													��&nbsp;<input type=text name="StaffNum_F" style="width:20px; ;"maxlength="3">&nbsp;��)
												</td>
											</tr>

											<tr> 
												<th width="90" >������<span class="redTxt">*</span></th>
												<td> 
													<input name="Operation" style="width:97%;" class="text" maxlength="200">
												</td>
											</tr>
											
											<tr> 
												<th width="90" rowspan="3">����ȯ��<span class="redTxt">*</span></th>
												<td>
													���OS : <input name="DevelopOS" style="margin-left:10px; width:44%; " class="text" maxlength="40">
												</td>
											</tr>
											<tr>
												<td>
													���DB : <input name="DevelopDB" style="margin-left:10px; width:44%; " class="text" maxlength="40">
												</td></tr>
											<tr>
												<td>
													����� : <input name="DevelopLang" style="margin-left:10px; width:44%; " class="text" maxlength="40">
												</td>
											</tr>
											

											<tr> 
												<th width="90" >�ڰݿ��<span class="redTxt">*</span></th>
												<td>
													<input type="radio" name="chkQuali" value="1000" onClick="javascript:setQualiMajor();" >����&nbsp;&nbsp; &nbsp;
													<input type="radio" name="chkQuali" value="0100" onClick="javascript:setQualiMajor();" checked>����&nbsp;&nbsp; &nbsp;
													<input type="radio" name="chkQuali" value="0010" onClick="javascript:setQualiMajor();">��������&nbsp;&nbsp; &nbsp;
													<input type="radio" name="chkQuali" value="0001" onClick="javascript:setQualiMajor();">�ҹ� &nbsp; &nbsp; &nbsp; &nbsp;
													�а� : <input name="QualiMajor" style="width:35%;" class="text" maxlength="20">
												</td>
											</tr>
											
											<tr> 
												<th>�������<span class="redTxt">*</span></th>
												<td>
													<input type="radio" name="Job_Type" value="1" onClick="javascript:setInternTerm();" >�����&nbsp;
													<input type="radio" name="Job_Type" value="0" onClick="javascript:setInternTerm();" checked>������&nbsp;
													&nbsp;&nbsp;&nbsp;&nbsp;���Ⱓ : <input name="Intern_Term" style="width:35px; "  maxlength="3">����
												</td>
										</tr>

											<tr> 
												<th width="90" >��»���<span class="redTxt">*</span></th>
												<td>
													<input type="radio" name="Career" value="0" onClick="javascript:setCareerYear();" checked >���Ԥ����&nbsp;&nbsp; &nbsp;
													<input type="radio" name="Career" value="1" onClick="javascript:setCareerYear();">����&nbsp;&nbsp; &nbsp;
													<input type="radio" name="Career" value="2" onClick="javascript:setCareerYear();">���
													<input name="Career_Year" style="width:20px; " class="text"  maxlength="2">�� �̻�
												</td>
											</tr>
											
											<tr> 
												<th>ä������<span class="redTxt">*</span></th>
												<td> 
													<select name="Position" style="height:28px; width:136px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
														<option value="">����</option>
														<option value="0">���(������)</option>
														<option value="1">����/����(������)</option>
														<option value="2">�븮(���ӿ�����)</option>
														<option value="3">����(���ӿ�����)</option>
														<option value="4">����(����������)</option>
														<option value="5">����(����������)</option>
														<option value="6">�ӿ�</option>
														<option value="7">�����İ���</option>
													</select>
												</td>
											</tr>

											<tr> 
												<th>�޿�����<span class="redTxt">*</span></th>
												<td> 
													<select name="salary" style="height:28px; width:136px; margin-left: 5px; margin-top:3px; border-radius:1px;" class="myGrayThin">
														<option value="">����</option>
														<!-- <option value=0>ȸ�系�Կ� ����</option> -->
														<option value="1">1000 ���� ����</option>
														<option value="2">1000~1200����</option>
														<option value="3">1200~1400����</option>
														<option value="4">1400~1600����</option>
														<option value="5">1600~1800����</option>
														<option value="6">1800~2000����</option>
														<option value="7">2000~2200����</option>
														<option value="8">2200~2400����</option>
														<option value="9">2400~2600����</option>
														<option value="10">2600~2800����</option>
														<option value="11">2800~3000����</option>
														<option value="12">3000~3200����</option>
														<option value="13">3200~3400����</option>
														<option value="14">3400~3600����</option>
														<option value="15">3600~3800����</option>
														<option value="16">3800~4000����</option>
														<option value="17">4000~5000����</option>
														<option value="18">5000~6000����</option>
														<option value="19">6000~7000����</option>
														<option value="20">7000~8000����</option>
														<option value="21">8000~9000����</option>
														<option value="22">9000~1���</option>
														<option value="23">1��� �̻�</option>
													</select>
												</td>
											</tr>

											<tr> 
												<th>�������</th>
												<td> 
													<input name="Preference" style="width:60%;" maxlength="50">&nbsp;(�� : �������, OCP���� ��)
												</td>
											</tr>

											<tr> 
												<th>��������<span class="redTxt">*</span></th>
												<td> 
													<input name="SelectStep" style="width:60%;" maxlength="50" >&nbsp;(�� : ���������� �����뺸 ��)
												</td>
											</tr>

											<tr> 
												<th>���⼭��<span class="redTxt">*</span></th>
												<td> 
													<input name="Paper" style="width:60%;" maxlength="50" >&nbsp;(�� : �̷¼�, �ڰ��� �纻 ��)
												</td>
											</tr>

											<tr> 
												<th>�䱸����</th>
												<td>
													<textarea cols=60 name=Need rows="6" style="width:100%; " wrap=hard ></textarea>
												</td>
											</tr>

											<tr> 
												<th>�����<span class="redTxt">*</span></th>
												<td>
													���� : <input name="ChargeName" style="width:16%; ;" type=text maxlength="5">&nbsp;&nbsp;
													�μ� : <input name="ChargeDept" style="width:30%; ;" type=text maxlength="20">&nbsp;&nbsp;
													��å : <input name="ChargeTitle" style="width:14%; ;" type=text maxlength="10">
												</td>
											</tr>
											
											<tr> 
												<th>��ȭ��ȣ<span class="redTxt">*</span></th>
												<td> 
													<input type=text name="ChargeTel" style="width:30%;" maxlength="20"> (�� : 02-1234-5678) 
												</td>
											</tr>
											
											<tr> 
												<th>�ѽ�</font></th>
												<td> 
													<input type=text name="ChargeFax" style="width:30%;" maxlength="20"> (�� : 02-1234-7890)
												</td>
											</tr>
											
											<tr> 
												<th>�޴���<span class="redTxt">*</span></th>
												<td> 
													<input type=text name="ChargeHandphone" style="width:30%;" maxlength="20"> (�� : 010-1234-5678) 
												</td>
											</tr>
											
											<tr> 
												<th>E-Mail<span class="redTxt">*</span></th>
												<td> 
													<input type=text name="ChargeEmail" style="width:60%;" maxlength="100">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div style="margin-top:35px; text-align:center;"> 
									<a href="javascript:saveit();" class="btnBlueBorder" style="border-width:2px; border-radius:0; padding:1px 24px; line-height: 26px;">���� ������</a>
									&nbsp; &nbsp; &nbsp; 
									<a href="javascript:window.history.back();" class="btnWhiteBorder" style="border-color:#9fa0a0; border-width:1px; border-radius:0; padding:1px 24px; line-height:26px;">���</a>
								</div>
								<div style="clear:both;"></div>
								<br/>
							</form>
						</div>
						
					</div>
				</div>
			</div>		
		</div>				
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->	
	</div>
		
</body>

</html>

<%
Dbcon.close
Set Dbcon = nothing
%>

