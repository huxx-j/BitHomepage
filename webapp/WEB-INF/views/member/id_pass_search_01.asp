<%
	Session.CodePage  = 949 '�ѱ�
	Response.CharSet  = "euc-kr" '�ѱ�
%>

<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->

<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
%>

<%
    Dim IPIN_DLL, clsIPIN
    Dim iReturnCode, sRequestData
    Dim sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL
    
    sIDPCODE        = "I261"                              
    sIDPPWD         = "38010800"                     
    sRETURNURL      = "https://bitschool.com/Member/IPIN/member_ipin_process_FindID.asp"
                                  ' ���� �Ϸ� �� ��������� ������ CP Return Page URL
    sCPREQUESTNUM   = ""                      ' CP ��û ��ȣ(CP���� ���Ƿ� ������ ��)

        IPIN_DLL        = "IPIN2Client.Kisinfo"   
     
    SET clsIPIN  = SERVER.CREATEOBJECT(IPIN_DLL)
    
    clsIPIN.fnRequestSEQ(sIDPCODE)
        sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ
    session("REQUEST_NUM") = sCPREQUESTNUM               ' CP ��û ��ȣ�� ���ǿ� ����
    
    iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)
        
    IF iReturnCode = 0 THEN        
        sRequestData = clsIPIN. bstrRequestCipherData        ' ��û������ ��ȣȭ�� ��      
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
    END IF
    
    SET clsIPIN = NOTHING
%>

<!DOCTYPE html>
<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<!-- #include virtual="/Include/Meta.asp"-->
	<title>��Ʈ��������</title>
	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->
	<!--#include virtual="/Member/id_pass_search_script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script type="text/javascript">
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->

			//$(".snb .depth1").eq(2).addClass("on");
			$(".snb_1709 a.newdepth1").eq(2).addClass("on");
		});

		window.name = "Parent_window";

		function fnPopup() {
			window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
			document.form_ipin.target = "popupIPIN2";
			document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
			document.form_ipin.submit();
		}
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
	<form name="form_ipin" method="post" style="display:none">
		<input type="hidden" name="m" value="pubmain">  
		<input type="hidden" name="enc_data" value="<%= sRequestData %>">
	</form>
		<%
		'//<!-- SkipMenu -->
		'//<!-- #include virtual = "/Include/skipMenu.asp"-->
		'//<!-- //SkipMenu -->
		%>
		
		<!-- Header -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header -->

		<!-- Container_Wrap -->
		<div id="Container_Wrap" style="min-height:390px;">
			<!-- Content_Wrap -->
			<div id="Content_Wrap" style="min-height:390px;">
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
						<h4 style="float:left;">���̵�/�н����� ã��</h4>
						<div style="clear:both; height:10px;"></div>
					</div>

					<section class="section mar_t20">
						<div class="con_wrap1709">
							<!--<h5>���̵�/�н�����ã��</h5>-->
							<h5>ȸ������ ����</h5>
							<div class="btn_wrap c mar_t40">
								<a href="http://www.bitacademy.com/Member/id_pass_search_02.asp" class="btnBlueBorder big" style="width:370px;">2014�� 3�� ���� ����ȸ��(������ ���� ȸ��) </a>
								<br/>
								<a href="http://www.bitacademy.com/Member/id_pass_search_03.asp" class="btnBlueBorder big mar_t20" style="width:370px;">������ ����ȸ��</a>
							</div>
						</div>
						
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
				<!-- //Content -->
			</div>
			<!-- Content_Wrap -->
		</div>
		<!-- Container_Wrap -->

		<!-- Footer_Wrap -->
		<!-- #include virtual = "/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>

</html>