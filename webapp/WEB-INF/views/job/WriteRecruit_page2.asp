<!DOCTYPE html>
<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library"  FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
  Response.Expires = -1 
  Response.Expiresabsolute = Now() - 1 
  Response.AddHeader "pragma","no-cache" 
  Response.AddHeader "cache-control","private" 
  Response.CacheControl = "no-cache" 

  response.buffer = TRUE
%>

<!--#include virtual="/include/config.asp"-->
<!--#include Virtual="/include/javaScriptFun.asp"-->

<%
Set Dbcon = Server.CreateObject("ADODB.Connection")
Dbcon.Open Con_bit_db
%>

<%
	' declare variables for Company table -- ..._ok.asp �� �״�� ���� (2016-10-24).
	Dim CompName	'ȸ���
	Dim CompResNum	'����ڵ�Ϲ�ȣ
	Dim Business	'�ַ»��
	Dim Capital		'�ں���
	Dim YearSell	'�������
	Dim CompanyStaffNum 'ȸ�� ������
	Dim isStock		'���忩��
	Dim czipcode	'�����ȣ
	Dim caddr		'ȸ���ּ�
	Dim HomePage	'Ȩ������
	Dim Welfare		'��������
	Dim Introduct	'ȸ��Ұ�

	getParam4Company()


    Dim Department,Location,StaffNum,StaffNum_M,StaffNum_F,Operation,DevelopOS,DevelopDB,DevelopLang,chkQuali,QualiMajor
	Dim Job_Type,Intern_Term,Career,Career_Year,Position,salary,Preference
	Dim SelectStep,Paper,Need
	Dim ChargeName,ChargeDept,ChargeTitle,ChargeTel,ChargeFax,ChargeHandphone,ChargeEmail

    getParam()

	Dim IsAgreeLicensePartnership	' ��Ʈ�ڰ��� ���࿩�� 'YES' or 'NO'
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
	
	<!--<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">-->
	
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		var strAgreeYesNo = "";
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//$(".snb_1702 .newdepth1").eq(1).addClass("on");
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");

			
			$("#btnYes").on("click", function() {
				//$("#btnYes").attr("class","btn green1");
				//$("#btnNo").attr("class","btn white");
				$("#btnYes").attr("class","btnGreenBorder big mar_l20");
				$("#btnNo").attr("class","btnWhiteBorder big mar_l20");
				strAgreeYesNo = "YES";
			});
			$("#btnNo").on("click", function() {
				//$("#btnYes").attr("class","btn white");
				//$("#btnNo").attr("class","btn green1");
				$("#btnYes").attr("class","btnWhiteBorder big mar_l20");
				$("#btnNo").attr("class","btnGreenBorder big mar_l20");
				strAgreeYesNo = "NO";
			});
			
		});
		
	</script>
	
	<link href="/css/main.css" rel="stylesheet" type="text/css">
	<script language='javascript' src='/js/BITobject.js'></script>
	<script language='javascript' src='/js/main.js'></script>

	<script language="JAVAScript">
	function saveit()
	{
		//var FJ = document.form;

		if(strAgreeYesNo == "") {
			alert("������ �������θ� �������ּ���. (�� / �ƴϿ�)")
			return;
		}
		$("#inputIsAgreeLicensePartnership").val(strAgreeYesNo);
		document.form.submit();
		return true;
	}

	</script> 
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>

