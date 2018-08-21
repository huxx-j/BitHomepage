<%
Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1 
Session.CodePage  = 949 '한글
Response.CharSet  = "euc-kr" '한글

return_url = Trim(request("return_url"))

If return_url="" Then 
	return_url = Trim(Request.ServerVariables("HTTP_REFERER"))

	If InStr(return_url, "http://bitacademy.com")>0 Then 
		return_url = "/"
	End if
End If 

id = Request.cookies("id")
checkSaveID=Request.cookies("checkSaveID")
if checkSaveID="on" then checkSaveID="checked" else checkSaveID="" end if
%>

<!DOCTYPE html>
<!-- REDIRECTABLE TO MOBILE -->

<html lang="ko">
<link rel= "shortcut icon" href="/images/favicon.ico">

<head>
	<!-- #include virtual="/Include/Meta.asp"-->
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>비트교육센터</title>

	<!-- #include virtual="/Include/ContentStyle.asp"-->
	<!-- #include virtual="/Include/Script.asp"-->

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="/M/CSS_JS/jquery.bxslider.js"></script>
	<!-- bxSlider CSS file -->
	<link href="/M/CSS_JS/jquery.bxslider.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720_1709.css" >
	<link rel="stylesheet" type="text/css" href="/include/Common_CSS_Detail_720plus_1709.css" >

	<!-- #include virtual="/Include/HeaderScript1709.asp"-->
	<script>
		$(document).ready(function(){
			<!--#include virtual="/Include/Common_eventHandlers_SNB_1709.inc"-->
			<!--#include virtual="/Include/HeaderScriptReady1709.inc"-->
			
			$(".snb_1709 a.newdepth1").eq(0).addClass("on");
			//$(".snb_1702 .newdepth1").eq(0).addClass("on");
			//$(".snb_1709 .newdepth2_wrap").eq(1).addClass("on");
			//$(".snb_1709 .newdepth2_wrap.no2").find("li a").eq(2).addClass("on");  

			slider = $('.slider').bxSlider({
				auto: true,
				speed: 1550,
				slideMargin:1000,
				controls: false,
				pager: true,
				mode:'fade'
			});
			
			$(".bx-pager-link").on("click", function() {
				slider.stopAuto();	// not working.
				slider.stop();		// maybe this works.
			});
		});

		<!--
		function submit_it()
		{
			var username1 = document.Login_Form.username.value;

			if (Login_Form.username.value=="")
			{
				alert("ID를 입력해 주세요.");
				document.Login_Form.username.focus();
			}
			else if (document.Login_Form.username.value.indexOf(" ")!=-1)
			{
				alert("ID는 공백없이 입력해 주세요.");
				document.Login_Form.username.focus();
			}
			else if (Login_Form.password.value=="")
			{
				alert("패스워드를 입력해 주세요.");
				document.Login_Form.password.focus();
			}
			else if (document.Login_Form.password.value.indexOf(" ")!=-1)
			{
				alert("패스워드는 공백없이 입력해 주세요.");
				document.Login_Form.password.focus();
			}
			else if (username1.search("--") > -1 ){
				alert(" 사용할 수 없는 문자를 쓰셨습니다.");
				document.Login_Form.username.focus();
			}
			else if (username1.search("'") > -1 ){
				alert(" 사용할 수 없는 문자를 쓰셨습니다.");
				document.Login_Form.username.focus();
			}
			else if (document.Login_Form.password.value.search("--") > -1 ||
					 document.Login_Form.password.value.search("'") > -1 ) {
				alert(" 사용할 수 없는 문자를 쓰셨습니다. (문의 : 02-3486-3456)");
				document.Login_Form.password.focus();
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
		
	<script language="javascript"> 
		/*
		var uAgent = navigator.userAgent.toLowerCase();  

		var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android', 'blackberry', 'windows ce','nokia', 'webos', 'opera mini', 'sonyericsson', 'opera mobi', 'iemobile');
//alert( uAgent );
		for (var i = 0; i < mobilePhones.length; i++)
			if (uAgent.indexOf(mobilePhones[i]) > -1)
			   document.location = "http://www.bitacademy.com/Member/M/Login.asp?return_url=<%=TRIM(return_url)%>";
		*/
	</script>
	<!-- #include virtual="/Include/Script_MoBon_1803.asp"-->
</head>
<style>
	<!--
	#SNB_Wrap_1702 { width:194px !important; }
	#Content_Wrap { width:995px !important; }
	#Content { width:735px !important; }
	#Content .hGroup .lineMap { width:100px; }
	-->

	.loginBox_1704 input[type="text"] , 
	.loginBox_1704 input[type="password"] {
		width:325px;
		margin-bottom:7px;
		padding:16px 14px;
		font-size:16px;
		-webkit-box-shadow:0 0 0px 100px white inset;
	}
	
	.btn_wrap.no2 a { 
		font-size:16px !important; 
		text-shadow:1px 1px 3px #d7d7d7;
		width:172px !important;
	}
	
	.btn_wrap.no2 a { 
		border-radius:20px;
	}
	
	a.loginBtn {
		width:353px !important;
		height:70px !important;
		line-height:70px !important;
		margin-top:0px;
		margin-bottom:1px; 
		font-size:16pt !important;
		background-color:#17538e !important;
		color:white;
	}
	
	.section.login {
		margin-left:65px;
		margin-top:5px;
	}
</style>

<body>
	<div id="Wrapper">
		<%
		'//<!-- SkipMenu -->
		'//<!-- #include virtual = "/bitDesign/Include/skipMenu.asp"-->
		'//<!-- //SkipMenu -->
		%>
		<!-- Header_Wrap -->
		<!-- #include virtual = "/Include/HeaderHTML1709.asp"-->
		<!-- //Header_Wrap -->
		<tr>
		<!--Container -->
		<div id="Container_Wrap" style="min-height:250px;">
			<div id="Content_Wrap" style="min-height:250px;">
				<!-- SNB_Wrap-->
				<!-- #include virtual = "/Include/SNB_Member_1709.asp"-->
				<!-- //SNB_Wrap-->
				
				<!-- Content -->
				<div id="Content" style="font-family:'Nanum Gothic Bold';">
					<div class="hGroup1709">
						<p>
							<img src="/Images/Icons/icn_Home.png"/>
							<img src="/Images/Icons/icn_ArrowTriangleRight.png"/>홈
						</p>
						<h4 style="float:left;">로그인</h4>
						<div style="clear:both; height:10px;"></div>
					</div>
					
					<div class="section login">
						<form name="Login_Form" method="post" action="http://www.bitacademy.com/Member/login_ok.asp">
							<div style="float:left; width:353px; margin-right:30px;">
								<input type="hidden" name="return_url" value="<%=TRIM(return_url)%>">
								<div class="loginBox_1704">
									<input type="text" id="inputID" name="username" size="15" tabindex="1" placeHolder="아이디" onkeypress="return handleEnter(this, event)" value="<%=id%>">
									<br/>
									<input type="password" id="inputPW" name="password" size="15" tabindex="2" placeHolder="비밀번호" onkeypress="if(event.keyCode==13) submit_it();">
									<br/>
									<div style="margin-top:0px; margin-bottom:6px; DISPLAY:NONE;"><input type="checkbox" name="checkSaveID" <%=checkSaveID%>>아이디 저장</div>
									<div style="height:16px;"></div>
									<div class="btn_wrap">
										<a href="javascript:submit_it()" title="" class="loginBtn btn">
											로그인<img src="/Images/Common/ico_LockOpen_128_NearlyWhite.png" style="height:36px; margin-top:15px; margin-left:10px;"/>
										</a>
									</div>
									<div class="btn_wrap no2" style="width:353px; opacity:0.7;">
										<a href="/Member/IPIN/Join_step1.asp" title="" class="joinBtn btn white">회원가입</a>
										<a href="/Member/id_pass_search_01.asp" class="idpwBtn btn white">아이디/비밀번호 찾기</a>
									</div>
								</div>
							</div>
							<div style="float:left; height:304px; overflow:hidden;">
								<style>
									.bx-controls { opacity:0.2; }
								</style>
								<div style="width:214px; box-shadow:1px 1px 5px #0f0f0f; ">
									<ul class="slider" style="min-height:264px; width:214px; ">
										<li><a href="/Course/License/Course_Licenses.asp"><img src="/Images/Main/img_pop_BSPM1.png" style="width:214px; height:264px;"/></a></li>
										<li><a href="/Course/License/Course_Licenses.asp"><img src="/Images/Main/img_pop_BSPM2.png" style="width:214px; height:264px;"/></a></li>
									</ul>
								</div>
							</div>
							<div style="clear:both;"></div>
						</form>
					</div>
				</div>
				<!-- //Content -->
			</div>
		</div>
		<!--//Container -->
		<tr>
		<!-- Footer_Wrap -->
		<!-- #include virtual="/Include/FooterHTML1709.asp"-->
		<!-- //Footer_Wrap -->
	</div>
</body>
</html>