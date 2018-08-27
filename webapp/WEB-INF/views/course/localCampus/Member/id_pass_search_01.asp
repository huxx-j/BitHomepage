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
    sRETURNURL      = "http://bitschool.co.kr/Member/IPIN/member_ipin_process_FindID.asp"
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!-- #include virtual="/localCampus/Include/Meta.asp"-->
<title>��Ʈ����</title>
<!-- #include virtual="/localCampus/Include/ContentStyle.asp"-->
<!-- #include virtual="/localCampus/Include/Script.asp"-->
<!--#include virtual="/localCampus/Member/id_pass_search_script.asp"-->
<script type="text/javascript">
	$(document).ready(function(){
		$(".snb .depth1").eq(3).addClass("on");
	});

	window.name = "Parent_window";

    function fnPopup() {
        window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
        document.form_ipin.target = "popupIPIN2";
        document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
        document.form_ipin.submit();
    }
</script>
</head>
<body>
	<div id="Wrapper">
	<form name="form_ipin" method="post" style="display:none">
		<input type="hidden" name="m" value="pubmain">  
		<input type="hidden" name="enc_data" value="<%= sRequestData %>">
	</form>
		<!-- SkipMenu -->
		<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
		<!-- //SkipMenu -->

		<!-- Header -->
		<!-- #include virtual = "/localCampus/Include/Header.asp"-->
		<!-- //Header -->
		<hr>
		<!-- Container_Wrap -->
		<div id="Container">
			<!-- Content -->
			<div id="Content" class="sub">
				<div class="hGroup">
					<h3>���̵�/�н����� ã��</h3>
				</div>
				<section class="section mar_t20">
					<div class="btn_wrap c mar_t40">
						<a href="/Member/id_pass_search_02.asp" class="btn mid green1">2014�� 3�� ���� ����ȸ��(������ ���� ȸ��) </a>
						<a href="/Member/id_pass_search_03.asp" class="btn mid dGray">������ ����ȸ��</a>
					</div>
				</section>
			</div>
			<!-- //Content -->
		</div>
		<!-- Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>

</html>