<body onload="window.open('http://www.bitacademy.com/Course/BITsupporters_2018_popup.asp', '_blank', 'width=800, height=700, top=220, left=440, toolbar=no, menubar=no, scrollbars=no, resizable=yes' );  ">
	<style>
		.courseName {
			font-size:15pt !important;
		}
		.detailName {
			font-size:23pt !important;
		}
	</style>
	<div id="Wrapper">
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->

		<div id="Container_Wrap" style="min-height:1570px;">
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

					<div id=divMenu>
						<!-- �������� -->
						<div>
							<FORM id="form" name="form" method="post" action="WriteRecruit_ok.asp">
								<input type="hidden" name="CompName" value="<%=CompName%>"/>
								<input type="hidden" name="CompResNum" value="<%=CompResNum%>"/>
								<input type="hidden" name="Business" value="<%=Business%>"/>
								<input type="hidden" name="Capital" value="<%=Capital%>"/>
								<input type="hidden" name="YearSell" value="<%=YearSell%>"/>
								<input type="hidden" name="CompanyStaffNum" value="<%=CompanyStaffNum%>"/>
								<input type="hidden" name="isStock" value="<%=isStock%>"/>
								<input type="hidden" name="czipcode" value="<%=czipcode%>"/>
								<input type="hidden" name="caddr" value="<%=caddr%>"/>
								<input type="hidden" name="HomePage" value="<%=HomePage%>"/>
								<input type="hidden" name="Welfare" value="<%=Welfare%>"/>
								<input type="hidden" name="Introduct" value="<%=Introduct%>"/>
								<input type="hidden" name="Department" value="<%=Department%>"/>
								<input type="hidden" name="Location" value="<%=Location%>"/>
								<input type="hidden" name="StaffNum" value="<%=StaffNum%>"/>
								<input type="hidden" name="StaffNum_M" value="<%=StaffNum_M%>"/>
								<input type="hidden" name="StaffNum_F" value="<%=StaffNum_F%>"/>
								<input type="hidden" name="Operation" value="<%=Operation%>"/>
								<input type="hidden" name="DevelopOS" value="<%=DevelopOS%>"/>
								<input type="hidden" name="DevelopDB" value="<%=DevelopDB%>"/>
								<input type="hidden" name="DevelopLang" value="<%=DevelopLang%>"/>
								<input type="hidden" name="chkQuali" value="<%=chkQuali%>"/>
								<input type="hidden" name="QualiMajor" value="<%=QualiMajor%>"/>
								<input type="hidden" name="Job_Type" value="<%=Job_Type%>"/>
								<input type="hidden" name="Intern_Term" value="<%=Intern_Term%>"/>
								<input type="hidden" name="Career" value="<%=Career%>"/>
								<input type="hidden" name="Career_Year" value="<%=Career_Year%>"/>
								<input type="hidden" name="Position" value="<%=Position%>"/>
								<input type="hidden" name="salary" value="<%=salary%>"/>
								<input type="hidden" name="Preference" value="<%=Preference%>"/>
								<input type="hidden" name="SelectStep" value="<%=SelectStep%>"/>
								<input type="hidden" name="Paper" value="<%=Paper%>"/>
								<input type="hidden" name="Need" value="<%=Need%>"/>
								<input type="hidden" name="ChargeName" value="<%=ChargeName%>"/>
								<input type="hidden" name="ChargeDept" value="<%=ChargeDept%>"/>
								<input type="hidden" name="ChargeTitle" value="<%=ChargeTitle%>"/>
								<input type="hidden" name="ChargeTel" value="<%=ChargeTel%>"/>
								<input type="hidden" name="ChargeFax" value="<%=ChargeFax%>"/>
								<input type="hidden" name="ChargeHandphone" value="<%=ChargeHandphone%>"/>
								<input type="hidden" name="ChargeEmail" value="<%=ChargeEmail%>"/>
								<input id="inputIsAgreeLicensePartnership" type="hidden" name="IsAgreeLicensePartnership" value="" />
								
								<!--
								<div style="text-align:center; font-weight:700; font-size:24pt; margin-top:40px; margin-bottom:60px;">
									<p>�⺻�Ⱑ źź�� �����ڸ� ���Ͻʴϱ�?<p>
									<p>��������� ���̴�!</p>
								</div>
								
								<div>
									<p style="font-family: 'Nanum Gothic Bold'; font-size:16pt; color:#8b6338; margin-bottom:10pt;">BSPM(BIT Software Programming Master) �ڰ����̶� ?</p>
									<p style="font-size:12pt;">
										BSPM(BIT Software Programming Master)�� �ڰݱ⺻�� �� 17�� ��2�׿� ���� �ֹ���ó�� �̷�â�����кο� ����ϰ� �ѱ������ɷ°��߿����� ������ �ΰ��ڰ����Դϴ�.
										�� ��Ʈ�� BSPM �ڰ����� ������ �ڴ� ������ ������ Language ���α׷��� �Ƿ��� ���߾���, ���� ���α׷����� ������ �� �ִ� �������� ������ �� �ֽ��ϴ�.
										SW ������ ����� �־� �� �ڰ����� ������ �ڸ� ���� ��� �� �������� �����ϴ� ������ �����ϰ� �ֽ��ϴ�.
									<p>
								</div>
								
								<div>
									<img src="/Images/Content/img_BIT_LICENSE_4Recruit.png" style="width:100%; margin-top:40px;"/>
								</div>
								-->
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_1_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->

									<div style="margin-left:270px; margin-top:0px; margin-bottom:50px;">
										<button id="btnYes" type="button" class="btnWhiteBorder big mar_l20" style="border-width:3px; padding-left:10px; padding-right:10px;">��</button>
										<button id="btnNo" type="button" class="btnWhiteBorder big mar_l20" style="border-width:3px; padding-left:10px; padding-right:10px;">�ƴϿ�</button>
										<br/>
										<p style="margin-left:0px; margin-top:20px;"><a href="AgreementBSPM.zip" class="btnGreenBorder big" style="border-width:2px;">���༭ ��� �ٿ�</button></a>
									</div>
								</div>
								
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_2_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->
									<p style="margin-left:270px; margin-top:20px;"><a href="AgreementOnChung.zip" class="btnGreenBorder big mar_b40" style="border-width:2px;">���༭ ��� �ٿ�</button></a>
								</div>
								
								<div style="border:1px solid black;" class="mar_t20">
									<img src="WriteRecruit_page2_3_718px.png" style="width:718px;"/> <!-- becuase of the border, 720 - 2 = 718 -->
									<p style="margin-left:270px; margin-top:20px;"><a href="AgreementOnIndustry40.zip" class="btnGreenBorder big mar_b40" style="border-width:2px;">���༭ ��� �ٿ�</button></a>
								</div>
								
								<div style="margin-top:20px; text-align:center; "> 
									<a href="javascript:saveit();" class="btnBlueBorder big" style="border-width:2px;">�ۼ��Ϸ�</a>
								</div>
								<div style="clear:both;"></div>
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


