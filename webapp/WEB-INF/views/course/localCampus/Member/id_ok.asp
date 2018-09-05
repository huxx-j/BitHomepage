<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<%
	Response.CacheControl = "no-cache"
	Response.AddHeader "Pragma", "no-cache"
	Response.Expires = -1 

	mode = TRIM(request.form("mode"))
	if mode <> "ID"  AND mode <> "PASS" then
		call alertMsgBack ("�Է��Ͻ� ������ �ٽ� Ȯ���Ͽ� �ּ���.")
	end if

	username = TRIM(request.form("username"))
	realname = TRIM(request.form("realname"))
	SocialNo1 = TRIM(request.form("SocialNo1"))
	SocialNo2 = TRIM(request.form("SocialNo2"))
	SocialNo3 = TRIM(request.form("SocialNo3"))
	SocialNo = SocialNo1 & "-" & SocialNo2 & "-" & SocialNo3

	Set Dbcon = Server.CreateObject("ADODB.Connection")
	Dbcon.Open Con_bit_db

	if mode="ID" then
		SQL = "SELECT * FROM Member WHERE NameHan = '" &realname& "' and Handphone = '"&SocialNo&"'"
	elseif mode="PASS" then
		SQL = "SELECT * FROM Member WHERE LoginID='"&username&"' AND NameHan = '" &realname& "' and Handphone = '"&SocialNo&"'"
	else
		call alertMsgBack ("�Է��Ͻ� ������ �ٽ� Ȯ���Ͽ� �ּ���.")
	end if

	Set Rs = Dbcon.Execute(SQL)

	if Rs.EOF then
		call alertMsgBack ("�Է��Ͻ� ������ ȸ�������� �������� �ʽ��ϴ�.\n�Է��� ������ �ٽ� Ȯ�����ּ���.\n(ȸ������ �� �Է��ߴ� �޴��� ��ȣ�� �𸣽ô� ��� �����ڿ��� ������ �ּ���.)")
		response.end
	end if

	userId= Rs("LoginID")
	userPass = Rs("Password")

	userId=Left(userId,Len(userId)-3) & "***"
	userPass=Left(userPass,Len(userPass)-3) & "***"
		
	Rs.close
	Set Rs = nothing
	Dbcon.close
	Set Dbcon = nothing
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
							<p class="mar_t20">��û�Ͻ� �˻� ����Դϴ�.</p>
						</div>
						<div class="con_wrap mar_t10">
							<input type="hidden" size=30 name="mode" value="ID">
								<table style="width:325px; margin:20px auto 10px">
									<caption>���̵� ã��</caption>
									<tbody>
										<%	if mode="ID" then%>
										<tr>
											<td colspan="3" class="c">���̵�: <%=userId%></td>
										</tr>
										<%	else	%>
										<tr>
											<td colspan="3" class="c">
												���̵�:	<%=userId%><br>
												�н�����: <%=userPass%>
											</td>
										</tr>
										<%	end if	%>
									</tbody>
								</table>
								<div class="btn_wrap c">
									<a href="/Member/login.asp" class="btn mid green1">Ȯ��</a>
								</div>
						</div>
					</section>
				</div>
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