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
<!-- #include virtual="/Include/Meta.asp"-->
<title>��Ʈ����</title>
<!-- #include virtual="/Include/ContentStyle.asp"-->
<!-- #include virtual="/Include/Script.asp"-->
<!--#include virtual="/Member/id_pass_search_script.asp"-->
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
<form name="form_ipin" method="post" style="display:none">
    <input type="hidden" name="m" value="pubmain">  
    <input type="hidden" name="enc_data" value="<%= sRequestData %>">
</form>
	<div id="Wrapper">
		<!-- SkipMenu -->
		<!-- #include virtual = "/Include/skipMenu.asp"-->
		<!-- //SkipMenu -->

		<!-- Header -->
		<!-- #include virtual = "/Include/Header.asp"-->
		<!-- //Header -->
		<hr>
		<!-- Container_Wrap -->
		<div id="Container_Wrap">
			<!-- Content_Wrap -->
			<div id="Content_Wrap" class="sub">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Member.asp"-->
				<!-- //SNB_Wrap-->
				<!-- Content -->
				<div id="Content">
					<div class="hGroup">
						<h4>ȸ������</h4>
						<p class="lineMap">
							<a href="#this">Ȩ</a>
							<a href="#this">������</a> 
							<a href="#this" class="last on">���̵�/�н�����ã��</a>
						</p>
					</div>
					<section class="mar_t20">
						<div class="section_header">
							<h5>���̵� ã��</h5>
							<p class="mar_t20">�Ʒ� �Է��Ͻ� ������ ��ϵǾ� �ִ� ȸ�� ������ ��ġ�ϸ�, ȸ������ ���̵� �ٷ� Ȯ���Ͻ� �� �ֽ��ϴ�.</p>
						</div>
						<div class="con_wrap mar_t10">
							<form name="Lost_Form" method="post" action="/Member/id_ok.asp" onSubmit="return submit_id_lost(this)">
							<input type="hidden" size=30 name="mode" value="ID">
								<table style="width:325px; margin:20px auto 10px">
									<caption>���̵� ã��</caption>
									<tbody>
										<tr>
											<th scope="row" class="fb r pd_r10">
												<label for="itemInfo_01">�̸�</label>
											</th>
											<td colspan="3">
												<input name="realname" type="text" class="slim_input" id="itemInfo_01" size="15" style="width:150px">
											</td>
										</tr>
										<tr><td colspan="4" style="height:5px"></td></tr>
										<tr>
											<th scope="row" class="fb r pd_r10">
												<label for="itemInfo_02">�޴�����ȣ</label>
											</th>
											<td colspan="3">
												<input name="SocialNo1" type="text" class="slim_input" id="nember01" size="3" onkeyup="javascript:pid1_checklength3()" maxlength="3" style="width:40px">
												<input name="SocialNo2" type="text" class="slim_input" id="nember02" size="4" onkeyup="javascript:pid1_checklength4()" maxlength="4" style="width:40px">
												<input name="SocialNo3" type="text" class="slim_input" id="nember03" size="4" onkeyup="javascript:pid1_checklength4()" maxlength="4" style="width:40px">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn_wrap c">
									<a href="javascript:submit_id_lost();" class="btn mid green1">Ȯ��</a>
								</div>
							</form>
						</div>
					</section>

					<section class="section">
						<div class="section_header">
							<h5>�н�����ã��</h5>
						</div>
						<form name="Lost_Form1" method="post" action="/Member/id_ok.asp" onSubmit="return submit_pass_lost(this)">
							<input type="hidden" size=30 name="mode" value="PASS">
							<div class="con_wrap mar_t30">
								<table style="width:325px; margin:20px auto 10px">
									<caption>���̵� ã��</caption>
									<tbody>
										<tr>
											<th scope="row" class="fb r pd_r10">
												<label for="itemInfo_01">���̵�</label>
											</th>
											<td colspan="3">
												<input name="username" type="text" class="slim_input" id="itemInfo_01" size="15" style="width:150px">
											</td>
										</tr>
										<tr><td colspan="4" style="height:5px"></td></tr>
										<tr>
											<th scope="row" class="fb r pd_r10">
												<label for="itemInfo_01">�̸�</label>
											</th>
											<td colspan="3">
												<input name="realname" type="text" class="slim_input" id="idfind" size="15" style="width:150px">
											</td>
										</tr>
										<tr><td colspan="4" style="height:5px"></td></tr>

										<tr>
											<th scope="row" class="fb r pd_r10">
												<label for="itemInfo_02">�޴�����ȣ</label>
											</th>
											<td colspan="3">
												<input name="SocialNo1" type="text" class="slim_input" id="nember012" size="3" onkeyup="javascript:pid1_checklength31()" maxlength="3" style="width:40px">
												<input name="SocialNo2" type="text" class="slim_input" id="nember022" size="4" onkeyup="javascript:pid1_checklength41()" maxlength="4" style="width:40px">
												<input name="SocialNo3" type="text" class="slim_input" id="nember023" size="4" onkeyup="javascript:pid1_checklength41()" maxlength="4" style="width:40px">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn_wrap c">
									<a href="javascript:submit_pass_lost();" class="btn mid green1">Ȯ��</a>
								</div>
							</div>
						</div>
					</section>
					<a href="#this" class="moveTop">Top</a>
				</div>
				<!-- //Content -->
			</div>
			<!-- Content_Wrap -->
		</div>
		<!-- Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>