<%

SUB getParam4Company()
	CompName = ReForm(TRIM(request("CompName")),0,0) 
	CompResNum = ReForm(TRIM(request("CompResNum")),0,0) 
	Business = ReForm(TRIM(request("Business")),0,0) 
	Capital = ReForm(TRIM(request("Capital")),0,0) 
	YearSell = ReForm(TRIM(request("YearSell")),0,0) 
	CompanyStaffNum = ReForm(TRIM(request("CompanyStaffNum")),0,0) 
	isStock = ReForm(TRIM(request("isStock")),0,0) 
	czipcode = ReForm(TRIM(request("czipcode")),0,0) 
	caddr = ReForm(TRIM(request("caddr")),0,0) 
	HomePage = ReForm(TRIM(request("HomePage")),0,0) 
	Welfare = ReForm(TRIM(request("Welfare")),0,0) 			' ��������
	Introduct = ReForm(TRIM(request("Introduct")),0,0) 		' ȸ��Ұ�
END SUB

SUB getParam()
	Department				= ReForm (TRIM(request("Department")) , 0 , 0 )																			'�����κ�
	Location					= ReForm (TRIM(request("Location")) , 0 , 0 )																					'�ٹ���
	StaffNum					= ReForm (TRIM(request("StaffNum")) , 0 , 0 )																				'�����ο� ��
	StaffNum_M				= ReForm (TRIM(request("StaffNum_M")) , 0 , 0 )																			'�����ο� ��
	StaffNum_F				= ReForm (TRIM(request("StaffNum_F")) , 0 , 0 )																			'�����ο� ��
	Operation				= ReForm (TRIM(request("Operation")) , 0 , 0 )																					'������
	DevelopOS				= ReForm (TRIM(request("DevelopOS"))	 , 0 , 0 )																			'���OS
	DevelopDB				= ReForm (TRIM(request("DevelopDB")) , 0 , 0 )																			'���DB
	DevelopLang				= ReForm (TRIM(request("DevelopLang")) , 0 , 0 )																		'�����
	chkQuali					= ReForm (TRIM(request("chkQuali")) , 0 , 0 )																					'�ڰݿ��
	QualiMajor				= ReForm (TRIM(request("QualiMajor")) , 0 , 0 )																				'�а�
	Job_Type					= ReForm (TRIM(request("Job_Type")) , 0 , 0 )																				'�������
	Intern_Term				= ReForm (TRIM(request("Intern_Term")) , 0 , 0 )																			'���ϱⰣ
	Career					= ReForm (TRIM(request("Career")) , 0 , 0 )																						'���
	Career_Year				= ReForm (TRIM(request("Career_Year")) , 0 , 0 )																		'��³��
	Position					= ReForm (TRIM(request("Position")) , 0 , 0 )																					'ä������
	salary					= ReForm (TRIM(request("salary"))	 , 0 , 0 )																						'�޿�����
	Preference				= ReForm (TRIM(request("Preference")) , 0 , 0 )																				'�������
	SelectStep				= ReForm (TRIM(request("SelectStep")) , 0 , 0 )																				'��������
	Paper					= ReForm (TRIM(request("Paper")) , 0 , 0 )																						'���⼭��
	Need					= ReForm (TRIM(request("Need")) , 0 , 0 )																						'�䱸����
	ChargeName				= ReForm (TRIM(request("ChargeName")) , 0 , 0 )																		'����� ����
	ChargeDept				= ReForm (TRIM(request("ChargeDept")) , 0 , 0 )																			'�μ�
	ChargeTitle				= ReForm (TRIM(request("ChargeTitle")) , 0 , 0 )																			'��å
	ChargeTel				= ReForm (TRIM(request("ChargeTel")) , 0 , 0 )																				'��ȭ
	ChargeFax				= ReForm (TRIM(request("ChargeFax")) , 0 , 0 )																				'�ѽ�
	ChargeHandphone		= ReForm (TRIM(request("ChargeHandphone")) , 0 , 0 )																'�޴���
	ChargeEmail				= ReForm (TRIM(request("ChargeEmail")) , 0 , 0 )																		'E-MAIL
	
	'Response.Write "JT : " & Job_Type & "<br/>"
	'Response.Write "chkQuali : " & chkQuali & "<br/>"
