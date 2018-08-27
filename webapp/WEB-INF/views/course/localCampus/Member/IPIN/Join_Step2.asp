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
                                  ' 인증 완료 시 인증결과를 수신할 CP Return Page URL
    sCPREQUESTNUM   = "" ' CP 요청 번호(CP에서 임의로 생성한 값)
    IPIN_DLL = "IPIN2Client.Kisinfo"   
     
    SET clsIPIN = SERVER.CREATEOBJECT(IPIN_DLL)
    
    clsIPIN.fnRequestSEQ(sIDPCODE)
    sCPREQUESTNUM = clsIPIN.bstrRandomRequestSEQ
    session("REQUEST_NUM") = sCPREQUESTNUM ' CP 요청 번호를 세션에 저장
    
    iReturnCode = clsIPIN.fnRequest(sIDPCODE, sIDPPWD, sCPREQUESTNUM, sRETURNURL)
        
    IF iReturnCode = 0 THEN        
        sRequestData = clsIPIN. bstrRequestCipherData ' 요청정보를 암호화한 값      
    ELSEIF (iReturnCode = -1) THEN
        returnMsg = "암/복호화 시스템 오류"
        enc_data = ""
    ELSEIF (iReturnCode = -2) THEN
        returnMsg = "암호화 처리 오류"
        enc_data = ""
    ELSEIF (iReturnCode = -3) THEN
        returnMsg = "암호화 데이터 오류"
        enc_data = ""
    ELSEIF (iReturnCode = -9) THEN
        returnMsg = "입력값 오류"
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
			<h3>회원가입</h3>
			<section class="section">
				<div class="cntBox mar_t40">
					<ul>
						<li class="fb mar_b10">아이핀(i-PIN)은 사이트 가입자가 자신의 신원정보를 신뢰할 수 있는 본인확인기관에 제공하여 실명인증을 받게 되므로, 비트스쿨에서는 회원님의 주민등록번호를 저장할 수 없습니다. </li>
						<li>※ 아이핀 인증을 통한 회원가입 아이핀(i-PIN)이란 개인정보 보호를 위해 인터넷상에서 주민등록번호를 대신하여, 본인임을 확인받을 수 있는 신원 확인 수단입니다.</li>
					</ul>
				</div>
				<div class="btn_wrap c mar_t20">
					<input type="buttom" class="btn big green1" value="아이핀인증" onclick="javascript:fnPopup();">
					<a href="http://i-pin.kisa.or.kr/kor/about/about.jsp" title="" class="btn big white">아이핀 자세히 보기</a>
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