<%
Session.CodePage  = 949 '�ѱ�
Response.CharSet  = "euc-kr" '�ѱ�
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
	<!--#include virtual="/Member/member_join_02_script.asp"-->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- �����ȣ DAUM API ���� -->
	<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
	<script>
		function openDAUMapi() {
			new daum.Postcode({
				oncomplete: function(data) {
					$("#inputZipCode").val(data.zonecode);
					$("#inputAddress").val(data.roadAddress + " ");
					$("#inputAddress").focus();
					alert("�ԷµǾ����ϴ�. ���� ���ּҸ� �Է����ּ���.");
				},
				left: -900,
				top: 200
			}).open();
			
		}
	</script>

	<%
	Function URLDecode(sConvert)
		Dim aSplit
		Dim sOutput
		Dim I
		If IsNull(sConvert) Then
		   URLDecode = ""
		   Exit Function
		End If

		' convert all pluses to spaces
		sOutput = REPLACE(sConvert, "+", " ")

		' next convert %hexdigits to the character
		aSplit = Split(sOutput, "%")

		If IsArray(aSplit) Then
		  sOutput = aSplit(0)
		  For I = 0 to UBound(aSplit) - 1
			sOutput = sOutput & _
			  Chr("&H" & Left(aSplit(i + 1), 2)) &_
			  Right(aSplit(i + 1), Len(aSplit(i + 1)) - 2)
		  Next
		End If

		URLDecode = sOutput
	End Function

	%>

	<%
	DIM sDupInfo,sName
	sDupInfo=REQUEST("sDupInfo")
	sDupInfo=REPLACE(sDupInfo," ","+")
	sName=REQUEST("sName")
	%>

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
			
			$("#inputZipCode").click(function() {
				alert("[�����ȣ�˻�]�� �����ּ���.");
			});
		});
	<!--
		function openid() {
			id = document.memform.username.value;
			x = /^\w{2,8}$/;
			result = x.test(id)
			for (i = 0; i <= id.length; i++) {
				if (!result && id.charCodeAt(i) < 12644) {
					alert("���̵�� ������� \n ������ ������ �����Դϴ�.\n(����/����:6~8��)");
					document.memform.username.value = "";
					document.memform.username.focus();
					return;
					break;
				}
			}
			if (id.length > 8 || id.length < 4) {
				alert("ID�� 4�����̻� 8���ڱ��� �Դϴ�!");
				document.memform.username.focus();
				return ;
			}

			window.open("checkid.asp?memid=" + document.memform.username.value, "ID�ߺ�Ȯ��", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
		}

		function submit_it() {
			if (document.memform.name.value == "") {
				alert("�̸��� �Է��� �ּ���.");
				document.memform.name.focus();
						return false;
			}
			else if (document.memform.name.value.indexOf(" ") != -1) {

				alert("�̸��� ������� �Է��� �ּ���.");
				document.memform.name.focus();
						return false;
			}
			else if (memform.username.value == "") {
				alert("���̵� �Է��� �ּ���.");
				document.memform.username.focus();
				openid();
						return false;
			}
			else if (memform.idcheck.value != "Y") {
				alert("���̵� �ߺ�Ȯ���� �� �ּ���.");
				document.memform.username.focus();
						return false;
			}
			else if (document.memform.username.value.indexOf(" ") != -1) {

				alert("���̵� ������� �Է��� �ּ���.");
				document.memform.username.focus();
						return false;
			}

			else if ((document.memform.username.value.length < 4) || (document.memform.username.value.length > 8)) {
				alert("���̵�� 4���� �̻� 8���� �����Դϴ�!");
				document.memform.username.focus();
						return false;
			}

			else if (!check_char(document.memform.username.value)) {
				alert("id�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
				document.memform.username.focus();
						return false;
				//return;
			}
			else if (memform.password.value == "") {
				alert("��й�ȣ�� �Է��� �ּ���.");
				document.memform.password.focus();
						return false;
			}

			else if (memform.confirm_pwd.value == "") {
				alert("��й�ȣ Ȯ���� �Է��� �ּ���.");
				document.memform.confirm_pwd.focus();
						return false;
			}

			else if (document.memform.password.value.indexOf(" ") != -1) {

				alert("ù��° ��й�ȣ�� ������� �Է��� �ּ���.");
				document.memform.password.focus();
						return false;
			}

			else if (!check_char(document.memform.password.value)) {
				alert("password�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
				document.memform.password.focus();
				//return;
						return false;
			}

			else if (document.memform.confirm_pwd.value.indexOf(" ") != -1) {

				alert("�ι�° ��й�ȣ�� ������� �Է��� �ּ���.");
				document.memform.confirm_pwd.focus();
						return false;
			}

			else if (!check_char(document.memform.confirm_pwd.value)) {
				alert("password Ȯ���� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
				document.memform.confirm_pwd.focus();
						return false;
				//return;
			}

			else if (memform.password.value != memform.confirm_pwd.value) {
				alert("2��° �Է��� ��й�ȣ��\n\n1��° ��й�ȣ�� ���� �ʽ��ϴ�.");
				document.memform.confirm_pwd.focus();
						return false;
			}

			else if ((document.memform.password.value.length < 4) || (document.memform.password.value.length > 16)) {
				alert("ù��° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
				document.memform.password.focus();
						return false;
			}

			else if ((document.memform.confirm_pwd.value.length < 4) || (document.memform.confirm_pwd.value.length > 16)) {
				alert("�ι�° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
				document.memform.confirm_pwd.focus();
						return false;
			}


			else if (memform.telephone1.value == "") {
				alert("��ȭ��ȣ�� ���ּ���.");
				document.memform.telephone1.focus();
						return false;
			}

			else if (!check_num(memform.telephone1.value)) {
				alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.telephone1.focus();
					return false;
			}

			else if (memform.telephone2.value == "") {
				alert("��ȭ��ȣ�� ���ּ���.");
				document.memform.telephone2.focus();
						return false;
			}

			else if (!check_num(memform.telephone2.value)) {
				alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.telephone2.focus();
				return false;
			}

			else if (memform.telephone3.value == "") {
				alert("��ȭ��ȣ�� ���ּ���.");
				document.memform.telephone3.focus();
						return false;
			}

			else if (!check_num(memform.telephone3.value)) {
				alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.telephone3.focus();
				return false;
			}

			else if (memform.handphone1.value == "") {
				alert("�ڵ��� ��ȣ�� ���ּ���.");
				document.memform.handphone1.focus();
						return false;
			}

			else if (!check_num(memform.handphone1.value)) {
				alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.handphone1.focus();
					return false;
			}

			else if (memform.handphone2.value == "") {
				alert("�ڵ��� ��ȣ�� ���ּ���.");
				document.memform.handphone2.focus();
						return false;
			}

			else if (!check_num(memform.handphone2.value)) {
				alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.handphone2.focus();
					return false;
			}

			else if (memform.handphone3.value == "") {
				alert("�ڵ��� ��ȣ�� ���ּ���.");
				document.memform.handphone3.focus();
						return false;
			}

			else if (!check_num(memform.handphone3.value)) {
				alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
				document.memform.handphone3.focus();
					return false;
			}
			else if (memform.mail1.value == "") {
				alert("�̸��� ���̵� �Է��Ͽ� �ּ���.");
				document.memform.mail1.focus();
						return false;
			}
			else if (memform.mail2.value == "") {
				alert("�̸��� �ּҸ� �Է��Ͽ� �ּ���.");
				document.memform.mail.focus();
						return false;
			}
			else if (memform.caddr2.value == "") {
				alert("�ּҸ� �Է��Ͽ� �ּ���.");
				document.memform.caddr2.focus();
				return false;
			}		
			document.memform.submit();
		}


		//-->
	</script>
	<script language="javascript" runat="server">
		function decodeUTF8(str){
			return decodeURI(str); // �Ǵ� return decodeURIComponent(str);
		}
		function encodeUTF8(str){
		// Ư�����ڵ� ���ڵ� �ϱ� ���ؼ��� encodeURIComponent �� ����Ѵ�.
			return encodeURI(str);
		}
	</script>

	<script>
		function zip_search2()
		{
			window.open("/Member/zipserch2.asp?tozip=C&path=comp","","height=800,width=700,status=no,scrollbars=yes,toolbar=no,titlebar=no,menubar=no,location=0,left=300,top=300")	
		}
	</script>

	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<body>
	<div id="Wrapper">
		<%
		'//<!-- SkipMenu -->
		'//<!-- #include virtual = "/Include/skipMenu.asp"-->
		'//<!-- //SkipMenu -->
		%>

		<!-- Header -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header -->

		<!-- Container_Wrap -->
		<div id="Container_Wrap" style="min-height:250px;">
			<div id="Content_Wrap">
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

					<section class="section">
						<div class="con_wrap1709">
							<h5>ȸ�������Է�</h5>
						</div>
						
						<div class="con_wrap1709">
							<form name="memform" method="post"  action="https://www.bitschool.com/Member/member_ipin_result_ok_old.asp" >
								<input type="hidden" name="idcheck" value="N">
								<input type="hidden" name="sDupInfo" value='<%=sDupInfo%>'>
								<input type="hidden" name="sName" value='<%=sName%>'>
								<div class="divTable">
									<table>
										<colgroup>
											<col width="18%">
											<col width="*">
										</colgroup>
										<tbody>
											<!-- // 2016-02-22-YG : �̸� to readonly.
											<tr>
												<th scope="row" class="tit"><label for="name">�̸�<span class="star">*</span></th>
												<td colspan="2"><input type="text" name="name" id="joinInfo_01" value='< % = sname% >' class="w167">
												<span>���� ���Խ� ������ ���� �Է��Ͽ� �ֽʽÿ�.(��:ȫ�浿)</span></td>
											</tr>
											-->
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="name">�̸�<span class="star">*</span></td>
												<td colspan="2">
													<input type="text" name="name" id="joinInfo_01" value='<%=sname%>' style="background-color:#efefef;" class="w167" readonly />
													<!--<span>���� ���Խ� ������ ���� �Է��Ͽ� �ֽʽÿ�.(��:ȫ�浿)</span>-->
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="username">���̵� <span class="star">*</span></td>
												<td colspan="2"><input type="text" name="username" id="joinInfo_02" class="w167">
												<span><a href="javascript:openid();" class="btnGreenBorder mar_r5">�ߺ�Ȯ��</a>4~8�� ���̷� �Է��� �ֽñ� �ٶ��ϴ�</span></td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="password">��й�ȣ<span class="star">*</span></td>
												<td colspan="2"><input type="password" name="password" id="joinInfo_03" class="w167">
												<span>��,�ҹ��ڸ� �����մϴ�.</span></td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="confirm_pwd">��й�ȣ Ȯ��<span class="star">*</span></td>
												<td colspan="2"><input type="password" name="confirm_pwd" id="joinInfo_04" class="w167">
												<span>�ѹ� �� ��й�ȣ�� �Է��Ͽ� �ּ���</span></td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit">�����ȣ<span class="star">*</span></td>
												<td>
													<input id="inputZipCode" type="text" name="czipcode2" maxLength="7" size="7" style="background-color:#f0efef;"/>
													<!--<input type="button" onclick="zip_search2()" value="�����ȣ�˻�" size="16">-->
													<!--<input type="button" onclick="javascript:openDAUMapi();" value="�����ȣ�˻�" size="16" style="background-color:#8fd9e7; padding:1px 5px; height:25px; border:1px solid #777777;">-->
													<a type="button" onclick="javascript:openDAUMapi();" style="width:80px;" class="btnBlueBorder">�����ȣ�˻�</a>
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit">�ּ�<span class="star">*</span></td>
												<td><input id="inputAddress" type="text" maxlength="50" size="50" name="caddr2" style="width:550px"></td>
											</tr>										
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="telephone1">��ȭ��ȣ<span class="star">*</span></td>
												<td colspan="2">
													<select name="telephone1" class="slim_select" id="select1">
														 <option value="02" selected>02</option>
														 <option value="031" >031</option>
														 <option value="032" >032</option>
														 <option value="033" >033</option>
														 <option value="041" >041</option>
														 <option value="042" >042</option>
														 <option value="043" >043</option>
														 <option value="051" >051</option>
														 <option value="052" >052</option>
														 <option value="053" >053</option>
														 <option value="054" >054</option>
														 <option value="055" >055</option>
														 <option value="061" >061</option>
														 <option value="062" >062</option>
														 <option value="063" >063</option>
														 <option value="064" >064</option>
														 <option value="064" >070</option>
													</select> -
													<input type="text" name="telephone2" id="joinInfo_05" class="w50"> - 
													<input type="text" name="telephone3" id="joinInfo_05" class="w50">
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="handphone1">�ڵ�����ȣ<span class="star">*</span></td>
												<td colspan="2">
													<select name="handphone1" class="slim_select" id="select4">
														 <option value="010" selected>010</option>
														 <option value="011" >011</option>
														 <option value="016" >016</option>
														 <option value="017" >017</option>
														 <option value="018" >018</option>
														 <option value="019" >019</option>
													</select> -
													<input type="text" name="handphone2" id="joinInfo_05" class="w50"> - 
													<input type="text" name="handphone3" id="joinInfo_05" class="w50">
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="mail1">�̸���<span class="star">*</span></td>
												<td colspan="2">
													<input type="text" name="mail1" id="joinInfo_05" class="w83"> @ 
													<input type="text" name="mail2" id="joinInfo_05" class="w83"> 
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="bitletter">���ϼ���<span class="star">*</span></td>
												<td colspan="2">
													<span><input name="bitletter" type="radio" value="yes" checked> �̸��� ����</span>
													<span class="mar_l20"><input name="bitletter" type="radio" value="no"> �̸��� ���ž���</span>
												</td>
											</tr>
											<tr>
												<td scope="row" class="darker c" scope="row" class="tit"><label for="joinInfo_10">����<span class="star">*</span></td>
												<td colspan="2">
													<select name="job" id="" class="jobSelect">
														<option selected>��������</option>
														 <option value="�л�" >�л� </option>
														 <option value="��ǻ��/���ͳ�" >��ǻ��/���ͳ�</option>
														 <option value="���" >���</option>
														 <option value="������" >������</option>
														 <option value="ȸ���" >ȸ���</option>
														 <option value="����" >����</option>
														 <option value="���񽺾�" >���񽺾�</option>
														 <option value="����" >����</option>
														 <option value="����/����/�����" >����/����/�����</option>
														 <option value="�����" >�����</option>
														 <option value="����" >����</option>
														 <option value="�Ƿ�" >�Ƿ�</option>
														 <option value="����" >����</option>
														 <option value="�Ǽ���" >�Ǽ���</option>
														 <option value="������" >������</option>
														 <option value="�ε����" >�ε����</option>
														 <option value="��۾�" >��۾�</option>
														 <option value="��/����/�Ӿ�" >��/����/�Ӿ�</option>
														 <option value="�����" >�����</option>
														 <option value="�ֺ�" >�ֺ�</option>
														 <option value="��Ÿ" >��Ÿ</option>
														 <option value="����" >����</option>
													</select>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
						</div>
						
						<div class="btn_wrap c mar_t40">
							<a href="javascript:submit_it();" title="" class="btnGreenBorder big">�Ϸ�</a>
							<a href="javascript:history.back();" title="" class="btnWhiteBorder big">���</a>
						</div>
					</section>
					<!--<a href="#this" class="moveTop">Top</a>-->
				</div>
				<!-- //Content -->
			</div>
		</div>
		<!-- Container_Wrap -->
		<hr>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>