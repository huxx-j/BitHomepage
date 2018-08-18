<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
%>

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
%>

<%
    Dim IPIN_DLL, clsIPIN
    Dim iReturnCode, sRequestData
    Dim sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL

    sIDPCODE = "I261"                              
    sIDPPWD = "38010800"                     
    sRETURNURL = "https://www.bitschool.com/Member/IPIN/member_ipin_process.asp"
                                  ' ���� �Ϸ� �� ��������� ������ CP Return Page URL
    sCPREQUESTNUM   = "" ' CP ��û ��ȣ(CP���� ���Ƿ� ������ ��)
    IPIN_DLL = "IPIN2Client.Kisinfo"

    SET clsIPIN = SERVER.CREATEOBJECT(IPIN_DLL)

    clsIPIN.fnRequestSEQ(sIDPCODE)
    sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ
    session("REQUEST_NUM") = sCPREQUESTNUM ' CP ��û ��ȣ�� ���ǿ� ����

    iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)

	IF iReturnCode = 0 THEN
        sRequestData = clsIPIN. bstrRequestCipherData ' ��û������ ��ȣȭ�� ��
    ELSEIF (iReturnCode = -1) THEN
        returnMsg = "��/��ȣȭ �ý��� ����"
        enc_data = ""
    ELSEIF (iReturnCode = -2) THEN
        returnMsg = "��ȣȭ ó�� ����"
        enc_data = ""
    ELSEIF (iReturnCode = -3) THEN
        returnMsg = "��ȣȭ ������ ����"
        enc_data = ""
    ELSEIF (iReturnCode = -9) THEN
        returnMsg = "�Է°� ����"
        enc_data = ""
    END If

    SET clsIPIN = NOTHING
%>

