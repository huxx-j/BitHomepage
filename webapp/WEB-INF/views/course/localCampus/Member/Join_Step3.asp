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
			alert("아이디는 공백없이 \n 영문과 숫자의 조합입니다.\n(영문/숫자:6~8자)");
			document.memform.username.value = "";
			document.memform.username.focus();
			return;
			break;
		}
	}
	if (id.length > 8 || id.length < 4) {
		alert("ID는 4문자이상 8문자까지 입니다!");
		document.memform.username.focus();
		return;
	}
	window.open("checkid.asp?memid=" + document.memform.username.value, "ID중복확인", "scrollbars=no,status=no,historycopy=no,alwaysRaised=yes,top=120,left=150,resizable=no,width=450,height=220,maxbut");
}
function submit_it() {
	if (document.memform.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.memform.name.focus();
	}
	else if (document.memform.name.value.indexOf(" ") != -1) {

		alert("이름을 공백없이 입력해 주세요.");
		document.memform.name.focus();
	}
	else if (memform.username.value == "") {
		alert("아이디를 입력해 주세요.");
		document.memform.username.focus();
		openid();
	}
	else if (memform.idcheck.value != "Y") {
		alert("아이디 중복확인을 해 주세요.");
		document.memform.username.focus();
	}
	else if (document.memform.username.value.indexOf(" ") != -1) {

		alert("아이디를 공백없이 입력해 주세요.");
		document.memform.username.focus();
	}
	else if ((document.memform.username.value.length < 4) || (document.memform.username.value.length > 8)) {
		alert("아이디는 4글자 이상 8글자 이하입니다!");
		document.memform.username.focus();
	}
	else if (!check_char(document.memform.username.value)) {
		alert("id는 영문자,숫자만 사용하실수 있습니다.");
		document.memform.username.focus();
		//return;
	}
	else if (memform.password.value == "") {
		alert("비밀번호를 입력해 주세요.");
		document.memform.password.focus();
	}
	else if (memform.confirm_pwd.value == "") {
		alert("비밀번호 확인을 입력해 주세요.");
		document.memform.confirm_pwd.focus();
	}
	else if (document.memform.password.value.indexOf(" ") != -1) {

		alert("첫번째 비밀번호를 공백없이 입력해 주세요.");
		document.memform.password.focus();
	}
	else if (!check_char(document.memform.password.value)) {
		alert("password는 영문자,숫자만 사용하실수 있습니다.");
		document.memform.password.focus();
		//return;
	}
	else if (document.memform.confirm_pwd.value.indexOf(" ") != -1) {

		alert("두번째 비밀번호를 공백없이 입력해 주세요.");
		document.memform.confirm_pwd.focus();
	}
	else if (!check_char(document.memform.confirm_pwd.value)) {
		alert("password 확인은 영문자,숫자만 사용하실수 있습니다.");
		document.memform.confirm_pwd.focus();
		//return;
	}
	else if (memform.password.value != memform.confirm_pwd.value) {
		alert("2번째 입력한 비밀번호가\n\n1번째 비밀번호와 같지 않습니다.");
		document.memform.confirm_pwd.focus();
	}
	else if ((document.memform.password.value.length < 4) || (document.memform.password.value.length > 16)) {
		alert("첫번째 비밀번호는 4글자 이상 16글자 이하입니다!");
		document.memform.password.focus();
	}
	else if ((document.memform.confirm_pwd.value.length < 4) || (document.memform.confirm_pwd.value.length > 16)) {
		alert("두번째 비밀번호는 4글자 이상 16글자 이하입니다!");
		document.memform.confirm_pwd.focus();
	}
	else if (document.memform.SocialNo1.value == "") {
		alert("주민등록번호를 입력하세요!");
		document.memform.SocialNo1.focus();
	}
	else if (document.memform.SocialNo2.value == "") {
		alert("주민등록번호를 입력하세요!");
		document.memform.SocialNo2.focus();
	}
	else if (memform.telephone1.value == "") {
		alert("전화번호를 써주세요.");
		document.memform.telephone1.focus();
	}
	else if (!check_num(memform.telephone1.value)) {
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.telephone1.focus();
		return;
	}
	else if (memform.telephone2.value == "") {
		alert("전화번호를 써주세요.");
		document.memform.telephone2.focus();
	}
	else if (!check_num(memform.telephone2.value)) {
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.telephone2.focus();
		return;
	}
	else if (memform.telephone3.value == "") {
		alert("전화번호를 써주세요.");
		document.memform.telephone3.focus();
	}
	else if (!check_num(memform.telephone3.value)) {
		alert("전화번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.telephone3.focus();
		return;
	}
	else if (memform.handphone1.value == "") {
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone1.focus();
	}
	else if (!check_num(memform.handphone1.value)) {
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.handphone1.focus();
		return;
	}
	else if (memform.handphone2.value == "") {
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone2.focus();
	}
	else if (!check_num(memform.handphone2.value)) {
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.handphone2.focus();
		return;
	}
	else if (memform.handphone3.value == "") {
		alert("핸드폰 번호를 써주세요.");
		document.memform.handphone3.focus();
	}
	else if (!check_num(memform.handphone3.value)) {
		alert("핸드폰 번호를 숫자로만 정확히 기재해주시길 바랍니다.");
		document.memform.handphone3.focus();
		return;
	}
	else if (memform.mail1.value == "") {
		alert("이메일 아이디를 입력하여 주세요.");
		document.memform.mail1.focus();
	}
	else if (memform.mail2.value == "") {
		alert("이메일 주소를 입력하여 주세요.");
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
				<h3>회원가입</h3>
				<section class="section mar_t40">
					<div class="section_header">
						<h4 class="fl">회원정보입력</h4>
					</div>
					<div class="form_type2 bor_solid_top10_green bor_solid_bottom_green">
						<form name="memform" method="post"  action="/localCampus/Member/member_ipin_result_ok_old.asp" >
						<input type="hidden" name="idcheck" value="N">
							<table border="1" class="table_col_type2" summary="회원정보입력 - ">
								<caption>Table - 회원정보입력</caption>
								<colgroup>
									<col width="12%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><label for="name">이름<span class="star">*</span></th>
										<td colspan="2"><input type="text" name="name" id="joinInfo_01" class="w167">
										<span>성명 가입시 공백이 없이 이력하여 주십시요.(예:홍길동)</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="username">아이디 <span class="star">*</span></th>
										<td colspan="2"><input type="text" name="username" id="joinInfo_02" class="w167">
										<span><a href="javascript:openid();" class="btn sml green1 mar_r5">중복확인</a>4~8자 사이로 입력해 주시기 바랍니다</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="password">비밀번호<span class="star">*</span></th>
										<td colspan="2"><input type="password" name="password" id="joinInfo_03" class="w167">
										<span>대,소문자를 구분합니다.</span></td>
									</tr>
									<tr>
										<th scope="row"><label for="confirm_pwd">비밀번호 확인<span class="star">*</span></th>
										<td colspan="2"><input type="password" name="confirm_pwd" id="joinInfo_04" class="w167">
										<span>한번 더 비밀번호를 입력하여 주세요</span></td>
									</tr>
									<tr>
										<th bgcolor="#EFEFEF" align="center">주민등록번호</th>
										<td>
										<input name="SocialNo1" type="hidden" value="123456" maxlength="6" >가상주민번호로 대체함.
										<input name="SocialNo2" type="hidden" value="1234563" maxlength="7" ></td>
                                   </tr>
									<tr>
										<th scope="row"><label for="telephone1">전화번호<span class="star">*</span></th>
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
										<th scope="row"><label for="handphone1">핸드폰번호<span class="star">*</span></th>
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
										<th scope="row"><label for="mail1">이메일<span class="star">*</span></th>
										<td colspan="2">
											<input type="text" name="mail1" id="joinInfo_05" class="w83"> @ 
											<input type="text" name="mail2" id="joinInfo_05" class="w83"> 
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="bitletter">메일수신<span class="star">*</span></th>
										<td colspan="2">
											<span><input name="bitletter" type="radio" value="yes" checked> 이메일 수신</span>
											<span class="mar_l20"><input name="bitletter" type="radio" value="no"> 이메일 수신안함</span>
										</td>
									</tr>
									<tr>
										<th scope="row"><label for="joinInfo_10">직업<span class="star">*</span></th>
										<td colspan="2">
											<select name="job" id="" class="jobSelect">
												<option selected>직업선택</option>
												 <option value="학생" >학생 </option>
												 <option value="컴퓨터/인터넷" >컴퓨터/인터넷</option>
												 <option value="언론" >언론</option>
												 <option value="공무원" >공무원</option>
												 <option value="회사원" >회사원</option>
												 <option value="군인" >군인</option>
												 <option value="서비스업" >서비스업</option>
												 <option value="교육" >교육</option>
												 <option value="금융/증권/보험업" >금융/증권/보험업</option>
												 <option value="유통업" >유통업</option>
												 <option value="예술" >예술</option>
												 <option value="의료" >의료</option>
												 <option value="법률" >법률</option>
												 <option value="건설업" >건설업</option>
												 <option value="제조업" >제조업</option>
												 <option value="부동산업" >부동산업</option>
												 <option value="운송업" >운송업</option>
												 <option value="농/수산/임업" >농/수산/임업</option>
												 <option value="광산업" >광산업</option>
												 <option value="주부" >주부</option>
												 <option value="기타" >기타</option>
												 <option value="무직" >무직</option>
											</select>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<div class="btn_wrap c mar_t20">
						<a href="javascript:submit_it();" title="" class="btn big green1">완료</a>
						<a href="javascript:history.bak();" title="" class="btn big white">취소</a>
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