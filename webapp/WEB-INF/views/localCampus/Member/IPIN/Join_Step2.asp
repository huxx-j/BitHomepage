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
    sRETURNURL = "http://bitschool.co.kr/localCampus/Member/IPIN/member_ipin_process.asp"
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
    END IF
    
    SET clsIPIN = NOTHING
%>



<!DOCTYPE html>
<html lang="ko">
<head>
<!-- #include virtual = "/localCampus/Include/Meta.asp" -->
<!-- CSS  -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- Script -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<script type="text/javascript">
	$(function(){
		ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/asan_courseInfo.asp');
	});
</script>
</head>
<body>
<script language="javascript">
    window.name = "Parent_window";

    function fnPopup() {
        window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolabr=no, titlebar=yes, location=no, scrollbar=no');
        document.form_ipin.target = "popupIPIN2";
        document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
        document.form_ipin.submit();
    }
</script>
<form name="form_ipin" method="post">
    <input type="hidden" name="m" value="pubmain">  
    <input type="hidden" name="enc_data" value="<%= sRequestData %>">

<div id="Wrapper">
	<!-- SkipMenu -->
	<!-- #include virtual = "/localCampus/Include/skipMenu.asp"-->
	<!-- //SkipMenu -->

	<!-- Header_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Header.asp"-->
	<!-- //Header_Wrap -->
	<div id="Container">
		<div id="Content" class="sub">
			<h3>ȸ������</h3>
			<section class="section">
				<div class="cntBox mar_t40">
					<ul>
						<li class="fb mar_b10">������(i-PIN)�� ����Ʈ �����ڰ� �ڽ��� �ſ������� �ŷ��� �� �ִ� ����Ȯ�α���� �����Ͽ� �Ǹ������� �ް� �ǹǷ�, ��Ʈ���𿡼��� ȸ������ �ֹε�Ϲ�ȣ�� ������ �� �����ϴ�. </li>
						<li>�� ������ ������ ���� ȸ������ ������(i-PIN)�̶� �������� ��ȣ�� ���� ���ͳݻ󿡼� �ֹε�Ϲ�ȣ�� ����Ͽ�, �������� Ȯ�ι��� �� �ִ� �ſ� Ȯ�� �����Դϴ�.</li>
					</ul>
				</div>
				<div class="btn_wrap c mar_t20">
					<input type="buttom" class="btn big green1" value="����������" onclick="javascript:fnPopup();">
					<a href="http://i-pin.kisa.or.kr/kor/about/about.jsp" title="" class="btn big white">������ �ڼ��� ����</a>
				</div>
			</section>
		</div>
	</div>
	<!-- Footer_Wrap -->
	<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
	<!-- //Footer_Wrap -->
</div>
</body>
</html>