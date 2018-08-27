<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
return_url = Trim(request("return_url"))

If return_url="" Then 
	return_url = Trim(Request.ServerVariables("HTTP_REFERER"))

	If InStr(return_url, "http://bitacademy.com")>0 Then 
		return_url = Replace(return_url, "http://bitacademy.com", "/")
	Else
		return_url = "/localCampus"
	End if
End If 

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
<script>
<!--
function submit_it()
{
	var username1 = document.Login_Form.username.value;

	if (Login_Form.username.value=="")
	{
		alert("ID�� �Է��� �ּ���.");
		document.Login_Form.username.focus();
	}
	else if (document.Login_Form.username.value.indexOf(" ")!=-1)
	{
		
		alert("ID�� ������� �Է��� �ּ���.");
		document.Login_Form.username.focus();
	}
	else if (Login_Form.password.value=="")
	{
		alert("�н����带 �Է��� �ּ���.");
		document.Login_Form.password.focus();
	}
	else if (document.Login_Form.password.value.indexOf(" ")!=-1)
	{
		alert("�н������ ������� �Է��� �ּ���.");
		document.Login_Form.password.focus();
	}	
	else if (username1.search("--") > -1 ){
		alert(" ����� �� ���� ���ڸ� ���̽��ϴ�.");
		document.Login_Form.username.focus();
	}
	else if (username1.search("'") > -1 ){
		alert(" ����� �� ���� ���ڸ� ���̽��ϴ�.");
		document.Login_Form.username.focus();
	}
	
	else
		document.Login_Form.submit();
}
//-->
</script>
<script type="text/javascript">
function handleEnter (field, event) {
	var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
	if (keyCode == 13) {
		var i;
		for (i = 0; i < field.form.elements.length; i++)
				if (field == field.form.elements[i])
						break;
		i = (i + 1) % field.form.elements.length;
		field.form.password.focus();
		return false;
	} 
	else
	return true;
}      
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
				<h3>�α���</h3>
				<section class="section login">
					<form name="Login_Form" method="post" action="/localCampus/Member/login_ok.asp">
						<input type="hidden" name="return_url" value="<%=TRIM(return_url)%>">
						<div class="loginBox">
							<h4>BITSCHOOL LOGIN<br>��Ʈ���� ���Ű��� ȯ���մϴ�.</h4>
							<input type="text" name="username" id="" class="" size="15" tabindex="1" placeHolder="ID" onkeypress="return handleEnter(this, event)">
							<input type="password" name="password" id="" class="" size="15" tabindex="2" placeHolder="Password" onkeypress="if(event.keyCode==13) submit_it();">
							<div class="btn_wrap">
								<a href="javascript:submit_it()" title="" class="loginBtn btn green1">�α���</a>
								<a href="/localCampus/Member/IPIN/Join_Step1.asp" title="" class="joinBtn btn white">ȸ������</a>
								<a href="" title="" class="idpwBtn btn white">ID/PWã��</a>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
		<!-- Footer_Wrap -->
		<!-- #include virtual = "/localCampus/Include/Footer.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>