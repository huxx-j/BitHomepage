<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!--#include virtual="/member/member_join_02_script.asp"-->
<!-- #include virtual = "/localCampus/Include/Meta.asp" -->
<!-- #include virtual = "/localCampus/Include/contentStyle.asp" -->
<!-- #include virtual = "/localCampus/Include/Script.asp" -->
<script type="text/javascript">
	$(function(){
		ajaxLoad('#ConDetail', '', '/localCampus/Content/Tab/asan_courseInfo.asp');
	});
</script>
<script language="javascript">
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
		return;
	}
	window.open("checkid.asp?memid=" + document.memform.username.value, "ID�ߺ�Ȯ��", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
}
function submit_it() {
	if (document.memform.name.value == "") {
		alert("�̸��� �Է��� �ּ���.");
		document.memform.name.focus();
	}
	else if (document.memform.name.value.indexOf(" ") != -1) {

		alert("�̸��� ������� �Է��� �ּ���.");
		document.memform.name.focus();
	}
	else if (memform.username.value == "") {
		alert("���̵� �Է��� �ּ���.");
		document.memform.username.focus();
		openid();
	}
	else if (memform.idcheck.value != "Y") {
		alert("���̵� �ߺ�Ȯ���� �� �ּ���.");
		document.memform.username.focus();
	}
	else if (document.memform.username.value.indexOf(" ") != -1) {

		alert("���̵� ������� �Է��� �ּ���.");
		document.memform.username.focus();
	}
	else if ((document.memform.username.value.length < 4) || (document.memform.username.value.length > 8)) {
		alert("���̵�� 4���� �̻� 8���� �����Դϴ�!");
		document.memform.username.focus();
	}
	else if (!check_char(document.memform.username.value)) {
		alert("id�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.username.focus();
		//return;
	}
	else if (memform.password.value == "") {
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.memform.password.focus();
	}
	else if (memform.confirm_pwd.value == "") {
		alert("��й�ȣ Ȯ���� �Է��� �ּ���.");
		document.memform.confirm_pwd.focus();
	}
	else if (document.memform.password.value.indexOf(" ") != -1) {

		alert("ù��° ��й�ȣ�� ������� �Է��� �ּ���.");
		document.memform.password.focus();
	}
	else if (!check_char(document.memform.password.value)) {
		alert("password�� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.password.focus();
		//return;
	}
	else if (document.memform.confirm_pwd.value.indexOf(" ") != -1) {

		alert("�ι�° ��й�ȣ�� ������� �Է��� �ּ���.");
		document.memform.confirm_pwd.focus();
	}
	else if (!check_char(document.memform.confirm_pwd.value)) {
		alert("password Ȯ���� ������,���ڸ� ����ϽǼ� �ֽ��ϴ�.");
		document.memform.confirm_pwd.focus();
		//return;
	}
	else if (memform.password.value != memform.confirm_pwd.value) {
		alert("2��° �Է��� ��й�ȣ��\n\n1��° ��й�ȣ�� ���� �ʽ��ϴ�.");
		document.memform.confirm_pwd.focus();
	}
	else if ((document.memform.password.value.length < 4) || (document.memform.password.value.length > 16)) {
		alert("ù��° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
		document.memform.password.focus();
	}
	else if ((document.memform.confirm_pwd.value.length < 4) || (document.memform.confirm_pwd.value.length > 16)) {
		alert("�ι�° ��й�ȣ�� 4���� �̻� 16���� �����Դϴ�!");
		document.memform.confirm_pwd.focus();
	}
	else if (document.memform.SocialNo1.value == "") {
		alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���!");
		document.memform.SocialNo1.focus();
	}
	else if (document.memform.SocialNo2.value == "") {
		alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���!");
		document.memform.SocialNo2.focus();
	}
	else if (memform.telephone1.value == "") {
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone1.focus();
	}
	else if (!check_num(memform.telephone1.value)) {
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.telephone1.focus();
		return;
	}
	else if (memform.telephone2.value == "") {
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone2.focus();
	}
	else if (!check_num(memform.telephone2.value)) {
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.telephone2.focus();
		return;
	}
	else if (memform.telephone3.value == "") {
		alert("��ȭ��ȣ�� ���ּ���.");
		document.memform.telephone3.focus();
	}
	else if (!check_num(memform.telephone3.value)) {
		alert("��ȭ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.telephone3.focus();
		return;
	}
	else if (memform.handphone1.value == "") {
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone1.focus();
	}
	else if (!check_num(memform.handphone1.value)) {
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.handphone1.focus();
		return;
	}
	else if (memform.handphone2.value == "") {
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone2.focus();
	}
	else if (!check_num(memform.handphone2.value)) {
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.handphone2.focus();
		return;
	}
	else if (memform.handphone3.value == "") {
		alert("�ڵ��� ��ȣ�� ���ּ���.");
		document.memform.handphone3.focus();
	}
	else if (!check_num(memform.handphone3.value)) {
		alert("�ڵ��� ��ȣ�� ���ڷθ� ��Ȯ�� �������ֽñ� �ٶ��ϴ�.");
		document.memform.handphone3.focus();
		return;
	}
	else if (memform.mail1.value == "") {
		alert("�̸��� ���̵� �Է��Ͽ� �ּ���.");
		document.memform.mail1.focus();
	}
	else if (memform.mail2.value == "") {
		alert("�̸��� �ּҸ� �Է��Ͽ� �ּ���.");
		document.memform.mail.focus();
	}
	document.memform.submit();
}
//-->
</script>
</head>
<body>
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
				<section class="section mar_t40">
					<div class="section_header">
						<h4 class="fl">ȸ�������Է�</h4>
					</div>
					<div class="form_type2 bor_solid_top10_green bor_solid_bottom_green">
						<form name="memform" method="post"  action="/localCampus/Member/member_ipin_result_ok_old.asp" >
						<input type="hidden" name="idcheck" value="N">
							<table border="1" class="table_col_type2" summary="ȸ�������Է� - ">
								<caption>Table - ȸ�������Է�</caption>
								<colgroup>
									<col width="12%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="name">�̸�<span class="star">*</span></th>
										<td colspan="2"><input type="text" name="name" id="joinInfo_01" class="w167">
										<span>���� ���Խ� ������ ���� �̷��Ͽ� �ֽʽÿ�.(��:ȫ�浿)</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="username">���̵� <span class="star">*</span></th>
										<td colspan="2"><input type="text" name="username" id="joinInfo_02" class="w167">
										<span><a href="javascript:openid();" class="btn sml green1 mar_r5">�ߺ�Ȯ��</a>4~8�� ���̷� �Է��� �ֽñ� �ٶ��ϴ�</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="password">��й�ȣ<span class="star">*</span></th>
										<td colspan="2"><input type="password" name="password" id="joinInfo_03" class="w167">
										<span>��,�ҹ��ڸ� �����մϴ�.</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="confirm_pwd">��й�ȣ Ȯ��<span class="star">*</span></th>
										<td colspan="2"><input type="password" name="confirm_pwd" id="joinInfo_04" class="w167">
										<span>�ѹ� �� ��й�ȣ�� �Է��Ͽ� �ּ���</span></td>
									</tr>
									<tr>
										<th bgcolor="#EFEFEF" align="center">�ֹε�Ϲ�ȣ</th>
										<td>
										<input name="SocialNo1" type="hidden" value="123456" maxlength="6" >�����ֹι�ȣ�� ��ü��.
										<input name="SocialNo2" type="hidden" value="1234563" maxlength="7" ></td>
                                   </tr>
									<tr>
										<th scope="row"><label for="telephone1">��ȭ��ȣ<span class="star">*</span></th>
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
											</select> -
											<input type="text" name="telephone2" id="joinInfo_05" class="w50"> - 
											<input type="text" name="telephone3" id="joinInfo_05" class="w50">
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="handphone1">�ڵ�����ȣ<span class="star">*</span></th>
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
										<th scope="row"><label for="mail1">�̸���<span class="star">*</span></th>
										<td colspan="2">
											<input type="text" name="mail1" id="joinInfo_05" class="w83"> @ 
											<input type="text" name="mail2" id="joinInfo_05" class="w83"> 
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="bitletter">���ϼ���<span class="star">*</span></th>
										<td colspan="2">
											<span><input name="bitletter" type="radio" value="yes" checked> �̸��� ����</span>
											<span class="mar_l20"><input name="bitletter" type="radio" value="no"> �̸��� ���ž���</span>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="joinInfo_10">����<span class="star">*</span></th>
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
						</form>
					</div>
					<div class="btn_wrap c mar_t20">
						<a href="javascript:submit_it();" title="" class="btn big green1">�Ϸ�</a>
						<a href="javascript:history.bak();" title="" class="btn big white">���</a>
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