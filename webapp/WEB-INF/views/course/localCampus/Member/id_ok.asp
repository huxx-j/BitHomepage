<!--#include virtual="/Include/config.asp"-->
<!--#include Virtual="/Include/javaScriptFun.asp"-->
<%
	Response.CacheControl = "no-cache"
	Response.AddHeader "Pragma", "no-cache"
	Response.Expires = -1 

	mode = TRIM(request.form("mode"))
	if mode <> "ID"  AND mode <> "PASS" then
		call alertMsgBack ("입력하신 내용을 다시 확인하여 주세요.")
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
		call alertMsgBack ("입력하신 내용을 다시 확인하여 주세요.")
	end if

	Set Rs = Dbcon.Execute(SQL)

	if Rs.EOF then
		call alertMsgBack ("입력하신 내용의 회원정보가 존재하지 않습니다.\n입력한 정보를 다시 확인해주세요.\n(회원가입 시 입력했던 휴대폰 번호를 모르시는 경우 관리자에게 문의해 주세요.)")
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
<title>비트스쿨</title>
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
						<h4>회원가입</h4>
						<p class="lineMap">
							<a href="#this">홈</a>
							<a href="#this">고객지원</a> 
							<a href="#this" class="last on">아이디/패스워드찾기</a>
						</p>
					</div>
					<section class="mar_t20">
						<div class="section_header">
							<h5>아이디 찾기</h5>
							<p class="mar_t20">요청하신 검색 결과입니다.</p>
						</div>
						<div class="con_wrap mar_t10">
							<input type="hidden" size=30 name="mode" value="ID">
								<table style="width:325px; margin:20px auto 10px">
									<caption>아이디 찾기</caption>
									<tbody>
										<%	if mode="ID" then%>
										<tr>
											<td colspan="3" class="c">아이디: <%=userId%></td>
										</tr>
										<%	else	%>
										<tr>
											<td colspan="3" class="c">
												아이디:	<%=userId%><br>
												패스워드: <%=userPass%>
											</td>
										</tr>
										<%	end if	%>
									</tbody>
								</table>
								<div class="btn_wrap c">
									<a href="/Member/login.asp" class="btn mid green1">확인</a>
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