END SUB	



Function ReForm (sString , nMaxLen , isNum )
'// Request �� ���� ������ ó���Ѵ�.
'// sString : �Ѱܹ޴� ���� (string)
'// nMaxLen : �ִ� ���� (number)  (�ִ���̸� �˻����� ������� 0)
'// isNum  : �������� �ƴ��� (1 : only number , 0 : �����Ǻ� ����)
	 Dim temp
	 Dim nErr
	 temp = Trim (sString ) & ""

	 if isNum = 1 then	 '�����Ǻ�
		 if isNumeric (temp) = False then
			 response.write ( "ERROR : " & temp & " is Not Number " )
			 response.write ( "<br/>(���� : 02-3486-3456)")
			 response.End
		 End if
	 end if

	 if nMaxLen > 0 then	 '�ִ���� �Ǻ�
		 if len(temp) > nMaxLen then
			 response.write ( "ERROR : " & temp & " is over Maxlength " & nMaxLen  )
			 response.write ( "<br/>(���� : 02-3486-3456)")
			 response.end
		 end if
	 end if

	 '// injection ���� Ű���� ����(�׸� �߰� ����)
	 temp = Replace ( temp , "'" , "" )
	 temp = Replace ( temp , "--" , "" )
	 temp = Replace ( temp , "--, #" , " " )
	 temp = Replace ( temp , "/* */" , " " )
	 temp = Replace ( temp , "' or 1=1--" , " " )
	 temp = Replace ( temp , "union" , " " )
	 temp = Replace ( temp , "select" , " " )
	 temp = Replace ( temp , "delete" , " " )
	 temp = Replace ( temp , "insert" , " " )
	 temp = Replace ( temp , "update" , " " )
	 temp = Replace ( temp , "drop" , " " )
	 temp = Replace ( temp , "on error resume" , " " )
	 temp = Replace ( temp , "execute" , " " )
	 temp = Replace ( temp , "windows" , " " )
	 temp = Replace ( temp , "boot" , " " )
	 temp = Replace ( temp , "-1 or" , " " )
	 temp = Replace ( temp , "-1' or" , " " )
	 temp = Replace ( temp , "../" , " " )
	 temp = Replace ( temp , "unexisting" , " " )
	 temp = Replace ( temp , "win.ini" , " " )	
	 temp = Replace ( temp , "<javascript" , " " )	
	 temp = Replace ( temp , "<script" , " " )	
	 ReForm = temp
End Function


%>