<%
	'************************ �ڵ������� �߰� (2016-02-19-YG) *****************************

    Dim clsCPClient_2
    Dim iRtn_2, sEncData, sPlainData_2
    Dim sRequestNO_2, sSiteCode_2, sSitePassword_2 , sReturnUrl_2 , sErrorUrl_2, popgubun_2, customize_2

	SET clsCPClient_2  = SERVER.CREATEOBJECT("CPClient.Kisinfo")
	
	sSiteCode_2       = "H0225"			'NICE�κ��� �ο����� ����Ʈ �ڵ�
	sSitePassword_2   = "KCRKENUII90J"			'NICE�κ��� �ο����� ����Ʈ �н�����

	sAuthType = ""		'������ �⺻ ����ȭ��, M: �ڵ���, C: ī��, X: ����������
	
	popgubun_2 	= "N"		'Y : ��ҹ�ư ���� / N : ��ҹ�ư ����
	customize_2 = ""		'������ �⺻ �������� / Mobile : �����������
	   
  'CheckPlus(��������) ó�� ��, ��� ����Ÿ�� ���� �ޱ����� ���������� ���� http���� �Է��մϴ�.
  sReturnUrl_2 = "http://www.bitacademy.com/Member/IPIN/member_hp_process.asp"			'������ �̵��� URL
  sErrorUrl_2	 = "http://www.bitacademy.com/Member/IPIN/member_hp_fail.asp"				'���н� �̵��� URL

  sRequestNO_2 = "REQ0000000001"			'��û ��ȣ, �̴� ����/�����Ŀ� ���� ������ �ǵ����ְ� �ǹǷ�
                                        '��ü�� �����ϰ� �����Ͽ� ���ų�, �Ʒ��� ���� �����Ѵ�.
	iRtn_2 = clsCPClient_2.fnRequestNO(sSiteCode_2)

	''''' ������ ���ǿ� �ִ� ������ ���� : 2016-02-20-YG
	session("REQ_SEQ") = sRequestNO_2		'��ŷ���� ������ ���Ͽ� ������ ����Ѵٸ�, ���ǿ� ��û��ȣ�� �ִ´�.
	
	IF iRtn_2 = 0 THEN
	    sRequestNO_2 = clsCPClient_2.bstrRandomRequestNO
      	session("REQ_SEQ") = sRequestNO_2		'��ŷ���� ������ ���Ͽ� ������ ����Ѵٸ�, ���ǿ� ��û��ȣ�� �ִ´�.
	END IF

	sPlainData_2 = fnGenPlainData(sRequestNO_2, sSiteCode_2, sAuthType, sReturnUrl_2, sErrorUrl_2, popgubun_2, customize_2)
	
    '�������� ��ȣȭ
	iRtn_2 = clsCPClient_2.fnEncode(sSiteCode_2, sSitePassword_2, sPlainData_2)

	IF iRtn_2 = 0 THEN
	    sEncData = clsCPClient_2.bstrCipherData
	ELSE
	    RESPONSE.WRITE "��û����_��ȣȭ_����:" & iRtn_2 & "<br>"
	    ' -1 : ��ȣȭ �ý��� �����Դϴ�.
	    ' -2 : ��ȣȭ ó�������Դϴ�.
	    ' -3 : ��ȣȭ ������ �����Դϴ�.
	    ' -4 : �Է� ������ �����Դϴ�.
	END IF

	Set clsCPClient_2 = Nothing
%>

<%
	'************************ �ڵ������� �߰� (2016-02-19-YG) *****************************

	'**************************************************************************************
	'���ڿ� ���� 
	'**************************************************************************************  					          	
	Function fnGenPlainData(aRequestNO, aSiteCode, aAuthType, aReturnUrl, aErrorUrl, popgubun_2, customize_2)
				
		'�Է� �Ķ���ͷ� plaindata ���� 			
		retPlainData  = "7:REQ_SEQ" & fnGetDataLength(aRequestNO) & ":" & aRequestNO & _
									  "8:SITECODE" & fnGetDataLength(aSiteCode) & ":" & aSiteCode & _
									  "9:AUTH_TYPE" & fnGetDataLength(aAuthType) & ":" & aAuthType & _
									  "7:RTN_URL" & fnGetDataLength(aReturnUrl) & ":" & aReturnUrl & _
									  "7:ERR_URL" & fnGetDataLength(aErrorUrl) & ":" & aErrorUrl	& _	
									  "11:POPUP_GUBUN" & fnGetDataLength(popgubun_2) & ":" & popgubun_2 & _
									  "9:customize" & fnGetDataLength(customize_2) & ":" & customize_2
		fnGenPlainData = retPlainData		

	End Function 

	'**************************************************************************************
	'�Է��Ķ������ ���ڿ����� ����	
	'**************************************************************************************  					          	
	Function fnGetDataLength(aData)		
		Dim iData_len_2
		if (len(aData) > 0) then
			for i = 1 to len(aData)
				if (ASC(mid(aData,i,1)) < 0) then	'�ѱ��ΰ��
					iData_len_2 = iData_len_2 + 2
				else			'�ѱ��̾ƴѰ��
					iData_len_2 = iData_len_2 + 1
				end if		
			next
		else
			iData_len_2 = 0
		end if
		
		fnGetDataLength = iData_len_2
	End Function
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/Member/member_join_02_script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script language="javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//$(".snb .depth1").eq(1).addClass("on");
			$(".snb_1709 a.newdepth1").eq(1).addClass("on");
		});
		
		window.name = "Parent_window";

		function fnPopup() {
			window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
			document.form_ipin.target = "popupIPIN2";
			document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
			document.form_ipin.submit();
		}
	</script>

	<script language='javascript'>
		window.name ="Parent_window";
		
		function fnPopup_2(){
			window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
			document.form_chk.target = "popupChk";
			document.form_chk.submit();
		}
	</script>
</head>
<body>
	<form name="form_ipin" method="post">
		<input type="hidden" name="m" value="pubmain">  
		<input type="hidden" name="enc_data" value="<%= sRequestData %>">
	</form>
	
	<!-- �������� ���� �˾��� ȣ���ϱ� ���ؼ��� ������ ���� form�� �ʿ��մϴ�. -->
	<form name="form_chk" method="post">
		<input type="hidden" name="m" value="checkplusSerivce">						<!-- �ʼ� ����Ÿ��, �����Ͻø� �ȵ˴ϴ�. -->
		<input type="hidden" name="EncodeData" value="<%= sEncData %>">		<!-- ������ ��ü������ ��ȣȭ �� ����Ÿ�Դϴ�. -->
	    <!-- ��ü���� ����ޱ� ���ϴ� ����Ÿ�� �����ϱ� ���� ����� �� ������, ������� ����� �ش� ���� �״�� �۽��մϴ�.
	    	   �ش� �Ķ���ʹ� �߰��Ͻ� �� �����ϴ�. -->
		<input type="hidden" name="param_r1" value="">
		<input type="hidden" name="param_r2" value="">
		<input type="hidden" name="param_r3" value="">
	</form>
	
	<div id="Wrapper">
		<%
		'//<!-- SkipMenu -->
		'//<!-- #include virtual = "/Include/skipMenu.asp"-->
		'//<!-- //SkipMenu -->
		%>

		<!-- Header -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header -->
		<br>
		<!-- Container -->
		<div id="Container_Wrap" style="min-height:250px;">
			<div id="Content_Wrap" style="min-height:250px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Member_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>Ȩ
						</p>
						<h4 style="float:left;">ȸ������</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<section class="section" style="font-family:'Nanum Gothic'; margin-top:10px;">
						<div>
							<p style="font-size:11pt; float:left;">ȸ�������� ���ؼ� ���������� �ʿ��մϴ�.</p>
							<div style="float:right;">
								<a href="http://i-pin.kisa.or.kr/kor/about/about.jsp" title="" class="btnWhiteBorder big" style="margin-left:20px; padding:0 15px;" target="_blank"><span style="font-size:10pt; color:#65901F;">�������̶�?</span></a>
							</div>
							<div style="clear:both;"></div>
						</div>
						<div class="btn_wrap c mar_t20" style="padding:30px !important; font-family:'Nanum Gothic Bold'; ">
							<a href="javascript:fnPopup_2();" class="btnBlueBorder big" style="margin-left:0px; font-size:12pt;">�ڵ��� ����</a>
							<a href="javascript:fnPopup();" class="btnBlueBorder big" style="margin-left:5px; font-size:12pt;">������ ����</a>
							
							<%
								'// <!-- ����Ȯ�μ��� ���� ���� MODULE by YG -->
								DateTimeStart = "2017-05-16 18:00"
								DateTimeEnd = "2017-05-16 20:30"
								StrCompany = "LGU+"
								StrHours = "2�ð�"
								StrMessage1 = "2017.5.16(ȭ) 18:30 ~ 20:30 (" & StrHours & ") " & StrCompany & " �޴��� ����Ȯ�μ��񽺰� �ߴܵ˴ϴ�."
								StrMessage2 = StrHours & " ���� " & StrCompany & " �ڵ��� ����Ȯ�μ��񽺰� �Ұ����� �� �ֽ��ϴ�."
								StrMessage3 = "- " & StrCompany & " ����Ȯ��(MNO), �˶���(MVNO) ��� �Ұ����ϰ� �˴ϴ�."
								StrMessage4 = "- �۾��ð����ȿ��� " & StrCompany & " �� ������ Ÿ��Ż� ������ �����մϴ�."
								
								'Response.Write "<br/>" & DateDiff("n", CDate(DateTimeStart), Now) & "<br/>"
								'Response.Write "<br/>" & DateDiff("n", Now, CDate(DateTimeEnd) ) & "<br/>"
								
								IF DateDiff("n", CDate(DateTimeStart), Now)>=0 AND DateDiff("n", Now, CDate(DateTimeEnd))>=0 THEN
									Response.Write "<div style='border-radius:16px; margin-left:60px; margin-right:60px; margin-top:30px; padding:15px; font-size:12pt; text-align:left; border:1px dotted #c47474; background-color:#fcffd1;'>"
									Response.Write "<span class='redTxt' style='font-size:1.5em;'><b>"& "* ���� : </b></span><span class='redTxt'><br/><br/> <div style='margin-left:57px;'><b>" & StrCompany & " </b>���νý��� �۾����� ����, </div>" & "<br/>"
									Response.Write "<div style='margin-left:57px;'><b>" & StrMessage1 & "</b></div>" & "<br/>"
									Response.Write "<span style='margin-left:57px;'>"    & StrMessage2 & "</b></span>" & "<br/><br/>"
									Response.Write "<span style='margin-left:87px; font-size:10pt; '>" & StrMessage3 & "</span>" & "<br/>"
									Response.Write "<span style='margin-left:87px; font-size:10pt; '>" & StrMessage4 & "</span>" & "<br/>"
									Response.Write "</span>" & "<br/>"
									Response.Write "<span style='margin-left:57px;'>������ ��� �˼��մϴ�.</span>" & "<br/>"
									Response.Write "</div>" & "<br/>"
								END IF
								'Response.Write Date
								'Response.Write Mid(Date,1,4) & "<br/>"
								'Response.Write Mid(Date,6,2) & "<br/>"
								'Response.Write Mid(Date,9,2) & "<br/>"
								
								'// <!-- //����Ȯ�μ��� ���� ���� MODULE by YG -->
							%>

							<!-- ����Ȯ�μ��� ���� ���� -->
							<!--
							<div style="margin-left:60px; margin-right:60px; margin-top:30px; padding:3px; font-size:12pt; text-align:left; border:1px dotted #c47474; background-color:#fcffd1;">
								<span class="redTxt">
									* ���� : LG U+ ���νý��� �۾����� ����, <br/>
									<span style="margin-left:57px;"><b>2017.2.7.(ȭ) 13:30 ~ 15:30 (2�ð�) LG U+ ����Ȯ�μ��񽺰� �ߴܵ˴ϴ�.</b></span><br/><br/>
									<span style="margin-left:57px;">2�ð����� LG U+ ����Ȯ�μ��񽺰� �Ұ����� �� �ֽ��ϴ�.</b></span><br/>
									<span style="margin-left:57px; font-size:10pt; ">- LG U+ ����Ȯ��(MNO), �˶���(MVNO) ��� �Ұ����ϰ� �˴ϴ�.</span><br/>
									<span style="margin-left:57px; font-size:10pt; ">- LG U+ �� ������ Ÿ��Ż� ������ �����մϴ�.</span><br/>
								</span>
								<br/>
								<span style="margin-left:57px;">������ ��� �˼��մϴ�.</span>
							</div>
							-->
							<!-- // ����Ȯ�μ��� ���� ���� -->
							
						</div>

						<div class="mar_t40" style="border:1px solid #d9d9d9; padding:10px; ">
							<ul>
								<li class="fb mar_b10">������(i-PIN)�� ����Ʈ �����ڰ� �ڽ��� �ſ������� �ŷ��� �� �ִ� ����Ȯ�α���� �����Ͽ� �Ǹ������� �ް� �ǹǷ�, ��Ʈ�������Ϳ����� ȸ������ �ֹε�Ϲ�ȣ�� �������� �ʽ��ϴ�. </li>
								<li>�� ������ ������ ���� ȸ������ ������(i-PIN)�̶�, �������� ��ȣ�� ���� ���ͳݻ󿡼� �ֹε�Ϲ�ȣ�� ����Ͽ� �������� Ȯ�ι��� �� �ִ� �ſ� Ȯ�� �����Դϴ�.</li>
							</ul>
						</div>
						
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
				<!-- //Content -->
			</div>
		</div>
		<!-- //Container -->
		<hr>
		<!-- Footer -->
		<!-- #include virtual = "/Include/FooterHTML1709.asp"-->
		<!-- //Footer -->
	</div>
</body>
</html>